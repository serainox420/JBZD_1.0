package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.Base64Variants;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class PrimitiveArrayDeserializers<T> extends StdDeserializer<T> implements ContextualDeserializer {
    protected final Boolean _unwrapSingle;

    protected abstract T handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    protected abstract PrimitiveArrayDeserializers<?> withResolved(Boolean bool);

    protected PrimitiveArrayDeserializers(Class<T> cls) {
        super((Class<?>) cls);
        this._unwrapSingle = null;
    }

    protected PrimitiveArrayDeserializers(PrimitiveArrayDeserializers<?> primitiveArrayDeserializers, Boolean bool) {
        super(primitiveArrayDeserializers._valueClass);
        this._unwrapSingle = bool;
    }

    public static JsonDeserializer<?> forType(Class<?> cls) {
        if (cls == Integer.TYPE) {
            return IntDeser.instance;
        }
        if (cls == Long.TYPE) {
            return LongDeser.instance;
        }
        if (cls == Byte.TYPE) {
            return new ByteDeser();
        }
        if (cls == Short.TYPE) {
            return new ShortDeser();
        }
        if (cls == Float.TYPE) {
            return new FloatDeser();
        }
        if (cls == Double.TYPE) {
            return new DoubleDeser();
        }
        if (cls == Boolean.TYPE) {
            return new BooleanDeser();
        }
        if (cls == Character.TYPE) {
            return new CharDeser();
        }
        throw new IllegalStateException();
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    /* renamed from: createContextual */
    public JsonDeserializer<?> mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        Boolean findFormatFeature = findFormatFeature(deserializationContext, beanProperty, this._valueClass, JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
        return findFormatFeature == this._unwrapSingle ? this : withResolved(findFormatFeature);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    protected T handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.hasToken(JsonToken.VALUE_STRING) && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
            return null;
        }
        if (this._unwrapSingle == Boolean.TRUE || (this._unwrapSingle == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))) {
            return handleSingleElementUnwrapped(jsonParser, deserializationContext);
        }
        return (T) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    static final class CharDeser extends PrimitiveArrayDeserializers<char[]> {
        private static final long serialVersionUID = 1;

        public CharDeser() {
            super(char[].class);
        }

        protected CharDeser(CharDeser charDeser, Boolean bool) {
            super(charDeser, bool);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> withResolved(Boolean bool) {
            return this;
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public char[] mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String charSequence;
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_STRING) {
                char[] textCharacters = jsonParser.getTextCharacters();
                int textOffset = jsonParser.getTextOffset();
                int textLength = jsonParser.getTextLength();
                char[] cArr = new char[textLength];
                System.arraycopy(textCharacters, textOffset, cArr, 0, textLength);
                return cArr;
            } else if (jsonParser.isExpectedStartArrayToken()) {
                StringBuilder sb = new StringBuilder(64);
                while (true) {
                    JsonToken nextToken = jsonParser.nextToken();
                    if (nextToken != JsonToken.END_ARRAY) {
                        if (nextToken == JsonToken.VALUE_STRING) {
                            charSequence = jsonParser.getText();
                        } else {
                            charSequence = ((CharSequence) deserializationContext.handleUnexpectedToken(Character.TYPE, jsonParser)).toString();
                        }
                        if (charSequence.length() != 1) {
                            deserializationContext.reportMappingException("Can not convert a JSON String of length %d into a char element of char array", Integer.valueOf(charSequence.length()));
                        }
                        sb.append(charSequence.charAt(0));
                    } else {
                        return sb.toString().toCharArray();
                    }
                }
            } else {
                if (currentToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
                    Object embeddedObject = jsonParser.getEmbeddedObject();
                    if (embeddedObject == null) {
                        return null;
                    }
                    if (embeddedObject instanceof char[]) {
                        return (char[]) embeddedObject;
                    }
                    if (embeddedObject instanceof String) {
                        return ((String) embeddedObject).toCharArray();
                    }
                    if (embeddedObject instanceof byte[]) {
                        return Base64Variants.getDefaultVariant().encode((byte[]) embeddedObject, false).toCharArray();
                    }
                }
                return (char[]) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public char[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return (char[]) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    static final class BooleanDeser extends PrimitiveArrayDeserializers<boolean[]> {
        private static final long serialVersionUID = 1;

        public BooleanDeser() {
            super(boolean[].class);
        }

        protected BooleanDeser(BooleanDeser booleanDeser, Boolean bool) {
            super(booleanDeser, bool);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> withResolved(Boolean bool) {
            return new BooleanDeser(this, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public boolean[] mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            int i;
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ArrayBuilders.BooleanBuilder booleanBuilder = deserializationContext.getArrayBuilders().getBooleanBuilder();
            int i2 = 0;
            boolean[] resetAndStart = booleanBuilder.resetAndStart();
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                try {
                    boolean _parseBooleanPrimitive = _parseBooleanPrimitive(jsonParser, deserializationContext);
                    if (i2 >= resetAndStart.length) {
                        resetAndStart = booleanBuilder.appendCompletedChunk(resetAndStart, i2);
                        i = 0;
                    } else {
                        i = i2;
                    }
                    i2 = i + 1;
                    resetAndStart[i] = _parseBooleanPrimitive;
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, resetAndStart, i2 + booleanBuilder.bufferedSize());
                }
            }
            return booleanBuilder.completeAndClearBuffer(resetAndStart, i2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public boolean[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new boolean[]{_parseBooleanPrimitive(jsonParser, deserializationContext)};
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    static final class ByteDeser extends PrimitiveArrayDeserializers<byte[]> {
        private static final long serialVersionUID = 1;

        public ByteDeser() {
            super(byte[].class);
        }

        protected ByteDeser(ByteDeser byteDeser, Boolean bool) {
            super(byteDeser, bool);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> withResolved(Boolean bool) {
            return new ByteDeser(this, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public byte[] mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            byte byteValue;
            int i;
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_STRING) {
                return jsonParser.getBinaryValue(deserializationContext.getBase64Variant());
            }
            if (currentToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
                Object embeddedObject = jsonParser.getEmbeddedObject();
                if (embeddedObject == null) {
                    return null;
                }
                if (embeddedObject instanceof byte[]) {
                    return (byte[]) embeddedObject;
                }
            }
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ArrayBuilders.ByteBuilder byteBuilder = deserializationContext.getArrayBuilders().getByteBuilder();
            int i2 = 0;
            byte[] resetAndStart = byteBuilder.resetAndStart();
            while (true) {
                try {
                    JsonToken nextToken = jsonParser.nextToken();
                    if (nextToken != JsonToken.END_ARRAY) {
                        if (nextToken == JsonToken.VALUE_NUMBER_INT || nextToken == JsonToken.VALUE_NUMBER_FLOAT) {
                            byteValue = jsonParser.getByteValue();
                        } else {
                            byteValue = nextToken == JsonToken.VALUE_NULL ? (byte) 0 : ((Number) deserializationContext.handleUnexpectedToken(this._valueClass.getComponentType(), jsonParser)).byteValue();
                        }
                        if (i2 >= resetAndStart.length) {
                            resetAndStart = byteBuilder.appendCompletedChunk(resetAndStart, i2);
                            i = 0;
                        } else {
                            i = i2;
                        }
                        i2 = i + 1;
                        resetAndStart[i] = byteValue;
                    } else {
                        return byteBuilder.completeAndClearBuffer(resetAndStart, i2);
                    }
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, resetAndStart, i2 + byteBuilder.bufferedSize());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public byte[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            byte byteValue;
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
                byteValue = jsonParser.getByteValue();
            } else if (currentToken == JsonToken.VALUE_NULL) {
                return null;
            } else {
                byteValue = ((Number) deserializationContext.handleUnexpectedToken(this._valueClass.getComponentType(), jsonParser)).byteValue();
            }
            return new byte[]{byteValue};
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    static final class ShortDeser extends PrimitiveArrayDeserializers<short[]> {
        private static final long serialVersionUID = 1;

        public ShortDeser() {
            super(short[].class);
        }

        protected ShortDeser(ShortDeser shortDeser, Boolean bool) {
            super(shortDeser, bool);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> withResolved(Boolean bool) {
            return new ShortDeser(this, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public short[] mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            int i;
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ArrayBuilders.ShortBuilder shortBuilder = deserializationContext.getArrayBuilders().getShortBuilder();
            int i2 = 0;
            short[] resetAndStart = shortBuilder.resetAndStart();
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                try {
                    short _parseShortPrimitive = _parseShortPrimitive(jsonParser, deserializationContext);
                    if (i2 >= resetAndStart.length) {
                        resetAndStart = shortBuilder.appendCompletedChunk(resetAndStart, i2);
                        i = 0;
                    } else {
                        i = i2;
                    }
                    i2 = i + 1;
                    resetAndStart[i] = _parseShortPrimitive;
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, resetAndStart, i2 + shortBuilder.bufferedSize());
                }
            }
            return shortBuilder.completeAndClearBuffer(resetAndStart, i2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public short[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new short[]{_parseShortPrimitive(jsonParser, deserializationContext)};
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    static final class IntDeser extends PrimitiveArrayDeserializers<int[]> {
        public static final IntDeser instance = new IntDeser();
        private static final long serialVersionUID = 1;

        public IntDeser() {
            super(int[].class);
        }

        protected IntDeser(IntDeser intDeser, Boolean bool) {
            super(intDeser, bool);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> withResolved(Boolean bool) {
            return new IntDeser(this, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public int[] mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            int i;
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ArrayBuilders.IntBuilder intBuilder = deserializationContext.getArrayBuilders().getIntBuilder();
            int i2 = 0;
            int[] resetAndStart = intBuilder.resetAndStart();
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                try {
                    int _parseIntPrimitive = _parseIntPrimitive(jsonParser, deserializationContext);
                    if (i2 >= resetAndStart.length) {
                        resetAndStart = intBuilder.appendCompletedChunk(resetAndStart, i2);
                        i = 0;
                    } else {
                        i = i2;
                    }
                    i2 = i + 1;
                    resetAndStart[i] = _parseIntPrimitive;
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, resetAndStart, i2 + intBuilder.bufferedSize());
                }
            }
            return intBuilder.completeAndClearBuffer(resetAndStart, i2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public int[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new int[]{_parseIntPrimitive(jsonParser, deserializationContext)};
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    static final class LongDeser extends PrimitiveArrayDeserializers<long[]> {
        public static final LongDeser instance = new LongDeser();
        private static final long serialVersionUID = 1;

        public LongDeser() {
            super(long[].class);
        }

        protected LongDeser(LongDeser longDeser, Boolean bool) {
            super(longDeser, bool);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> withResolved(Boolean bool) {
            return new LongDeser(this, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public long[] mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            int i;
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ArrayBuilders.LongBuilder longBuilder = deserializationContext.getArrayBuilders().getLongBuilder();
            int i2 = 0;
            long[] resetAndStart = longBuilder.resetAndStart();
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                try {
                    long _parseLongPrimitive = _parseLongPrimitive(jsonParser, deserializationContext);
                    if (i2 >= resetAndStart.length) {
                        resetAndStart = longBuilder.appendCompletedChunk(resetAndStart, i2);
                        i = 0;
                    } else {
                        i = i2;
                    }
                    i2 = i + 1;
                    resetAndStart[i] = _parseLongPrimitive;
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, resetAndStart, i2 + longBuilder.bufferedSize());
                }
            }
            return longBuilder.completeAndClearBuffer(resetAndStart, i2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public long[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new long[]{_parseLongPrimitive(jsonParser, deserializationContext)};
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    static final class FloatDeser extends PrimitiveArrayDeserializers<float[]> {
        private static final long serialVersionUID = 1;

        public FloatDeser() {
            super(float[].class);
        }

        protected FloatDeser(FloatDeser floatDeser, Boolean bool) {
            super(floatDeser, bool);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> withResolved(Boolean bool) {
            return new FloatDeser(this, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public float[] mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            int i;
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ArrayBuilders.FloatBuilder floatBuilder = deserializationContext.getArrayBuilders().getFloatBuilder();
            int i2 = 0;
            float[] resetAndStart = floatBuilder.resetAndStart();
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                try {
                    float _parseFloatPrimitive = _parseFloatPrimitive(jsonParser, deserializationContext);
                    if (i2 >= resetAndStart.length) {
                        resetAndStart = floatBuilder.appendCompletedChunk(resetAndStart, i2);
                        i = 0;
                    } else {
                        i = i2;
                    }
                    i2 = i + 1;
                    resetAndStart[i] = _parseFloatPrimitive;
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, resetAndStart, i2 + floatBuilder.bufferedSize());
                }
            }
            return floatBuilder.completeAndClearBuffer(resetAndStart, i2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public float[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new float[]{_parseFloatPrimitive(jsonParser, deserializationContext)};
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    static final class DoubleDeser extends PrimitiveArrayDeserializers<double[]> {
        private static final long serialVersionUID = 1;

        public DoubleDeser() {
            super(double[].class);
        }

        protected DoubleDeser(DoubleDeser doubleDeser, Boolean bool) {
            super(doubleDeser, bool);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> withResolved(Boolean bool) {
            return new DoubleDeser(this, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public double[] mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            int i;
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ArrayBuilders.DoubleBuilder doubleBuilder = deserializationContext.getArrayBuilders().getDoubleBuilder();
            int i2 = 0;
            double[] resetAndStart = doubleBuilder.resetAndStart();
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                try {
                    double _parseDoublePrimitive = _parseDoublePrimitive(jsonParser, deserializationContext);
                    if (i2 >= resetAndStart.length) {
                        resetAndStart = doubleBuilder.appendCompletedChunk(resetAndStart, i2);
                        i = 0;
                    } else {
                        i = i2;
                    }
                    i2 = i + 1;
                    resetAndStart[i] = _parseDoublePrimitive;
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, resetAndStart, i2 + doubleBuilder.bufferedSize());
                }
            }
            return doubleBuilder.completeAndClearBuffer(resetAndStart, i2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public double[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new double[]{_parseDoublePrimitive(jsonParser, deserializationContext)};
        }
    }
}
