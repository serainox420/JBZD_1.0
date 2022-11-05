package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.util.RawValue;
import java.io.IOException;
/* loaded from: classes.dex */
public class POJONode extends ValueNode {
    protected final Object _value;

    public POJONode(Object obj) {
        this._value = obj;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNodeType getNodeType() {
        return JsonNodeType.POJO;
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.TreeNode
    public JsonToken asToken() {
        return JsonToken.VALUE_EMBEDDED_OBJECT;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public byte[] binaryValue() throws IOException {
        return this._value instanceof byte[] ? (byte[]) this._value : super.binaryValue();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText() {
        return this._value == null ? "null" : this._value.toString();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText(String str) {
        return this._value == null ? str : this._value.toString();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean asBoolean(boolean z) {
        if (this._value != null && (this._value instanceof Boolean)) {
            return ((Boolean) this._value).booleanValue();
        }
        return z;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public int asInt(int i) {
        if (this._value instanceof Number) {
            return ((Number) this._value).intValue();
        }
        return i;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public long asLong(long j) {
        if (this._value instanceof Number) {
            return ((Number) this._value).longValue();
        }
        return j;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public double asDouble(double d) {
        if (this._value instanceof Number) {
            return ((Number) this._value).doubleValue();
        }
        return d;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public final void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (this._value == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
        } else if (this._value instanceof JsonSerializable) {
            ((JsonSerializable) this._value).serialize(jsonGenerator, serializerProvider);
        } else {
            jsonGenerator.writeObject(this._value);
        }
    }

    public Object getPojo() {
        return this._value;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof POJONode)) {
            return _pojoEquals((POJONode) obj);
        }
        return false;
    }

    protected boolean _pojoEquals(POJONode pOJONode) {
        if (this._value == null) {
            return pOJONode._value == null;
        }
        return this._value.equals(pOJONode._value);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return this._value.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.JsonNode
    public String toString() {
        if (this._value instanceof byte[]) {
            return String.format("(binary value of %d bytes)", Integer.valueOf(((byte[]) this._value).length));
        }
        if (this._value instanceof RawValue) {
            return String.format("(raw value '%s')", ((RawValue) this._value).toString());
        }
        return String.valueOf(this._value);
    }
}
