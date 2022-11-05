package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.io.IOException;
import java.lang.annotation.Annotation;
/* loaded from: classes.dex */
public final class ObjectIdValueProperty extends SettableBeanProperty {
    private static final long serialVersionUID = 1;
    protected final ObjectIdReader _objectIdReader;

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    /* renamed from: withValueDeserializer */
    public /* bridge */ /* synthetic */ SettableBeanProperty mo273withValueDeserializer(JsonDeserializer jsonDeserializer) {
        return mo273withValueDeserializer((JsonDeserializer<?>) jsonDeserializer);
    }

    public ObjectIdValueProperty(ObjectIdReader objectIdReader, PropertyMetadata propertyMetadata) {
        super(objectIdReader.propertyName, objectIdReader.getIdType(), propertyMetadata, objectIdReader.getDeserializer());
        this._objectIdReader = objectIdReader;
    }

    protected ObjectIdValueProperty(ObjectIdValueProperty objectIdValueProperty, JsonDeserializer<?> jsonDeserializer) {
        super(objectIdValueProperty, jsonDeserializer);
        this._objectIdReader = objectIdValueProperty._objectIdReader;
    }

    protected ObjectIdValueProperty(ObjectIdValueProperty objectIdValueProperty, PropertyName propertyName) {
        super(objectIdValueProperty, propertyName);
        this._objectIdReader = objectIdValueProperty._objectIdReader;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    /* renamed from: withName  reason: collision with other method in class */
    public ObjectIdValueProperty mo272withName(PropertyName propertyName) {
        return new ObjectIdValueProperty(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    /* renamed from: withValueDeserializer  reason: collision with other method in class */
    public ObjectIdValueProperty mo273withValueDeserializer(JsonDeserializer<?> jsonDeserializer) {
        return new ObjectIdValueProperty(this, jsonDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        deserializeSetAndReturn(jsonParser, deserializationContext, obj);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        if (jsonParser.hasToken(JsonToken.VALUE_NULL)) {
            return null;
        }
        Object mo573deserialize = this._valueDeserializer.mo573deserialize(jsonParser, deserializationContext);
        deserializationContext.findObjectId(mo573deserialize, this._objectIdReader.generator, this._objectIdReader.resolver).bindItem(obj);
        SettableBeanProperty settableBeanProperty = this._objectIdReader.idProperty;
        if (settableBeanProperty != null) {
            return settableBeanProperty.setAndReturn(obj, mo573deserialize);
        }
        return obj;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void set(Object obj, Object obj2) throws IOException {
        setAndReturn(obj, obj2);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        SettableBeanProperty settableBeanProperty = this._objectIdReader.idProperty;
        if (settableBeanProperty == null) {
            throw new UnsupportedOperationException("Should not call set() on ObjectIdProperty that has no SettableBeanProperty");
        }
        return settableBeanProperty.setAndReturn(obj, obj2);
    }
}
