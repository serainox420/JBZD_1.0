package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class ReferenceTypeDeserializer<T> extends StdDeserializer<T> implements ContextualDeserializer {
    private static final long serialVersionUID = 1;
    protected final JavaType _fullType;
    protected final JsonDeserializer<?> _valueDeserializer;
    protected final TypeDeserializer _valueTypeDeserializer;

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: getNullValue */
    public abstract T mo289getNullValue(DeserializationContext deserializationContext);

    public abstract T referenceValue(Object obj);

    protected abstract ReferenceTypeDeserializer<T> withResolved(TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer);

    public ReferenceTypeDeserializer(JavaType javaType, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) {
        super(javaType);
        this._fullType = javaType;
        this._valueDeserializer = jsonDeserializer;
        this._valueTypeDeserializer = typeDeserializer;
    }

    public ReferenceTypeDeserializer(JavaType javaType, ValueInstantiator valueInstantiator, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) {
        this(javaType, typeDeserializer, jsonDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    /* renamed from: createContextual */
    public JsonDeserializer<?> mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer<?> handleSecondaryContextualization;
        JsonDeserializer<?> jsonDeserializer = this._valueDeserializer;
        if (jsonDeserializer == null) {
            handleSecondaryContextualization = deserializationContext.findContextualValueDeserializer(this._fullType.mo464getReferencedType(), beanProperty);
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(jsonDeserializer, beanProperty, this._fullType.mo464getReferencedType());
        }
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        if (typeDeserializer != null) {
            typeDeserializer = typeDeserializer.forProperty(beanProperty);
        }
        return (handleSecondaryContextualization == this._valueDeserializer && typeDeserializer == this._valueTypeDeserializer) ? this : withResolved(typeDeserializer, handleSecondaryContextualization);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public JavaType getValueType() {
        return this._fullType;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize */
    public T mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return referenceValue(this._valueTypeDeserializer == null ? this._valueDeserializer.mo573deserialize(jsonParser, deserializationContext) : this._valueDeserializer.mo321deserializeWithType(jsonParser, deserializationContext, this._valueTypeDeserializer));
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
            return mo289getNullValue(deserializationContext);
        }
        if (this._valueTypeDeserializer == null) {
            return mo573deserialize(jsonParser, deserializationContext);
        }
        return referenceValue(this._valueTypeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext));
    }
}
