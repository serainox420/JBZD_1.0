package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.CompactStringObjectMap;
import com.fasterxml.jackson.databind.util.EnumResolver;
import java.io.IOException;
@JacksonStdImpl
/* loaded from: classes.dex */
public class EnumDeserializer extends StdScalarDeserializer<Object> {
    private static final long serialVersionUID = 1;
    private final Enum<?> _enumDefaultValue;
    protected Object[] _enumsByIndex;
    protected final CompactStringObjectMap _lookupByName;
    protected CompactStringObjectMap _lookupByToString;

    public EnumDeserializer(EnumResolver enumResolver) {
        super(enumResolver.getEnumClass());
        this._lookupByName = enumResolver.constructLookup();
        this._enumsByIndex = enumResolver.getRawEnums();
        this._enumDefaultValue = enumResolver.getDefaultValue();
    }

    @Deprecated
    public static JsonDeserializer<?> deserializerForCreator(DeserializationConfig deserializationConfig, Class<?> cls, AnnotatedMethod annotatedMethod) {
        return deserializerForCreator(deserializationConfig, cls, annotatedMethod, null, null);
    }

    public static JsonDeserializer<?> deserializerForCreator(DeserializationConfig deserializationConfig, Class<?> cls, AnnotatedMethod annotatedMethod, ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr) {
        if (deserializationConfig.canOverrideAccessModifiers()) {
            ClassUtil.checkAndFixAccess(annotatedMethod.mo333getMember(), deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        return new FactoryBasedEnumDeserializer(cls, annotatedMethod, annotatedMethod.getParameterType(0), valueInstantiator, settableBeanPropertyArr);
    }

    public static JsonDeserializer<?> deserializerForNoArgsCreator(DeserializationConfig deserializationConfig, Class<?> cls, AnnotatedMethod annotatedMethod) {
        if (deserializationConfig.canOverrideAccessModifiers()) {
            ClassUtil.checkAndFixAccess(annotatedMethod.mo333getMember(), deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        return new FactoryBasedEnumDeserializer(cls, annotatedMethod);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize */
    public Object mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_STRING || currentToken == JsonToken.FIELD_NAME) {
            CompactStringObjectMap _getToStringLookup = deserializationContext.isEnabled(DeserializationFeature.READ_ENUMS_USING_TO_STRING) ? _getToStringLookup(deserializationContext) : this._lookupByName;
            String text = jsonParser.getText();
            Object find = _getToStringLookup.find(text);
            return find == null ? _deserializeAltString(jsonParser, deserializationContext, _getToStringLookup, text) : find;
        } else if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            int intValue = jsonParser.getIntValue();
            if (deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS)) {
                return deserializationContext.handleWeirdNumberValue(_enumClass(), Integer.valueOf(intValue), "not allowed to deserialize Enum value out of number: disable DeserializationConfig.DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS to allow", new Object[0]);
            }
            if (intValue >= 0 && intValue < this._enumsByIndex.length) {
                return this._enumsByIndex[intValue];
            }
            if (this._enumDefaultValue != null && deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE)) {
                return this._enumDefaultValue;
            }
            if (deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                return null;
            }
            return deserializationContext.handleWeirdNumberValue(_enumClass(), Integer.valueOf(intValue), "index value outside legal index range [0..%s]", Integer.valueOf(this._enumsByIndex.length - 1));
        } else {
            return _deserializeOther(jsonParser, deserializationContext);
        }
    }

    private final Object _deserializeAltString(JsonParser jsonParser, DeserializationContext deserializationContext, CompactStringObjectMap compactStringObjectMap, String str) throws IOException {
        char charAt;
        String trim = str.trim();
        if (trim.length() == 0) {
            if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) {
                return null;
            }
        } else if (!deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS) && (charAt = trim.charAt(0)) >= '0' && charAt <= '9') {
            try {
                int parseInt = Integer.parseInt(trim);
                if (parseInt >= 0 && parseInt < this._enumsByIndex.length) {
                    return this._enumsByIndex[parseInt];
                }
            } catch (NumberFormatException e) {
            }
        }
        if (this._enumDefaultValue != null && deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE)) {
            return this._enumDefaultValue;
        }
        if (deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
            return null;
        }
        return deserializationContext.handleWeirdStringValue(_enumClass(), trim, "value not one of declared Enum instance names: %s", compactStringObjectMap.keys());
    }

    protected Object _deserializeOther(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (!deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS) || !jsonParser.isExpectedStartArrayToken()) {
            return deserializationContext.handleUnexpectedToken(_enumClass(), jsonParser);
        }
        jsonParser.nextToken();
        Object mo573deserialize = mo573deserialize(jsonParser, deserializationContext);
        if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
            handleMissingEndArrayForSingle(jsonParser, deserializationContext);
            return mo573deserialize;
        }
        return mo573deserialize;
    }

    protected Class<?> _enumClass() {
        return handledType();
    }

    protected CompactStringObjectMap _getToStringLookup(DeserializationContext deserializationContext) {
        CompactStringObjectMap compactStringObjectMap = this._lookupByToString;
        if (compactStringObjectMap == null) {
            synchronized (this) {
                compactStringObjectMap = EnumResolver.constructUnsafeUsingToString(_enumClass(), deserializationContext.getAnnotationIntrospector()).constructLookup();
            }
            this._lookupByToString = compactStringObjectMap;
        }
        return compactStringObjectMap;
    }
}
