package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ResolvableDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
import java.util.Collection;
/* loaded from: classes.dex */
public abstract class DelegatingDeserializer extends StdDeserializer<Object> implements ContextualDeserializer, ResolvableDeserializer {
    private static final long serialVersionUID = 1;
    protected final JsonDeserializer<?> _delegatee;

    protected abstract JsonDeserializer<?> newDelegatingInstance(JsonDeserializer<?> jsonDeserializer);

    public DelegatingDeserializer(JsonDeserializer<?> jsonDeserializer) {
        super(_figureType(jsonDeserializer));
        this._delegatee = jsonDeserializer;
    }

    private static Class<?> _figureType(JsonDeserializer<?> jsonDeserializer) {
        Class<?> handledType = jsonDeserializer.handledType();
        return handledType != null ? handledType : Object.class;
    }

    @Override // com.fasterxml.jackson.databind.deser.ResolvableDeserializer
    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        if (this._delegatee instanceof ResolvableDeserializer) {
            ((ResolvableDeserializer) this._delegatee).resolve(deserializationContext);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    /* renamed from: createContextual */
    public JsonDeserializer<?> mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer<?> handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(this._delegatee, beanProperty, deserializationContext.constructType(this._delegatee.handledType()));
        return handleSecondaryContextualization == this._delegatee ? this : newDelegatingInstance(handleSecondaryContextualization);
    }

    @Deprecated
    protected JsonDeserializer<?> _createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty, JsonDeserializer<?> jsonDeserializer) {
        return jsonDeserializer == this._delegatee ? this : newDelegatingInstance(jsonDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public SettableBeanProperty findBackReference(String str) {
        return this._delegatee.findBackReference(str);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize */
    public Object mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        return this._delegatee.mo573deserialize(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException, JsonProcessingException {
        return this._delegatee.deserialize(jsonParser, deserializationContext, obj);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return this._delegatee.mo321deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public JsonDeserializer<?> replaceDelegatee(JsonDeserializer<?> jsonDeserializer) {
        return jsonDeserializer == this._delegatee ? this : newDelegatingInstance(jsonDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: getNullValue */
    public Object mo289getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return this._delegatee.mo289getNullValue(deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return this._delegatee.getEmptyValue(deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    @Deprecated
    /* renamed from: getNullValue */
    public Object mo288getNullValue() {
        return this._delegatee.mo288getNullValue();
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    @Deprecated
    public Object getEmptyValue() {
        return this._delegatee.getEmptyValue();
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Collection<Object> getKnownPropertyNames() {
        return this._delegatee.getKnownPropertyNames();
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return this._delegatee.isCachable();
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public ObjectIdReader getObjectIdReader() {
        return this._delegatee.getObjectIdReader();
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public JsonDeserializer<?> getDelegatee() {
        return this._delegatee;
    }
}
