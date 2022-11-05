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
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import java.io.IOException;
import java.lang.reflect.Array;
@JacksonStdImpl
/* loaded from: classes.dex */
public class ObjectArrayDeserializer extends ContainerDeserializerBase<Object[]> implements ContextualDeserializer {
    private static final long serialVersionUID = 1;
    protected final ArrayType _arrayType;
    protected final Class<?> _elementClass;
    protected JsonDeserializer<Object> _elementDeserializer;
    protected final TypeDeserializer _elementTypeDeserializer;
    protected final boolean _untyped;
    protected final Boolean _unwrapSingle;

    public ObjectArrayDeserializer(ArrayType arrayType, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer) {
        super(arrayType);
        this._arrayType = arrayType;
        this._elementClass = arrayType.mo463getContentType().getRawClass();
        this._untyped = this._elementClass == Object.class;
        this._elementDeserializer = jsonDeserializer;
        this._elementTypeDeserializer = typeDeserializer;
        this._unwrapSingle = null;
    }

    protected ObjectArrayDeserializer(ObjectArrayDeserializer objectArrayDeserializer, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer, Boolean bool) {
        super(objectArrayDeserializer._arrayType);
        this._arrayType = objectArrayDeserializer._arrayType;
        this._elementClass = objectArrayDeserializer._elementClass;
        this._untyped = objectArrayDeserializer._untyped;
        this._elementDeserializer = jsonDeserializer;
        this._elementTypeDeserializer = typeDeserializer;
        this._unwrapSingle = bool;
    }

    public ObjectArrayDeserializer withDeserializer(TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) {
        return withResolved(typeDeserializer, jsonDeserializer, this._unwrapSingle);
    }

    public ObjectArrayDeserializer withResolved(TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer, Boolean bool) {
        return (bool == this._unwrapSingle && jsonDeserializer == this._elementDeserializer && typeDeserializer == this._elementTypeDeserializer) ? this : new ObjectArrayDeserializer(this, jsonDeserializer, typeDeserializer, bool);
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    /* renamed from: createContextual */
    public JsonDeserializer<?> mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer<?> handleSecondaryContextualization;
        JsonDeserializer<?> jsonDeserializer = this._elementDeserializer;
        Boolean findFormatFeature = findFormatFeature(deserializationContext, beanProperty, this._arrayType.getRawClass(), JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
        JsonDeserializer<?> findConvertingContentDeserializer = findConvertingContentDeserializer(deserializationContext, beanProperty, jsonDeserializer);
        JavaType mo463getContentType = this._arrayType.mo463getContentType();
        if (findConvertingContentDeserializer == null) {
            handleSecondaryContextualization = deserializationContext.findContextualValueDeserializer(mo463getContentType, beanProperty);
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(findConvertingContentDeserializer, beanProperty, mo463getContentType);
        }
        TypeDeserializer typeDeserializer = this._elementTypeDeserializer;
        if (typeDeserializer != null) {
            typeDeserializer = typeDeserializer.forProperty(beanProperty);
        }
        return withResolved(typeDeserializer, handleSecondaryContextualization, findFormatFeature);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return this._elementDeserializer == null && this._elementTypeDeserializer == null;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public JavaType getContentType() {
        return this._arrayType.mo463getContentType();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public JsonDeserializer<Object> getContentDeserializer() {
        return this._elementDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize  reason: collision with other method in class */
    public Object[] mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object[] completeAndClearBuffer;
        Object mo321deserializeWithType;
        int i;
        if (!jsonParser.isExpectedStartArrayToken()) {
            return handleNonArray(jsonParser, deserializationContext);
        }
        ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
        TypeDeserializer typeDeserializer = this._elementTypeDeserializer;
        int i2 = 0;
        while (true) {
            try {
                JsonToken nextToken = jsonParser.nextToken();
                if (nextToken == JsonToken.END_ARRAY) {
                    break;
                }
                if (nextToken == JsonToken.VALUE_NULL) {
                    mo321deserializeWithType = this._elementDeserializer.mo289getNullValue(deserializationContext);
                } else if (typeDeserializer == null) {
                    mo321deserializeWithType = this._elementDeserializer.mo573deserialize(jsonParser, deserializationContext);
                } else {
                    mo321deserializeWithType = this._elementDeserializer.mo321deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
                }
                if (i2 >= resetAndStart.length) {
                    resetAndStart = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                    i = 0;
                } else {
                    i = i2;
                }
                i2 = i + 1;
                resetAndStart[i] = mo321deserializeWithType;
            } catch (Exception e) {
                throw JsonMappingException.wrapWithPath(e, resetAndStart, i2 + leaseObjectBuffer.bufferedSize());
            }
        }
        if (this._untyped) {
            completeAndClearBuffer = leaseObjectBuffer.completeAndClearBuffer(resetAndStart, i2);
        } else {
            completeAndClearBuffer = leaseObjectBuffer.completeAndClearBuffer(resetAndStart, i2, this._elementClass);
        }
        deserializationContext.returnObjectBuffer(leaseObjectBuffer);
        return completeAndClearBuffer;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType  reason: collision with other method in class */
    public Object[] mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return (Object[]) typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    protected Byte[] deserializeFromBase64(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        byte[] binaryValue = jsonParser.getBinaryValue(deserializationContext.getBase64Variant());
        Byte[] bArr = new Byte[binaryValue.length];
        int length = binaryValue.length;
        for (int i = 0; i < length; i++) {
            bArr[i] = Byte.valueOf(binaryValue[i]);
        }
        return bArr;
    }

    protected Object[] handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object mo321deserializeWithType;
        Object[] objArr;
        if (jsonParser.hasToken(JsonToken.VALUE_STRING) && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
            return null;
        }
        if (!(this._unwrapSingle == Boolean.TRUE || (this._unwrapSingle == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)))) {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && this._elementClass == Byte.class) {
                return deserializeFromBase64(jsonParser, deserializationContext);
            }
            return (Object[]) deserializationContext.handleUnexpectedToken(this._arrayType.getRawClass(), jsonParser);
        }
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
            mo321deserializeWithType = this._elementDeserializer.mo289getNullValue(deserializationContext);
        } else if (this._elementTypeDeserializer == null) {
            mo321deserializeWithType = this._elementDeserializer.mo573deserialize(jsonParser, deserializationContext);
        } else {
            mo321deserializeWithType = this._elementDeserializer.mo321deserializeWithType(jsonParser, deserializationContext, this._elementTypeDeserializer);
        }
        if (this._untyped) {
            objArr = new Object[1];
        } else {
            objArr = (Object[]) Array.newInstance(this._elementClass, 1);
        }
        objArr[0] = mo321deserializeWithType;
        return objArr;
    }
}
