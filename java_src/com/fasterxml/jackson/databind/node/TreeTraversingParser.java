package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.base.ParserMinimalBase;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.node.NodeCursor;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes.dex */
public class TreeTraversingParser extends ParserMinimalBase {
    protected boolean _closed;
    protected JsonToken _nextToken;
    protected NodeCursor _nodeCursor;
    protected ObjectCodec _objectCodec;
    protected boolean _startContainer;

    public TreeTraversingParser(JsonNode jsonNode) {
        this(jsonNode, null);
    }

    public TreeTraversingParser(JsonNode jsonNode, ObjectCodec objectCodec) {
        super(0);
        this._objectCodec = objectCodec;
        if (jsonNode.isArray()) {
            this._nextToken = JsonToken.START_ARRAY;
            this._nodeCursor = new NodeCursor.ArrayCursor(jsonNode, null);
        } else if (jsonNode.isObject()) {
            this._nextToken = JsonToken.START_OBJECT;
            this._nodeCursor = new NodeCursor.ObjectCursor(jsonNode, null);
        } else {
            this._nodeCursor = new NodeCursor.RootCursor(jsonNode, null);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public ObjectCodec getCodec() {
        return this._objectCodec;
    }

    @Override // com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.core.Versioned
    public Version version() {
        return PackageVersion.VERSION;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this._closed) {
            this._closed = true;
            this._nodeCursor = null;
            this._currToken = null;
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public JsonToken nextToken() throws IOException, JsonParseException {
        if (this._nextToken != null) {
            this._currToken = this._nextToken;
            this._nextToken = null;
            return this._currToken;
        } else if (this._startContainer) {
            this._startContainer = false;
            if (!this._nodeCursor.currentHasChildren()) {
                this._currToken = this._currToken == JsonToken.START_OBJECT ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
                return this._currToken;
            }
            this._nodeCursor = this._nodeCursor.iterateChildren();
            this._currToken = this._nodeCursor.nextToken();
            if (this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) {
                this._startContainer = true;
            }
            return this._currToken;
        } else if (this._nodeCursor == null) {
            this._closed = true;
            return null;
        } else {
            this._currToken = this._nodeCursor.nextToken();
            if (this._currToken != null) {
                if (this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) {
                    this._startContainer = true;
                }
                return this._currToken;
            }
            this._currToken = this._nodeCursor.endToken();
            this._nodeCursor = this._nodeCursor.mo404getParent();
            return this._currToken;
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public JsonParser skipChildren() throws IOException, JsonParseException {
        if (this._currToken == JsonToken.START_OBJECT) {
            this._startContainer = false;
            this._currToken = JsonToken.END_OBJECT;
        } else if (this._currToken == JsonToken.START_ARRAY) {
            this._startContainer = false;
            this._currToken = JsonToken.END_ARRAY;
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public boolean isClosed() {
        return this._closed;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getCurrentName() {
        if (this._nodeCursor == null) {
            return null;
        }
        return this._nodeCursor.getCurrentName();
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public void overrideCurrentName(String str) {
        if (this._nodeCursor != null) {
            this._nodeCursor.overrideCurrentName(str);
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    /* renamed from: getParsingContext */
    public JsonStreamContext mo184getParsingContext() {
        return this._nodeCursor;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation getTokenLocation() {
        return JsonLocation.NA;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation getCurrentLocation() {
        return JsonLocation.NA;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getText() {
        if (this._closed) {
            return null;
        }
        switch (this._currToken) {
            case FIELD_NAME:
                return this._nodeCursor.getCurrentName();
            case VALUE_STRING:
                return currentNode().textValue();
            case VALUE_NUMBER_INT:
            case VALUE_NUMBER_FLOAT:
                return String.valueOf(currentNode().numberValue());
            case VALUE_EMBEDDED_OBJECT:
                JsonNode currentNode = currentNode();
                if (currentNode != null && currentNode.isBinary()) {
                    return currentNode.asText();
                }
                break;
        }
        if (this._currToken == null) {
            return null;
        }
        return this._currToken.asString();
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public char[] getTextCharacters() throws IOException, JsonParseException {
        return getText().toCharArray();
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getTextLength() throws IOException, JsonParseException {
        return getText().length();
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getTextOffset() throws IOException, JsonParseException {
        return 0;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public boolean hasTextCharacters() {
        return false;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser.NumberType getNumberType() throws IOException, JsonParseException {
        JsonNode currentNumericNode = currentNumericNode();
        if (currentNumericNode == null) {
            return null;
        }
        return currentNumericNode.numberType();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public BigInteger getBigIntegerValue() throws IOException, JsonParseException {
        return currentNumericNode().bigIntegerValue();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public BigDecimal getDecimalValue() throws IOException, JsonParseException {
        return currentNumericNode().decimalValue();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public double getDoubleValue() throws IOException, JsonParseException {
        return currentNumericNode().doubleValue();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public float getFloatValue() throws IOException, JsonParseException {
        return (float) currentNumericNode().doubleValue();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long getLongValue() throws IOException, JsonParseException {
        return currentNumericNode().longValue();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int getIntValue() throws IOException, JsonParseException {
        return currentNumericNode().intValue();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Number getNumberValue() throws IOException, JsonParseException {
        return currentNumericNode().numberValue();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object getEmbeddedObject() {
        JsonNode currentNode;
        if (!this._closed && (currentNode = currentNode()) != null) {
            if (currentNode.isPojo()) {
                return ((POJONode) currentNode).getPojo();
            }
            if (currentNode.isBinary()) {
                return ((BinaryNode) currentNode).binaryValue();
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException, JsonParseException {
        JsonNode currentNode = currentNode();
        if (currentNode != null) {
            byte[] binaryValue = currentNode.binaryValue();
            if (binaryValue != null) {
                return binaryValue;
            }
            if (currentNode.isPojo()) {
                Object pojo = ((POJONode) currentNode).getPojo();
                if (pojo instanceof byte[]) {
                    return (byte[]) pojo;
                }
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException, JsonParseException {
        byte[] binaryValue = getBinaryValue(base64Variant);
        if (binaryValue != null) {
            outputStream.write(binaryValue, 0, binaryValue.length);
            return binaryValue.length;
        }
        return 0;
    }

    protected JsonNode currentNode() {
        if (this._closed || this._nodeCursor == null) {
            return null;
        }
        return this._nodeCursor.currentNode();
    }

    protected JsonNode currentNumericNode() throws JsonParseException {
        JsonNode currentNode = currentNode();
        if (currentNode == null || !currentNode.isNumber()) {
            throw _constructError("Current token (" + (currentNode == null ? null : currentNode.asToken()) + ") not numeric, can not use numeric value accessors");
        }
        return currentNode;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase
    protected void _handleEOF() throws JsonParseException {
        _throwInternal();
    }
}
