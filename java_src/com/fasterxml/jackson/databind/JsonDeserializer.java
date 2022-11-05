package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.util.Collection;
/* loaded from: classes.dex */
public abstract class JsonDeserializer<T> {
    /* renamed from: deserialize */
    public abstract T mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException;

    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, T t) throws IOException, JsonProcessingException {
        throw new UnsupportedOperationException("Can not update object of type " + t.getClass().getName() + " (by deserializer of type " + getClass().getName() + ")");
    }

    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
    }

    public JsonDeserializer<T> unwrappingDeserializer(NameTransformer nameTransformer) {
        return this;
    }

    public JsonDeserializer<?> replaceDelegatee(JsonDeserializer<?> jsonDeserializer) {
        throw new UnsupportedOperationException();
    }

    public Class<?> handledType() {
        return null;
    }

    public boolean isCachable() {
        return false;
    }

    public JsonDeserializer<?> getDelegatee() {
        return null;
    }

    public Collection<Object> getKnownPropertyNames() {
        return null;
    }

    /* renamed from: getNullValue */
    public T mo289getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return mo288getNullValue();
    }

    public T getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return getEmptyValue();
    }

    public ObjectIdReader getObjectIdReader() {
        return null;
    }

    public SettableBeanProperty findBackReference(String str) {
        throw new IllegalArgumentException("Can not handle managed/back reference '" + str + "': type: value deserializer of type " + getClass().getName() + " does not support them");
    }

    @Deprecated
    /* renamed from: getNullValue */
    public T mo288getNullValue() {
        return null;
    }

    @Deprecated
    public T getEmptyValue() {
        return mo288getNullValue();
    }

    /* loaded from: classes.dex */
    public static abstract class None extends JsonDeserializer<Object> {
        private None() {
        }
    }
}
