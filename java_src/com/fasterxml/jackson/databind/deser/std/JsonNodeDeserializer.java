package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.NullNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import java.io.IOException;
/* loaded from: classes.dex */
public class JsonNodeDeserializer extends BaseNodeDeserializer<JsonNode> {
    private static final JsonNodeDeserializer instance = new JsonNodeDeserializer();

    @Override // com.fasterxml.jackson.databind.deser.std.BaseNodeDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public /* bridge */ /* synthetic */ Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return super.mo321deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.BaseNodeDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public /* bridge */ /* synthetic */ boolean isCachable() {
        return super.isCachable();
    }

    protected JsonNodeDeserializer() {
        super(JsonNode.class);
    }

    public static JsonDeserializer<? extends JsonNode> getDeserializer(Class<?> cls) {
        if (cls == ObjectNode.class) {
            return ObjectDeserializer.getInstance();
        }
        if (cls == ArrayNode.class) {
            return ArrayDeserializer.getInstance();
        }
        return instance;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: getNullValue */
    public JsonNode mo289getNullValue(DeserializationContext deserializationContext) {
        return NullNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    @Deprecated
    /* renamed from: getNullValue */
    public JsonNode mo288getNullValue() {
        return NullNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize */
    public JsonNode mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        switch (jsonParser.getCurrentTokenId()) {
            case 1:
                return deserializeObject(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
            case 2:
            default:
                return deserializeAny(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
            case 3:
                return deserializeArray(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
        }
    }

    /* loaded from: classes.dex */
    static final class ObjectDeserializer extends BaseNodeDeserializer<ObjectNode> {
        protected static final ObjectDeserializer _instance = new ObjectDeserializer();
        private static final long serialVersionUID = 1;

        protected ObjectDeserializer() {
            super(ObjectNode.class);
        }

        public static ObjectDeserializer getInstance() {
            return _instance;
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize */
        public ObjectNode mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.isExpectedStartObjectToken() || jsonParser.hasToken(JsonToken.FIELD_NAME)) {
                return deserializeObject(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
            }
            if (jsonParser.hasToken(JsonToken.END_OBJECT)) {
                return deserializationContext.getNodeFactory().objectNode();
            }
            return (ObjectNode) deserializationContext.handleUnexpectedToken(ObjectNode.class, jsonParser);
        }
    }

    /* loaded from: classes.dex */
    static final class ArrayDeserializer extends BaseNodeDeserializer<ArrayNode> {
        protected static final ArrayDeserializer _instance = new ArrayDeserializer();
        private static final long serialVersionUID = 1;

        protected ArrayDeserializer() {
            super(ArrayNode.class);
        }

        public static ArrayDeserializer getInstance() {
            return _instance;
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize */
        public ArrayNode mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return jsonParser.isExpectedStartArrayToken() ? deserializeArray(jsonParser, deserializationContext, deserializationContext.getNodeFactory()) : (ArrayNode) deserializationContext.handleUnexpectedToken(ArrayNode.class, jsonParser);
        }
    }
}
