package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.io.IOException;
import java.lang.reflect.Type;
@JacksonStdImpl
/* loaded from: classes.dex */
public class ByteArraySerializer extends StdSerializer<byte[]> {
    private static final long serialVersionUID = 1;

    public ByteArraySerializer() {
        super(byte[].class);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(byte[] bArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonGenerator.writeBinary(serializerProvider.mo255getConfig().getBase64Variant(), bArr, 0, bArr.length);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(byte[] bArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        typeSerializer.writeTypePrefixForScalar(bArr, jsonGenerator);
        jsonGenerator.writeBinary(serializerProvider.mo255getConfig().getBase64Variant(), bArr, 0, bArr.length);
        typeSerializer.writeTypeSuffixForScalar(bArr, jsonGenerator);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        return createSchemaNode("array", true).set("items", createSchemaNode("byte"));
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonArrayFormatVisitor expectArrayFormat;
        if (jsonFormatVisitorWrapper != null && (expectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType)) != null) {
            expectArrayFormat.itemsFormat(JsonFormatTypes.INTEGER);
        }
    }
}
