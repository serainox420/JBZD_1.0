package com.fasterxml.jackson.databind.jsontype;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class TypeDeserializer {
    public abstract Object deserializeTypedFromAny(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    public abstract Object deserializeTypedFromArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    public abstract Object deserializeTypedFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    public abstract Object deserializeTypedFromScalar(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    public abstract TypeDeserializer forProperty(BeanProperty beanProperty);

    public abstract Class<?> getDefaultImpl();

    public abstract String getPropertyName();

    public abstract TypeIdResolver getTypeIdResolver();

    public abstract JsonTypeInfo.As getTypeInclusion();

    public static Object deserializeIfNatural(JsonParser jsonParser, DeserializationContext deserializationContext, JavaType javaType) throws IOException {
        return deserializeIfNatural(jsonParser, deserializationContext, javaType.getRawClass());
    }

    public static Object deserializeIfNatural(JsonParser jsonParser, DeserializationContext deserializationContext, Class<?> cls) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == null) {
            return null;
        }
        switch (currentToken) {
            case VALUE_STRING:
                if (!cls.isAssignableFrom(String.class)) {
                    return null;
                }
                return jsonParser.getText();
            case VALUE_NUMBER_INT:
                if (!cls.isAssignableFrom(Integer.class)) {
                    return null;
                }
                return Integer.valueOf(jsonParser.getIntValue());
            case VALUE_NUMBER_FLOAT:
                if (!cls.isAssignableFrom(Double.class)) {
                    return null;
                }
                return Double.valueOf(jsonParser.getDoubleValue());
            case VALUE_TRUE:
                if (!cls.isAssignableFrom(Boolean.class)) {
                    return null;
                }
                return Boolean.TRUE;
            case VALUE_FALSE:
                if (!cls.isAssignableFrom(Boolean.class)) {
                    return null;
                }
                return Boolean.FALSE;
            default:
                return null;
        }
    }
}
