package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashSet;
/* loaded from: classes.dex */
public class NumberDeserializers {
    private static final HashSet<String> _classNames = new HashSet<>();

    static {
        for (Class cls : new Class[]{Boolean.class, Byte.class, Short.class, Character.class, Integer.class, Long.class, Float.class, Double.class, Number.class, BigDecimal.class, BigInteger.class}) {
            _classNames.add(cls.getName());
        }
    }

    public static JsonDeserializer<?> find(Class<?> cls, String str) {
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                return IntegerDeserializer.primitiveInstance;
            }
            if (cls == Boolean.TYPE) {
                return BooleanDeserializer.primitiveInstance;
            }
            if (cls == Long.TYPE) {
                return LongDeserializer.primitiveInstance;
            }
            if (cls == Double.TYPE) {
                return DoubleDeserializer.primitiveInstance;
            }
            if (cls == Character.TYPE) {
                return CharacterDeserializer.primitiveInstance;
            }
            if (cls == Byte.TYPE) {
                return ByteDeserializer.primitiveInstance;
            }
            if (cls == Short.TYPE) {
                return ShortDeserializer.primitiveInstance;
            }
            if (cls == Float.TYPE) {
                return FloatDeserializer.primitiveInstance;
            }
        } else if (_classNames.contains(str)) {
            if (cls == Integer.class) {
                return IntegerDeserializer.wrapperInstance;
            }
            if (cls == Boolean.class) {
                return BooleanDeserializer.wrapperInstance;
            }
            if (cls == Long.class) {
                return LongDeserializer.wrapperInstance;
            }
            if (cls == Double.class) {
                return DoubleDeserializer.wrapperInstance;
            }
            if (cls == Character.class) {
                return CharacterDeserializer.wrapperInstance;
            }
            if (cls == Byte.class) {
                return ByteDeserializer.wrapperInstance;
            }
            if (cls == Short.class) {
                return ShortDeserializer.wrapperInstance;
            }
            if (cls == Float.class) {
                return FloatDeserializer.wrapperInstance;
            }
            if (cls == Number.class) {
                return NumberDeserializer.instance;
            }
            if (cls == BigDecimal.class) {
                return BigDecimalDeserializer.instance;
            }
            if (cls == BigInteger.class) {
                return BigIntegerDeserializer.instance;
            }
        } else {
            return null;
        }
        throw new IllegalArgumentException("Internal error: can't find deserializer for " + cls.getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static abstract class PrimitiveOrWrapperDeserializer<T> extends StdScalarDeserializer<T> {
        private static final long serialVersionUID = 1;
        protected final T _nullValue;
        protected final boolean _primitive;

        protected PrimitiveOrWrapperDeserializer(Class<T> cls, T t) {
            super((Class<?>) cls);
            this._nullValue = t;
            this._primitive = cls.isPrimitive();
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: getNullValue */
        public final T mo289getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
            if (this._primitive && deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
                deserializationContext.reportMappingException("Can not map JSON null into type %s (set DeserializationConfig.DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)", handledType().toString());
            }
            return this._nullValue;
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public T getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            if (this._primitive && deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
                deserializationContext.reportMappingException("Can not map Empty String as null into type %s (set DeserializationConfig.DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)", handledType().toString());
            }
            return this._nullValue;
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    public static final class BooleanDeserializer extends PrimitiveOrWrapperDeserializer<Boolean> {
        private static final long serialVersionUID = 1;
        static final BooleanDeserializer primitiveInstance = new BooleanDeserializer(Boolean.TYPE, Boolean.FALSE);
        static final BooleanDeserializer wrapperInstance = new BooleanDeserializer(Boolean.class, null);

        public BooleanDeserializer(Class<Boolean> cls, Boolean bool) {
            super(cls, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize */
        public Boolean mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseBoolean(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserializeWithType */
        public Boolean mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return _parseBoolean(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    public static class ByteDeserializer extends PrimitiveOrWrapperDeserializer<Byte> {
        private static final long serialVersionUID = 1;
        static final ByteDeserializer primitiveInstance = new ByteDeserializer(Byte.TYPE, (byte) 0);
        static final ByteDeserializer wrapperInstance = new ByteDeserializer(Byte.class, null);

        public ByteDeserializer(Class<Byte> cls, Byte b) {
            super(cls, b);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize */
        public Byte mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseByte(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    public static class ShortDeserializer extends PrimitiveOrWrapperDeserializer<Short> {
        private static final long serialVersionUID = 1;
        static final ShortDeserializer primitiveInstance = new ShortDeserializer(Short.TYPE, 0);
        static final ShortDeserializer wrapperInstance = new ShortDeserializer(Short.class, null);

        public ShortDeserializer(Class<Short> cls, Short sh) {
            super(cls, sh);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public Short mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseShort(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    public static class CharacterDeserializer extends PrimitiveOrWrapperDeserializer<Character> {
        private static final long serialVersionUID = 1;
        static final CharacterDeserializer primitiveInstance = new CharacterDeserializer(Character.TYPE, 0);
        static final CharacterDeserializer wrapperInstance = new CharacterDeserializer(Character.class, null);

        public CharacterDeserializer(Class<Character> cls, Character ch) {
            super(cls, ch);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize */
        public Character mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            switch (jsonParser.getCurrentTokenId()) {
                case 3:
                    if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                        jsonParser.nextToken();
                        Character mo573deserialize = mo573deserialize(jsonParser, deserializationContext);
                        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                            return mo573deserialize;
                        }
                        handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                        return mo573deserialize;
                    }
                    break;
                case 6:
                    String text = jsonParser.getText();
                    if (text.length() == 1) {
                        return Character.valueOf(text.charAt(0));
                    }
                    if (text.length() == 0) {
                        return getEmptyValue(deserializationContext);
                    }
                    break;
                case 7:
                    int intValue = jsonParser.getIntValue();
                    if (intValue >= 0 && intValue <= 65535) {
                        return Character.valueOf((char) intValue);
                    }
                    break;
            }
            return (Character) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    public static final class IntegerDeserializer extends PrimitiveOrWrapperDeserializer<Integer> {
        private static final long serialVersionUID = 1;
        static final IntegerDeserializer primitiveInstance = new IntegerDeserializer(Integer.TYPE, 0);
        static final IntegerDeserializer wrapperInstance = new IntegerDeserializer(Integer.class, null);

        public IntegerDeserializer(Class<Integer> cls, Integer num) {
            super(cls, num);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public boolean isCachable() {
            return true;
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize */
        public Integer mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return jsonParser.hasToken(JsonToken.VALUE_NUMBER_INT) ? Integer.valueOf(jsonParser.getIntValue()) : _parseInteger(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserializeWithType */
        public Integer mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return jsonParser.hasToken(JsonToken.VALUE_NUMBER_INT) ? Integer.valueOf(jsonParser.getIntValue()) : _parseInteger(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    public static final class LongDeserializer extends PrimitiveOrWrapperDeserializer<Long> {
        private static final long serialVersionUID = 1;
        static final LongDeserializer primitiveInstance = new LongDeserializer(Long.TYPE, 0L);
        static final LongDeserializer wrapperInstance = new LongDeserializer(Long.class, null);

        public LongDeserializer(Class<Long> cls, Long l) {
            super(cls, l);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public boolean isCachable() {
            return true;
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize */
        public Long mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return jsonParser.hasToken(JsonToken.VALUE_NUMBER_INT) ? Long.valueOf(jsonParser.getLongValue()) : _parseLong(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    public static class FloatDeserializer extends PrimitiveOrWrapperDeserializer<Float> {
        private static final long serialVersionUID = 1;
        static final FloatDeserializer primitiveInstance = new FloatDeserializer(Float.TYPE, Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
        static final FloatDeserializer wrapperInstance = new FloatDeserializer(Float.class, null);

        public FloatDeserializer(Class<Float> cls, Float f) {
            super(cls, f);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize */
        public Float mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseFloat(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    public static class DoubleDeserializer extends PrimitiveOrWrapperDeserializer<Double> {
        private static final long serialVersionUID = 1;
        static final DoubleDeserializer primitiveInstance = new DoubleDeserializer(Double.TYPE, Double.valueOf(0.0d));
        static final DoubleDeserializer wrapperInstance = new DoubleDeserializer(Double.class, null);

        public DoubleDeserializer(Class<Double> cls, Double d) {
            super(cls, d);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize */
        public Double mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseDouble(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserializeWithType */
        public Double mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return _parseDouble(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    public static class NumberDeserializer extends StdScalarDeserializer<Object> {
        public static final NumberDeserializer instance = new NumberDeserializer();

        public NumberDeserializer() {
            super(Number.class);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize */
        public Object mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Object valueOf;
            switch (jsonParser.getCurrentTokenId()) {
                case 3:
                    if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                        jsonParser.nextToken();
                        Object mo573deserialize = mo573deserialize(jsonParser, deserializationContext);
                        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                            return mo573deserialize;
                        }
                        handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                        return mo573deserialize;
                    }
                    break;
                case 6:
                    String trim = jsonParser.getText().trim();
                    if (trim.length() == 0) {
                        return getEmptyValue(deserializationContext);
                    }
                    if (_hasTextualNull(trim)) {
                        return mo289getNullValue(deserializationContext);
                    }
                    if (_isPosInf(trim)) {
                        return Double.valueOf(Double.POSITIVE_INFINITY);
                    }
                    if (_isNegInf(trim)) {
                        return Double.valueOf(Double.NEGATIVE_INFINITY);
                    }
                    if (_isNaN(trim)) {
                        return Double.valueOf(Double.NaN);
                    }
                    try {
                        if (!_isIntNumber(trim)) {
                            if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                                valueOf = new BigDecimal(trim);
                            } else {
                                valueOf = new Double(trim);
                            }
                        } else if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS)) {
                            valueOf = new BigInteger(trim);
                        } else {
                            long parseLong = Long.parseLong(trim);
                            if (!deserializationContext.isEnabled(DeserializationFeature.USE_LONG_FOR_INTS) && parseLong <= 2147483647L && parseLong >= -2147483648L) {
                                valueOf = Integer.valueOf((int) parseLong);
                            } else {
                                valueOf = Long.valueOf(parseLong);
                            }
                        }
                        return valueOf;
                    } catch (IllegalArgumentException e) {
                        return deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid number", new Object[0]);
                    }
                case 7:
                    if (deserializationContext.hasSomeOfFeatures(F_MASK_INT_COERCIONS)) {
                        return _coerceIntegral(jsonParser, deserializationContext);
                    }
                    return jsonParser.getNumberValue();
                case 8:
                    if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                        return jsonParser.getDecimalValue();
                    }
                    return jsonParser.getNumberValue();
            }
            return deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserializeWithType */
        public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            switch (jsonParser.getCurrentTokenId()) {
                case 6:
                case 7:
                case 8:
                    return mo573deserialize(jsonParser, deserializationContext);
                default:
                    return typeDeserializer.deserializeTypedFromScalar(jsonParser, deserializationContext);
            }
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    public static class BigIntegerDeserializer extends StdScalarDeserializer<BigInteger> {
        public static final BigIntegerDeserializer instance = new BigIntegerDeserializer();

        public BigIntegerDeserializer() {
            super(BigInteger.class);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public BigInteger mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            switch (jsonParser.getCurrentTokenId()) {
                case 3:
                    if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                        jsonParser.nextToken();
                        BigInteger mo573deserialize = mo573deserialize(jsonParser, deserializationContext);
                        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                            return mo573deserialize;
                        }
                        handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                        return mo573deserialize;
                    }
                    break;
                case 6:
                    String trim = jsonParser.getText().trim();
                    if (trim.length() == 0) {
                        return null;
                    }
                    try {
                        return new BigInteger(trim);
                    } catch (IllegalArgumentException e) {
                        return (BigInteger) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid representation", new Object[0]);
                    }
                case 7:
                    switch (jsonParser.getNumberType()) {
                        case INT:
                        case LONG:
                        case BIG_INTEGER:
                            return jsonParser.getBigIntegerValue();
                    }
                case 8:
                    if (!deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                        _failDoubleToIntCoercion(jsonParser, deserializationContext, "java.math.BigInteger");
                    }
                    return jsonParser.getDecimalValue().toBigInteger();
            }
            return (BigInteger) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    public static class BigDecimalDeserializer extends StdScalarDeserializer<BigDecimal> {
        public static final BigDecimalDeserializer instance = new BigDecimalDeserializer();

        public BigDecimalDeserializer() {
            super(BigDecimal.class);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public BigDecimal mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            switch (jsonParser.getCurrentTokenId()) {
                case 3:
                    if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                        jsonParser.nextToken();
                        BigDecimal mo573deserialize = mo573deserialize(jsonParser, deserializationContext);
                        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                            return mo573deserialize;
                        }
                        handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                        return mo573deserialize;
                    }
                    break;
                case 6:
                    String trim = jsonParser.getText().trim();
                    if (trim.length() == 0) {
                        return null;
                    }
                    try {
                        return new BigDecimal(trim);
                    } catch (IllegalArgumentException e) {
                        return (BigDecimal) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid representation", new Object[0]);
                    }
                case 7:
                case 8:
                    return jsonParser.getDecimalValue();
            }
            return (BigDecimal) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }
    }
}
