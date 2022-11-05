package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.JsonSerializableSchema;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicReference;
@JacksonStdImpl
/* loaded from: classes.dex */
public class SerializableSerializer extends StdSerializer<JsonSerializable> {
    public static final SerializableSerializer instance = new SerializableSerializer();
    private static final AtomicReference<ObjectMapper> _mapperReference = new AtomicReference<>();

    protected SerializableSerializer() {
        super(JsonSerializable.class);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, JsonSerializable jsonSerializable) {
        if (jsonSerializable instanceof JsonSerializable.Base) {
            return ((JsonSerializable.Base) jsonSerializable).isEmpty(serializerProvider);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(JsonSerializable jsonSerializable, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonSerializable.serialize(jsonGenerator, serializerProvider);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serializeWithType(JsonSerializable jsonSerializable, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        jsonSerializable.serializeWithType(jsonGenerator, serializerProvider, typeSerializer);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0059 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) throws JsonMappingException {
        String str;
        String str2 = null;
        ObjectNode createObjectNode = createObjectNode();
        String str3 = "any";
        if (type != null) {
            Class<?> rawClass = TypeFactory.rawClass(type);
            if (rawClass.isAnnotationPresent(JsonSerializableSchema.class)) {
                JsonSerializableSchema jsonSerializableSchema = (JsonSerializableSchema) rawClass.getAnnotation(JsonSerializableSchema.class);
                String schemaType = jsonSerializableSchema.schemaType();
                str = !JsonSerializableSchema.NO_VALUE.equals(jsonSerializableSchema.schemaObjectPropertiesDefinition()) ? jsonSerializableSchema.schemaObjectPropertiesDefinition() : null;
                if (!JsonSerializableSchema.NO_VALUE.equals(jsonSerializableSchema.schemaItemDefinition())) {
                    str2 = jsonSerializableSchema.schemaItemDefinition();
                    str3 = schemaType;
                } else {
                    str3 = schemaType;
                }
                createObjectNode.put("type", str3);
                if (str != null) {
                    try {
                        createObjectNode.set("properties", _getObjectMapper().readTree(str));
                    } catch (IOException e) {
                        serializerProvider.reportMappingProblem("Failed to parse @JsonSerializableSchema.schemaObjectPropertiesDefinition value", new Object[0]);
                    }
                }
                if (str2 != null) {
                    try {
                        createObjectNode.set("items", _getObjectMapper().readTree(str2));
                    } catch (IOException e2) {
                        serializerProvider.reportMappingProblem("Failed to parse @JsonSerializableSchema.schemaItemDefinition value", new Object[0]);
                    }
                }
                return createObjectNode;
            }
        }
        str = null;
        createObjectNode.put("type", str3);
        if (str != null) {
        }
        if (str2 != null) {
        }
        return createObjectNode;
    }

    private static final synchronized ObjectMapper _getObjectMapper() {
        ObjectMapper objectMapper;
        synchronized (SerializableSerializer.class) {
            objectMapper = _mapperReference.get();
            if (objectMapper == null) {
                objectMapper = new ObjectMapper();
                _mapperReference.set(objectMapper);
            }
        }
        return objectMapper;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        jsonFormatVisitorWrapper.expectAnyFormat(javaType);
    }
}
