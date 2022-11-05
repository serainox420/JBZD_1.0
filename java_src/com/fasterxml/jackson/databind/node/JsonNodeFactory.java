package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.databind.util.RawValue;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes.dex */
public class JsonNodeFactory implements JsonNodeCreator, Serializable {
    private static final long serialVersionUID = 1;
    private final boolean _cfgBigDecimalExact;
    private static final JsonNodeFactory decimalsNormalized = new JsonNodeFactory(false);
    private static final JsonNodeFactory decimalsAsIs = new JsonNodeFactory(true);
    public static final JsonNodeFactory instance = decimalsNormalized;

    public JsonNodeFactory(boolean z) {
        this._cfgBigDecimalExact = z;
    }

    protected JsonNodeFactory() {
        this(false);
    }

    public static JsonNodeFactory withExactBigDecimals(boolean z) {
        return z ? decimalsAsIs : decimalsNormalized;
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: booleanNode */
    public BooleanNode mo393booleanNode(boolean z) {
        return z ? BooleanNode.getTrue() : BooleanNode.getFalse();
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: nullNode */
    public NullNode mo394nullNode() {
        return NullNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public NumericNode mo395numberNode(byte b) {
        return IntNode.valueOf(b);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode numberNode(Byte b) {
        return b == null ? mo394nullNode() : IntNode.valueOf(b.intValue());
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public NumericNode mo402numberNode(short s) {
        return ShortNode.valueOf(s);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode numberNode(Short sh) {
        return sh == null ? mo394nullNode() : ShortNode.valueOf(sh.shortValue());
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public NumericNode mo398numberNode(int i) {
        return IntNode.valueOf(i);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode numberNode(Integer num) {
        return num == null ? mo394nullNode() : IntNode.valueOf(num.intValue());
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public NumericNode mo399numberNode(long j) {
        return LongNode.valueOf(j);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode numberNode(Long l) {
        return l == null ? mo394nullNode() : LongNode.valueOf(l.longValue());
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public NumericNode mo401numberNode(BigInteger bigInteger) {
        return BigIntegerNode.valueOf(bigInteger);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public NumericNode mo397numberNode(float f) {
        return FloatNode.valueOf(f);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode numberNode(Float f) {
        return f == null ? mo394nullNode() : FloatNode.valueOf(f.floatValue());
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public NumericNode mo396numberNode(double d) {
        return DoubleNode.valueOf(d);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode numberNode(Double d) {
        return d == null ? mo394nullNode() : DoubleNode.valueOf(d.doubleValue());
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: numberNode */
    public NumericNode mo400numberNode(BigDecimal bigDecimal) {
        if (this._cfgBigDecimalExact) {
            return DecimalNode.valueOf(bigDecimal);
        }
        return bigDecimal.compareTo(BigDecimal.ZERO) == 0 ? DecimalNode.ZERO : DecimalNode.valueOf(bigDecimal.stripTrailingZeros());
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: textNode */
    public TextNode mo403textNode(String str) {
        return TextNode.valueOf(str);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: binaryNode */
    public BinaryNode mo391binaryNode(byte[] bArr) {
        return BinaryNode.valueOf(bArr);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    /* renamed from: binaryNode */
    public BinaryNode mo392binaryNode(byte[] bArr, int i, int i2) {
        return BinaryNode.valueOf(bArr, i, i2);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ArrayNode arrayNode() {
        return new ArrayNode(this);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ArrayNode arrayNode(int i) {
        return new ArrayNode(this, i);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ObjectNode objectNode() {
        return new ObjectNode(this);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode pojoNode(Object obj) {
        return new POJONode(obj);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode rawValueNode(RawValue rawValue) {
        return new POJONode(rawValue);
    }

    protected boolean _inIntRange(long j) {
        return ((long) ((int) j)) == j;
    }
}
