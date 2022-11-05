package com.fasterxml.jackson.databind.deser.std;

import com.facebook.appevents.AppEventsConstants;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.NumberInput;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.io.IOException;
import java.io.Serializable;
import java.util.Date;
/* loaded from: classes.dex */
public abstract class StdDeserializer<T> extends JsonDeserializer<T> implements Serializable {
    protected static final int F_MASK_INT_COERCIONS = DeserializationFeature.USE_BIG_INTEGER_FOR_INTS.getMask() | DeserializationFeature.USE_LONG_FOR_INTS.getMask();
    private static final long serialVersionUID = 1;
    protected final Class<?> _valueClass;

    /* JADX INFO: Access modifiers changed from: protected */
    public StdDeserializer(Class<?> cls) {
        this._valueClass = cls;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StdDeserializer(JavaType javaType) {
        this._valueClass = javaType == null ? null : javaType.getRawClass();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StdDeserializer(StdDeserializer<?> stdDeserializer) {
        this._valueClass = stdDeserializer._valueClass;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Class<?> handledType() {
        return this._valueClass;
    }

    @Deprecated
    public final Class<?> getValueClass() {
        return this._valueClass;
    }

    public JavaType getValueType() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isDefaultDeserializer(JsonDeserializer<?> jsonDeserializer) {
        return ClassUtil.isJacksonStdImpl(jsonDeserializer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isDefaultKeyDeserializer(KeyDeserializer keyDeserializer) {
        return ClassUtil.isJacksonStdImpl(keyDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean _parseBooleanPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_TRUE) {
            return true;
        }
        if (currentToken == JsonToken.VALUE_FALSE || currentToken == JsonToken.VALUE_NULL) {
            return false;
        }
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            return _parseBooleanFromInt(jsonParser, deserializationContext);
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if ("true".equals(trim) || "True".equals(trim)) {
                return true;
            }
            if (Consts.False.equals(trim) || "False".equals(trim) || trim.length() == 0 || _hasTextualNull(trim)) {
                return false;
            }
            Boolean bool = (Boolean) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "only \"true\" or \"false\" recognized", new Object[0]);
            return bool == null ? false : bool.booleanValue();
        } else if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            jsonParser.nextToken();
            boolean _parseBooleanPrimitive = _parseBooleanPrimitive(jsonParser, deserializationContext);
            if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                return _parseBooleanPrimitive;
            }
            return _parseBooleanPrimitive;
        } else {
            return ((Boolean) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser)).booleanValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Boolean _parseBoolean(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_TRUE) {
            return Boolean.TRUE;
        }
        if (currentToken == JsonToken.VALUE_FALSE) {
            return Boolean.FALSE;
        }
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            return Boolean.valueOf(_parseBooleanFromInt(jsonParser, deserializationContext));
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return (Boolean) mo289getNullValue(deserializationContext);
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if ("true".equals(trim) || "True".equals(trim)) {
                return Boolean.TRUE;
            }
            if (Consts.False.equals(trim) || "False".equals(trim)) {
                return Boolean.FALSE;
            }
            if (trim.length() == 0) {
                return (Boolean) getEmptyValue(deserializationContext);
            }
            if (_hasTextualNull(trim)) {
                return (Boolean) mo289getNullValue(deserializationContext);
            }
            return (Boolean) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "only \"true\" or \"false\" recognized", new Object[0]);
        } else if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            jsonParser.nextToken();
            Boolean _parseBoolean = _parseBoolean(jsonParser, deserializationContext);
            if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                return _parseBoolean;
            }
            return _parseBoolean;
        } else {
            return (Boolean) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }
    }

    protected boolean _parseBooleanFromInt(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return !AppEventsConstants.EVENT_PARAM_VALUE_NO.equals(jsonParser.getText());
    }

    @Deprecated
    protected boolean _parseBooleanFromOther(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return _parseBooleanFromInt(jsonParser, deserializationContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public Byte _parseByte(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Byte b;
        int i = 0;
        i = 0;
        i = 0;
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            return Byte.valueOf(jsonParser.getByteValue());
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if (_hasTextualNull(trim)) {
                return (Byte) mo289getNullValue(deserializationContext);
            }
            try {
                if (trim.length() == 0) {
                    b = (Byte) getEmptyValue(deserializationContext);
                } else {
                    int parseInt = NumberInput.parseInt(trim);
                    if (parseInt < -128 || parseInt > 255) {
                        Object[] objArr = new Object[0];
                        b = (Byte) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "overflow, value can not be represented as 8-bit value", objArr);
                        i = objArr;
                    } else {
                        b = Byte.valueOf((byte) parseInt);
                    }
                }
                return b;
            } catch (IllegalArgumentException e) {
                return (Byte) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid Byte value", new Object[i]);
            }
        } else if (currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            if (!deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                _failDoubleToIntCoercion(jsonParser, deserializationContext, "Byte");
            }
            return Byte.valueOf(jsonParser.getByteValue());
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return (Byte) mo289getNullValue(deserializationContext);
        } else {
            if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.nextToken();
                Byte _parseByte = _parseByte(jsonParser, deserializationContext);
                if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                    handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                    return _parseByte;
                }
                return _parseByte;
            }
            return (Byte) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public Short _parseShort(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Short sh;
        int i = 0;
        i = 0;
        i = 0;
        i = 0;
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            return Short.valueOf(jsonParser.getShortValue());
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            try {
                if (trim.length() == 0) {
                    sh = (Short) getEmptyValue(deserializationContext);
                } else if (_hasTextualNull(trim)) {
                    sh = (Short) mo289getNullValue(deserializationContext);
                } else {
                    int parseInt = NumberInput.parseInt(trim);
                    if (parseInt < -32768 || parseInt > 32767) {
                        Object[] objArr = new Object[0];
                        sh = (Short) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "overflow, value can not be represented as 16-bit value", objArr);
                        i = objArr;
                    } else {
                        sh = Short.valueOf((short) parseInt);
                    }
                }
                return sh;
            } catch (IllegalArgumentException e) {
                return (Short) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid Short value", new Object[i]);
            }
        } else if (currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            if (!deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                _failDoubleToIntCoercion(jsonParser, deserializationContext, "Short");
            }
            return Short.valueOf(jsonParser.getShortValue());
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return (Short) mo289getNullValue(deserializationContext);
        } else {
            if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.nextToken();
                Short _parseShort = _parseShort(jsonParser, deserializationContext);
                if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                    handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                    return _parseShort;
                }
                return _parseShort;
            }
            return (Short) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final short _parseShortPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int _parseIntPrimitive = _parseIntPrimitive(jsonParser, deserializationContext);
        if (_parseIntPrimitive < -32768 || _parseIntPrimitive > 32767) {
            Number number = (Number) deserializationContext.handleWeirdStringValue(this._valueClass, String.valueOf(_parseIntPrimitive), "overflow, value can not be represented as 16-bit value", new Object[0]);
            if (number != null) {
                return number.shortValue();
            }
            return (short) 0;
        }
        return (short) _parseIntPrimitive;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int _parseIntPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.hasToken(JsonToken.VALUE_NUMBER_INT)) {
            return jsonParser.getIntValue();
        }
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if (_hasTextualNull(trim)) {
                return 0;
            }
            try {
                int length = trim.length();
                if (length > 9) {
                    long parseLong = Long.parseLong(trim);
                    if (parseLong < -2147483648L || parseLong > 2147483647L) {
                        Number number = (Number) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "Overflow: numeric value (%s) out of range of int (%d -%d)", trim, Integer.MIN_VALUE, Integer.MAX_VALUE);
                        return number == null ? 0 : number.intValue();
                    }
                    return (int) parseLong;
                } else if (length == 0) {
                    return 0;
                } else {
                    return NumberInput.parseInt(trim);
                }
            } catch (IllegalArgumentException e) {
                Number number2 = (Number) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid int value", new Object[0]);
                if (number2 == null) {
                    return 0;
                }
                return number2.intValue();
            }
        } else if (currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            if (!deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                _failDoubleToIntCoercion(jsonParser, deserializationContext, "int");
            }
            return jsonParser.getValueAsInt();
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return 0;
        } else {
            if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.nextToken();
                int _parseIntPrimitive = _parseIntPrimitive(jsonParser, deserializationContext);
                if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                    handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                    return _parseIntPrimitive;
                }
                return _parseIntPrimitive;
            }
            return ((Number) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser)).intValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final Integer _parseInteger(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Integer valueOf;
        switch (jsonParser.getCurrentTokenId()) {
            case 3:
                if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                    jsonParser.nextToken();
                    Integer _parseInteger = _parseInteger(jsonParser, deserializationContext);
                    if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                        return _parseInteger;
                    }
                    handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                    return _parseInteger;
                }
                break;
            case 6:
                String trim = jsonParser.getText().trim();
                try {
                    int length = trim.length();
                    if (_hasTextualNull(trim)) {
                        valueOf = (Integer) mo289getNullValue(deserializationContext);
                    } else if (length > 9) {
                        long parseLong = Long.parseLong(trim);
                        if (parseLong < -2147483648L || parseLong > 2147483647L) {
                            valueOf = (Integer) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "Overflow: numeric value (" + trim + ") out of range of Integer (-2147483648 - 2147483647)", new Object[0]);
                        } else {
                            valueOf = Integer.valueOf((int) parseLong);
                        }
                    } else if (length == 0) {
                        valueOf = (Integer) getEmptyValue(deserializationContext);
                    } else {
                        valueOf = Integer.valueOf(NumberInput.parseInt(trim));
                    }
                    return valueOf;
                } catch (IllegalArgumentException e) {
                    return (Integer) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid Integer value", new Object[0]);
                }
            case 7:
                return Integer.valueOf(jsonParser.getIntValue());
            case 8:
                if (!deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                    _failDoubleToIntCoercion(jsonParser, deserializationContext, "Integer");
                }
                return Integer.valueOf(jsonParser.getValueAsInt());
            case 11:
                return (Integer) mo289getNullValue(deserializationContext);
        }
        return (Integer) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final Long _parseLong(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        switch (jsonParser.getCurrentTokenId()) {
            case 3:
                if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                    jsonParser.nextToken();
                    Long _parseLong = _parseLong(jsonParser, deserializationContext);
                    if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                        return _parseLong;
                    }
                    handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                    return _parseLong;
                }
                break;
            case 6:
                String trim = jsonParser.getText().trim();
                if (trim.length() == 0) {
                    return (Long) getEmptyValue(deserializationContext);
                }
                if (_hasTextualNull(trim)) {
                    return (Long) mo289getNullValue(deserializationContext);
                }
                try {
                    return Long.valueOf(NumberInput.parseLong(trim));
                } catch (IllegalArgumentException e) {
                    return (Long) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid Long value", new Object[0]);
                }
            case 7:
                return Long.valueOf(jsonParser.getLongValue());
            case 8:
                if (!deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                    _failDoubleToIntCoercion(jsonParser, deserializationContext, "Long");
                }
                return Long.valueOf(jsonParser.getValueAsLong());
            case 11:
                return (Long) mo289getNullValue(deserializationContext);
        }
        return (Long) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final long _parseLongPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        switch (jsonParser.getCurrentTokenId()) {
            case 3:
                if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                    jsonParser.nextToken();
                    long _parseLongPrimitive = _parseLongPrimitive(jsonParser, deserializationContext);
                    if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                        return _parseLongPrimitive;
                    }
                    handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                    return _parseLongPrimitive;
                }
                break;
            case 6:
                String trim = jsonParser.getText().trim();
                if (trim.length() == 0 || _hasTextualNull(trim)) {
                    return 0L;
                }
                try {
                    return NumberInput.parseLong(trim);
                } catch (IllegalArgumentException e) {
                    Number number = (Number) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid long value", new Object[0]);
                    return number == null ? 0L : number.longValue();
                }
            case 7:
                return jsonParser.getLongValue();
            case 8:
                if (!deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                    _failDoubleToIntCoercion(jsonParser, deserializationContext, "long");
                }
                return jsonParser.getValueAsLong();
            case 11:
                return 0L;
        }
        return ((Number) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser)).longValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Float _parseFloat(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return Float.valueOf(jsonParser.getFloatValue());
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return (Float) getEmptyValue(deserializationContext);
            }
            if (_hasTextualNull(trim)) {
                return (Float) mo289getNullValue(deserializationContext);
            }
            switch (trim.charAt(0)) {
                case '-':
                    if (_isNegInf(trim)) {
                        return Float.valueOf(Float.NEGATIVE_INFINITY);
                    }
                    break;
                case 'I':
                    if (_isPosInf(trim)) {
                        return Float.valueOf(Float.POSITIVE_INFINITY);
                    }
                    break;
                case 'N':
                    if (_isNaN(trim)) {
                        return Float.valueOf(Float.NaN);
                    }
                    break;
            }
            try {
                return Float.valueOf(Float.parseFloat(trim));
            } catch (IllegalArgumentException e) {
                return (Float) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid Float value", new Object[0]);
            }
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return (Float) mo289getNullValue(deserializationContext);
        } else {
            if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.nextToken();
                Float _parseFloat = _parseFloat(jsonParser, deserializationContext);
                if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                    handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                    return _parseFloat;
                }
                return _parseFloat;
            }
            return (Float) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float _parseFloatPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return jsonParser.getFloatValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if (trim.length() == 0 || _hasTextualNull(trim)) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            switch (trim.charAt(0)) {
                case '-':
                    if (_isNegInf(trim)) {
                        return Float.NEGATIVE_INFINITY;
                    }
                    break;
                case 'I':
                    if (_isPosInf(trim)) {
                        return Float.POSITIVE_INFINITY;
                    }
                    break;
                case 'N':
                    if (_isNaN(trim)) {
                        return Float.NaN;
                    }
                    break;
            }
            try {
                return Float.parseFloat(trim);
            } catch (IllegalArgumentException e) {
                Number number = (Number) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid float value", new Object[0]);
                return number == null ? 0.0f : number.floatValue();
            }
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return BitmapDescriptorFactory.HUE_RED;
        } else {
            if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.nextToken();
                float _parseFloatPrimitive = _parseFloatPrimitive(jsonParser, deserializationContext);
                if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                    handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                    return _parseFloatPrimitive;
                }
                return _parseFloatPrimitive;
            }
            return ((Number) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser)).floatValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Double _parseDouble(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return Double.valueOf(jsonParser.getDoubleValue());
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return (Double) getEmptyValue(deserializationContext);
            }
            if (_hasTextualNull(trim)) {
                return (Double) mo289getNullValue(deserializationContext);
            }
            switch (trim.charAt(0)) {
                case '-':
                    if (_isNegInf(trim)) {
                        return Double.valueOf(Double.NEGATIVE_INFINITY);
                    }
                    break;
                case 'I':
                    if (_isPosInf(trim)) {
                        return Double.valueOf(Double.POSITIVE_INFINITY);
                    }
                    break;
                case 'N':
                    if (_isNaN(trim)) {
                        return Double.valueOf(Double.NaN);
                    }
                    break;
            }
            try {
                return Double.valueOf(parseDouble(trim));
            } catch (IllegalArgumentException e) {
                return (Double) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid Double value", new Object[0]);
            }
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return (Double) mo289getNullValue(deserializationContext);
        } else {
            if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.nextToken();
                Double _parseDouble = _parseDouble(jsonParser, deserializationContext);
                if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                    handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                    return _parseDouble;
                }
                return _parseDouble;
            }
            return (Double) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final double _parseDoublePrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return jsonParser.getDoubleValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if (trim.length() == 0 || _hasTextualNull(trim)) {
                return 0.0d;
            }
            switch (trim.charAt(0)) {
                case '-':
                    if (_isNegInf(trim)) {
                        return Double.NEGATIVE_INFINITY;
                    }
                    break;
                case 'I':
                    if (_isPosInf(trim)) {
                        return Double.POSITIVE_INFINITY;
                    }
                    break;
                case 'N':
                    if (_isNaN(trim)) {
                        return Double.NaN;
                    }
                    break;
            }
            try {
                return parseDouble(trim);
            } catch (IllegalArgumentException e) {
                Number number = (Number) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid double value", new Object[0]);
                return number == null ? 0.0d : number.doubleValue();
            }
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return 0.0d;
        } else {
            if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.nextToken();
                double _parseDoublePrimitive = _parseDoublePrimitive(jsonParser, deserializationContext);
                if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                    handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                    return _parseDoublePrimitive;
                }
                return _parseDoublePrimitive;
            }
            return ((Number) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser)).doubleValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Date _parseDate(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            return new Date(jsonParser.getLongValue());
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return (Date) mo289getNullValue(deserializationContext);
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            return _parseDate(jsonParser.getText().trim(), deserializationContext);
        }
        if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            jsonParser.nextToken();
            Date _parseDate = _parseDate(jsonParser, deserializationContext);
            if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                return _parseDate;
            }
            return _parseDate;
        }
        return (Date) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Date _parseDate(String str, DeserializationContext deserializationContext) throws IOException {
        Date parseDate;
        try {
            if (str.length() == 0) {
                parseDate = (Date) getEmptyValue(deserializationContext);
            } else if (_hasTextualNull(str)) {
                parseDate = (Date) mo289getNullValue(deserializationContext);
            } else {
                parseDate = deserializationContext.parseDate(str);
            }
            return parseDate;
        } catch (IllegalArgumentException e) {
            return (Date) deserializationContext.handleWeirdStringValue(this._valueClass, str, "not a valid representation (error: %s)", e.getMessage());
        }
    }

    protected static final double parseDouble(String str) throws NumberFormatException {
        if (NumberInput.NASTY_SMALL_DOUBLE.equals(str)) {
            return Double.MIN_NORMAL;
        }
        return Double.parseDouble(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String _parseString(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_STRING) {
            return jsonParser.getText();
        }
        if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            jsonParser.nextToken();
            String _parseString = _parseString(jsonParser, deserializationContext);
            if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                return _parseString;
            }
            return _parseString;
        }
        String valueAsString = jsonParser.getValueAsString();
        return valueAsString == null ? (String) deserializationContext.handleUnexpectedToken(String.class, jsonParser) : valueAsString;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public T _deserializeFromEmpty(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.START_ARRAY) {
            if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
                if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                    return (T) deserializationContext.handleUnexpectedToken(handledType(), jsonParser);
                }
                return null;
            }
        } else if (currentToken == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().trim().isEmpty()) {
            return null;
        }
        return (T) deserializationContext.handleUnexpectedToken(handledType(), jsonParser);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean _hasTextualNull(String str) {
        return "null".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean _isNegInf(String str) {
        return "-Infinity".equals(str) || "-INF".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean _isPosInf(String str) {
        return "Infinity".equals(str) || "INF".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean _isNaN(String str) {
        return "NaN".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object _coerceIntegral(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int deserializationFeatures = deserializationContext.getDeserializationFeatures();
        if (DeserializationFeature.USE_BIG_INTEGER_FOR_INTS.enabledIn(deserializationFeatures)) {
            return jsonParser.getBigIntegerValue();
        }
        if (DeserializationFeature.USE_LONG_FOR_INTS.enabledIn(deserializationFeatures)) {
            return Long.valueOf(jsonParser.getLongValue());
        }
        return jsonParser.getBigIntegerValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonDeserializer<Object> findDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        return deserializationContext.findContextualValueDeserializer(javaType, beanProperty);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean _isIntNumber(String str) {
        int length = str.length();
        if (length > 0) {
            char charAt = str.charAt(0);
            for (int i = (charAt == '-' || charAt == '+') ? 1 : 0; i < length; i++) {
                char charAt2 = str.charAt(i);
                if (charAt2 > '9' || charAt2 < '0') {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonDeserializer<?> findConvertingContentDeserializer(DeserializationContext deserializationContext, BeanProperty beanProperty, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        AnnotatedMember member;
        Object findDeserializationContentConverter;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector != null && beanProperty != null && (member = beanProperty.getMember()) != null && (findDeserializationContentConverter = annotationIntrospector.findDeserializationContentConverter(member)) != null) {
            Converter<Object, Object> converterInstance = deserializationContext.converterInstance(beanProperty.getMember(), findDeserializationContentConverter);
            JavaType inputType = converterInstance.getInputType(deserializationContext.getTypeFactory());
            if (jsonDeserializer == null) {
                jsonDeserializer = deserializationContext.findContextualValueDeserializer(inputType, beanProperty);
            }
            return new StdDelegatingDeserializer(converterInstance, inputType, jsonDeserializer);
        }
        return jsonDeserializer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonFormat.Value findFormatOverrides(DeserializationContext deserializationContext, BeanProperty beanProperty, Class<?> cls) {
        return beanProperty != null ? beanProperty.findPropertyFormat(deserializationContext.mo255getConfig(), cls) : deserializationContext.getDefaultPropertyFormat(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Boolean findFormatFeature(DeserializationContext deserializationContext, BeanProperty beanProperty, Class<?> cls, JsonFormat.Feature feature) {
        JsonFormat.Value findFormatOverrides = findFormatOverrides(deserializationContext, beanProperty, cls);
        if (findFormatOverrides != null) {
            return findFormatOverrides.getFeature(feature);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnknownProperty(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        if (obj == null) {
            obj = handledType();
        }
        if (!deserializationContext.handleUnknownProperty(jsonParser, this, obj, str)) {
            jsonParser.skipChildren();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleMissingEndArrayForSingle(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        deserializationContext.reportWrongTokenException(jsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single '%s' value but there was more than a single value in the array", handledType().getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _failDoubleToIntCoercion(JsonParser jsonParser, DeserializationContext deserializationContext, String str) throws IOException {
        deserializationContext.reportMappingException("Can not coerce a floating-point value ('%s') into %s; enable `DeserializationFeature.ACCEPT_FLOAT_AS_INT` to allow", jsonParser.getValueAsString(), str);
    }
}
