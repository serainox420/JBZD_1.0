package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ContainerNode;
import com.fasterxml.jackson.databind.util.RawValue;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes.dex */
public abstract class ContainerNode<T extends ContainerNode<T>> extends BaseJsonNode implements JsonNodeCreator {
    protected final JsonNodeFactory _nodeFactory;

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.TreeNode
    public abstract JsonToken asToken();

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    /* renamed from: get  reason: collision with other method in class */
    public abstract JsonNode mo415get(int i);

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    /* renamed from: get  reason: collision with other method in class */
    public abstract JsonNode mo416get(String str);

    /* renamed from: removeAll */
    public abstract T mo411removeAll();

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    public abstract int size();

    /* JADX INFO: Access modifiers changed from: protected */
    public ContainerNode(JsonNodeFactory jsonNodeFactory) {
        this._nodeFactory = jsonNodeFactory;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText() {
        return "";
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ArrayNode arrayNode() {
        return this._nodeFactory.arrayNode();
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ArrayNode arrayNode(int i) {
        return this._nodeFactory.arrayNode(i);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ObjectNode objectNode() {
        return this._nodeFactory.objectNode();
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: nullNode */
    public final NullNode mo394nullNode() {
        return this._nodeFactory.mo394nullNode();
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: booleanNode */
    public final BooleanNode mo393booleanNode(boolean z) {
        return this._nodeFactory.mo393booleanNode(z);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public final NumericNode mo395numberNode(byte b) {
        return this._nodeFactory.mo395numberNode(b);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public final NumericNode mo402numberNode(short s) {
        return this._nodeFactory.mo402numberNode(s);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public final NumericNode mo398numberNode(int i) {
        return this._nodeFactory.mo398numberNode(i);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public final NumericNode mo399numberNode(long j) {
        return this._nodeFactory.mo399numberNode(j);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public final NumericNode mo401numberNode(BigInteger bigInteger) {
        return this._nodeFactory.mo401numberNode(bigInteger);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public final NumericNode mo397numberNode(float f) {
        return this._nodeFactory.mo397numberNode(f);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public final NumericNode mo396numberNode(double d) {
        return this._nodeFactory.mo396numberNode(d);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public final NumericNode mo400numberNode(BigDecimal bigDecimal) {
        return this._nodeFactory.mo400numberNode(bigDecimal);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Byte b) {
        return this._nodeFactory.numberNode(b);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Short sh) {
        return this._nodeFactory.numberNode(sh);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Integer num) {
        return this._nodeFactory.numberNode(num);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Long l) {
        return this._nodeFactory.numberNode(l);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Float f) {
        return this._nodeFactory.numberNode(f);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Double d) {
        return this._nodeFactory.numberNode(d);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: textNode */
    public final TextNode mo403textNode(String str) {
        return this._nodeFactory.mo403textNode(str);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: binaryNode */
    public final BinaryNode mo391binaryNode(byte[] bArr) {
        return this._nodeFactory.mo391binaryNode(bArr);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: binaryNode */
    public final BinaryNode mo392binaryNode(byte[] bArr, int i, int i2) {
        return this._nodeFactory.mo392binaryNode(bArr, i, i2);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode pojoNode(Object obj) {
        return this._nodeFactory.pojoNode(obj);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode rawValueNode(RawValue rawValue) {
        return this._nodeFactory.rawValueNode(rawValue);
    }
}
