package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.util.Annotations;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes.dex */
public final class ManagedReferenceProperty extends SettableBeanProperty {
    private static final long serialVersionUID = 1;
    protected final SettableBeanProperty _backProperty;
    protected final boolean _isContainer;
    protected final SettableBeanProperty _managedProperty;
    protected final String _referenceName;

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    /* renamed from: withValueDeserializer */
    public /* bridge */ /* synthetic */ SettableBeanProperty mo273withValueDeserializer(JsonDeserializer jsonDeserializer) {
        return mo273withValueDeserializer((JsonDeserializer<?>) jsonDeserializer);
    }

    public ManagedReferenceProperty(SettableBeanProperty settableBeanProperty, String str, SettableBeanProperty settableBeanProperty2, Annotations annotations, boolean z) {
        super(settableBeanProperty.getFullName(), settableBeanProperty.getType(), settableBeanProperty.getWrapperName(), settableBeanProperty.getValueTypeDeserializer(), annotations, settableBeanProperty.getMetadata());
        this._referenceName = str;
        this._managedProperty = settableBeanProperty;
        this._backProperty = settableBeanProperty2;
        this._isContainer = z;
    }

    protected ManagedReferenceProperty(ManagedReferenceProperty managedReferenceProperty, JsonDeserializer<?> jsonDeserializer) {
        super(managedReferenceProperty, jsonDeserializer);
        this._referenceName = managedReferenceProperty._referenceName;
        this._isContainer = managedReferenceProperty._isContainer;
        this._managedProperty = managedReferenceProperty._managedProperty;
        this._backProperty = managedReferenceProperty._backProperty;
    }

    protected ManagedReferenceProperty(ManagedReferenceProperty managedReferenceProperty, PropertyName propertyName) {
        super(managedReferenceProperty, propertyName);
        this._referenceName = managedReferenceProperty._referenceName;
        this._isContainer = managedReferenceProperty._isContainer;
        this._managedProperty = managedReferenceProperty._managedProperty;
        this._backProperty = managedReferenceProperty._backProperty;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    /* renamed from: withName  reason: collision with other method in class */
    public ManagedReferenceProperty mo272withName(PropertyName propertyName) {
        return new ManagedReferenceProperty(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    /* renamed from: withValueDeserializer  reason: collision with other method in class */
    public ManagedReferenceProperty mo273withValueDeserializer(JsonDeserializer<?> jsonDeserializer) {
        return new ManagedReferenceProperty(this, jsonDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void fixAccess(DeserializationConfig deserializationConfig) {
        this._managedProperty.fixAccess(deserializationConfig);
        this._backProperty.fixAccess(deserializationConfig);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this._managedProperty.getAnnotation(cls);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        return this._managedProperty.getMember();
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        set(obj, this._managedProperty.deserialize(jsonParser, deserializationContext));
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        return setAndReturn(obj, deserialize(jsonParser, deserializationContext));
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final void set(Object obj, Object obj2) throws IOException {
        setAndReturn(obj, obj2);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        Object[] objArr;
        if (obj2 != null) {
            if (this._isContainer) {
                if (obj2 instanceof Object[]) {
                    for (Object obj3 : (Object[]) obj2) {
                        if (obj3 != null) {
                            this._backProperty.set(obj3, obj);
                        }
                    }
                } else if (obj2 instanceof Collection) {
                    for (Object obj4 : (Collection) obj2) {
                        if (obj4 != null) {
                            this._backProperty.set(obj4, obj);
                        }
                    }
                } else if (obj2 instanceof Map) {
                    for (Object obj5 : ((Map) obj2).values()) {
                        if (obj5 != null) {
                            this._backProperty.set(obj5, obj);
                        }
                    }
                } else {
                    throw new IllegalStateException("Unsupported container type (" + obj2.getClass().getName() + ") when resolving reference '" + this._referenceName + "'");
                }
            } else {
                this._backProperty.set(obj2, obj);
            }
        }
        return this._managedProperty.setAndReturn(obj, obj2);
    }
}
