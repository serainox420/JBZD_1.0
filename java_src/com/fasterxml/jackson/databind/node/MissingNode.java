package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.io.IOException;
/* loaded from: classes.dex */
public final class MissingNode extends ValueNode {
    private static final MissingNode instance = new MissingNode();

    private MissingNode() {
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.JsonNode
    /* renamed from: deepCopy */
    public <T extends JsonNode> T mo405deepCopy() {
        return this;
    }

    public static MissingNode getInstance() {
        return instance;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNodeType getNodeType() {
        return JsonNodeType.MISSING;
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.TreeNode
    public JsonToken asToken() {
        return JsonToken.NOT_AVAILABLE;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText() {
        return "";
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText(String str) {
        return str;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public final void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeNull();
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public void serializeWithType(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        jsonGenerator.writeNull();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean equals(Object obj) {
        return obj == this;
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.JsonNode
    public String toString() {
        return "";
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return JsonNodeType.MISSING.ordinal();
    }
}
