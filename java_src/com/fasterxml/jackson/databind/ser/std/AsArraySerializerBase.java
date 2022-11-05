package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.JsonSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import java.io.IOException;
import java.lang.reflect.Type;
/* loaded from: classes.dex */
public abstract class AsArraySerializerBase<T> extends ContainerSerializer<T> implements ContextualSerializer {
    protected PropertySerializerMap _dynamicSerializers;
    protected final JsonSerializer<Object> _elementSerializer;
    protected final JavaType _elementType;
    protected final BeanProperty _property;
    protected final boolean _staticTyping;
    protected final Boolean _unwrapSingle;
    protected final TypeSerializer _valueTypeSerializer;

    protected abstract void serializeContents(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException;

    public abstract AsArraySerializerBase<T> withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool);

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsArraySerializerBase(Class<?> cls, JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        super(cls, false);
        boolean z2 = false;
        this._elementType = javaType;
        if (z || (javaType != null && javaType.isFinal())) {
            z2 = true;
        }
        this._staticTyping = z2;
        this._valueTypeSerializer = typeSerializer;
        this._property = null;
        this._elementSerializer = jsonSerializer;
        this._dynamicSerializers = PropertySerializerMap.emptyForProperties();
        this._unwrapSingle = null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Deprecated
    protected AsArraySerializerBase(Class<?> cls, JavaType javaType, boolean z, TypeSerializer typeSerializer, BeanProperty beanProperty, JsonSerializer<Object> jsonSerializer) {
        super(cls, false);
        boolean z2 = false;
        this._elementType = javaType;
        if (z || (javaType != null && javaType.isFinal())) {
            z2 = true;
        }
        this._staticTyping = z2;
        this._valueTypeSerializer = typeSerializer;
        this._property = beanProperty;
        this._elementSerializer = jsonSerializer;
        this._dynamicSerializers = PropertySerializerMap.emptyForProperties();
        this._unwrapSingle = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AsArraySerializerBase(AsArraySerializerBase<?> asArraySerializerBase, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        super(asArraySerializerBase);
        this._elementType = asArraySerializerBase._elementType;
        this._staticTyping = asArraySerializerBase._staticTyping;
        this._valueTypeSerializer = typeSerializer;
        this._property = beanProperty;
        this._elementSerializer = jsonSerializer;
        this._dynamicSerializers = asArraySerializerBase._dynamicSerializers;
        this._unwrapSingle = bool;
    }

    @Deprecated
    protected AsArraySerializerBase(AsArraySerializerBase<?> asArraySerializerBase, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer) {
        this(asArraySerializerBase, beanProperty, typeSerializer, jsonSerializer, asArraySerializerBase._unwrapSingle);
    }

    @Deprecated
    public final AsArraySerializerBase<T> withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer) {
        return withResolved(beanProperty, typeSerializer, jsonSerializer, this._unwrapSingle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0065  */
    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer;
        JsonFormat.Value findFormatOverrides;
        JsonSerializer<?> findConvertingContentSerializer;
        Object findContentSerializer;
        Boolean bool = null;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        TypeSerializer mo368forProperty = typeSerializer != null ? typeSerializer.mo368forProperty(beanProperty) : typeSerializer;
        if (beanProperty != null) {
            AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
            AnnotatedMember member = beanProperty.getMember();
            if (member != null && (findContentSerializer = annotationIntrospector.findContentSerializer(member)) != null) {
                jsonSerializer = serializerProvider.serializerInstance(member, findContentSerializer);
                findFormatOverrides = findFormatOverrides(serializerProvider, beanProperty, handledType());
                if (findFormatOverrides != null) {
                    bool = findFormatOverrides.getFeature(JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED);
                }
                if (jsonSerializer == null) {
                    jsonSerializer = this._elementSerializer;
                }
                findConvertingContentSerializer = findConvertingContentSerializer(serializerProvider, beanProperty, jsonSerializer);
                if (findConvertingContentSerializer != null) {
                    if (this._elementType != null && this._staticTyping && !this._elementType.isJavaLangObject()) {
                        findConvertingContentSerializer = serializerProvider.findValueSerializer(this._elementType, beanProperty);
                    }
                } else {
                    findConvertingContentSerializer = serializerProvider.handleSecondaryContextualization(findConvertingContentSerializer, beanProperty);
                }
                if (findConvertingContentSerializer == this._elementSerializer || beanProperty != this._property || this._valueTypeSerializer != mo368forProperty || this._unwrapSingle != bool) {
                    return withResolved(beanProperty, mo368forProperty, findConvertingContentSerializer, bool);
                }
                return this;
            }
        }
        jsonSerializer = null;
        findFormatOverrides = findFormatOverrides(serializerProvider, beanProperty, handledType());
        if (findFormatOverrides != null) {
        }
        if (jsonSerializer == null) {
        }
        findConvertingContentSerializer = findConvertingContentSerializer(serializerProvider, beanProperty, jsonSerializer);
        if (findConvertingContentSerializer != null) {
        }
        if (findConvertingContentSerializer == this._elementSerializer) {
        }
        return withResolved(beanProperty, mo368forProperty, findConvertingContentSerializer, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JavaType getContentType() {
        return this._elementType;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JsonSerializer<?> getContentSerializer() {
        return this._elementSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (serializerProvider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) && hasSingleElement(t)) {
            serializeContents(t, jsonGenerator, serializerProvider);
            return;
        }
        jsonGenerator.writeStartArray();
        jsonGenerator.setCurrentValue(t);
        serializeContents(t, jsonGenerator, serializerProvider);
        jsonGenerator.writeEndArray();
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        typeSerializer.writeTypePrefixForArray(t, jsonGenerator);
        jsonGenerator.setCurrentValue(t);
        serializeContents(t, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffixForArray(t, jsonGenerator);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) throws JsonMappingException {
        JsonNode jsonNode;
        ObjectNode createSchemaNode = createSchemaNode("array", true);
        JavaType javaType = this._elementType;
        if (javaType != null) {
            if (javaType.getRawClass() != Object.class) {
                JsonSerializer<Object> findValueSerializer = serializerProvider.findValueSerializer(javaType, this._property);
                if (findValueSerializer instanceof SchemaAware) {
                    jsonNode = ((SchemaAware) findValueSerializer).getSchema(serializerProvider, null);
                    if (jsonNode == null) {
                        jsonNode = JsonSchema.getDefaultSchemaNode();
                    }
                    createSchemaNode.set("items", jsonNode);
                }
            }
            jsonNode = null;
            if (jsonNode == null) {
            }
            createSchemaNode.set("items", jsonNode);
        }
        return createSchemaNode;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer = this._elementSerializer;
        if (jsonSerializer == null) {
            jsonSerializer = jsonFormatVisitorWrapper.getProvider().findValueSerializer(this._elementType, this._property);
        }
        visitArrayFormat(jsonFormatVisitorWrapper, javaType, jsonSerializer, this._elementType);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, Class<?> cls, SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(cls, serializerProvider, this._property);
        if (propertySerializerMap != findAndAddSecondarySerializer.map) {
            this._dynamicSerializers = findAndAddSecondarySerializer.map;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, JavaType javaType, SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(javaType, serializerProvider, this._property);
        if (propertySerializerMap != findAndAddSecondarySerializer.map) {
            this._dynamicSerializers = findAndAddSecondarySerializer.map;
        }
        return findAndAddSecondarySerializer.serializer;
    }
}
