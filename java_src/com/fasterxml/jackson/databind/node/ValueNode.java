package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonPointer;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.io.IOException;
import java.util.List;
/* loaded from: classes.dex */
public abstract class ValueNode extends BaseJsonNode {
    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.TreeNode
    public abstract JsonToken asToken();

    @Override // com.fasterxml.jackson.databind.JsonNode
    protected JsonNode _at(JsonPointer jsonPointer) {
        return MissingNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    /* renamed from: deepCopy */
    public <T extends JsonNode> T mo405deepCopy() {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public void serializeWithType(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        typeSerializer.writeTypePrefixForScalar(this, jsonGenerator);
        serialize(jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffixForScalar(this, jsonGenerator);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String toString() {
        return asText();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    /* renamed from: get  reason: collision with other method in class */
    public final JsonNode mo415get(int i) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    /* renamed from: path  reason: collision with other method in class */
    public final JsonNode mo417path(int i) {
        return MissingNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final boolean has(int i) {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final boolean hasNonNull(int i) {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    /* renamed from: get  reason: collision with other method in class */
    public final JsonNode mo416get(String str) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    /* renamed from: path  reason: collision with other method in class */
    public final JsonNode mo418path(String str) {
        return MissingNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final boolean has(String str) {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final boolean hasNonNull(String str) {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final JsonNode findValue(String str) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    /* renamed from: findParent  reason: collision with other method in class */
    public final ObjectNode mo414findParent(String str) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final List<JsonNode> findValues(String str, List<JsonNode> list) {
        return list;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final List<String> findValuesAsText(String str, List<String> list) {
        return list;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final List<JsonNode> findParents(String str, List<JsonNode> list) {
        return list;
    }
}
