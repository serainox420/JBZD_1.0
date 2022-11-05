package com.fasterxml.jackson.databind.deser.std;

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
import com.fasterxml.jackson.databind.deser.ResolvableDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
@JacksonStdImpl
/* loaded from: classes.dex */
public class UntypedObjectDeserializer extends StdDeserializer<Object> implements ContextualDeserializer, ResolvableDeserializer {
    protected static final Object[] NO_OBJECTS = new Object[0];
    @Deprecated
    public static final UntypedObjectDeserializer instance = new UntypedObjectDeserializer(null, null);
    private static final long serialVersionUID = 1;
    protected JsonDeserializer<Object> _listDeserializer;
    protected JavaType _listType;
    protected JsonDeserializer<Object> _mapDeserializer;
    protected JavaType _mapType;
    protected JsonDeserializer<Object> _numberDeserializer;
    protected JsonDeserializer<Object> _stringDeserializer;

    @Deprecated
    public UntypedObjectDeserializer() {
        this(null, null);
    }

    public UntypedObjectDeserializer(JavaType javaType, JavaType javaType2) {
        super(Object.class);
        this._listType = javaType;
        this._mapType = javaType2;
    }

    public UntypedObjectDeserializer(UntypedObjectDeserializer untypedObjectDeserializer, JsonDeserializer<?> jsonDeserializer, JsonDeserializer<?> jsonDeserializer2, JsonDeserializer<?> jsonDeserializer3, JsonDeserializer<?> jsonDeserializer4) {
        super(Object.class);
        this._mapDeserializer = jsonDeserializer;
        this._listDeserializer = jsonDeserializer2;
        this._stringDeserializer = jsonDeserializer3;
        this._numberDeserializer = jsonDeserializer4;
        this._listType = untypedObjectDeserializer._listType;
        this._mapType = untypedObjectDeserializer._mapType;
    }

    @Override // com.fasterxml.jackson.databind.deser.ResolvableDeserializer
    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        JavaType constructType = deserializationContext.constructType(Object.class);
        JavaType constructType2 = deserializationContext.constructType(String.class);
        TypeFactory typeFactory = deserializationContext.getTypeFactory();
        if (this._listType == null) {
            this._listDeserializer = _clearIfStdImpl(_findCustomDeser(deserializationContext, typeFactory.constructCollectionType(List.class, constructType)));
        } else {
            this._listDeserializer = _findCustomDeser(deserializationContext, this._listType);
        }
        if (this._mapType == null) {
            this._mapDeserializer = _clearIfStdImpl(_findCustomDeser(deserializationContext, typeFactory.constructMapType(Map.class, constructType2, constructType)));
        } else {
            this._mapDeserializer = _findCustomDeser(deserializationContext, this._mapType);
        }
        this._stringDeserializer = _clearIfStdImpl(_findCustomDeser(deserializationContext, constructType2));
        this._numberDeserializer = _clearIfStdImpl(_findCustomDeser(deserializationContext, typeFactory.constructType(Number.class)));
        JavaType unknownType = TypeFactory.unknownType();
        this._mapDeserializer = deserializationContext.handleSecondaryContextualization(this._mapDeserializer, null, unknownType);
        this._listDeserializer = deserializationContext.handleSecondaryContextualization(this._listDeserializer, null, unknownType);
        this._stringDeserializer = deserializationContext.handleSecondaryContextualization(this._stringDeserializer, null, unknownType);
        this._numberDeserializer = deserializationContext.handleSecondaryContextualization(this._numberDeserializer, null, unknownType);
    }

    protected JsonDeserializer<Object> _findCustomDeser(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        return deserializationContext.findNonContextualValueDeserializer(javaType);
    }

    protected JsonDeserializer<Object> _clearIfStdImpl(JsonDeserializer<Object> jsonDeserializer) {
        if (ClassUtil.isJacksonStdImpl(jsonDeserializer)) {
            return null;
        }
        return jsonDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    /* renamed from: createContextual */
    public JsonDeserializer<?> mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        if (this._stringDeserializer == null && this._numberDeserializer == null && this._mapDeserializer == null && this._listDeserializer == null && getClass() == UntypedObjectDeserializer.class) {
            return Vanilla.std;
        }
        return this;
    }

    protected JsonDeserializer<?> _withResolved(JsonDeserializer<?> jsonDeserializer, JsonDeserializer<?> jsonDeserializer2, JsonDeserializer<?> jsonDeserializer3, JsonDeserializer<?> jsonDeserializer4) {
        return new UntypedObjectDeserializer(this, jsonDeserializer, jsonDeserializer2, jsonDeserializer3, jsonDeserializer4);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize */
    public Object mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        switch (jsonParser.getCurrentTokenId()) {
            case 1:
            case 2:
            case 5:
                if (this._mapDeserializer != null) {
                    return this._mapDeserializer.mo573deserialize(jsonParser, deserializationContext);
                }
                return mapObject(jsonParser, deserializationContext);
            case 3:
                if (deserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
                    return mapArrayToArray(jsonParser, deserializationContext);
                }
                if (this._listDeserializer != null) {
                    return this._listDeserializer.mo573deserialize(jsonParser, deserializationContext);
                }
                return mapArray(jsonParser, deserializationContext);
            case 4:
            default:
                return deserializationContext.handleUnexpectedToken(Object.class, jsonParser);
            case 6:
                if (this._stringDeserializer != null) {
                    return this._stringDeserializer.mo573deserialize(jsonParser, deserializationContext);
                }
                return jsonParser.getText();
            case 7:
                if (this._numberDeserializer != null) {
                    return this._numberDeserializer.mo573deserialize(jsonParser, deserializationContext);
                }
                if (deserializationContext.hasSomeOfFeatures(F_MASK_INT_COERCIONS)) {
                    return _coerceIntegral(jsonParser, deserializationContext);
                }
                return jsonParser.getNumberValue();
            case 8:
                if (this._numberDeserializer != null) {
                    return this._numberDeserializer.mo573deserialize(jsonParser, deserializationContext);
                }
                if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                    return jsonParser.getDecimalValue();
                }
                return jsonParser.getNumberValue();
            case 9:
                return Boolean.TRUE;
            case 10:
                return Boolean.FALSE;
            case 11:
                return null;
            case 12:
                return jsonParser.getEmbeddedObject();
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        switch (jsonParser.getCurrentTokenId()) {
            case 1:
            case 3:
            case 5:
                return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
            case 2:
            case 4:
            default:
                return deserializationContext.handleUnexpectedToken(Object.class, jsonParser);
            case 6:
                if (this._stringDeserializer != null) {
                    return this._stringDeserializer.mo573deserialize(jsonParser, deserializationContext);
                }
                return jsonParser.getText();
            case 7:
                if (this._numberDeserializer != null) {
                    return this._numberDeserializer.mo573deserialize(jsonParser, deserializationContext);
                }
                if (deserializationContext.hasSomeOfFeatures(F_MASK_INT_COERCIONS)) {
                    return _coerceIntegral(jsonParser, deserializationContext);
                }
                return jsonParser.getNumberValue();
            case 8:
                if (this._numberDeserializer != null) {
                    return this._numberDeserializer.mo573deserialize(jsonParser, deserializationContext);
                }
                if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                    return jsonParser.getDecimalValue();
                }
                return jsonParser.getNumberValue();
            case 9:
                return Boolean.TRUE;
            case 10:
                return Boolean.FALSE;
            case 11:
                return null;
            case 12:
                return jsonParser.getEmbeddedObject();
        }
    }

    protected Object mapArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int i;
        int i2 = 2;
        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
            return new ArrayList(2);
        }
        Object mo573deserialize = mo573deserialize(jsonParser, deserializationContext);
        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(mo573deserialize);
            return arrayList;
        }
        Object mo573deserialize2 = mo573deserialize(jsonParser, deserializationContext);
        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
            ArrayList arrayList2 = new ArrayList(2);
            arrayList2.add(mo573deserialize);
            arrayList2.add(mo573deserialize2);
            return arrayList2;
        }
        ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
        resetAndStart[0] = mo573deserialize;
        resetAndStart[1] = mo573deserialize2;
        Object[] objArr = resetAndStart;
        int i3 = 2;
        do {
            Object mo573deserialize3 = mo573deserialize(jsonParser, deserializationContext);
            i2++;
            if (i3 >= objArr.length) {
                objArr = leaseObjectBuffer.appendCompletedChunk(objArr);
                i = 0;
            } else {
                i = i3;
            }
            i3 = i + 1;
            objArr[i] = mo573deserialize3;
        } while (jsonParser.nextToken() != JsonToken.END_ARRAY);
        ArrayList arrayList3 = new ArrayList(i2);
        leaseObjectBuffer.completeAndClearBuffer(objArr, i3, arrayList3);
        return arrayList3;
    }

    protected Object mapObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String str;
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.START_OBJECT) {
            str = jsonParser.nextFieldName();
        } else if (currentToken == JsonToken.FIELD_NAME) {
            str = jsonParser.getCurrentName();
        } else if (currentToken != JsonToken.END_OBJECT) {
            return deserializationContext.handleUnexpectedToken(handledType(), jsonParser);
        } else {
            str = null;
        }
        if (str == null) {
            return new LinkedHashMap(2);
        }
        jsonParser.nextToken();
        Object mo573deserialize = mo573deserialize(jsonParser, deserializationContext);
        String nextFieldName = jsonParser.nextFieldName();
        if (nextFieldName == null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(2);
            linkedHashMap.put(str, mo573deserialize);
            return linkedHashMap;
        }
        jsonParser.nextToken();
        Object mo573deserialize2 = mo573deserialize(jsonParser, deserializationContext);
        String nextFieldName2 = jsonParser.nextFieldName();
        if (nextFieldName2 == null) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(4);
            linkedHashMap2.put(str, mo573deserialize);
            linkedHashMap2.put(nextFieldName, mo573deserialize2);
            return linkedHashMap2;
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put(str, mo573deserialize);
        linkedHashMap3.put(nextFieldName, mo573deserialize2);
        do {
            jsonParser.nextToken();
            linkedHashMap3.put(nextFieldName2, mo573deserialize(jsonParser, deserializationContext));
            nextFieldName2 = jsonParser.nextFieldName();
        } while (nextFieldName2 != null);
        return linkedHashMap3;
    }

    protected Object[] mapArrayToArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int i;
        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
            return NO_OBJECTS;
        }
        ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
        int i2 = 0;
        do {
            Object mo573deserialize = mo573deserialize(jsonParser, deserializationContext);
            if (i2 >= resetAndStart.length) {
                resetAndStart = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                i = 0;
            } else {
                i = i2;
            }
            i2 = i + 1;
            resetAndStart[i] = mo573deserialize;
        } while (jsonParser.nextToken() != JsonToken.END_ARRAY);
        return leaseObjectBuffer.completeAndClearBuffer(resetAndStart, i2);
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    public static class Vanilla extends StdDeserializer<Object> {
        private static final long serialVersionUID = 1;
        public static final Vanilla std = new Vanilla();

        public Vanilla() {
            super(Object.class);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize */
        public Object mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            switch (jsonParser.getCurrentTokenId()) {
                case 1:
                    if (jsonParser.nextToken() == JsonToken.END_OBJECT) {
                        return new LinkedHashMap(2);
                    }
                    break;
                case 2:
                    return new LinkedHashMap(2);
                case 3:
                    if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                        if (deserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
                            return UntypedObjectDeserializer.NO_OBJECTS;
                        }
                        return new ArrayList(2);
                    } else if (deserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
                        return mapArrayToArray(jsonParser, deserializationContext);
                    } else {
                        return mapArray(jsonParser, deserializationContext);
                    }
                case 4:
                default:
                    return deserializationContext.handleUnexpectedToken(Object.class, jsonParser);
                case 5:
                    break;
                case 6:
                    return jsonParser.getText();
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
                case 9:
                    return Boolean.TRUE;
                case 10:
                    return Boolean.FALSE;
                case 11:
                    return null;
                case 12:
                    return jsonParser.getEmbeddedObject();
            }
            return mapObject(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserializeWithType */
        public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            switch (jsonParser.getCurrentTokenId()) {
                case 1:
                case 3:
                case 5:
                    return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
                case 2:
                case 4:
                default:
                    return deserializationContext.handleUnexpectedToken(Object.class, jsonParser);
                case 6:
                    return jsonParser.getText();
                case 7:
                    if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS)) {
                        return jsonParser.getBigIntegerValue();
                    }
                    return jsonParser.getNumberValue();
                case 8:
                    if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                        return jsonParser.getDecimalValue();
                    }
                    return jsonParser.getNumberValue();
                case 9:
                    return Boolean.TRUE;
                case 10:
                    return Boolean.FALSE;
                case 11:
                    return null;
                case 12:
                    return jsonParser.getEmbeddedObject();
            }
        }

        protected Object mapArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            int i;
            int i2 = 2;
            Object mo573deserialize = mo573deserialize(jsonParser, deserializationContext);
            if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(mo573deserialize);
                return arrayList;
            }
            Object mo573deserialize2 = mo573deserialize(jsonParser, deserializationContext);
            if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                ArrayList arrayList2 = new ArrayList(2);
                arrayList2.add(mo573deserialize);
                arrayList2.add(mo573deserialize2);
                return arrayList2;
            }
            ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
            Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
            resetAndStart[0] = mo573deserialize;
            resetAndStart[1] = mo573deserialize2;
            Object[] objArr = resetAndStart;
            int i3 = 2;
            do {
                Object mo573deserialize3 = mo573deserialize(jsonParser, deserializationContext);
                i2++;
                if (i3 >= objArr.length) {
                    objArr = leaseObjectBuffer.appendCompletedChunk(objArr);
                    i = 0;
                } else {
                    i = i3;
                }
                i3 = i + 1;
                objArr[i] = mo573deserialize3;
            } while (jsonParser.nextToken() != JsonToken.END_ARRAY);
            ArrayList arrayList3 = new ArrayList(i2);
            leaseObjectBuffer.completeAndClearBuffer(objArr, i3, arrayList3);
            return arrayList3;
        }

        protected Object mapObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String text = jsonParser.getText();
            jsonParser.nextToken();
            Object mo573deserialize = mo573deserialize(jsonParser, deserializationContext);
            String nextFieldName = jsonParser.nextFieldName();
            if (nextFieldName == null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(2);
                linkedHashMap.put(text, mo573deserialize);
                return linkedHashMap;
            }
            jsonParser.nextToken();
            Object mo573deserialize2 = mo573deserialize(jsonParser, deserializationContext);
            String nextFieldName2 = jsonParser.nextFieldName();
            if (nextFieldName2 == null) {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(4);
                linkedHashMap2.put(text, mo573deserialize);
                linkedHashMap2.put(nextFieldName, mo573deserialize2);
                return linkedHashMap2;
            }
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            linkedHashMap3.put(text, mo573deserialize);
            linkedHashMap3.put(nextFieldName, mo573deserialize2);
            do {
                jsonParser.nextToken();
                linkedHashMap3.put(nextFieldName2, mo573deserialize(jsonParser, deserializationContext));
                nextFieldName2 = jsonParser.nextFieldName();
            } while (nextFieldName2 != null);
            return linkedHashMap3;
        }

        protected Object[] mapArrayToArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            int i;
            ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
            Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
            int i2 = 0;
            do {
                Object mo573deserialize = mo573deserialize(jsonParser, deserializationContext);
                if (i2 >= resetAndStart.length) {
                    resetAndStart = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                    i = 0;
                } else {
                    i = i2;
                }
                i2 = i + 1;
                resetAndStart[i] = mo573deserialize;
            } while (jsonParser.nextToken() != JsonToken.END_ARRAY);
            return leaseObjectBuffer.completeAndClearBuffer(resetAndStart, i2);
        }
    }
}
