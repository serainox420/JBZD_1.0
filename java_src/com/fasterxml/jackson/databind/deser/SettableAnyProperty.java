package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.Closeable;
import java.io.IOException;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes.dex */
public class SettableAnyProperty implements Serializable {
    private static final long serialVersionUID = 1;
    protected final BeanProperty _property;
    protected final AnnotatedMember _setter;
    final boolean _setterIsField;
    protected final JavaType _type;
    protected JsonDeserializer<Object> _valueDeserializer;
    protected final TypeDeserializer _valueTypeDeserializer;

    public SettableAnyProperty(BeanProperty beanProperty, AnnotatedMember annotatedMember, JavaType javaType, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer) {
        this._property = beanProperty;
        this._setter = annotatedMember;
        this._type = javaType;
        this._valueDeserializer = jsonDeserializer;
        this._valueTypeDeserializer = typeDeserializer;
        this._setterIsField = annotatedMember instanceof AnnotatedField;
    }

    protected SettableAnyProperty(SettableAnyProperty settableAnyProperty) {
        this._property = settableAnyProperty._property;
        this._setter = settableAnyProperty._setter;
        this._type = settableAnyProperty._type;
        this._valueDeserializer = settableAnyProperty._valueDeserializer;
        this._valueTypeDeserializer = settableAnyProperty._valueTypeDeserializer;
        this._setterIsField = settableAnyProperty._setterIsField;
    }

    public SettableAnyProperty withValueDeserializer(JsonDeserializer<Object> jsonDeserializer) {
        return new SettableAnyProperty(this._property, this._setter, this._type, jsonDeserializer, this._valueTypeDeserializer);
    }

    public void fixAccess(DeserializationConfig deserializationConfig) {
        this._setter.fixAccess(deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
    }

    Object readResolve() {
        if (this._setter == null || this._setter.mo354getAnnotated() == null) {
            throw new IllegalArgumentException("Missing method (broken JDK (de)serialization?)");
        }
        return this;
    }

    public BeanProperty getProperty() {
        return this._property;
    }

    public boolean hasValueDeserializer() {
        return this._valueDeserializer != null;
    }

    public JavaType getType() {
        return this._type;
    }

    public final void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        try {
            set(obj, str, deserialize(jsonParser, deserializationContext));
        } catch (UnresolvedForwardReference e) {
            if (this._valueDeserializer.getObjectIdReader() == null) {
                throw JsonMappingException.from(jsonParser, "Unresolved forward reference but no identity info.", e);
            }
            e.getRoid().appendReferring(new AnySetterReferring(this, e, this._type.getRawClass(), obj, str));
        }
    }

    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
            return this._valueDeserializer.mo289getNullValue(deserializationContext);
        }
        if (this._valueTypeDeserializer != null) {
            return this._valueDeserializer.mo321deserializeWithType(jsonParser, deserializationContext, this._valueTypeDeserializer);
        }
        return this._valueDeserializer.mo573deserialize(jsonParser, deserializationContext);
    }

    public void set(Object obj, String str, Object obj2) throws IOException {
        try {
            if (this._setterIsField) {
                Map map = (Map) ((AnnotatedField) this._setter).getValue(obj);
                if (map != null) {
                    map.put(str, obj2);
                }
            } else {
                ((AnnotatedMethod) this._setter).callOnWith(obj, str, obj2);
            }
        } catch (Exception e) {
            _throwAsIOE(e, str, obj2);
        }
    }

    protected void _throwAsIOE(Exception exc, String str, Object obj) throws IOException {
        if (exc instanceof IllegalArgumentException) {
            String name = obj == null ? "[NULL]" : obj.getClass().getName();
            StringBuilder append = new StringBuilder("Problem deserializing \"any\" property '").append(str);
            append.append("' of class " + getClassName() + " (expected type: ").append(this._type);
            append.append("; actual type: ").append(name).append(")");
            String message = exc.getMessage();
            if (message != null) {
                append.append(", problem: ").append(message);
            } else {
                append.append(" (no error message provided)");
            }
            throw new JsonMappingException((Closeable) null, append.toString(), exc);
        } else if (exc instanceof IOException) {
            throw ((IOException) exc);
        } else {
            boolean z = exc instanceof RuntimeException;
            Exception exc2 = exc;
            if (z) {
                throw ((RuntimeException) exc);
            }
            while (exc2.getCause() != null) {
                exc2 = exc2.getCause();
            }
            throw new JsonMappingException((Closeable) null, exc2.getMessage(), exc2);
        }
    }

    private String getClassName() {
        return this._setter.getDeclaringClass().getName();
    }

    public String toString() {
        return "[any property on class " + getClassName() + "]";
    }

    /* loaded from: classes.dex */
    private static class AnySetterReferring extends ReadableObjectId.Referring {
        private final SettableAnyProperty _parent;
        private final Object _pojo;
        private final String _propName;

        public AnySetterReferring(SettableAnyProperty settableAnyProperty, UnresolvedForwardReference unresolvedForwardReference, Class<?> cls, Object obj, String str) {
            super(unresolvedForwardReference, cls);
            this._parent = settableAnyProperty;
            this._pojo = obj;
            this._propName = str;
        }

        @Override // com.fasterxml.jackson.databind.deser.impl.ReadableObjectId.Referring
        public void handleResolvedForwardReference(Object obj, Object obj2) throws IOException {
            if (!hasId(obj)) {
                throw new IllegalArgumentException("Trying to resolve a forward reference with id [" + obj.toString() + "] that wasn't previously registered.");
            }
            this._parent.set(this._pojo, this._propName, obj2);
        }
    }
}
