package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonPointer;
import com.fasterxml.jackson.core.TreeNode;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.node.JsonNodeType;
import com.fasterxml.jackson.databind.node.MissingNode;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class JsonNode extends JsonSerializable.Base implements TreeNode, Iterable<JsonNode> {
    protected abstract JsonNode _at(JsonPointer jsonPointer);

    public abstract String asText();

    /* renamed from: deepCopy */
    public abstract <T extends JsonNode> T mo405deepCopy();

    public abstract boolean equals(Object obj);

    /* renamed from: findParent */
    public abstract JsonNode mo414findParent(String str);

    public abstract List<JsonNode> findParents(String str, List<JsonNode> list);

    public abstract JsonNode findPath(String str);

    public abstract JsonNode findValue(String str);

    public abstract List<JsonNode> findValues(String str, List<JsonNode> list);

    public abstract List<String> findValuesAsText(String str, List<String> list);

    @Override // com.fasterxml.jackson.core.TreeNode
    /* renamed from: get  reason: collision with other method in class */
    public abstract JsonNode mo415get(int i);

    public abstract JsonNodeType getNodeType();

    @Override // com.fasterxml.jackson.core.TreeNode
    /* renamed from: path  reason: collision with other method in class */
    public abstract JsonNode mo417path(int i);

    @Override // com.fasterxml.jackson.core.TreeNode
    /* renamed from: path  reason: collision with other method in class */
    public abstract JsonNode mo418path(String str);

    public abstract String toString();

    @Override // com.fasterxml.jackson.core.TreeNode
    public int size() {
        return 0;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public final boolean isValueNode() {
        switch (getNodeType()) {
            case ARRAY:
            case OBJECT:
            case MISSING:
                return false;
            default:
                return true;
        }
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public final boolean isContainerNode() {
        JsonNodeType nodeType = getNodeType();
        return nodeType == JsonNodeType.OBJECT || nodeType == JsonNodeType.ARRAY;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public final boolean isMissingNode() {
        return getNodeType() == JsonNodeType.MISSING;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public final boolean isArray() {
        return getNodeType() == JsonNodeType.ARRAY;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public final boolean isObject() {
        return getNodeType() == JsonNodeType.OBJECT;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    /* renamed from: get  reason: collision with other method in class */
    public JsonNode mo416get(String str) {
        return null;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public Iterator<String> fieldNames() {
        return ClassUtil.emptyIterator();
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    /* renamed from: at  reason: collision with other method in class */
    public final JsonNode mo220at(JsonPointer jsonPointer) {
        if (!jsonPointer.matches()) {
            JsonNode _at = _at(jsonPointer);
            if (_at == null) {
                return MissingNode.getInstance();
            }
            return _at.mo220at(jsonPointer.tail());
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    /* renamed from: at  reason: collision with other method in class */
    public final JsonNode mo221at(String str) {
        return mo220at(JsonPointer.compile(str));
    }

    public final boolean isPojo() {
        return getNodeType() == JsonNodeType.POJO;
    }

    public final boolean isNumber() {
        return getNodeType() == JsonNodeType.NUMBER;
    }

    public boolean isIntegralNumber() {
        return false;
    }

    public boolean isFloatingPointNumber() {
        return false;
    }

    public boolean isShort() {
        return false;
    }

    public boolean isInt() {
        return false;
    }

    public boolean isLong() {
        return false;
    }

    public boolean isFloat() {
        return false;
    }

    public boolean isDouble() {
        return false;
    }

    public boolean isBigDecimal() {
        return false;
    }

    public boolean isBigInteger() {
        return false;
    }

    public final boolean isTextual() {
        return getNodeType() == JsonNodeType.STRING;
    }

    public final boolean isBoolean() {
        return getNodeType() == JsonNodeType.BOOLEAN;
    }

    public final boolean isNull() {
        return getNodeType() == JsonNodeType.NULL;
    }

    public final boolean isBinary() {
        return getNodeType() == JsonNodeType.BINARY;
    }

    public boolean canConvertToInt() {
        return false;
    }

    public boolean canConvertToLong() {
        return false;
    }

    public String textValue() {
        return null;
    }

    public byte[] binaryValue() throws IOException {
        return null;
    }

    public boolean booleanValue() {
        return false;
    }

    public Number numberValue() {
        return null;
    }

    public short shortValue() {
        return (short) 0;
    }

    public int intValue() {
        return 0;
    }

    public long longValue() {
        return 0L;
    }

    public float floatValue() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    public double doubleValue() {
        return 0.0d;
    }

    public BigDecimal decimalValue() {
        return BigDecimal.ZERO;
    }

    public BigInteger bigIntegerValue() {
        return BigInteger.ZERO;
    }

    public String asText(String str) {
        String asText = asText();
        return asText == null ? str : asText;
    }

    public int asInt() {
        return asInt(0);
    }

    public int asInt(int i) {
        return i;
    }

    public long asLong() {
        return asLong(0L);
    }

    public long asLong(long j) {
        return j;
    }

    public double asDouble() {
        return asDouble(0.0d);
    }

    public double asDouble(double d) {
        return d;
    }

    public boolean asBoolean() {
        return asBoolean(false);
    }

    public boolean asBoolean(boolean z) {
        return z;
    }

    public boolean has(String str) {
        return mo416get(str) != null;
    }

    public boolean has(int i) {
        return mo415get(i) != null;
    }

    public boolean hasNonNull(String str) {
        JsonNode mo416get = mo416get(str);
        return mo416get != null && !mo416get.isNull();
    }

    public boolean hasNonNull(int i) {
        JsonNode mo415get = mo415get(i);
        return mo415get != null && !mo415get.isNull();
    }

    @Override // java.lang.Iterable
    public final Iterator<JsonNode> iterator() {
        return elements();
    }

    public Iterator<JsonNode> elements() {
        return ClassUtil.emptyIterator();
    }

    public Iterator<Map.Entry<String, JsonNode>> fields() {
        return ClassUtil.emptyIterator();
    }

    public final List<JsonNode> findValues(String str) {
        List<JsonNode> findValues = findValues(str, null);
        if (findValues == null) {
            return Collections.emptyList();
        }
        return findValues;
    }

    public final List<String> findValuesAsText(String str) {
        List<String> findValuesAsText = findValuesAsText(str, null);
        if (findValuesAsText == null) {
            return Collections.emptyList();
        }
        return findValuesAsText;
    }

    public final List<JsonNode> findParents(String str) {
        List<JsonNode> findParents = findParents(str, null);
        if (findParents == null) {
            return Collections.emptyList();
        }
        return findParents;
    }

    /* renamed from: with */
    public JsonNode mo412with(String str) {
        throw new UnsupportedOperationException("JsonNode not of type ObjectNode (but " + getClass().getName() + "), can not call with() on it");
    }

    /* renamed from: withArray */
    public JsonNode mo413withArray(String str) {
        throw new UnsupportedOperationException("JsonNode not of type ObjectNode (but " + getClass().getName() + "), can not call withArray() on it");
    }

    public boolean equals(Comparator<JsonNode> comparator, JsonNode jsonNode) {
        return comparator.compare(this, jsonNode) == 0;
    }
}
