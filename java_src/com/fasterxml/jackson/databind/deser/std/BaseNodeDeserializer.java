package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.util.RawValue;
import java.io.IOException;
/* compiled from: JsonNodeDeserializer.java */
/* loaded from: classes.dex */
abstract class BaseNodeDeserializer<T extends JsonNode> extends StdDeserializer<T> {
    public BaseNodeDeserializer(Class<T> cls) {
        super((Class<?>) cls);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return true;
    }

    @Deprecated
    protected void _reportProblem(JsonParser jsonParser, String str) throws JsonMappingException {
        throw JsonMappingException.from(jsonParser, str);
    }

    protected void _handleDuplicateField(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory, String str, ObjectNode objectNode, JsonNode jsonNode, JsonNode jsonNode2) throws JsonProcessingException {
        if (deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_READING_DUP_TREE_KEY)) {
            deserializationContext.reportMappingException("Duplicate field '%s' for ObjectNode: not allowed when FAIL_ON_READING_DUP_TREE_KEY enabled", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ObjectNode deserializeObject(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        String currentName;
        JsonNode mo394nullNode;
        ObjectNode objectNode = jsonNodeFactory.objectNode();
        if (jsonParser.isExpectedStartObjectToken()) {
            currentName = jsonParser.nextFieldName();
        } else {
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken != JsonToken.END_OBJECT) {
                if (currentToken != JsonToken.FIELD_NAME) {
                    return (ObjectNode) deserializationContext.handleUnexpectedToken(handledType(), jsonParser);
                }
                currentName = jsonParser.getCurrentName();
            } else {
                return objectNode;
            }
        }
        while (currentName != null) {
            JsonToken nextToken = jsonParser.nextToken();
            if (nextToken == null) {
                throw deserializationContext.mappingException("Unexpected end-of-input when binding data into ObjectNode");
            }
            switch (nextToken.id()) {
                case 1:
                    mo394nullNode = deserializeObject(jsonParser, deserializationContext, jsonNodeFactory);
                    break;
                case 2:
                case 4:
                case 5:
                case 8:
                default:
                    mo394nullNode = deserializeAny(jsonParser, deserializationContext, jsonNodeFactory);
                    break;
                case 3:
                    mo394nullNode = deserializeArray(jsonParser, deserializationContext, jsonNodeFactory);
                    break;
                case 6:
                    mo394nullNode = jsonNodeFactory.mo403textNode(jsonParser.getText());
                    break;
                case 7:
                    mo394nullNode = _fromInt(jsonParser, deserializationContext, jsonNodeFactory);
                    break;
                case 9:
                    mo394nullNode = jsonNodeFactory.mo393booleanNode(true);
                    break;
                case 10:
                    mo394nullNode = jsonNodeFactory.mo393booleanNode(false);
                    break;
                case 11:
                    mo394nullNode = jsonNodeFactory.mo394nullNode();
                    break;
                case 12:
                    mo394nullNode = _fromEmbedded(jsonParser, deserializationContext, jsonNodeFactory);
                    break;
            }
            JsonNode replace = objectNode.replace(currentName, mo394nullNode);
            if (replace != null) {
                _handleDuplicateField(jsonParser, deserializationContext, jsonNodeFactory, currentName, objectNode, replace, mo394nullNode);
            }
            currentName = jsonParser.nextFieldName();
        }
        return objectNode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ArrayNode deserializeArray(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        ArrayNode arrayNode = jsonNodeFactory.arrayNode();
        while (true) {
            switch (jsonParser.nextToken().id()) {
                case 1:
                    arrayNode.add(deserializeObject(jsonParser, deserializationContext, jsonNodeFactory));
                    break;
                case 2:
                case 5:
                case 8:
                default:
                    arrayNode.add(deserializeAny(jsonParser, deserializationContext, jsonNodeFactory));
                    break;
                case 3:
                    arrayNode.add(deserializeArray(jsonParser, deserializationContext, jsonNodeFactory));
                    break;
                case 4:
                    return arrayNode;
                case 6:
                    arrayNode.add(jsonNodeFactory.mo403textNode(jsonParser.getText()));
                    break;
                case 7:
                    arrayNode.add(_fromInt(jsonParser, deserializationContext, jsonNodeFactory));
                    break;
                case 9:
                    arrayNode.add(jsonNodeFactory.mo393booleanNode(true));
                    break;
                case 10:
                    arrayNode.add(jsonNodeFactory.mo393booleanNode(false));
                    break;
                case 11:
                    arrayNode.add(jsonNodeFactory.mo394nullNode());
                    break;
                case 12:
                    arrayNode.add(_fromEmbedded(jsonParser, deserializationContext, jsonNodeFactory));
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonNode deserializeAny(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        switch (jsonParser.getCurrentTokenId()) {
            case 1:
            case 2:
            case 5:
                return deserializeObject(jsonParser, deserializationContext, jsonNodeFactory);
            case 3:
                return deserializeArray(jsonParser, deserializationContext, jsonNodeFactory);
            case 4:
            default:
                return (JsonNode) deserializationContext.handleUnexpectedToken(handledType(), jsonParser);
            case 6:
                return jsonNodeFactory.mo403textNode(jsonParser.getText());
            case 7:
                return _fromInt(jsonParser, deserializationContext, jsonNodeFactory);
            case 8:
                return _fromFloat(jsonParser, deserializationContext, jsonNodeFactory);
            case 9:
                return jsonNodeFactory.mo393booleanNode(true);
            case 10:
                return jsonNodeFactory.mo393booleanNode(false);
            case 11:
                return jsonNodeFactory.mo394nullNode();
            case 12:
                return _fromEmbedded(jsonParser, deserializationContext, jsonNodeFactory);
        }
    }

    protected final JsonNode _fromInt(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        JsonParser.NumberType numberType;
        int deserializationFeatures = deserializationContext.getDeserializationFeatures();
        if ((F_MASK_INT_COERCIONS & deserializationFeatures) != 0) {
            if (DeserializationFeature.USE_BIG_INTEGER_FOR_INTS.enabledIn(deserializationFeatures)) {
                numberType = JsonParser.NumberType.BIG_INTEGER;
            } else if (DeserializationFeature.USE_LONG_FOR_INTS.enabledIn(deserializationFeatures)) {
                numberType = JsonParser.NumberType.LONG;
            } else {
                numberType = jsonParser.getNumberType();
            }
        } else {
            numberType = jsonParser.getNumberType();
        }
        if (numberType == JsonParser.NumberType.INT) {
            return jsonNodeFactory.mo398numberNode(jsonParser.getIntValue());
        }
        if (numberType == JsonParser.NumberType.LONG) {
            return jsonNodeFactory.mo399numberNode(jsonParser.getLongValue());
        }
        return jsonNodeFactory.mo401numberNode(jsonParser.getBigIntegerValue());
    }

    protected final JsonNode _fromFloat(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        JsonParser.NumberType numberType = jsonParser.getNumberType();
        if (numberType == JsonParser.NumberType.BIG_DECIMAL) {
            return jsonNodeFactory.mo400numberNode(jsonParser.getDecimalValue());
        }
        if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
            double doubleValue = jsonParser.getDoubleValue();
            if (Double.isInfinite(doubleValue) || Double.isNaN(doubleValue)) {
                return jsonNodeFactory.mo396numberNode(doubleValue);
            }
            return jsonNodeFactory.mo400numberNode(jsonParser.getDecimalValue());
        } else if (numberType == JsonParser.NumberType.FLOAT) {
            return jsonNodeFactory.mo397numberNode(jsonParser.getFloatValue());
        } else {
            return jsonNodeFactory.mo396numberNode(jsonParser.getDoubleValue());
        }
    }

    protected final JsonNode _fromEmbedded(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        Object embeddedObject = jsonParser.getEmbeddedObject();
        if (embeddedObject == null) {
            return jsonNodeFactory.mo394nullNode();
        }
        if (embeddedObject.getClass() == byte[].class) {
            return jsonNodeFactory.mo391binaryNode((byte[]) embeddedObject);
        }
        if (embeddedObject instanceof RawValue) {
            return jsonNodeFactory.rawValueNode((RawValue) embeddedObject);
        }
        if (embeddedObject instanceof JsonNode) {
            return (JsonNode) embeddedObject;
        }
        return jsonNodeFactory.pojoNode(embeddedObject);
    }
}
