package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonPointer;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.util.RawValue;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ObjectNode extends ContainerNode<ObjectNode> {
    protected final Map<String, JsonNode> _children;

    public ObjectNode(JsonNodeFactory jsonNodeFactory) {
        super(jsonNodeFactory);
        this._children = new LinkedHashMap();
    }

    public ObjectNode(JsonNodeFactory jsonNodeFactory, Map<String, JsonNode> map) {
        super(jsonNodeFactory);
        this._children = map;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    protected JsonNode _at(JsonPointer jsonPointer) {
        return mo416get(jsonPointer.getMatchingProperty());
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    /* renamed from: deepCopy  reason: collision with other method in class */
    public ObjectNode mo405deepCopy() {
        ObjectNode objectNode = new ObjectNode(this._nodeFactory);
        for (Map.Entry<String, JsonNode> entry : this._children.entrySet()) {
            objectNode._children.put(entry.getKey(), entry.getValue().mo405deepCopy());
        }
        return objectNode;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializable.Base
    public boolean isEmpty(SerializerProvider serializerProvider) {
        return this._children.isEmpty();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNodeType getNodeType() {
        return JsonNodeType.OBJECT;
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.TreeNode
    public JsonToken asToken() {
        return JsonToken.START_OBJECT;
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    public int size() {
        return this._children.size();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public Iterator<JsonNode> elements() {
        return this._children.values().iterator();
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    /* renamed from: get  reason: collision with other method in class */
    public JsonNode mo415get(int i) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    /* renamed from: get  reason: collision with other method in class */
    public JsonNode mo416get(String str) {
        return this._children.get(str);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    public Iterator<String> fieldNames() {
        return this._children.keySet().iterator();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    /* renamed from: path  reason: collision with other method in class */
    public JsonNode mo417path(int i) {
        return MissingNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    /* renamed from: path  reason: collision with other method in class */
    public JsonNode mo418path(String str) {
        JsonNode jsonNode = this._children.get(str);
        return jsonNode != null ? jsonNode : MissingNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public Iterator<Map.Entry<String, JsonNode>> fields() {
        return this._children.entrySet().iterator();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    /* renamed from: with  reason: collision with other method in class */
    public ObjectNode mo412with(String str) {
        JsonNode jsonNode = this._children.get(str);
        if (jsonNode != null) {
            if (jsonNode instanceof ObjectNode) {
                return (ObjectNode) jsonNode;
            }
            throw new UnsupportedOperationException("Property '" + str + "' has value that is not of type ObjectNode (but " + jsonNode.getClass().getName() + ")");
        }
        ObjectNode objectNode = objectNode();
        this._children.put(str, objectNode);
        return objectNode;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    /* renamed from: withArray  reason: collision with other method in class */
    public ArrayNode mo413withArray(String str) {
        JsonNode jsonNode = this._children.get(str);
        if (jsonNode != null) {
            if (jsonNode instanceof ArrayNode) {
                return (ArrayNode) jsonNode;
            }
            throw new UnsupportedOperationException("Property '" + str + "' has value that is not of type ArrayNode (but " + jsonNode.getClass().getName() + ")");
        }
        ArrayNode arrayNode = arrayNode();
        this._children.put(str, arrayNode);
        return arrayNode;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0027  */
    @Override // com.fasterxml.jackson.databind.JsonNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(Comparator<JsonNode> comparator, JsonNode jsonNode) {
        if (!(jsonNode instanceof ObjectNode)) {
            return false;
        }
        Map<String, JsonNode> map = this._children;
        Map<String, JsonNode> map2 = ((ObjectNode) jsonNode)._children;
        if (map2.size() != map.size()) {
            return false;
        }
        for (Map.Entry<String, JsonNode> entry : map.entrySet()) {
            JsonNode jsonNode2 = map2.get(entry.getKey());
            if (jsonNode2 == null || !entry.getValue().equals(comparator, jsonNode2)) {
                return false;
            }
            while (r4.hasNext()) {
            }
        }
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNode findValue(String str) {
        for (Map.Entry<String, JsonNode> entry : this._children.entrySet()) {
            if (str.equals(entry.getKey())) {
                return entry.getValue();
            }
            JsonNode findValue = entry.getValue().findValue(str);
            if (findValue != null) {
                return findValue;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public List<JsonNode> findValues(String str, List<JsonNode> list) {
        List<JsonNode> list2 = list;
        for (Map.Entry<String, JsonNode> entry : this._children.entrySet()) {
            if (str.equals(entry.getKey())) {
                if (list2 == null) {
                    list2 = new ArrayList<>();
                }
                list2.add(entry.getValue());
            } else {
                list2 = entry.getValue().findValues(str, list2);
            }
        }
        return list2;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public List<String> findValuesAsText(String str, List<String> list) {
        List<String> list2 = list;
        for (Map.Entry<String, JsonNode> entry : this._children.entrySet()) {
            if (str.equals(entry.getKey())) {
                if (list2 == null) {
                    list2 = new ArrayList<>();
                }
                list2.add(entry.getValue().asText());
            } else {
                list2 = entry.getValue().findValuesAsText(str, list2);
            }
        }
        return list2;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    /* renamed from: findParent  reason: collision with other method in class */
    public ObjectNode mo414findParent(String str) {
        for (Map.Entry<String, JsonNode> entry : this._children.entrySet()) {
            if (!str.equals(entry.getKey())) {
                JsonNode mo414findParent = entry.getValue().mo414findParent(str);
                if (mo414findParent != null) {
                    return (ObjectNode) mo414findParent;
                }
            } else {
                return this;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public List<JsonNode> findParents(String str, List<JsonNode> list) {
        List<JsonNode> findParents;
        List<JsonNode> list2 = list;
        for (Map.Entry<String, JsonNode> entry : this._children.entrySet()) {
            if (str.equals(entry.getKey())) {
                findParents = list2 == null ? new ArrayList<>() : list2;
                findParents.add(this);
            } else {
                findParents = entry.getValue().findParents(str, list2);
            }
            list2 = findParents;
        }
        return list2;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        boolean z = serializerProvider != null && !serializerProvider.isEnabled(SerializationFeature.WRITE_EMPTY_JSON_ARRAYS);
        jsonGenerator.writeStartObject(this);
        for (Map.Entry<String, JsonNode> entry : this._children.entrySet()) {
            BaseJsonNode baseJsonNode = (BaseJsonNode) entry.getValue();
            if (!z || !baseJsonNode.isArray() || !baseJsonNode.isEmpty(serializerProvider)) {
                jsonGenerator.writeFieldName(entry.getKey());
                baseJsonNode.serialize(jsonGenerator, serializerProvider);
            }
        }
        jsonGenerator.writeEndObject();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public void serializeWithType(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        boolean z = serializerProvider != null && !serializerProvider.isEnabled(SerializationFeature.WRITE_EMPTY_JSON_ARRAYS);
        typeSerializer.writeTypePrefixForObject(this, jsonGenerator);
        for (Map.Entry<String, JsonNode> entry : this._children.entrySet()) {
            BaseJsonNode baseJsonNode = (BaseJsonNode) entry.getValue();
            if (!z || !baseJsonNode.isArray() || !baseJsonNode.isEmpty(serializerProvider)) {
                jsonGenerator.writeFieldName(entry.getKey());
                baseJsonNode.serialize(jsonGenerator, serializerProvider);
            }
        }
        typeSerializer.writeTypeSuffixForObject(this, jsonGenerator);
    }

    public JsonNode set(String str, JsonNode jsonNode) {
        if (jsonNode == null) {
            jsonNode = mo394nullNode();
        }
        this._children.put(str, jsonNode);
        return this;
    }

    public JsonNode setAll(Map<String, ? extends JsonNode> map) {
        for (Map.Entry<String, ? extends JsonNode> entry : map.entrySet()) {
            JsonNode value = entry.getValue();
            if (value == null) {
                value = mo394nullNode();
            }
            this._children.put(entry.getKey(), value);
        }
        return this;
    }

    public JsonNode setAll(ObjectNode objectNode) {
        this._children.putAll(objectNode._children);
        return this;
    }

    public JsonNode replace(String str, JsonNode jsonNode) {
        if (jsonNode == null) {
            jsonNode = mo394nullNode();
        }
        return this._children.put(str, jsonNode);
    }

    public JsonNode without(String str) {
        this._children.remove(str);
        return this;
    }

    public ObjectNode without(Collection<String> collection) {
        this._children.keySet().removeAll(collection);
        return this;
    }

    @Deprecated
    public JsonNode put(String str, JsonNode jsonNode) {
        if (jsonNode == null) {
            jsonNode = mo394nullNode();
        }
        return this._children.put(str, jsonNode);
    }

    public JsonNode remove(String str) {
        return this._children.remove(str);
    }

    public ObjectNode remove(Collection<String> collection) {
        this._children.keySet().removeAll(collection);
        return this;
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode
    /* renamed from: removeAll  reason: collision with other method in class */
    public ObjectNode mo411removeAll() {
        this._children.clear();
        return this;
    }

    @Deprecated
    public JsonNode putAll(Map<String, ? extends JsonNode> map) {
        return setAll(map);
    }

    @Deprecated
    public JsonNode putAll(ObjectNode objectNode) {
        return setAll(objectNode);
    }

    public ObjectNode retain(Collection<String> collection) {
        this._children.keySet().retainAll(collection);
        return this;
    }

    public ObjectNode retain(String... strArr) {
        return retain(Arrays.asList(strArr));
    }

    public ArrayNode putArray(String str) {
        ArrayNode arrayNode = arrayNode();
        _put(str, arrayNode);
        return arrayNode;
    }

    public ObjectNode putObject(String str) {
        ObjectNode objectNode = objectNode();
        _put(str, objectNode);
        return objectNode;
    }

    public ObjectNode putPOJO(String str, Object obj) {
        return _put(str, pojoNode(obj));
    }

    public ObjectNode putRawValue(String str, RawValue rawValue) {
        return _put(str, rawValueNode(rawValue));
    }

    public ObjectNode putNull(String str) {
        this._children.put(str, mo394nullNode());
        return this;
    }

    public ObjectNode put(String str, short s) {
        return _put(str, mo402numberNode(s));
    }

    public ObjectNode put(String str, Short sh) {
        return _put(str, sh == null ? mo394nullNode() : mo402numberNode(sh.shortValue()));
    }

    public ObjectNode put(String str, int i) {
        return _put(str, mo398numberNode(i));
    }

    public ObjectNode put(String str, Integer num) {
        return _put(str, num == null ? mo394nullNode() : mo398numberNode(num.intValue()));
    }

    public ObjectNode put(String str, long j) {
        return _put(str, mo399numberNode(j));
    }

    public ObjectNode put(String str, Long l) {
        return _put(str, l == null ? mo394nullNode() : mo399numberNode(l.longValue()));
    }

    public ObjectNode put(String str, float f) {
        return _put(str, mo397numberNode(f));
    }

    public ObjectNode put(String str, Float f) {
        return _put(str, f == null ? mo394nullNode() : mo397numberNode(f.floatValue()));
    }

    public ObjectNode put(String str, double d) {
        return _put(str, mo396numberNode(d));
    }

    public ObjectNode put(String str, Double d) {
        return _put(str, d == null ? mo394nullNode() : mo396numberNode(d.doubleValue()));
    }

    public ObjectNode put(String str, BigDecimal bigDecimal) {
        return _put(str, bigDecimal == null ? mo394nullNode() : mo400numberNode(bigDecimal));
    }

    public ObjectNode put(String str, String str2) {
        return _put(str, str2 == null ? mo394nullNode() : mo403textNode(str2));
    }

    public ObjectNode put(String str, boolean z) {
        return _put(str, mo393booleanNode(z));
    }

    public ObjectNode put(String str, Boolean bool) {
        return _put(str, bool == null ? mo394nullNode() : mo393booleanNode(bool.booleanValue()));
    }

    public ObjectNode put(String str, byte[] bArr) {
        return _put(str, bArr == null ? mo394nullNode() : mo391binaryNode(bArr));
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof ObjectNode)) {
            return _childrenEqual((ObjectNode) obj);
        }
        return false;
    }

    protected boolean _childrenEqual(ObjectNode objectNode) {
        return this._children.equals(objectNode._children);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return this._children.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String toString() {
        StringBuilder sb = new StringBuilder((size() << 4) + 32);
        sb.append("{");
        int i = 0;
        for (Map.Entry<String, JsonNode> entry : this._children.entrySet()) {
            if (i > 0) {
                sb.append(",");
            }
            TextNode.appendQuoted(sb, entry.getKey());
            sb.append(':');
            sb.append(entry.getValue().toString());
            i++;
        }
        sb.append("}");
        return sb.toString();
    }

    protected ObjectNode _put(String str, JsonNode jsonNode) {
        this._children.put(str, jsonNode);
        return this;
    }
}
