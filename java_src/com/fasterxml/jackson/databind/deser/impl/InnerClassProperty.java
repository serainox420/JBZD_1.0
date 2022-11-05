package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
/* loaded from: classes.dex */
public final class InnerClassProperty extends SettableBeanProperty {
    private static final long serialVersionUID = 1;
    protected AnnotatedConstructor _annotated;
    protected final transient Constructor<?> _creator;
    protected final SettableBeanProperty _delegate;

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    /* renamed from: withValueDeserializer */
    public /* bridge */ /* synthetic */ SettableBeanProperty mo273withValueDeserializer(JsonDeserializer jsonDeserializer) {
        return mo273withValueDeserializer((JsonDeserializer<?>) jsonDeserializer);
    }

    public InnerClassProperty(SettableBeanProperty settableBeanProperty, Constructor<?> constructor) {
        super(settableBeanProperty);
        this._delegate = settableBeanProperty;
        this._creator = constructor;
    }

    protected InnerClassProperty(InnerClassProperty innerClassProperty, AnnotatedConstructor annotatedConstructor) {
        super(innerClassProperty);
        this._delegate = innerClassProperty._delegate;
        this._annotated = annotatedConstructor;
        this._creator = this._annotated == null ? null : this._annotated.mo354getAnnotated();
        if (this._creator == null) {
            throw new IllegalArgumentException("Missing constructor (broken JDK (de)serialization?)");
        }
    }

    protected InnerClassProperty(InnerClassProperty innerClassProperty, JsonDeserializer<?> jsonDeserializer) {
        super(innerClassProperty, jsonDeserializer);
        this._delegate = innerClassProperty._delegate.mo273withValueDeserializer(jsonDeserializer);
        this._creator = innerClassProperty._creator;
    }

    protected InnerClassProperty(InnerClassProperty innerClassProperty, PropertyName propertyName) {
        super(innerClassProperty, propertyName);
        this._delegate = innerClassProperty._delegate.mo272withName(propertyName);
        this._creator = innerClassProperty._creator;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    /* renamed from: withName  reason: collision with other method in class */
    public InnerClassProperty mo272withName(PropertyName propertyName) {
        return new InnerClassProperty(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    /* renamed from: withValueDeserializer  reason: collision with other method in class */
    public InnerClassProperty mo273withValueDeserializer(JsonDeserializer<?> jsonDeserializer) {
        return new InnerClassProperty(this, jsonDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void assignIndex(int i) {
        this._delegate.assignIndex(i);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public int getPropertyIndex() {
        return this._delegate.getPropertyIndex();
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public int getCreatorIndex() {
        return this._delegate.getCreatorIndex();
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void fixAccess(DeserializationConfig deserializationConfig) {
        this._delegate.fixAccess(deserializationConfig);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this._delegate.getAnnotation(cls);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        return this._delegate.getMember();
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object obj2;
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
            obj2 = this._valueDeserializer.mo289getNullValue(deserializationContext);
        } else if (this._valueTypeDeserializer != null) {
            obj2 = this._valueDeserializer.mo321deserializeWithType(jsonParser, deserializationContext, this._valueTypeDeserializer);
        } else {
            try {
                obj2 = this._creator.newInstance(obj);
            } catch (Exception e) {
                ClassUtil.unwrapAndThrowAsIAE(e, "Failed to instantiate class " + this._creator.getDeclaringClass().getName() + ", problem: " + e.getMessage());
                obj2 = null;
            }
            this._valueDeserializer.deserialize(jsonParser, deserializationContext, obj2);
        }
        set(obj, obj2);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        return setAndReturn(obj, deserialize(jsonParser, deserializationContext));
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final void set(Object obj, Object obj2) throws IOException {
        this._delegate.set(obj, obj2);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        return this._delegate.setAndReturn(obj, obj2);
    }

    Object readResolve() {
        return new InnerClassProperty(this, this._annotated);
    }

    Object writeReplace() {
        return this._annotated != null ? this : new InnerClassProperty(this, new AnnotatedConstructor(null, this._creator, null, null));
    }
}
