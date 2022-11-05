package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import java.io.IOException;
import java.lang.reflect.Type;
import java.sql.Date;
import java.text.DateFormat;
@JacksonStdImpl
/* loaded from: classes.dex */
public class SqlDateSerializer extends DateTimeSerializerBase<Date> {
    public SqlDateSerializer() {
        this(Boolean.FALSE);
    }

    protected SqlDateSerializer(Boolean bool) {
        super(Date.class, bool, null);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase
    public DateTimeSerializerBase<Date> withFormat(Boolean bool, DateFormat dateFormat) {
        return new SqlDateSerializer(bool);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase
    public long _timestamp(Date date) {
        if (date == null) {
            return 0L;
        }
        return date.getTime();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Date date, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        if (_asTimestamp(serializerProvider)) {
            jsonGenerator.writeNumber(_timestamp(date));
        } else {
            jsonGenerator.writeString(date.toString());
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase, com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        return createSchemaNode("string", true);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase, com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        _acceptJsonFormatVisitor(jsonFormatVisitorWrapper, javaType, this._useTimestamp.booleanValue());
    }
}
