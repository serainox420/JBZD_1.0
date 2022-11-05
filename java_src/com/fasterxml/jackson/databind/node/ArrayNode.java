package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonPointer;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.util.RawValue;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class ArrayNode extends ContainerNode<ArrayNode> {
    private final List<JsonNode> _children;

    public ArrayNode(JsonNodeFactory jsonNodeFactory) {
        super(jsonNodeFactory);
        this._children = new ArrayList();
    }

    public ArrayNode(JsonNodeFactory jsonNodeFactory, int i) {
        super(jsonNodeFactory);
        this._children = new ArrayList(i);
    }

    public ArrayNode(JsonNodeFactory jsonNodeFactory, List<JsonNode> list) {
        super(jsonNodeFactory);
        this._children = list;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    protected JsonNode _at(JsonPointer jsonPointer) {
        return mo415get(jsonPointer.getMatchingIndex());
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    /* renamed from: deepCopy  reason: collision with other method in class */
    public ArrayNode mo405deepCopy() {
        ArrayNode arrayNode = new ArrayNode(this._nodeFactory);
        for (JsonNode jsonNode : this._children) {
            arrayNode._children.add(jsonNode.mo405deepCopy());
        }
        return arrayNode;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializable.Base
    public boolean isEmpty(SerializerProvider serializerProvider) {
        return this._children.isEmpty();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNodeType getNodeType() {
        return JsonNodeType.ARRAY;
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.TreeNode
    public JsonToken asToken() {
        return JsonToken.START_ARRAY;
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    public int size() {
        return this._children.size();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public Iterator<JsonNode> elements() {
        return this._children.iterator();
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    /* renamed from: get  reason: collision with other method in class */
    public JsonNode mo415get(int i) {
        if (i < 0 || i >= this._children.size()) {
            return null;
        }
        return this._children.get(i);
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    /* renamed from: get  reason: collision with other method in class */
    public JsonNode mo416get(String str) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    /* renamed from: path  reason: collision with other method in class */
    public JsonNode mo418path(String str) {
        return MissingNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    /* renamed from: path  reason: collision with other method in class */
    public JsonNode mo417path(int i) {
        return (i < 0 || i >= this._children.size()) ? MissingNode.getInstance() : this._children.get(i);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean equals(Comparator<JsonNode> comparator, JsonNode jsonNode) {
        if (!(jsonNode instanceof ArrayNode)) {
            return false;
        }
        ArrayNode arrayNode = (ArrayNode) jsonNode;
        int size = this._children.size();
        if (arrayNode.size() != size) {
            return false;
        }
        List<JsonNode> list = this._children;
        List<JsonNode> list2 = arrayNode._children;
        for (int i = 0; i < size; i++) {
            if (!list.get(i).equals(comparator, list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        List<JsonNode> list = this._children;
        int size = list.size();
        jsonGenerator.writeStartArray(size);
        for (int i = 0; i < size; i++) {
            JsonNode jsonNode = list.get(i);
            if (jsonNode instanceof BaseJsonNode) {
                ((BaseJsonNode) jsonNode).serialize(jsonGenerator, serializerProvider);
            } else {
                jsonNode.serialize(jsonGenerator, serializerProvider);
            }
        }
        jsonGenerator.writeEndArray();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public void serializeWithType(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        typeSerializer.writeTypePrefixForArray(this, jsonGenerator);
        Iterator<JsonNode> it = this._children.iterator();
        while (it.hasNext()) {
            ((BaseJsonNode) it.next()).serialize(jsonGenerator, serializerProvider);
        }
        typeSerializer.writeTypeSuffixForArray(this, jsonGenerator);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNode findValue(String str) {
        for (JsonNode jsonNode : this._children) {
            JsonNode findValue = jsonNode.findValue(str);
            if (findValue != null) {
                return findValue;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public List<JsonNode> findValues(String str, List<JsonNode> list) {
        for (JsonNode jsonNode : this._children) {
            list = jsonNode.findValues(str, list);
        }
        return list;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public List<String> findValuesAsText(String str, List<String> list) {
        for (JsonNode jsonNode : this._children) {
            list = jsonNode.findValuesAsText(str, list);
        }
        return list;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    /* renamed from: findParent  reason: collision with other method in class */
    public ObjectNode mo414findParent(String str) {
        for (JsonNode jsonNode : this._children) {
            JsonNode mo414findParent = jsonNode.mo414findParent(str);
            if (mo414findParent != null) {
                return (ObjectNode) mo414findParent;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public List<JsonNode> findParents(String str, List<JsonNode> list) {
        for (JsonNode jsonNode : this._children) {
            list = jsonNode.findParents(str, list);
        }
        return list;
    }

    public JsonNode set(int i, JsonNode jsonNode) {
        if (jsonNode == null) {
            jsonNode = mo394nullNode();
        }
        if (i < 0 || i >= this._children.size()) {
            throw new IndexOutOfBoundsException("Illegal index " + i + ", array size " + size());
        }
        return this._children.set(i, jsonNode);
    }

    public ArrayNode add(JsonNode jsonNode) {
        if (jsonNode == null) {
            jsonNode = mo394nullNode();
        }
        _add(jsonNode);
        return this;
    }

    public ArrayNode addAll(ArrayNode arrayNode) {
        this._children.addAll(arrayNode._children);
        return this;
    }

    public ArrayNode addAll(Collection<? extends JsonNode> collection) {
        this._children.addAll(collection);
        return this;
    }

    public ArrayNode insert(int i, JsonNode jsonNode) {
        if (jsonNode == null) {
            jsonNode = mo394nullNode();
        }
        _insert(i, jsonNode);
        return this;
    }

    public JsonNode remove(int i) {
        if (i < 0 || i >= this._children.size()) {
            return null;
        }
        return this._children.remove(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.node.ContainerNode
    /* renamed from: removeAll */
    public ArrayNode mo411removeAll() {
        this._children.clear();
        return this;
    }

    public ArrayNode addArray() {
        ArrayNode arrayNode = arrayNode();
        _add(arrayNode);
        return arrayNode;
    }

    public ObjectNode addObject() {
        ObjectNode objectNode = objectNode();
        _add(objectNode);
        return objectNode;
    }

    public ArrayNode addPOJO(Object obj) {
        if (obj == null) {
            addNull();
        } else {
            _add(pojoNode(obj));
        }
        return this;
    }

    public ArrayNode addRawValue(RawValue rawValue) {
        if (rawValue == null) {
            addNull();
        } else {
            _add(rawValueNode(rawValue));
        }
        return this;
    }

    public ArrayNode addNull() {
        _add(mo394nullNode());
        return this;
    }

    public ArrayNode add(int i) {
        _add(mo398numberNode(i));
        return this;
    }

    public ArrayNode add(Integer num) {
        return num == null ? addNull() : _add(mo398numberNode(num.intValue()));
    }

    public ArrayNode add(long j) {
        return _add(mo399numberNode(j));
    }

    public ArrayNode add(Long l) {
        return l == null ? addNull() : _add(mo399numberNode(l.longValue()));
    }

    public ArrayNode add(float f) {
        return _add(mo397numberNode(f));
    }

    public ArrayNode add(Float f) {
        return f == null ? addNull() : _add(mo397numberNode(f.floatValue()));
    }

    public ArrayNode add(double d) {
        return _add(mo396numberNode(d));
    }

    public ArrayNode add(Double d) {
        return d == null ? addNull() : _add(mo396numberNode(d.doubleValue()));
    }

    public ArrayNode add(BigDecimal bigDecimal) {
        return bigDecimal == null ? addNull() : _add(mo400numberNode(bigDecimal));
    }

    public ArrayNode add(String str) {
        return str == null ? addNull() : _add(mo403textNode(str));
    }

    public ArrayNode add(boolean z) {
        return _add(mo393booleanNode(z));
    }

    public ArrayNode add(Boolean bool) {
        return bool == null ? addNull() : _add(mo393booleanNode(bool.booleanValue()));
    }

    public ArrayNode add(byte[] bArr) {
        return bArr == null ? addNull() : _add(mo391binaryNode(bArr));
    }

    public ArrayNode insertArray(int i) {
        ArrayNode arrayNode = arrayNode();
        _insert(i, arrayNode);
        return arrayNode;
    }

    public ObjectNode insertObject(int i) {
        ObjectNode objectNode = objectNode();
        _insert(i, objectNode);
        return objectNode;
    }

    public ArrayNode insertPOJO(int i, Object obj) {
        return obj == null ? insertNull(i) : _insert(i, pojoNode(obj));
    }

    public ArrayNode insertNull(int i) {
        _insert(i, mo394nullNode());
        return this;
    }

    public ArrayNode insert(int i, int i2) {
        _insert(i, mo398numberNode(i2));
        return this;
    }

    public ArrayNode insert(int i, Integer num) {
        if (num == null) {
            insertNull(i);
        } else {
            _insert(i, mo398numberNode(num.intValue()));
        }
        return this;
    }

    public ArrayNode insert(int i, long j) {
        return _insert(i, mo399numberNode(j));
    }

    public ArrayNode insert(int i, Long l) {
        return l == null ? insertNull(i) : _insert(i, mo399numberNode(l.longValue()));
    }

    public ArrayNode insert(int i, float f) {
        return _insert(i, mo397numberNode(f));
    }

    public ArrayNode insert(int i, Float f) {
        return f == null ? insertNull(i) : _insert(i, mo397numberNode(f.floatValue()));
    }

    public ArrayNode insert(int i, double d) {
        return _insert(i, mo396numberNode(d));
    }

    public ArrayNode insert(int i, Double d) {
        return d == null ? insertNull(i) : _insert(i, mo396numberNode(d.doubleValue()));
    }

    public ArrayNode insert(int i, BigDecimal bigDecimal) {
        return bigDecimal == null ? insertNull(i) : _insert(i, mo400numberNode(bigDecimal));
    }

    public ArrayNode insert(int i, String str) {
        return str == null ? insertNull(i) : _insert(i, mo403textNode(str));
    }

    public ArrayNode insert(int i, boolean z) {
        return _insert(i, mo393booleanNode(z));
    }

    public ArrayNode insert(int i, Boolean bool) {
        return bool == null ? insertNull(i) : _insert(i, mo393booleanNode(bool.booleanValue()));
    }

    public ArrayNode insert(int i, byte[] bArr) {
        return bArr == null ? insertNull(i) : _insert(i, mo391binaryNode(bArr));
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof ArrayNode)) {
            return this._children.equals(((ArrayNode) obj)._children);
        }
        return false;
    }

    protected boolean _childrenEqual(ArrayNode arrayNode) {
        return this._children.equals(arrayNode._children);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return this._children.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String toString() {
        StringBuilder sb = new StringBuilder((size() << 4) + 16);
        sb.append('[');
        int size = this._children.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(this._children.get(i).toString());
        }
        sb.append(']');
        return sb.toString();
    }

    protected ArrayNode _add(JsonNode jsonNode) {
        this._children.add(jsonNode);
        return this;
    }

    protected ArrayNode _insert(int i, JsonNode jsonNode) {
        if (i < 0) {
            this._children.add(0, jsonNode);
        } else if (i >= this._children.size()) {
            this._children.add(jsonNode);
        } else {
            this._children.add(i, jsonNode);
        }
        return this;
    }
}
