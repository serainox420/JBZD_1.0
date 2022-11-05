package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonStringFormatVisitor;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.util.EnumValues;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;
@JacksonStdImpl
/* loaded from: classes.dex */
public class EnumSerializer extends StdScalarSerializer<Enum<?>> implements ContextualSerializer {
    private static final long serialVersionUID = 1;
    protected final Boolean _serializeAsIndex;
    protected final EnumValues _values;

    @Deprecated
    public EnumSerializer(EnumValues enumValues) {
        this(enumValues, null);
    }

    public EnumSerializer(EnumValues enumValues, Boolean bool) {
        super(enumValues.getEnumClass(), false);
        this._values = enumValues;
        this._serializeAsIndex = bool;
    }

    public static EnumSerializer construct(Class<?> cls, SerializationConfig serializationConfig, BeanDescription beanDescription, JsonFormat.Value value) {
        return new EnumSerializer(EnumValues.constructFromName(serializationConfig, cls), _isShapeWrittenUsingIndex(cls, value, true));
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonFormat.Value findFormatOverrides;
        Boolean _isShapeWrittenUsingIndex;
        if (beanProperty != null && (findFormatOverrides = findFormatOverrides(serializerProvider, beanProperty, handledType())) != null && (_isShapeWrittenUsingIndex = _isShapeWrittenUsingIndex(beanProperty.getType().getRawClass(), findFormatOverrides, false)) != this._serializeAsIndex) {
            return new EnumSerializer(this._values, _isShapeWrittenUsingIndex);
        }
        return this;
    }

    public EnumValues getEnumValues() {
        return this._values;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Enum<?> r2, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (_serializeAsIndex(serializerProvider)) {
            jsonGenerator.writeNumber(r2.ordinal());
        } else if (serializerProvider.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING)) {
            jsonGenerator.writeString(r2.toString());
        } else {
            jsonGenerator.writeString(this._values.serializedValueFor(r2));
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        if (_serializeAsIndex(serializerProvider)) {
            return createSchemaNode("integer", true);
        }
        ObjectNode createSchemaNode = createSchemaNode("string", true);
        if (type != null && serializerProvider.constructType(type).isEnumType()) {
            ArrayNode putArray = createSchemaNode.putArray("enum");
            for (SerializableString serializableString : this._values.values()) {
                putArray.add(serializableString.getValue());
            }
        }
        return createSchemaNode;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        SerializerProvider provider = jsonFormatVisitorWrapper.getProvider();
        if (_serializeAsIndex(provider)) {
            visitIntFormat(jsonFormatVisitorWrapper, javaType, JsonParser.NumberType.INT);
            return;
        }
        JsonStringFormatVisitor expectStringFormat = jsonFormatVisitorWrapper.expectStringFormat(javaType);
        if (expectStringFormat != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            if (provider != null && provider.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING)) {
                for (Enum<?> r0 : this._values.enums()) {
                    linkedHashSet.add(r0.toString());
                }
            } else {
                for (SerializableString serializableString : this._values.values()) {
                    linkedHashSet.add(serializableString.getValue());
                }
            }
            expectStringFormat.enumTypes(linkedHashSet);
        }
    }

    protected final boolean _serializeAsIndex(SerializerProvider serializerProvider) {
        return this._serializeAsIndex != null ? this._serializeAsIndex.booleanValue() : serializerProvider.isEnabled(SerializationFeature.WRITE_ENUMS_USING_INDEX);
    }

    protected static Boolean _isShapeWrittenUsingIndex(Class<?> cls, JsonFormat.Value value, boolean z) {
        JsonFormat.Shape shape = value == null ? null : value.getShape();
        if (shape == null || shape == JsonFormat.Shape.ANY || shape == JsonFormat.Shape.SCALAR) {
            return null;
        }
        if (shape == JsonFormat.Shape.STRING || shape == JsonFormat.Shape.NATURAL) {
            return Boolean.FALSE;
        }
        if (shape.isNumeric() || shape == JsonFormat.Shape.ARRAY) {
            return Boolean.TRUE;
        }
        throw new IllegalArgumentException("Unsupported serialization shape (" + shape + ") for Enum " + cls.getName() + ", not supported as " + (z ? "class" : "property") + " annotation");
    }
}
