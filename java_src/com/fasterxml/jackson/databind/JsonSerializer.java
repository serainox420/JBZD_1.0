package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.PropertyWriter;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class JsonSerializer<T> implements JsonFormatVisitable {

    /* loaded from: classes.dex */
    public static abstract class None extends JsonSerializer<Object> {
    }

    public abstract void serialize(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonProcessingException;

    public JsonSerializer<T> unwrappingSerializer(NameTransformer nameTransformer) {
        return this;
    }

    public JsonSerializer<T> replaceDelegatee(JsonSerializer<?> jsonSerializer) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: withFilterId */
    public JsonSerializer<?> mo430withFilterId(Object obj) {
        return this;
    }

    public void serializeWithType(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        Class handledType = handledType();
        if (handledType == null) {
            handledType = t.getClass();
        }
        serializerProvider.reportMappingProblem("Type id handling not implemented for type %s (by serializer of type %s)", handledType.getName(), getClass().getName());
    }

    public Class<T> handledType() {
        return null;
    }

    @Deprecated
    public boolean isEmpty(T t) {
        return isEmpty(null, t);
    }

    public boolean isEmpty(SerializerProvider serializerProvider, T t) {
        return t == null;
    }

    public boolean usesObjectId() {
        return false;
    }

    public boolean isUnwrappingSerializer() {
        return false;
    }

    public JsonSerializer<?> getDelegatee() {
        return null;
    }

    public Iterator<PropertyWriter> properties() {
        return ClassUtil.emptyIterator();
    }

    @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        if (jsonFormatVisitorWrapper != null) {
            jsonFormatVisitorWrapper.expectAnyFormat(javaType);
        }
    }
}
