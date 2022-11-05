package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.core.util.RequestPayload;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class JsonParser implements Versioned, Closeable {
    private static final int MAX_BYTE_I = 255;
    private static final int MAX_SHORT_I = 32767;
    private static final int MIN_BYTE_I = -128;
    private static final int MIN_SHORT_I = -32768;
    protected int _features;
    protected transient RequestPayload _requestPayload;

    /* loaded from: classes.dex */
    public enum NumberType {
        INT,
        LONG,
        BIG_INTEGER,
        FLOAT,
        DOUBLE,
        BIG_DECIMAL
    }

    public abstract void clearCurrentToken();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    public abstract BigInteger getBigIntegerValue() throws IOException;

    public abstract byte[] getBinaryValue(Base64Variant base64Variant) throws IOException;

    public abstract ObjectCodec getCodec();

    public abstract JsonLocation getCurrentLocation();

    public abstract String getCurrentName() throws IOException;

    public abstract JsonToken getCurrentToken();

    public abstract int getCurrentTokenId();

    public abstract BigDecimal getDecimalValue() throws IOException;

    public abstract double getDoubleValue() throws IOException;

    public abstract float getFloatValue() throws IOException;

    public abstract int getIntValue() throws IOException;

    public abstract JsonToken getLastClearedToken();

    public abstract long getLongValue() throws IOException;

    public abstract NumberType getNumberType() throws IOException;

    public abstract Number getNumberValue() throws IOException;

    /* renamed from: getParsingContext */
    public abstract JsonStreamContext mo184getParsingContext();

    public abstract String getText() throws IOException;

    public abstract char[] getTextCharacters() throws IOException;

    public abstract int getTextLength() throws IOException;

    public abstract int getTextOffset() throws IOException;

    public abstract JsonLocation getTokenLocation();

    public abstract String getValueAsString(String str) throws IOException;

    public abstract boolean hasCurrentToken();

    public abstract boolean hasTextCharacters();

    public abstract boolean hasToken(JsonToken jsonToken);

    public abstract boolean hasTokenId(int i);

    public abstract boolean isClosed();

    public abstract JsonToken nextToken() throws IOException;

    public abstract JsonToken nextValue() throws IOException;

    public abstract void overrideCurrentName(String str);

    public abstract void setCodec(ObjectCodec objectCodec);

    public abstract JsonParser skipChildren() throws IOException;

    @Override // com.fasterxml.jackson.core.Versioned
    public abstract Version version();

    /* loaded from: classes.dex */
    public enum Feature {
        AUTO_CLOSE_SOURCE(true),
        ALLOW_COMMENTS(false),
        ALLOW_YAML_COMMENTS(false),
        ALLOW_UNQUOTED_FIELD_NAMES(false),
        ALLOW_SINGLE_QUOTES(false),
        ALLOW_UNQUOTED_CONTROL_CHARS(false),
        ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false),
        ALLOW_NUMERIC_LEADING_ZEROS(false),
        ALLOW_NON_NUMERIC_NUMBERS(false),
        STRICT_DUPLICATE_DETECTION(false),
        IGNORE_UNDEFINED(false),
        ALLOW_MISSING_VALUES(false);
        
        private final boolean _defaultState;
        private final int _mask = 1 << ordinal();

        public static int collectDefaults() {
            Feature[] values;
            int i = 0;
            for (Feature feature : values()) {
                if (feature.enabledByDefault()) {
                    i |= feature.getMask();
                }
            }
            return i;
        }

        Feature(boolean z) {
            this._defaultState = z;
        }

        public boolean enabledByDefault() {
            return this._defaultState;
        }

        public boolean enabledIn(int i) {
            return (this._mask & i) != 0;
        }

        public int getMask() {
            return this._mask;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonParser() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonParser(int i) {
        this._features = i;
    }

    public Object getInputSource() {
        return null;
    }

    public Object getCurrentValue() {
        JsonStreamContext mo184getParsingContext = mo184getParsingContext();
        if (mo184getParsingContext == null) {
            return null;
        }
        return mo184getParsingContext.getCurrentValue();
    }

    public void setCurrentValue(Object obj) {
        JsonStreamContext mo184getParsingContext = mo184getParsingContext();
        if (mo184getParsingContext != null) {
            mo184getParsingContext.setCurrentValue(obj);
        }
    }

    public void setRequestPayloadOnError(RequestPayload requestPayload) {
        this._requestPayload = requestPayload;
    }

    public void setRequestPayloadOnError(byte[] bArr, String str) {
        this._requestPayload = bArr == null ? null : new RequestPayload(bArr, str);
    }

    public void setRequestPayloadOnError(String str) {
        this._requestPayload = str == null ? null : new RequestPayload(str);
    }

    public void setSchema(FormatSchema formatSchema) {
        throw new UnsupportedOperationException("Parser of type " + getClass().getName() + " does not support schema of type '" + formatSchema.getSchemaType() + "'");
    }

    public FormatSchema getSchema() {
        return null;
    }

    public boolean canUseSchema(FormatSchema formatSchema) {
        return false;
    }

    public boolean requiresCustomCodec() {
        return false;
    }

    public int releaseBuffered(OutputStream outputStream) throws IOException {
        return -1;
    }

    public int releaseBuffered(Writer writer) throws IOException {
        return -1;
    }

    public JsonParser enable(Feature feature) {
        this._features |= feature.getMask();
        return this;
    }

    public JsonParser disable(Feature feature) {
        this._features &= feature.getMask() ^ (-1);
        return this;
    }

    public JsonParser configure(Feature feature, boolean z) {
        if (z) {
            enable(feature);
        } else {
            disable(feature);
        }
        return this;
    }

    public boolean isEnabled(Feature feature) {
        return feature.enabledIn(this._features);
    }

    public int getFeatureMask() {
        return this._features;
    }

    @Deprecated
    public JsonParser setFeatureMask(int i) {
        this._features = i;
        return this;
    }

    public JsonParser overrideStdFeatures(int i, int i2) {
        return setFeatureMask((this._features & (i2 ^ (-1))) | (i & i2));
    }

    public int getFormatFeatures() {
        return 0;
    }

    public JsonParser overrideFormatFeatures(int i, int i2) {
        throw new IllegalArgumentException("No FormatFeatures defined for parser of type " + getClass().getName());
    }

    public boolean nextFieldName(SerializableString serializableString) throws IOException {
        return nextToken() == JsonToken.FIELD_NAME && serializableString.getValue().equals(getCurrentName());
    }

    public String nextFieldName() throws IOException {
        if (nextToken() == JsonToken.FIELD_NAME) {
            return getCurrentName();
        }
        return null;
    }

    public String nextTextValue() throws IOException {
        if (nextToken() == JsonToken.VALUE_STRING) {
            return getText();
        }
        return null;
    }

    public int nextIntValue(int i) throws IOException {
        return nextToken() == JsonToken.VALUE_NUMBER_INT ? getIntValue() : i;
    }

    public long nextLongValue(long j) throws IOException {
        return nextToken() == JsonToken.VALUE_NUMBER_INT ? getLongValue() : j;
    }

    public Boolean nextBooleanValue() throws IOException {
        JsonToken nextToken = nextToken();
        if (nextToken == JsonToken.VALUE_TRUE) {
            return Boolean.TRUE;
        }
        if (nextToken != JsonToken.VALUE_FALSE) {
            return null;
        }
        return Boolean.FALSE;
    }

    public void finishToken() throws IOException {
    }

    public JsonToken currentToken() {
        return getCurrentToken();
    }

    public int currentTokenId() {
        return getCurrentTokenId();
    }

    public boolean isExpectedStartArrayToken() {
        return currentToken() == JsonToken.START_ARRAY;
    }

    public boolean isExpectedStartObjectToken() {
        return currentToken() == JsonToken.START_OBJECT;
    }

    public int getText(Writer writer) throws IOException, UnsupportedOperationException {
        String text = getText();
        if (text == null) {
            return 0;
        }
        writer.write(text);
        return text.length();
    }

    public byte getByteValue() throws IOException {
        int intValue = getIntValue();
        if (intValue < MIN_BYTE_I || intValue > 255) {
            throw _constructError("Numeric value (" + getText() + ") out of range of Java byte");
        }
        return (byte) intValue;
    }

    public short getShortValue() throws IOException {
        int intValue = getIntValue();
        if (intValue < MIN_SHORT_I || intValue > MAX_SHORT_I) {
            throw _constructError("Numeric value (" + getText() + ") out of range of Java short");
        }
        return (short) intValue;
    }

    public boolean getBooleanValue() throws IOException {
        JsonToken currentToken = currentToken();
        if (currentToken == JsonToken.VALUE_TRUE) {
            return true;
        }
        if (currentToken != JsonToken.VALUE_FALSE) {
            throw new JsonParseException(this, String.format("Current token (%s) not of boolean type", currentToken)).withRequestPayload(this._requestPayload);
        }
        return false;
    }

    public Object getEmbeddedObject() throws IOException {
        return null;
    }

    public byte[] getBinaryValue() throws IOException {
        return getBinaryValue(Base64Variants.getDefaultVariant());
    }

    public int readBinaryValue(OutputStream outputStream) throws IOException {
        return readBinaryValue(Base64Variants.getDefaultVariant(), outputStream);
    }

    public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        _reportUnsupportedOperation();
        return 0;
    }

    public int getValueAsInt() throws IOException {
        return getValueAsInt(0);
    }

    public int getValueAsInt(int i) throws IOException {
        return i;
    }

    public long getValueAsLong() throws IOException {
        return getValueAsLong(0L);
    }

    public long getValueAsLong(long j) throws IOException {
        return j;
    }

    public double getValueAsDouble() throws IOException {
        return getValueAsDouble(0.0d);
    }

    public double getValueAsDouble(double d) throws IOException {
        return d;
    }

    public boolean getValueAsBoolean() throws IOException {
        return getValueAsBoolean(false);
    }

    public boolean getValueAsBoolean(boolean z) throws IOException {
        return z;
    }

    public String getValueAsString() throws IOException {
        return getValueAsString(null);
    }

    public boolean canReadObjectId() {
        return false;
    }

    public boolean canReadTypeId() {
        return false;
    }

    public Object getObjectId() throws IOException {
        return null;
    }

    public Object getTypeId() throws IOException {
        return null;
    }

    public <T> T readValueAs(Class<T> cls) throws IOException {
        return (T) _codec().readValue(this, cls);
    }

    public <T> T readValueAs(TypeReference<?> typeReference) throws IOException {
        return (T) _codec().readValue(this, typeReference);
    }

    public <T> Iterator<T> readValuesAs(Class<T> cls) throws IOException {
        return _codec().mo231readValues(this, cls);
    }

    public <T> Iterator<T> readValuesAs(TypeReference<?> typeReference) throws IOException {
        return _codec().mo230readValues(this, typeReference);
    }

    public <T extends TreeNode> T readValueAsTree() throws IOException {
        return (T) _codec().readTree(this);
    }

    protected ObjectCodec _codec() {
        ObjectCodec codec = getCodec();
        if (codec == null) {
            throw new IllegalStateException("No ObjectCodec defined for parser, needed for deserialization");
        }
        return codec;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonParseException _constructError(String str) {
        return new JsonParseException(this, str).withRequestPayload(this._requestPayload);
    }

    protected void _reportUnsupportedOperation() {
        throw new UnsupportedOperationException("Operation not supported by parser of type " + getClass().getName());
    }
}
