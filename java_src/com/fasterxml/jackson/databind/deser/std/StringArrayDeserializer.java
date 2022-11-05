package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import java.io.IOException;
@JacksonStdImpl
/* loaded from: classes.dex */
public final class StringArrayDeserializer extends StdDeserializer<String[]> implements ContextualDeserializer {
    public static final StringArrayDeserializer instance = new StringArrayDeserializer();
    private static final long serialVersionUID = 2;
    protected JsonDeserializer<String> _elementDeserializer;
    protected final Boolean _unwrapSingle;

    public StringArrayDeserializer() {
        this(null, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected StringArrayDeserializer(JsonDeserializer<?> jsonDeserializer, Boolean bool) {
        super(String[].class);
        this._elementDeserializer = jsonDeserializer;
        this._unwrapSingle = bool;
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    /* renamed from: createContextual */
    public JsonDeserializer<?> mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer<?> handleSecondaryContextualization;
        JsonDeserializer<?> findConvertingContentDeserializer = findConvertingContentDeserializer(deserializationContext, beanProperty, this._elementDeserializer);
        JavaType constructType = deserializationContext.constructType(String.class);
        if (findConvertingContentDeserializer == null) {
            handleSecondaryContextualization = deserializationContext.findContextualValueDeserializer(constructType, beanProperty);
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(findConvertingContentDeserializer, beanProperty, constructType);
        }
        Boolean findFormatFeature = findFormatFeature(deserializationContext, beanProperty, String[].class, JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
        if (handleSecondaryContextualization != null && isDefaultDeserializer(handleSecondaryContextualization)) {
            handleSecondaryContextualization = null;
        }
        return (this._elementDeserializer == handleSecondaryContextualization && this._unwrapSingle == findFormatFeature) ? this : new StringArrayDeserializer(handleSecondaryContextualization, findFormatFeature);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0044 A[Catch: Exception -> 0x004e, TryCatch #0 {Exception -> 0x004e, blocks: (B:10:0x001e, B:12:0x0024, B:15:0x0038, B:17:0x003c, B:18:0x0041, B:20:0x0044, B:21:0x0049), top: B:28:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0059  */
    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize  reason: collision with other method in class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String[] mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String str;
        int i;
        if (!jsonParser.isExpectedStartArrayToken()) {
            return handleNonArray(jsonParser, deserializationContext);
        }
        if (this._elementDeserializer != null) {
            return _deserializeCustom(jsonParser, deserializationContext);
        }
        ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
        int i2 = 0;
        while (true) {
            try {
                String nextTextValue = jsonParser.nextTextValue();
                if (nextTextValue == null) {
                    JsonToken currentToken = jsonParser.getCurrentToken();
                    if (currentToken != JsonToken.END_ARRAY) {
                        if (currentToken != JsonToken.VALUE_NULL) {
                            str = _parseString(jsonParser, deserializationContext);
                            if (i2 < resetAndStart.length) {
                                resetAndStart = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                                i = 0;
                            } else {
                                i = i2;
                            }
                            i2 = i + 1;
                            resetAndStart[i] = str;
                        }
                    } else {
                        String[] strArr = (String[]) leaseObjectBuffer.completeAndClearBuffer(resetAndStart, i2, String.class);
                        deserializationContext.returnObjectBuffer(leaseObjectBuffer);
                        return strArr;
                    }
                }
                str = nextTextValue;
                if (i2 < resetAndStart.length) {
                }
                i2 = i + 1;
                resetAndStart[i] = str;
            } catch (Exception e) {
                throw JsonMappingException.wrapWithPath(e, resetAndStart, i2 + leaseObjectBuffer.bufferedSize());
            }
        }
    }

    protected final String[] _deserializeCustom(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String mo573deserialize;
        int i;
        ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
        JsonDeserializer<String> jsonDeserializer = this._elementDeserializer;
        int i2 = 0;
        while (true) {
            try {
                if (jsonParser.nextTextValue() == null) {
                    JsonToken currentToken = jsonParser.getCurrentToken();
                    if (currentToken != JsonToken.END_ARRAY) {
                        mo573deserialize = currentToken == JsonToken.VALUE_NULL ? jsonDeserializer.mo289getNullValue(deserializationContext) : jsonDeserializer.mo573deserialize(jsonParser, deserializationContext);
                    } else {
                        String[] strArr = (String[]) leaseObjectBuffer.completeAndClearBuffer(resetAndStart, i2, String.class);
                        deserializationContext.returnObjectBuffer(leaseObjectBuffer);
                        return strArr;
                    }
                } else {
                    mo573deserialize = jsonDeserializer.mo573deserialize(jsonParser, deserializationContext);
                }
                if (i2 >= resetAndStart.length) {
                    resetAndStart = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                    i = 0;
                } else {
                    i = i2;
                }
                i2 = i + 1;
                resetAndStart[i] = mo573deserialize;
            } catch (Exception e) {
                throw JsonMappingException.wrapWithPath(e, String.class, i2);
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    private final String[] handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String str = null;
        if (this._unwrapSingle == Boolean.TRUE || (this._unwrapSingle == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))) {
            String[] strArr = new String[1];
            if (!jsonParser.hasToken(JsonToken.VALUE_NULL)) {
                str = _parseString(jsonParser, deserializationContext);
            }
            strArr[0] = str;
            return strArr;
        } else if (jsonParser.hasToken(JsonToken.VALUE_STRING) && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
            return null;
        } else {
            return (String[]) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }
    }
}
