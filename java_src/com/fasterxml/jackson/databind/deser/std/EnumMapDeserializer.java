package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
import java.util.EnumMap;
/* loaded from: classes.dex */
public class EnumMapDeserializer extends ContainerDeserializerBase<EnumMap<?, ?>> implements ContextualDeserializer {
    private static final long serialVersionUID = 1;
    protected final Class<?> _enumClass;
    protected KeyDeserializer _keyDeserializer;
    protected final JavaType _mapType;
    protected JsonDeserializer<Object> _valueDeserializer;
    protected final TypeDeserializer _valueTypeDeserializer;

    public EnumMapDeserializer(JavaType javaType, KeyDeserializer keyDeserializer, JsonDeserializer<?> jsonDeserializer, TypeDeserializer typeDeserializer) {
        super(javaType);
        this._mapType = javaType;
        this._enumClass = javaType.mo449getKeyType().getRawClass();
        this._keyDeserializer = keyDeserializer;
        this._valueDeserializer = jsonDeserializer;
        this._valueTypeDeserializer = typeDeserializer;
    }

    public EnumMapDeserializer withResolved(KeyDeserializer keyDeserializer, JsonDeserializer<?> jsonDeserializer, TypeDeserializer typeDeserializer) {
        return (keyDeserializer == this._keyDeserializer && jsonDeserializer == this._valueDeserializer && typeDeserializer == this._valueTypeDeserializer) ? this : new EnumMapDeserializer(this._mapType, keyDeserializer, jsonDeserializer, this._valueTypeDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    /* renamed from: createContextual */
    public JsonDeserializer<?> mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer<?> handleSecondaryContextualization;
        KeyDeserializer keyDeserializer = this._keyDeserializer;
        if (keyDeserializer == null) {
            keyDeserializer = deserializationContext.findKeyDeserializer(this._mapType.mo449getKeyType(), beanProperty);
        }
        JsonDeserializer<?> jsonDeserializer = this._valueDeserializer;
        JavaType mo463getContentType = this._mapType.mo463getContentType();
        if (jsonDeserializer == null) {
            handleSecondaryContextualization = deserializationContext.findContextualValueDeserializer(mo463getContentType, beanProperty);
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(jsonDeserializer, beanProperty, mo463getContentType);
        }
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        if (typeDeserializer != null) {
            typeDeserializer = typeDeserializer.forProperty(beanProperty);
        }
        return withResolved(keyDeserializer, handleSecondaryContextualization, typeDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return this._valueDeserializer == null && this._keyDeserializer == null && this._valueTypeDeserializer == null;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public JavaType getContentType() {
        return this._mapType.mo463getContentType();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public JsonDeserializer<Object> getContentDeserializer() {
        return this._valueDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize  reason: collision with other method in class */
    public EnumMap<?, ?> mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object mo321deserializeWithType;
        if (jsonParser.getCurrentToken() != JsonToken.START_OBJECT) {
            return (EnumMap) _deserializeFromEmpty(jsonParser, deserializationContext);
        }
        EnumMap<?, ?> constructMap = constructMap();
        JsonDeserializer<Object> jsonDeserializer = this._valueDeserializer;
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        while (jsonParser.nextToken() == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.getCurrentName();
            Enum r0 = (Enum) this._keyDeserializer.deserializeKey(currentName, deserializationContext);
            if (r0 == null) {
                if (!deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                    return (EnumMap) deserializationContext.handleWeirdStringValue(this._enumClass, currentName, "value not one of declared Enum instance names for %s", this._mapType.mo449getKeyType());
                }
                jsonParser.nextToken();
                jsonParser.skipChildren();
            } else {
                try {
                    if (jsonParser.nextToken() == JsonToken.VALUE_NULL) {
                        mo321deserializeWithType = jsonDeserializer.mo289getNullValue(deserializationContext);
                    } else if (typeDeserializer == null) {
                        mo321deserializeWithType = jsonDeserializer.mo573deserialize(jsonParser, deserializationContext);
                    } else {
                        mo321deserializeWithType = jsonDeserializer.mo321deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
                    }
                    constructMap.put((EnumMap<?, ?>) r0, (Enum) mo321deserializeWithType);
                } catch (Exception e) {
                    wrapAndThrow(e, constructMap, currentName);
                    return null;
                }
            }
        }
        return constructMap;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    protected EnumMap<?, ?> constructMap() {
        return new EnumMap<>(this._enumClass);
    }
}
