package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public final class SetterlessProperty extends SettableBeanProperty {
    private static final long serialVersionUID = 1;
    protected final AnnotatedMethod _annotated;
    protected final Method _getter;

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    /* renamed from: withValueDeserializer */
    public /* bridge */ /* synthetic */ SettableBeanProperty mo273withValueDeserializer(JsonDeserializer jsonDeserializer) {
        return mo273withValueDeserializer((JsonDeserializer<?>) jsonDeserializer);
    }

    public SetterlessProperty(BeanPropertyDefinition beanPropertyDefinition, JavaType javaType, TypeDeserializer typeDeserializer, Annotations annotations, AnnotatedMethod annotatedMethod) {
        super(beanPropertyDefinition, javaType, typeDeserializer, annotations);
        this._annotated = annotatedMethod;
        this._getter = annotatedMethod.mo354getAnnotated();
    }

    protected SetterlessProperty(SetterlessProperty setterlessProperty, JsonDeserializer<?> jsonDeserializer) {
        super(setterlessProperty, jsonDeserializer);
        this._annotated = setterlessProperty._annotated;
        this._getter = setterlessProperty._getter;
    }

    protected SetterlessProperty(SetterlessProperty setterlessProperty, PropertyName propertyName) {
        super(setterlessProperty, propertyName);
        this._annotated = setterlessProperty._annotated;
        this._getter = setterlessProperty._getter;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    /* renamed from: withName  reason: collision with other method in class */
    public SetterlessProperty mo272withName(PropertyName propertyName) {
        return new SetterlessProperty(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    /* renamed from: withValueDeserializer  reason: collision with other method in class */
    public SetterlessProperty mo273withValueDeserializer(JsonDeserializer<?> jsonDeserializer) {
        return new SetterlessProperty(this, jsonDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void fixAccess(DeserializationConfig deserializationConfig) {
        this._annotated.fixAccess(deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this._annotated.getAnnotation(cls);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        return this._annotated;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        if (jsonParser.getCurrentToken() != JsonToken.VALUE_NULL) {
            if (this._valueTypeDeserializer != null) {
                deserializationContext.reportMappingException("Problem deserializing 'setterless' property (\"%s\"): no way to handle typed deser with setterless yet", getName());
            }
            try {
                Object invoke = this._getter.invoke(obj, new Object[0]);
                if (invoke == null) {
                    throw JsonMappingException.from(jsonParser, "Problem deserializing 'setterless' property '" + getName() + "': get method returned null");
                }
                this._valueDeserializer.deserialize(jsonParser, deserializationContext, invoke);
            } catch (Exception e) {
                _throwAsIOE(jsonParser, e);
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        deserializeAndSet(jsonParser, deserializationContext, obj);
        return obj;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final void set(Object obj, Object obj2) throws IOException {
        throw new UnsupportedOperationException("Should never call 'set' on setterless property");
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        set(obj, obj2);
        return null;
    }
}
