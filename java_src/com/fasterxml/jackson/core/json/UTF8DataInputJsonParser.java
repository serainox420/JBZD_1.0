package com.fasterxml.jackson.core.json;

import com.facebook.imageutils.JfifUtil;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.google.android.gms.location.places.Place;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.io.DataInput;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Arrays;
/* loaded from: classes.dex */
public class UTF8DataInputJsonParser extends ParserBase {
    static final byte BYTE_LF = 10;
    protected DataInput _inputData;
    protected int _nextByte;
    protected ObjectCodec _objectCodec;
    private int _quad1;
    protected int[] _quadBuffer;
    protected final ByteQuadsCanonicalizer _symbols;
    protected boolean _tokenIncomplete;
    private static final int[] _icUTF8 = CharTypes.getInputCodeUtf8();
    protected static final int[] _icLatin1 = CharTypes.getInputCodeLatin1();

    public UTF8DataInputJsonParser(IOContext iOContext, int i, DataInput dataInput, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, int i2) {
        super(iOContext, i);
        this._quadBuffer = new int[16];
        this._nextByte = -1;
        this._objectCodec = objectCodec;
        this._symbols = byteQuadsCanonicalizer;
        this._inputData = dataInput;
        this._nextByte = i2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public ObjectCodec getCodec() {
        return this._objectCodec;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int releaseBuffered(OutputStream outputStream) throws IOException {
        return 0;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object getInputSource() {
        return this._inputData;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _closeInput() throws IOException {
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _releaseBuffers() throws IOException {
        super._releaseBuffers();
        this._symbols.release();
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getText() throws IOException {
        if (this._currToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                return _finishAndReturnString();
            }
            return this._textBuffer.contentsAsString();
        }
        return _getText2(this._currToken);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int getText(Writer writer) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.contentsToWriter(writer);
        } else if (jsonToken == JsonToken.FIELD_NAME) {
            String currentName = this._parsingContext.getCurrentName();
            writer.write(currentName);
            return currentName.length();
        } else if (jsonToken == null) {
            return 0;
        } else {
            if (jsonToken.isNumeric()) {
                return this._textBuffer.contentsToWriter(writer);
            }
            char[] asCharArray = jsonToken.asCharArray();
            writer.write(asCharArray);
            return asCharArray.length;
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getValueAsString() throws IOException {
        if (this._currToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                return _finishAndReturnString();
            }
            return this._textBuffer.contentsAsString();
        } else if (this._currToken == JsonToken.FIELD_NAME) {
            return getCurrentName();
        } else {
            return super.getValueAsString(null);
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getValueAsString(String str) throws IOException {
        if (this._currToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                return _finishAndReturnString();
            }
            return this._textBuffer.contentsAsString();
        } else if (this._currToken == JsonToken.FIELD_NAME) {
            return getCurrentName();
        } else {
            return super.getValueAsString(str);
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getValueAsInt() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT || jsonToken == JsonToken.VALUE_NUMBER_FLOAT) {
            if ((this._numTypesValid & 1) == 0) {
                if (this._numTypesValid == 0) {
                    return _parseIntValue();
                }
                if ((this._numTypesValid & 1) == 0) {
                    convertNumberToInt();
                }
            }
            return this._numberInt;
        }
        return super.getValueAsInt(0);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getValueAsInt(int i) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT || jsonToken == JsonToken.VALUE_NUMBER_FLOAT) {
            if ((this._numTypesValid & 1) == 0) {
                if (this._numTypesValid == 0) {
                    return _parseIntValue();
                }
                if ((this._numTypesValid & 1) == 0) {
                    convertNumberToInt();
                }
            }
            return this._numberInt;
        }
        return super.getValueAsInt(i);
    }

    protected final String _getText2(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        switch (jsonToken.id()) {
            case 5:
                return this._parsingContext.getCurrentName();
            case 6:
            case 7:
            case 8:
                return this._textBuffer.contentsAsString();
            default:
                return jsonToken.asString();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public char[] getTextCharacters() throws IOException {
        if (this._currToken != null) {
            switch (this._currToken.id()) {
                case 5:
                    if (!this._nameCopied) {
                        String currentName = this._parsingContext.getCurrentName();
                        int length = currentName.length();
                        if (this._nameCopyBuffer == null) {
                            this._nameCopyBuffer = this._ioContext.allocNameCopyBuffer(length);
                        } else if (this._nameCopyBuffer.length < length) {
                            this._nameCopyBuffer = new char[length];
                        }
                        currentName.getChars(0, length, this._nameCopyBuffer, 0);
                        this._nameCopied = true;
                    }
                    return this._nameCopyBuffer;
                case 6:
                    if (this._tokenIncomplete) {
                        this._tokenIncomplete = false;
                        _finishString();
                        break;
                    }
                    break;
                case 7:
                case 8:
                    break;
                default:
                    return this._currToken.asCharArray();
            }
            return this._textBuffer.getTextBuffer();
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getTextLength() throws IOException {
        if (this._currToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.size();
        } else if (this._currToken == JsonToken.FIELD_NAME) {
            return this._parsingContext.getCurrentName().length();
        } else {
            if (this._currToken == null) {
                return 0;
            }
            if (this._currToken.isNumeric()) {
                return this._textBuffer.size();
            }
            return this._currToken.asCharArray().length;
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getTextOffset() throws IOException {
        if (this._currToken != null) {
            switch (this._currToken.id()) {
                case 5:
                default:
                    return 0;
                case 6:
                    if (this._tokenIncomplete) {
                        this._tokenIncomplete = false;
                        _finishString();
                        break;
                    }
                    break;
                case 7:
                case 8:
                    break;
            }
            return this._textBuffer.getTextOffset();
        }
        return 0;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException {
        if (this._currToken != JsonToken.VALUE_STRING && (this._currToken != JsonToken.VALUE_EMBEDDED_OBJECT || this._binaryValue == null)) {
            _reportError("Current token (" + this._currToken + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
        }
        if (this._tokenIncomplete) {
            try {
                this._binaryValue = _decodeBase64(base64Variant);
                this._tokenIncomplete = false;
            } catch (IllegalArgumentException e) {
                throw _constructError("Failed to decode VALUE_STRING as base64 (" + base64Variant + "): " + e.getMessage());
            }
        } else if (this._binaryValue == null) {
            ByteArrayBuilder _getByteArrayBuilder = _getByteArrayBuilder();
            _decodeBase64(getText(), _getByteArrayBuilder, base64Variant);
            this._binaryValue = _getByteArrayBuilder.toByteArray();
        }
        return this._binaryValue;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        if (!this._tokenIncomplete || this._currToken != JsonToken.VALUE_STRING) {
            byte[] binaryValue = getBinaryValue(base64Variant);
            outputStream.write(binaryValue);
            return binaryValue.length;
        }
        byte[] allocBase64Buffer = this._ioContext.allocBase64Buffer();
        try {
            return _readBinary(base64Variant, outputStream, allocBase64Buffer);
        } finally {
            this._ioContext.releaseBase64Buffer(allocBase64Buffer);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
        r0 = r0 + r2;
        r12.write(r13, 0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001c, code lost:
        r10._tokenIncomplete = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
        if (r2 <= 0) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected int _readBinary(Base64Variant base64Variant, OutputStream outputStream, byte[] bArr) throws IOException {
        int i;
        int length = bArr.length - 3;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (readUnsignedByte > 32) {
                int decodeBase64Char = base64Variant.decodeBase64Char(readUnsignedByte);
                if (decodeBase64Char < 0) {
                    if (readUnsignedByte == 34) {
                        break;
                    }
                    decodeBase64Char = _decodeBase64Escape(base64Variant, readUnsignedByte, 0);
                    if (decodeBase64Char < 0) {
                        continue;
                    }
                }
                int i4 = decodeBase64Char;
                if (i3 > length) {
                    i2 += i3;
                    outputStream.write(bArr, 0, i3);
                    i = 0;
                } else {
                    i = i3;
                }
                int readUnsignedByte2 = this._inputData.readUnsignedByte();
                int decodeBase64Char2 = base64Variant.decodeBase64Char(readUnsignedByte2);
                if (decodeBase64Char2 < 0) {
                    decodeBase64Char2 = _decodeBase64Escape(base64Variant, readUnsignedByte2, 1);
                }
                int i5 = (i4 << 6) | decodeBase64Char2;
                int readUnsignedByte3 = this._inputData.readUnsignedByte();
                int decodeBase64Char3 = base64Variant.decodeBase64Char(readUnsignedByte3);
                if (decodeBase64Char3 < 0) {
                    if (decodeBase64Char3 != -2) {
                        if (readUnsignedByte3 == 34 && !base64Variant.usesPadding()) {
                            i3 = i + 1;
                            bArr[i] = (byte) (i5 >> 4);
                            break;
                        }
                        decodeBase64Char3 = _decodeBase64Escape(base64Variant, readUnsignedByte3, 2);
                    }
                    if (decodeBase64Char3 == -2) {
                        int readUnsignedByte4 = this._inputData.readUnsignedByte();
                        if (!base64Variant.usesPaddingChar(readUnsignedByte4)) {
                            throw reportInvalidBase64Char(base64Variant, readUnsignedByte4, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        i3 = i + 1;
                        bArr[i] = (byte) (i5 >> 4);
                    }
                }
                int i6 = (i5 << 6) | decodeBase64Char3;
                int readUnsignedByte5 = this._inputData.readUnsignedByte();
                int decodeBase64Char4 = base64Variant.decodeBase64Char(readUnsignedByte5);
                if (decodeBase64Char4 < 0) {
                    if (decodeBase64Char4 != -2) {
                        if (readUnsignedByte5 == 34 && !base64Variant.usesPadding()) {
                            int i7 = i6 >> 2;
                            int i8 = i + 1;
                            bArr[i] = (byte) (i7 >> 8);
                            i3 = i8 + 1;
                            bArr[i8] = (byte) i7;
                            break;
                        }
                        decodeBase64Char4 = _decodeBase64Escape(base64Variant, readUnsignedByte5, 3);
                    }
                    if (decodeBase64Char4 == -2) {
                        int i9 = i6 >> 2;
                        int i10 = i + 1;
                        bArr[i] = (byte) (i9 >> 8);
                        i3 = i10 + 1;
                        bArr[i10] = (byte) i9;
                    }
                }
                int i11 = (i6 << 6) | decodeBase64Char4;
                int i12 = i + 1;
                bArr[i] = (byte) (i11 >> 16);
                int i13 = i12 + 1;
                bArr[i12] = (byte) (i11 >> 8);
                i3 = i13 + 1;
                bArr[i13] = (byte) i11;
            }
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public JsonToken nextToken() throws IOException {
        JsonToken jsonToken;
        if (this._currToken == JsonToken.FIELD_NAME) {
            return _nextAfterName();
        }
        this._numTypesValid = 0;
        if (this._tokenIncomplete) {
            _skipString();
        }
        int _skipWS = _skipWS();
        this._binaryValue = null;
        this._tokenInputRow = this._currInputRow;
        if (_skipWS == 93) {
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(_skipWS, '}');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            JsonToken jsonToken2 = JsonToken.END_ARRAY;
            this._currToken = jsonToken2;
            return jsonToken2;
        } else if (_skipWS == 125) {
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(_skipWS, ']');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            JsonToken jsonToken3 = JsonToken.END_OBJECT;
            this._currToken = jsonToken3;
            return jsonToken3;
        } else {
            if (this._parsingContext.expectComma()) {
                if (_skipWS != 44) {
                    _reportUnexpectedChar(_skipWS, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
                }
                _skipWS = _skipWS();
            }
            if (!this._parsingContext.inObject()) {
                return _nextTokenNotInObject(_skipWS);
            }
            this._parsingContext.setCurrentName(_parseName(_skipWS));
            this._currToken = JsonToken.FIELD_NAME;
            int _skipColon = _skipColon();
            if (_skipColon == 34) {
                this._tokenIncomplete = true;
                this._nextToken = JsonToken.VALUE_STRING;
                return this._currToken;
            }
            switch (_skipColon) {
                case 45:
                    jsonToken = _parseNegNumber();
                    break;
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    jsonToken = _parsePosNumber(_skipColon);
                    break;
                case 91:
                    jsonToken = JsonToken.START_ARRAY;
                    break;
                case 102:
                    _matchToken(Consts.False, 1);
                    jsonToken = JsonToken.VALUE_FALSE;
                    break;
                case 110:
                    _matchToken("null", 1);
                    jsonToken = JsonToken.VALUE_NULL;
                    break;
                case 116:
                    _matchToken("true", 1);
                    jsonToken = JsonToken.VALUE_TRUE;
                    break;
                case 123:
                    jsonToken = JsonToken.START_OBJECT;
                    break;
                default:
                    jsonToken = _handleUnexpectedValue(_skipColon);
                    break;
            }
            this._nextToken = jsonToken;
            return this._currToken;
        }
    }

    private final JsonToken _nextTokenNotInObject(int i) throws IOException {
        if (i == 34) {
            this._tokenIncomplete = true;
            JsonToken jsonToken = JsonToken.VALUE_STRING;
            this._currToken = jsonToken;
            return jsonToken;
        }
        switch (i) {
            case 45:
                JsonToken _parseNegNumber = _parseNegNumber();
                this._currToken = _parseNegNumber;
                return _parseNegNumber;
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
                JsonToken _parsePosNumber = _parsePosNumber(i);
                this._currToken = _parsePosNumber;
                return _parsePosNumber;
            case 91:
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
                JsonToken jsonToken2 = JsonToken.START_ARRAY;
                this._currToken = jsonToken2;
                return jsonToken2;
            case 102:
                _matchToken(Consts.False, 1);
                JsonToken jsonToken3 = JsonToken.VALUE_FALSE;
                this._currToken = jsonToken3;
                return jsonToken3;
            case 110:
                _matchToken("null", 1);
                JsonToken jsonToken4 = JsonToken.VALUE_NULL;
                this._currToken = jsonToken4;
                return jsonToken4;
            case 116:
                _matchToken("true", 1);
                JsonToken jsonToken5 = JsonToken.VALUE_TRUE;
                this._currToken = jsonToken5;
                return jsonToken5;
            case 123:
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
                JsonToken jsonToken6 = JsonToken.START_OBJECT;
                this._currToken = jsonToken6;
                return jsonToken6;
            default:
                JsonToken _handleUnexpectedValue = _handleUnexpectedValue(i);
                this._currToken = _handleUnexpectedValue;
                return _handleUnexpectedValue;
        }
    }

    private final JsonToken _nextAfterName() {
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        this._currToken = jsonToken;
        return jsonToken;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void finishToken() throws IOException {
        if (this._tokenIncomplete) {
            this._tokenIncomplete = false;
            _finishString();
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String nextFieldName() throws IOException {
        JsonToken jsonToken;
        this._numTypesValid = 0;
        if (this._currToken == JsonToken.FIELD_NAME) {
            _nextAfterName();
            return null;
        }
        if (this._tokenIncomplete) {
            _skipString();
        }
        int _skipWS = _skipWS();
        this._binaryValue = null;
        this._tokenInputRow = this._currInputRow;
        if (_skipWS == 93) {
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(_skipWS, '}');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            this._currToken = JsonToken.END_ARRAY;
            return null;
        } else if (_skipWS == 125) {
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(_skipWS, ']');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            this._currToken = JsonToken.END_OBJECT;
            return null;
        } else {
            if (this._parsingContext.expectComma()) {
                if (_skipWS != 44) {
                    _reportUnexpectedChar(_skipWS, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
                }
                _skipWS = _skipWS();
            }
            if (!this._parsingContext.inObject()) {
                _nextTokenNotInObject(_skipWS);
                return null;
            }
            String _parseName = _parseName(_skipWS);
            this._parsingContext.setCurrentName(_parseName);
            this._currToken = JsonToken.FIELD_NAME;
            int _skipColon = _skipColon();
            if (_skipColon == 34) {
                this._tokenIncomplete = true;
                this._nextToken = JsonToken.VALUE_STRING;
                return _parseName;
            }
            switch (_skipColon) {
                case 45:
                    jsonToken = _parseNegNumber();
                    break;
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    jsonToken = _parsePosNumber(_skipColon);
                    break;
                case 91:
                    jsonToken = JsonToken.START_ARRAY;
                    break;
                case 102:
                    _matchToken(Consts.False, 1);
                    jsonToken = JsonToken.VALUE_FALSE;
                    break;
                case 110:
                    _matchToken("null", 1);
                    jsonToken = JsonToken.VALUE_NULL;
                    break;
                case 116:
                    _matchToken("true", 1);
                    jsonToken = JsonToken.VALUE_TRUE;
                    break;
                case 123:
                    jsonToken = JsonToken.START_OBJECT;
                    break;
                default:
                    jsonToken = _handleUnexpectedValue(_skipColon);
                    break;
            }
            this._nextToken = jsonToken;
            return _parseName;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String nextTextValue() throws IOException {
        if (this._currToken == JsonToken.FIELD_NAME) {
            this._nameCopied = false;
            JsonToken jsonToken = this._nextToken;
            this._nextToken = null;
            this._currToken = jsonToken;
            if (jsonToken == JsonToken.VALUE_STRING) {
                if (this._tokenIncomplete) {
                    this._tokenIncomplete = false;
                    return _finishAndReturnString();
                }
                return this._textBuffer.contentsAsString();
            } else if (jsonToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
                return null;
            } else if (jsonToken != JsonToken.START_OBJECT) {
                return null;
            } else {
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
                return null;
            }
        } else if (nextToken() != JsonToken.VALUE_STRING) {
            return null;
        } else {
            return getText();
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int nextIntValue(int i) throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            return nextToken() == JsonToken.VALUE_NUMBER_INT ? getIntValue() : i;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return getIntValue();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            return i;
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            return i;
        } else {
            return i;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long nextLongValue(long j) throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            return nextToken() == JsonToken.VALUE_NUMBER_INT ? getLongValue() : j;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return getLongValue();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            return j;
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            return j;
        } else {
            return j;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Boolean nextBooleanValue() throws IOException {
        if (this._currToken == JsonToken.FIELD_NAME) {
            this._nameCopied = false;
            JsonToken jsonToken = this._nextToken;
            this._nextToken = null;
            this._currToken = jsonToken;
            if (jsonToken == JsonToken.VALUE_TRUE) {
                return Boolean.TRUE;
            }
            if (jsonToken == JsonToken.VALUE_FALSE) {
                return Boolean.FALSE;
            }
            if (jsonToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
                return null;
            } else if (jsonToken != JsonToken.START_OBJECT) {
                return null;
            } else {
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
                return null;
            }
        }
        JsonToken nextToken = nextToken();
        if (nextToken == JsonToken.VALUE_TRUE) {
            return Boolean.TRUE;
        }
        if (nextToken != JsonToken.VALUE_FALSE) {
            return null;
        }
        return Boolean.FALSE;
    }

    protected JsonToken _parsePosNumber(int i) throws IOException {
        int readUnsignedByte;
        int i2 = 1;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        if (i == 48) {
            readUnsignedByte = _handleLeadingZeroes();
            if (readUnsignedByte > 57 || readUnsignedByte < 48) {
                emptyAndGetCurrentSegment[0] = '0';
            } else {
                i2 = 0;
            }
        } else {
            emptyAndGetCurrentSegment[0] = (char) i;
            readUnsignedByte = this._inputData.readUnsignedByte();
        }
        int i3 = i2;
        int i4 = readUnsignedByte;
        int i5 = i2;
        while (i4 <= 57 && i4 >= 48) {
            i3++;
            emptyAndGetCurrentSegment[i5] = (char) i4;
            i4 = this._inputData.readUnsignedByte();
            i5++;
        }
        if (i4 == 46 || i4 == 101 || i4 == 69) {
            return _parseFloat(emptyAndGetCurrentSegment, i5, i4, false, i3);
        }
        this._textBuffer.setCurrentLength(i5);
        if (this._parsingContext.inRoot()) {
            _verifyRootSpace();
        } else {
            this._nextByte = i4;
        }
        return resetInt(false, i3);
    }

    protected JsonToken _parseNegNumber() throws IOException {
        int readUnsignedByte;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment[0] = '-';
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        int i = 2;
        emptyAndGetCurrentSegment[1] = (char) readUnsignedByte2;
        if (readUnsignedByte2 <= 48) {
            if (readUnsignedByte2 == 48) {
                readUnsignedByte = _handleLeadingZeroes();
            } else {
                return _handleInvalidNumberStart(readUnsignedByte2, true);
            }
        } else if (readUnsignedByte2 > 57) {
            return _handleInvalidNumberStart(readUnsignedByte2, true);
        } else {
            readUnsignedByte = this._inputData.readUnsignedByte();
        }
        int i2 = 1;
        int i3 = readUnsignedByte;
        while (i3 <= 57 && i3 >= 48) {
            i2++;
            emptyAndGetCurrentSegment[i] = (char) i3;
            i3 = this._inputData.readUnsignedByte();
            i++;
        }
        if (i3 == 46 || i3 == 101 || i3 == 69) {
            return _parseFloat(emptyAndGetCurrentSegment, i, i3, true, i2);
        }
        this._textBuffer.setCurrentLength(i);
        this._nextByte = i3;
        if (this._parsingContext.inRoot()) {
            _verifyRootSpace();
        }
        return resetInt(true, i2);
    }

    private final int _handleLeadingZeroes() throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if (readUnsignedByte >= 48 && readUnsignedByte <= 57) {
            if (!isEnabled(JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
                reportInvalidNumber("Leading zeroes not allowed");
            }
            while (readUnsignedByte == 48) {
                readUnsignedByte = this._inputData.readUnsignedByte();
            }
        }
        return readUnsignedByte;
    }

    private final JsonToken _parseFloat(char[] cArr, int i, int i2, boolean z, int i3) throws IOException {
        int i4;
        int i5;
        int i6;
        char[] cArr2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13 = 0;
        if (i2 == 46) {
            cArr[i] = (char) i2;
            int i14 = i + 1;
            int i15 = 0;
            while (true) {
                i5 = this._inputData.readUnsignedByte();
                if (i5 < 48 || i5 > 57) {
                    break;
                }
                i15++;
                if (i14 >= cArr.length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    i12 = 0;
                } else {
                    i12 = i14;
                }
                i14 = i12 + 1;
                cArr[i12] = (char) i5;
            }
            if (i15 == 0) {
                reportUnexpectedNumberChar(i5, "Decimal point not followed by a digit");
            }
            i4 = i15;
            i6 = i14;
            cArr2 = cArr;
        } else {
            i4 = 0;
            i5 = i2;
            i6 = i;
            cArr2 = cArr;
        }
        if (i5 == 101 || i5 == 69) {
            if (i6 >= cArr2.length) {
                cArr2 = this._textBuffer.finishCurrentSegment();
                i6 = 0;
            }
            int i16 = i6 + 1;
            cArr2[i6] = (char) i5;
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (readUnsignedByte == 45 || readUnsignedByte == 43) {
                if (i16 >= cArr2.length) {
                    cArr2 = this._textBuffer.finishCurrentSegment();
                    i7 = 0;
                } else {
                    i7 = i16;
                }
                cArr2[i7] = (char) readUnsignedByte;
                readUnsignedByte = this._inputData.readUnsignedByte();
                i8 = i7 + 1;
                i9 = 0;
            } else {
                i8 = i16;
                i9 = 0;
            }
            while (readUnsignedByte <= 57 && readUnsignedByte >= 48) {
                i9++;
                if (i8 >= cArr2.length) {
                    cArr2 = this._textBuffer.finishCurrentSegment();
                    i8 = 0;
                }
                cArr2[i8] = (char) readUnsignedByte;
                readUnsignedByte = this._inputData.readUnsignedByte();
                i8++;
            }
            if (i9 == 0) {
                reportUnexpectedNumberChar(readUnsignedByte, "Exponent indicator not followed by a digit");
            }
            i13 = i9;
            i10 = i8;
            i11 = readUnsignedByte;
        } else {
            i10 = i6;
            i11 = i5;
        }
        this._nextByte = i11;
        if (this._parsingContext.inRoot()) {
            _verifyRootSpace();
        }
        this._textBuffer.setCurrentLength(i10);
        return resetFloat(z, i3, i4, i13);
    }

    private final void _verifyRootSpace() throws IOException {
        int i = this._nextByte;
        if (i <= 32) {
            this._nextByte = -1;
            if (i == 13 || i == 10) {
                this._currInputRow++;
                return;
            }
            return;
        }
        _reportMissingRootWS(i);
    }

    protected final String _parseName(int i) throws IOException {
        if (i != 34) {
            return _handleOddName(i);
        }
        int[] iArr = _icLatin1;
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte] == 0) {
            int readUnsignedByte2 = this._inputData.readUnsignedByte();
            if (iArr[readUnsignedByte2] == 0) {
                int i2 = (readUnsignedByte << 8) | readUnsignedByte2;
                int readUnsignedByte3 = this._inputData.readUnsignedByte();
                if (iArr[readUnsignedByte3] == 0) {
                    int i3 = (i2 << 8) | readUnsignedByte3;
                    int readUnsignedByte4 = this._inputData.readUnsignedByte();
                    if (iArr[readUnsignedByte4] == 0) {
                        int i4 = (i3 << 8) | readUnsignedByte4;
                        int readUnsignedByte5 = this._inputData.readUnsignedByte();
                        if (iArr[readUnsignedByte5] == 0) {
                            this._quad1 = i4;
                            return _parseMediumName(readUnsignedByte5);
                        } else if (readUnsignedByte5 == 34) {
                            return findName(i4, 4);
                        } else {
                            return parseName(i4, readUnsignedByte5, 4);
                        }
                    } else if (readUnsignedByte4 == 34) {
                        return findName(i3, 3);
                    } else {
                        return parseName(i3, readUnsignedByte4, 3);
                    }
                } else if (readUnsignedByte3 == 34) {
                    return findName(i2, 2);
                } else {
                    return parseName(i2, readUnsignedByte3, 2);
                }
            } else if (readUnsignedByte2 == 34) {
                return findName(readUnsignedByte, 1);
            } else {
                return parseName(readUnsignedByte, readUnsignedByte2, 1);
            }
        } else if (readUnsignedByte == 34) {
            return "";
        } else {
            return parseName(0, readUnsignedByte, 0);
        }
    }

    private final String _parseMediumName(int i) throws IOException {
        int[] iArr = _icLatin1;
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte] != 0) {
            if (readUnsignedByte == 34) {
                return findName(this._quad1, i, 1);
            }
            return parseName(this._quad1, i, readUnsignedByte, 1);
        }
        int i2 = readUnsignedByte | (i << 8);
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte2] != 0) {
            if (readUnsignedByte2 == 34) {
                return findName(this._quad1, i2, 2);
            }
            return parseName(this._quad1, i2, readUnsignedByte2, 2);
        }
        int i3 = (i2 << 8) | readUnsignedByte2;
        int readUnsignedByte3 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte3] != 0) {
            if (readUnsignedByte3 == 34) {
                return findName(this._quad1, i3, 3);
            }
            return parseName(this._quad1, i3, readUnsignedByte3, 3);
        }
        int i4 = (i3 << 8) | readUnsignedByte3;
        int readUnsignedByte4 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte4] != 0) {
            if (readUnsignedByte4 == 34) {
                return findName(this._quad1, i4, 4);
            }
            return parseName(this._quad1, i4, readUnsignedByte4, 4);
        }
        return _parseMediumName2(readUnsignedByte4, i4);
    }

    private final String _parseMediumName2(int i, int i2) throws IOException {
        int[] iArr = _icLatin1;
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte] != 0) {
            if (readUnsignedByte == 34) {
                return findName(this._quad1, i2, i, 1);
            }
            return parseName(this._quad1, i2, i, readUnsignedByte, 1);
        }
        int i3 = (i << 8) | readUnsignedByte;
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte2] != 0) {
            if (readUnsignedByte2 == 34) {
                return findName(this._quad1, i2, i3, 2);
            }
            return parseName(this._quad1, i2, i3, readUnsignedByte2, 2);
        }
        int i4 = (i3 << 8) | readUnsignedByte2;
        int readUnsignedByte3 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte3] != 0) {
            if (readUnsignedByte3 == 34) {
                return findName(this._quad1, i2, i4, 3);
            }
            return parseName(this._quad1, i2, i4, readUnsignedByte3, 3);
        }
        int i5 = (i4 << 8) | readUnsignedByte3;
        int readUnsignedByte4 = this._inputData.readUnsignedByte();
        if (iArr[readUnsignedByte4] != 0) {
            if (readUnsignedByte4 == 34) {
                return findName(this._quad1, i2, i5, 4);
            }
            return parseName(this._quad1, i2, i5, readUnsignedByte4, 4);
        }
        return _parseLongName(readUnsignedByte4, i2, i5);
    }

    private final String _parseLongName(int i, int i2, int i3) throws IOException {
        this._quadBuffer[0] = this._quad1;
        this._quadBuffer[1] = i2;
        this._quadBuffer[2] = i3;
        int[] iArr = _icLatin1;
        int i4 = 3;
        int i5 = i;
        while (true) {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (iArr[readUnsignedByte] != 0) {
                if (readUnsignedByte == 34) {
                    return findName(this._quadBuffer, i4, i5, 1);
                }
                return parseEscapedName(this._quadBuffer, i4, i5, readUnsignedByte, 1);
            }
            int i6 = (i5 << 8) | readUnsignedByte;
            int readUnsignedByte2 = this._inputData.readUnsignedByte();
            if (iArr[readUnsignedByte2] != 0) {
                if (readUnsignedByte2 == 34) {
                    return findName(this._quadBuffer, i4, i6, 2);
                }
                return parseEscapedName(this._quadBuffer, i4, i6, readUnsignedByte2, 2);
            }
            int i7 = (i6 << 8) | readUnsignedByte2;
            int readUnsignedByte3 = this._inputData.readUnsignedByte();
            if (iArr[readUnsignedByte3] != 0) {
                if (readUnsignedByte3 == 34) {
                    return findName(this._quadBuffer, i4, i7, 3);
                }
                return parseEscapedName(this._quadBuffer, i4, i7, readUnsignedByte3, 3);
            }
            int i8 = (i7 << 8) | readUnsignedByte3;
            int readUnsignedByte4 = this._inputData.readUnsignedByte();
            if (iArr[readUnsignedByte4] != 0) {
                if (readUnsignedByte4 == 34) {
                    return findName(this._quadBuffer, i4, i8, 4);
                }
                return parseEscapedName(this._quadBuffer, i4, i8, readUnsignedByte4, 4);
            }
            if (i4 >= this._quadBuffer.length) {
                this._quadBuffer = _growArrayBy(this._quadBuffer, i4);
            }
            this._quadBuffer[i4] = i8;
            i4++;
            i5 = readUnsignedByte4;
        }
    }

    private final String parseName(int i, int i2, int i3) throws IOException {
        return parseEscapedName(this._quadBuffer, 0, i, i2, i3);
    }

    private final String parseName(int i, int i2, int i3, int i4) throws IOException {
        this._quadBuffer[0] = i;
        return parseEscapedName(this._quadBuffer, 1, i2, i3, i4);
    }

    private final String parseName(int i, int i2, int i3, int i4, int i5) throws IOException {
        this._quadBuffer[0] = i;
        this._quadBuffer[1] = i2;
        return parseEscapedName(this._quadBuffer, 2, i3, i4, i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected final String parseEscapedName(int[] iArr, int i, int i2, int i3, int i4) throws IOException {
        int i5;
        int[] iArr2;
        int i6;
        int[] iArr3;
        int i7;
        int i8;
        int[] iArr4;
        int i9;
        int i10;
        int i11;
        int[] iArr5;
        int[] iArr6 = _icLatin1;
        while (true) {
            if (iArr6[i3] != 0) {
                if (i3 == 34) {
                    break;
                }
                if (i3 != 92) {
                    _throwUnquotedSpace(i3, "name");
                } else {
                    i3 = _decodeEscaped();
                }
                if (i3 > 127) {
                    if (i4 >= 4) {
                        if (i >= iArr.length) {
                            iArr = _growArrayBy(iArr, iArr.length);
                            this._quadBuffer = iArr;
                        }
                        i6 = i + 1;
                        iArr[i] = i2;
                        i4 = 0;
                        i2 = 0;
                        iArr3 = iArr;
                    } else {
                        i6 = i;
                        iArr3 = iArr;
                    }
                    if (i3 < 2048) {
                        i10 = (i3 >> 6) | JfifUtil.MARKER_SOFn | (i2 << 8);
                        iArr5 = iArr3;
                        i11 = i4 + 1;
                    } else {
                        int i12 = (i3 >> 12) | 224 | (i2 << 8);
                        int i13 = i4 + 1;
                        if (i13 >= 4) {
                            if (i6 >= iArr3.length) {
                                iArr3 = _growArrayBy(iArr3, iArr3.length);
                                this._quadBuffer = iArr3;
                            }
                            iArr3[i6] = i12;
                            i8 = i6 + 1;
                            iArr4 = iArr3;
                            i9 = 0;
                            i7 = 0;
                        } else {
                            i7 = i12;
                            i8 = i6;
                            iArr4 = iArr3;
                            i9 = i13;
                        }
                        i10 = (i7 << 8) | ((i3 >> 6) & 63) | 128;
                        i11 = i9 + 1;
                        int i14 = i8;
                        iArr5 = iArr4;
                        i6 = i14;
                    }
                    i2 = (i3 & 63) | 128;
                    i4 = i11;
                    i = i6;
                    iArr2 = iArr5;
                    i5 = i10;
                    if (i4 >= 4) {
                        i4++;
                        i2 |= i5 << 8;
                    } else {
                        if (i >= iArr2.length) {
                            iArr2 = _growArrayBy(iArr2, iArr2.length);
                            this._quadBuffer = iArr2;
                        }
                        iArr2[i] = i5;
                        i4 = 1;
                        i++;
                    }
                    iArr = iArr2;
                    i3 = this._inputData.readUnsignedByte();
                }
            }
            i5 = i2;
            iArr2 = iArr;
            i2 = i3;
            if (i4 >= 4) {
            }
            iArr = iArr2;
            i3 = this._inputData.readUnsignedByte();
        }
        if (i4 > 0) {
            if (i >= iArr.length) {
                iArr = _growArrayBy(iArr, iArr.length);
                this._quadBuffer = iArr;
            }
            iArr[i] = pad(i2, i4);
            i++;
        }
        String findName = this._symbols.findName(iArr, i);
        if (findName == null) {
            return addName(iArr, i, i4);
        }
        return findName;
    }

    protected String _handleOddName(int i) throws IOException {
        int[] iArr;
        int i2;
        int i3;
        int i4;
        int readUnsignedByte;
        if (i == 39 && isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
            return _parseAposName();
        }
        if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
            _reportUnexpectedChar((char) _decodeCharForError(i), "was expecting double-quote to start field name");
        }
        int[] inputCodeUtf8JsNames = CharTypes.getInputCodeUtf8JsNames();
        if (inputCodeUtf8JsNames[i] != 0) {
            _reportUnexpectedChar(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int i5 = 0;
        int i6 = 0;
        int i7 = i;
        int i8 = 0;
        int[] iArr2 = this._quadBuffer;
        while (true) {
            if (i5 < 4) {
                int i9 = i5 + 1;
                i3 = i7 | (i6 << 8);
                i4 = i8;
                iArr = iArr2;
                i2 = i9;
            } else {
                if (i8 >= iArr2.length) {
                    iArr2 = _growArrayBy(iArr2, iArr2.length);
                    this._quadBuffer = iArr2;
                }
                int i10 = i8 + 1;
                iArr2[i8] = i6;
                iArr = iArr2;
                i2 = 1;
                i3 = i7;
                i4 = i10;
            }
            readUnsignedByte = this._inputData.readUnsignedByte();
            if (inputCodeUtf8JsNames[readUnsignedByte] != 0) {
                break;
            }
            i6 = i3;
            i5 = i2;
            iArr2 = iArr;
            i8 = i4;
            i7 = readUnsignedByte;
        }
        this._nextByte = readUnsignedByte;
        if (i2 > 0) {
            if (i4 >= iArr.length) {
                iArr = _growArrayBy(iArr, iArr.length);
                this._quadBuffer = iArr;
            }
            iArr[i4] = i3;
            i4++;
        }
        String findName = this._symbols.findName(iArr, i4);
        return findName == null ? addName(iArr, i4, i2) : findName;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected String _parseAposName() throws IOException {
        int[] iArr;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int[] iArr3;
        int i13;
        int i14;
        int i15;
        int[] iArr4;
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if (readUnsignedByte == 39) {
            return "";
        }
        int[] iArr5 = this._quadBuffer;
        int[] iArr6 = _icLatin1;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (readUnsignedByte != 39) {
            if (readUnsignedByte != 34 && iArr6[readUnsignedByte] != 0) {
                if (readUnsignedByte != 92) {
                    _throwUnquotedSpace(readUnsignedByte, "name");
                } else {
                    readUnsignedByte = _decodeEscaped();
                }
                if (readUnsignedByte > 127) {
                    if (i16 >= 4) {
                        if (i18 >= iArr5.length) {
                            iArr5 = _growArrayBy(iArr5, iArr5.length);
                            this._quadBuffer = iArr5;
                        }
                        int i19 = i18 + 1;
                        iArr5[i18] = i17;
                        i10 = 0;
                        i3 = i19;
                        i9 = 0;
                    } else {
                        int i20 = i16;
                        i9 = i17;
                        i3 = i18;
                        i10 = i20;
                    }
                    if (readUnsignedByte < 2048) {
                        int i21 = i10 + 1;
                        i14 = (i9 << 8) | (readUnsignedByte >> 6) | JfifUtil.MARKER_SOFn;
                        iArr4 = iArr5;
                        i15 = i21;
                    } else {
                        int i22 = (i9 << 8) | (readUnsignedByte >> 12) | 224;
                        int i23 = i10 + 1;
                        if (i23 >= 4) {
                            if (i3 >= iArr5.length) {
                                iArr5 = _growArrayBy(iArr5, iArr5.length);
                                this._quadBuffer = iArr5;
                            }
                            iArr5[i3] = i22;
                            i12 = i3 + 1;
                            iArr3 = iArr5;
                            i13 = 0;
                            i11 = 0;
                        } else {
                            i11 = i22;
                            i12 = i3;
                            iArr3 = iArr5;
                            i13 = i23;
                        }
                        i14 = (i11 << 8) | ((readUnsignedByte >> 6) & 63) | 128;
                        i15 = i13 + 1;
                        int i24 = i12;
                        iArr4 = iArr3;
                        i3 = i24;
                    }
                    i2 = i14;
                    i4 = i15;
                    iArr5 = iArr4;
                    i5 = (readUnsignedByte & 63) | 128;
                    if (i4 >= 4) {
                        int i25 = i4 + 1;
                        i7 = i5 | (i2 << 8);
                        i8 = i3;
                        iArr2 = iArr5;
                        i6 = i25;
                    } else {
                        if (i3 >= iArr5.length) {
                            iArr5 = _growArrayBy(iArr5, iArr5.length);
                            this._quadBuffer = iArr5;
                        }
                        int i26 = i3 + 1;
                        iArr5[i3] = i2;
                        iArr2 = iArr5;
                        i6 = 1;
                        i7 = i5;
                        i8 = i26;
                    }
                    readUnsignedByte = this._inputData.readUnsignedByte();
                    int i27 = i6;
                    iArr5 = iArr2;
                    i17 = i7;
                    i18 = i8;
                    i16 = i27;
                }
            }
            i2 = i17;
            i3 = i18;
            i4 = i16;
            i5 = readUnsignedByte;
            if (i4 >= 4) {
            }
            readUnsignedByte = this._inputData.readUnsignedByte();
            int i272 = i6;
            iArr5 = iArr2;
            i17 = i7;
            i18 = i8;
            i16 = i272;
        }
        if (i16 > 0) {
            if (i18 >= iArr5.length) {
                iArr5 = _growArrayBy(iArr5, iArr5.length);
                this._quadBuffer = iArr5;
            }
            iArr5[i18] = pad(i17, i16);
            iArr = iArr5;
            i = i18 + 1;
        } else {
            iArr = iArr5;
            i = i18;
        }
        String findName = this._symbols.findName(iArr, i);
        return findName == null ? addName(iArr, i, i16) : findName;
    }

    private final String findName(int i, int i2) throws JsonParseException {
        int pad = pad(i, i2);
        String findName = this._symbols.findName(pad);
        if (findName == null) {
            this._quadBuffer[0] = pad;
            return addName(this._quadBuffer, 1, i2);
        }
        return findName;
    }

    private final String findName(int i, int i2, int i3) throws JsonParseException {
        int pad = pad(i2, i3);
        String findName = this._symbols.findName(i, pad);
        if (findName == null) {
            this._quadBuffer[0] = i;
            this._quadBuffer[1] = pad;
            return addName(this._quadBuffer, 2, i3);
        }
        return findName;
    }

    private final String findName(int i, int i2, int i3, int i4) throws JsonParseException {
        int pad = pad(i3, i4);
        String findName = this._symbols.findName(i, i2, pad);
        if (findName == null) {
            int[] iArr = this._quadBuffer;
            iArr[0] = i;
            iArr[1] = i2;
            iArr[2] = pad(pad, i4);
            return addName(iArr, 3, i4);
        }
        return findName;
    }

    private final String findName(int[] iArr, int i, int i2, int i3) throws JsonParseException {
        if (i >= iArr.length) {
            iArr = _growArrayBy(iArr, iArr.length);
            this._quadBuffer = iArr;
        }
        int i4 = i + 1;
        iArr[i] = pad(i2, i3);
        String findName = this._symbols.findName(iArr, i4);
        if (findName == null) {
            return addName(iArr, i4, i3);
        }
        return findName;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final String addName(int[] iArr, int i, int i2) throws JsonParseException {
        int i3;
        char[] cArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = ((i << 2) - 4) + i2;
        if (i2 < 4) {
            i3 = iArr[i - 1];
            iArr[i - 1] = i3 << ((4 - i2) << 3);
        } else {
            i3 = 0;
        }
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int i10 = 0;
        int i11 = 0;
        while (i11 < i9) {
            int i12 = (iArr[i11 >> 2] >> ((3 - (i11 & 3)) << 3)) & 255;
            int i13 = i11 + 1;
            if (i12 > 127) {
                if ((i12 & 224) == 192) {
                    i7 = i12 & 31;
                    i8 = 1;
                } else if ((i12 & 240) == 224) {
                    i7 = i12 & 15;
                    i8 = 2;
                } else if ((i12 & 248) == 240) {
                    i7 = i12 & 7;
                    i8 = 3;
                } else {
                    _reportInvalidInitial(i12);
                    i7 = 1;
                    i8 = 1;
                }
                if (i13 + i8 > i9) {
                    _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
                }
                int i14 = iArr[i13 >> 2] >> ((3 - (i13 & 3)) << 3);
                i13++;
                if ((i14 & JfifUtil.MARKER_SOFn) != 128) {
                    _reportInvalidOther(i14);
                }
                i12 = (i7 << 6) | (i14 & 63);
                if (i8 > 1) {
                    int i15 = iArr[i13 >> 2] >> ((3 - (i13 & 3)) << 3);
                    i13++;
                    if ((i15 & JfifUtil.MARKER_SOFn) != 128) {
                        _reportInvalidOther(i15);
                    }
                    i12 = (i12 << 6) | (i15 & 63);
                    if (i8 > 2) {
                        int i16 = iArr[i13 >> 2] >> ((3 - (i13 & 3)) << 3);
                        i13++;
                        if ((i16 & JfifUtil.MARKER_SOFn) != 128) {
                            _reportInvalidOther(i16 & 255);
                        }
                        i12 = (i12 << 6) | (i16 & 63);
                    }
                }
                if (i8 > 2) {
                    int i17 = i12 - 65536;
                    if (i10 >= emptyAndGetCurrentSegment.length) {
                        emptyAndGetCurrentSegment = this._textBuffer.expandCurrentSegment();
                    }
                    emptyAndGetCurrentSegment[i10] = (char) (GeneratorBase.SURR1_FIRST + (i17 >> 10));
                    int i18 = (i17 & Place.TYPE_SUBLOCALITY_LEVEL_1) | GeneratorBase.SURR2_FIRST;
                    i5 = i13;
                    i6 = i10 + 1;
                    cArr = emptyAndGetCurrentSegment;
                    i4 = i18;
                    if (i6 < cArr.length) {
                        cArr = this._textBuffer.expandCurrentSegment();
                    }
                    i10 = i6 + 1;
                    cArr[i6] = (char) i4;
                    i11 = i5;
                    emptyAndGetCurrentSegment = cArr;
                }
            }
            cArr = emptyAndGetCurrentSegment;
            i4 = i12;
            i5 = i13;
            i6 = i10;
            if (i6 < cArr.length) {
            }
            i10 = i6 + 1;
            cArr[i6] = (char) i4;
            i11 = i5;
            emptyAndGetCurrentSegment = cArr;
        }
        String str = new String(emptyAndGetCurrentSegment, 0, i10);
        if (i2 < 4) {
            iArr[i - 1] = i3;
        }
        return this._symbols.addName(str, iArr, i);
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _finishString() throws IOException {
        int i = 0;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int length = emptyAndGetCurrentSegment.length;
        while (true) {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (iArr[readUnsignedByte] != 0) {
                if (readUnsignedByte == 34) {
                    this._textBuffer.setCurrentLength(i);
                    return;
                } else {
                    _finishString2(emptyAndGetCurrentSegment, i, readUnsignedByte);
                    return;
                }
            }
            int i2 = i + 1;
            emptyAndGetCurrentSegment[i] = (char) readUnsignedByte;
            if (i2 >= length) {
                _finishString2(emptyAndGetCurrentSegment, i2, this._inputData.readUnsignedByte());
                return;
            }
            i = i2;
        }
    }

    private String _finishAndReturnString() throws IOException {
        int i = 0;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int length = emptyAndGetCurrentSegment.length;
        while (true) {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (iArr[readUnsignedByte] != 0) {
                if (readUnsignedByte == 34) {
                    return this._textBuffer.setCurrentAndReturn(i);
                }
                _finishString2(emptyAndGetCurrentSegment, i, readUnsignedByte);
                return this._textBuffer.contentsAsString();
            }
            int i2 = i + 1;
            emptyAndGetCurrentSegment[i] = (char) readUnsignedByte;
            if (i2 >= length) {
                _finishString2(emptyAndGetCurrentSegment, i2, this._inputData.readUnsignedByte());
                return this._textBuffer.contentsAsString();
            }
            i = i2;
        }
    }

    private final void _finishString2(char[] cArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int[] iArr = _icUTF8;
        int length = cArr.length;
        while (true) {
            if (iArr[i2] == 0) {
                if (i >= length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    length = cArr.length;
                    i3 = 0;
                } else {
                    i3 = i;
                }
                i = i3 + 1;
                cArr[i3] = (char) i2;
                i2 = this._inputData.readUnsignedByte();
            } else if (i2 != 34) {
                switch (iArr[i2]) {
                    case 1:
                        i2 = _decodeEscaped();
                        break;
                    case 2:
                        i2 = _decodeUtf8_2(i2);
                        break;
                    case 3:
                        i2 = _decodeUtf8_3(i2);
                        break;
                    case 4:
                        int _decodeUtf8_4 = _decodeUtf8_4(i2);
                        int i5 = i + 1;
                        cArr[i] = (char) (55296 | (_decodeUtf8_4 >> 10));
                        if (i5 >= cArr.length) {
                            cArr = this._textBuffer.finishCurrentSegment();
                            length = cArr.length;
                            i5 = 0;
                        }
                        i2 = 56320 | (_decodeUtf8_4 & Place.TYPE_SUBLOCALITY_LEVEL_1);
                        i = i5;
                        break;
                    default:
                        if (i2 < 32) {
                            _throwUnquotedSpace(i2, "string value");
                            break;
                        } else {
                            _reportInvalidChar(i2);
                            break;
                        }
                }
                if (i >= cArr.length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    length = cArr.length;
                    i4 = 0;
                } else {
                    i4 = i;
                }
                i = i4 + 1;
                cArr[i4] = (char) i2;
                i2 = this._inputData.readUnsignedByte();
            } else {
                this._textBuffer.setCurrentLength(i);
                return;
            }
        }
    }

    protected void _skipString() throws IOException {
        this._tokenIncomplete = false;
        int[] iArr = _icUTF8;
        while (true) {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (iArr[readUnsignedByte] != 0) {
                if (readUnsignedByte != 34) {
                    switch (iArr[readUnsignedByte]) {
                        case 1:
                            _decodeEscaped();
                            continue;
                        case 2:
                            _skipUtf8_2();
                            continue;
                        case 3:
                            _skipUtf8_3();
                            continue;
                        case 4:
                            _skipUtf8_4();
                            continue;
                        default:
                            if (readUnsignedByte < 32) {
                                _throwUnquotedSpace(readUnsignedByte, "string value");
                                break;
                            } else {
                                _reportInvalidChar(readUnsignedByte);
                                continue;
                            }
                    }
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
        if (r4._parsingContext.inArray() != false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected JsonToken _handleUnexpectedValue(int i) throws IOException {
        switch (i) {
            case 39:
                if (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
                    return _handleApos();
                }
                if (Character.isJavaIdentifierStart(i)) {
                    _reportInvalidToken(i, "" + ((char) i), "('true', 'false' or 'null')");
                }
                _reportUnexpectedChar(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
                return null;
            case 43:
                return _handleInvalidNumberStart(this._inputData.readUnsignedByte(), false);
            case 44:
                if (isEnabled(JsonParser.Feature.ALLOW_MISSING_VALUES)) {
                    this._nextByte = i;
                    return JsonToken.VALUE_NULL;
                }
                _reportUnexpectedChar(i, "expected a value");
                if (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
                }
                if (Character.isJavaIdentifierStart(i)) {
                }
                _reportUnexpectedChar(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
                return null;
            case 73:
                _matchToken("Infinity", 1);
                if (isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                    return resetAsNaN("Infinity", Double.POSITIVE_INFINITY);
                }
                _reportError("Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                if (Character.isJavaIdentifierStart(i)) {
                }
                _reportUnexpectedChar(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
                return null;
            case 78:
                _matchToken("NaN", 1);
                if (isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                    return resetAsNaN("NaN", Double.NaN);
                }
                _reportError("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                if (Character.isJavaIdentifierStart(i)) {
                }
                _reportUnexpectedChar(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
                return null;
            case 93:
                break;
            case 125:
                _reportUnexpectedChar(i, "expected a value");
                if (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
                }
                if (Character.isJavaIdentifierStart(i)) {
                }
                _reportUnexpectedChar(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
                return null;
            default:
                if (Character.isJavaIdentifierStart(i)) {
                }
                _reportUnexpectedChar(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
                return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0022 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0057 -> B:6:0x0018). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected JsonToken _handleApos() throws IOException {
        int i;
        int readUnsignedByte;
        int i2;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int i3 = 0;
        while (true) {
            int length = emptyAndGetCurrentSegment.length;
            if (i3 >= emptyAndGetCurrentSegment.length) {
                char[] finishCurrentSegment = this._textBuffer.finishCurrentSegment();
                length = finishCurrentSegment.length;
                i = 0;
                emptyAndGetCurrentSegment = finishCurrentSegment;
                readUnsignedByte = this._inputData.readUnsignedByte();
                if (readUnsignedByte != 39) {
                    if (iArr[readUnsignedByte] == 0) {
                        i3 = i + 1;
                        emptyAndGetCurrentSegment[i] = (char) readUnsignedByte;
                        if (i3 >= length) {
                            continue;
                        }
                    } else {
                        switch (iArr[readUnsignedByte]) {
                            case 1:
                                i2 = _decodeEscaped();
                                break;
                            case 2:
                                i2 = _decodeUtf8_2(readUnsignedByte);
                                break;
                            case 3:
                                i2 = _decodeUtf8_3(readUnsignedByte);
                                break;
                            case 4:
                                int _decodeUtf8_4 = _decodeUtf8_4(readUnsignedByte);
                                int i4 = i + 1;
                                emptyAndGetCurrentSegment[i] = (char) (55296 | (_decodeUtf8_4 >> 10));
                                if (i4 >= emptyAndGetCurrentSegment.length) {
                                    emptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                                    i4 = 0;
                                }
                                i2 = (_decodeUtf8_4 & Place.TYPE_SUBLOCALITY_LEVEL_1) | GeneratorBase.SURR2_FIRST;
                                i = i4;
                                break;
                            default:
                                if (readUnsignedByte < 32) {
                                    _throwUnquotedSpace(readUnsignedByte, "string value");
                                }
                                _reportInvalidChar(readUnsignedByte);
                                i2 = readUnsignedByte;
                                break;
                        }
                        if (i >= emptyAndGetCurrentSegment.length) {
                            emptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                            i = 0;
                        }
                        i3 = i + 1;
                        emptyAndGetCurrentSegment[i] = (char) i2;
                    }
                } else {
                    this._textBuffer.setCurrentLength(i);
                    return JsonToken.VALUE_STRING;
                }
            }
            i = i3;
            readUnsignedByte = this._inputData.readUnsignedByte();
            if (readUnsignedByte != 39) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0059, code lost:
        reportUnexpectedNumberChar(r0, "expected digit (0-9) to follow minus sign, for valid numeric value");
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected JsonToken _handleInvalidNumberStart(int i, boolean z) throws IOException {
        String str;
        int i2 = i;
        while (true) {
            if (i2 != 73) {
                break;
            }
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (readUnsignedByte == 78) {
                str = z ? "-INF" : "+INF";
            } else if (readUnsignedByte != 110) {
                i2 = readUnsignedByte;
                break;
            } else {
                str = z ? "-Infinity" : "+Infinity";
            }
            _matchToken(str, 3);
            if (isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                return resetAsNaN(str, z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY);
            }
            _reportError("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            i2 = readUnsignedByte;
        }
    }

    protected final void _matchToken(String str, int i) throws IOException {
        int length = str.length();
        do {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (readUnsignedByte != str.charAt(i)) {
                _reportInvalidToken(readUnsignedByte, str.substring(0, i));
            }
            i++;
        } while (i < length);
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if (readUnsignedByte2 >= 48 && readUnsignedByte2 != 93 && readUnsignedByte2 != 125) {
            _checkMatchEnd(str, i, readUnsignedByte2);
        }
        this._nextByte = readUnsignedByte2;
    }

    private final void _checkMatchEnd(String str, int i, int i2) throws IOException {
        char _decodeCharForError = (char) _decodeCharForError(i2);
        if (Character.isJavaIdentifierPart(_decodeCharForError)) {
            _reportInvalidToken(_decodeCharForError, str.substring(0, i));
        }
    }

    private final int _skipWS() throws IOException {
        int i = this._nextByte;
        if (i < 0) {
            i = this._inputData.readUnsignedByte();
        } else {
            this._nextByte = -1;
        }
        while (i <= 32) {
            if (i == 13 || i == 10) {
                this._currInputRow++;
            }
            i = this._inputData.readUnsignedByte();
        }
        if (i == 47 || i == 35) {
            return _skipWSComment(i);
        }
        return i;
    }

    private final int _skipWSComment(int i) throws IOException {
        int i2 = i;
        while (true) {
            if (i2 > 32) {
                if (i2 == 47) {
                    _skipComment();
                } else if (i2 != 35 || !_skipYAMLComment()) {
                    break;
                }
            } else if (i2 == 13 || i2 == 10) {
                this._currInputRow++;
            }
            i2 = this._inputData.readUnsignedByte();
        }
        return i2;
    }

    private final int _skipColon() throws IOException {
        int i = this._nextByte;
        if (i < 0) {
            i = this._inputData.readUnsignedByte();
        } else {
            this._nextByte = -1;
        }
        if (i == 58) {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (readUnsignedByte > 32) {
                if (readUnsignedByte == 47 || readUnsignedByte == 35) {
                    return _skipColon2(readUnsignedByte, true);
                }
                return readUnsignedByte;
            } else if ((readUnsignedByte == 32 || readUnsignedByte == 9) && (readUnsignedByte = this._inputData.readUnsignedByte()) > 32) {
                if (readUnsignedByte == 47 || readUnsignedByte == 35) {
                    return _skipColon2(readUnsignedByte, true);
                }
                return readUnsignedByte;
            } else {
                return _skipColon2(readUnsignedByte, true);
            }
        }
        if (i == 32 || i == 9) {
            i = this._inputData.readUnsignedByte();
        }
        if (i == 58) {
            int readUnsignedByte2 = this._inputData.readUnsignedByte();
            if (readUnsignedByte2 > 32) {
                if (readUnsignedByte2 == 47 || readUnsignedByte2 == 35) {
                    return _skipColon2(readUnsignedByte2, true);
                }
                return readUnsignedByte2;
            } else if ((readUnsignedByte2 == 32 || readUnsignedByte2 == 9) && (readUnsignedByte2 = this._inputData.readUnsignedByte()) > 32) {
                if (readUnsignedByte2 == 47 || readUnsignedByte2 == 35) {
                    return _skipColon2(readUnsignedByte2, true);
                }
                return readUnsignedByte2;
            } else {
                return _skipColon2(readUnsignedByte2, true);
            }
        }
        return _skipColon2(i, false);
    }

    private final int _skipColon2(int i, boolean z) throws IOException {
        boolean z2 = z;
        while (true) {
            if (i > 32) {
                if (i == 47) {
                    _skipComment();
                } else if (i != 35 || !_skipYAMLComment()) {
                    if (z2) {
                        return i;
                    }
                    if (i != 58) {
                        _reportUnexpectedChar(i, "was expecting a colon to separate field name and value");
                    }
                    z2 = true;
                }
            } else if (i == 13 || i == 10) {
                this._currInputRow++;
            }
            i = this._inputData.readUnsignedByte();
        }
    }

    private final void _skipComment() throws IOException {
        if (!isEnabled(JsonParser.Feature.ALLOW_COMMENTS)) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if (readUnsignedByte == 47) {
            _skipLine();
        } else if (readUnsignedByte == 42) {
            _skipCComment();
        } else {
            _reportUnexpectedChar(readUnsignedByte, "was expecting either '*' or '/' for a comment");
        }
    }

    private final void _skipCComment() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        int readUnsignedByte = this._inputData.readUnsignedByte();
        while (true) {
            int i = inputCodeComment[readUnsignedByte];
            if (i != 0) {
                switch (i) {
                    case 2:
                        _skipUtf8_2();
                        break;
                    case 3:
                        _skipUtf8_3();
                        break;
                    case 4:
                        _skipUtf8_4();
                        break;
                    case 10:
                    case 13:
                        this._currInputRow++;
                        break;
                    case 42:
                        readUnsignedByte = this._inputData.readUnsignedByte();
                        if (readUnsignedByte == 47) {
                            return;
                        }
                        continue;
                    default:
                        _reportInvalidChar(readUnsignedByte);
                        break;
                }
            }
            readUnsignedByte = this._inputData.readUnsignedByte();
        }
    }

    private final boolean _skipYAMLComment() throws IOException {
        if (!isEnabled(JsonParser.Feature.ALLOW_YAML_COMMENTS)) {
            return false;
        }
        _skipLine();
        return true;
    }

    private final void _skipLine() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            int i = inputCodeComment[readUnsignedByte];
            if (i != 0) {
                switch (i) {
                    case 2:
                        _skipUtf8_2();
                        continue;
                    case 3:
                        _skipUtf8_3();
                        continue;
                    case 4:
                        _skipUtf8_4();
                        continue;
                    case 10:
                    case 13:
                        this._currInputRow++;
                        return;
                    case 42:
                        break;
                    default:
                        if (i < 0) {
                            _reportInvalidChar(readUnsignedByte);
                            break;
                        } else {
                            continue;
                        }
                }
            }
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected char _decodeEscaped() throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        switch (readUnsignedByte) {
            case 34:
            case 47:
            case 92:
                return (char) readUnsignedByte;
            case 98:
                return '\b';
            case 102:
                return '\f';
            case 110:
                return '\n';
            case 114:
                return '\r';
            case 116:
                return '\t';
            case 117:
                int i = 0;
                for (int i2 = 0; i2 < 4; i2++) {
                    int readUnsignedByte2 = this._inputData.readUnsignedByte();
                    int charToHex = CharTypes.charToHex(readUnsignedByte2);
                    if (charToHex < 0) {
                        _reportUnexpectedChar(readUnsignedByte2, "expected a hex-digit for character escape sequence");
                    }
                    i = (i << 4) | charToHex;
                }
                return (char) i;
            default:
                return _handleUnrecognizedCharacterEscape((char) _decodeCharForError(readUnsignedByte));
        }
    }

    protected int _decodeCharForError(int i) throws IOException {
        int i2;
        char c;
        int i3 = i & 255;
        if (i3 > 127) {
            if ((i3 & 224) == 192) {
                i2 = i3 & 31;
                c = 1;
            } else if ((i3 & 240) == 224) {
                i2 = i3 & 15;
                c = 2;
            } else if ((i3 & 248) == 240) {
                i2 = i3 & 7;
                c = 3;
            } else {
                _reportInvalidInitial(i3 & 255);
                i2 = i3;
                c = 1;
            }
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if ((readUnsignedByte & JfifUtil.MARKER_SOFn) != 128) {
                _reportInvalidOther(readUnsignedByte & 255);
            }
            int i4 = (i2 << 6) | (readUnsignedByte & 63);
            if (c <= 1) {
                return i4;
            }
            int readUnsignedByte2 = this._inputData.readUnsignedByte();
            if ((readUnsignedByte2 & JfifUtil.MARKER_SOFn) != 128) {
                _reportInvalidOther(readUnsignedByte2 & 255);
            }
            int i5 = (readUnsignedByte2 & 63) | (i4 << 6);
            if (c <= 2) {
                return i5;
            }
            int readUnsignedByte3 = this._inputData.readUnsignedByte();
            if ((readUnsignedByte3 & JfifUtil.MARKER_SOFn) != 128) {
                _reportInvalidOther(readUnsignedByte3 & 255);
            }
            return (readUnsignedByte3 & 63) | (i5 << 6);
        }
        return i3;
    }

    private final int _decodeUtf8_2(int i) throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if ((readUnsignedByte & JfifUtil.MARKER_SOFn) != 128) {
            _reportInvalidOther(readUnsignedByte & 255);
        }
        return (readUnsignedByte & 63) | ((i & 31) << 6);
    }

    private final int _decodeUtf8_3(int i) throws IOException {
        int i2 = i & 15;
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if ((readUnsignedByte & JfifUtil.MARKER_SOFn) != 128) {
            _reportInvalidOther(readUnsignedByte & 255);
        }
        int i3 = (i2 << 6) | (readUnsignedByte & 63);
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if ((readUnsignedByte2 & JfifUtil.MARKER_SOFn) != 128) {
            _reportInvalidOther(readUnsignedByte2 & 255);
        }
        return (i3 << 6) | (readUnsignedByte2 & 63);
    }

    private final int _decodeUtf8_4(int i) throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if ((readUnsignedByte & JfifUtil.MARKER_SOFn) != 128) {
            _reportInvalidOther(readUnsignedByte & 255);
        }
        int i2 = (readUnsignedByte & 63) | ((i & 7) << 6);
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if ((readUnsignedByte2 & JfifUtil.MARKER_SOFn) != 128) {
            _reportInvalidOther(readUnsignedByte2 & 255);
        }
        int i3 = (i2 << 6) | (readUnsignedByte2 & 63);
        int readUnsignedByte3 = this._inputData.readUnsignedByte();
        if ((readUnsignedByte3 & JfifUtil.MARKER_SOFn) != 128) {
            _reportInvalidOther(readUnsignedByte3 & 255);
        }
        return ((i3 << 6) | (readUnsignedByte3 & 63)) - 65536;
    }

    private final void _skipUtf8_2() throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if ((readUnsignedByte & JfifUtil.MARKER_SOFn) != 128) {
            _reportInvalidOther(readUnsignedByte & 255);
        }
    }

    private final void _skipUtf8_3() throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if ((readUnsignedByte & JfifUtil.MARKER_SOFn) != 128) {
            _reportInvalidOther(readUnsignedByte & 255);
        }
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if ((readUnsignedByte2 & JfifUtil.MARKER_SOFn) != 128) {
            _reportInvalidOther(readUnsignedByte2 & 255);
        }
    }

    private final void _skipUtf8_4() throws IOException {
        int readUnsignedByte = this._inputData.readUnsignedByte();
        if ((readUnsignedByte & JfifUtil.MARKER_SOFn) != 128) {
            _reportInvalidOther(readUnsignedByte & 255);
        }
        int readUnsignedByte2 = this._inputData.readUnsignedByte();
        if ((readUnsignedByte2 & JfifUtil.MARKER_SOFn) != 128) {
            _reportInvalidOther(readUnsignedByte2 & 255);
        }
        int readUnsignedByte3 = this._inputData.readUnsignedByte();
        if ((readUnsignedByte3 & JfifUtil.MARKER_SOFn) != 128) {
            _reportInvalidOther(readUnsignedByte3 & 255);
        }
    }

    protected void _reportInvalidToken(int i, String str) throws IOException {
        _reportInvalidToken(i, str, "'null', 'true', 'false' or NaN");
    }

    protected void _reportInvalidToken(int i, String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            char _decodeCharForError = (char) _decodeCharForError(i);
            if (Character.isJavaIdentifierPart(_decodeCharForError)) {
                sb.append(_decodeCharForError);
                i = this._inputData.readUnsignedByte();
            } else {
                _reportError("Unrecognized token '" + sb.toString() + "': was expecting " + str2);
                return;
            }
        }
    }

    protected void _reportInvalidChar(int i) throws JsonParseException {
        if (i < 32) {
            _throwInvalidSpace(i);
        }
        _reportInvalidInitial(i);
    }

    protected void _reportInvalidInitial(int i) throws JsonParseException {
        _reportError("Invalid UTF-8 start byte 0x" + Integer.toHexString(i));
    }

    private void _reportInvalidOther(int i) throws JsonParseException {
        _reportError("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i));
    }

    private static int[] _growArrayBy(int[] iArr, int i) {
        return iArr == null ? new int[i] : Arrays.copyOf(iArr, iArr.length + i);
    }

    protected final byte[] _decodeBase64(Base64Variant base64Variant) throws IOException {
        ByteArrayBuilder _getByteArrayBuilder = _getByteArrayBuilder();
        while (true) {
            int readUnsignedByte = this._inputData.readUnsignedByte();
            if (readUnsignedByte > 32) {
                int decodeBase64Char = base64Variant.decodeBase64Char(readUnsignedByte);
                if (decodeBase64Char < 0) {
                    if (readUnsignedByte == 34) {
                        return _getByteArrayBuilder.toByteArray();
                    }
                    decodeBase64Char = _decodeBase64Escape(base64Variant, readUnsignedByte, 0);
                    if (decodeBase64Char < 0) {
                        continue;
                    }
                }
                int readUnsignedByte2 = this._inputData.readUnsignedByte();
                int decodeBase64Char2 = base64Variant.decodeBase64Char(readUnsignedByte2);
                if (decodeBase64Char2 < 0) {
                    decodeBase64Char2 = _decodeBase64Escape(base64Variant, readUnsignedByte2, 1);
                }
                int i = decodeBase64Char2 | (decodeBase64Char << 6);
                int readUnsignedByte3 = this._inputData.readUnsignedByte();
                int decodeBase64Char3 = base64Variant.decodeBase64Char(readUnsignedByte3);
                if (decodeBase64Char3 < 0) {
                    if (decodeBase64Char3 != -2) {
                        if (readUnsignedByte3 == 34 && !base64Variant.usesPadding()) {
                            _getByteArrayBuilder.append(i >> 4);
                            return _getByteArrayBuilder.toByteArray();
                        }
                        decodeBase64Char3 = _decodeBase64Escape(base64Variant, readUnsignedByte3, 2);
                    }
                    if (decodeBase64Char3 == -2) {
                        int readUnsignedByte4 = this._inputData.readUnsignedByte();
                        if (!base64Variant.usesPaddingChar(readUnsignedByte4)) {
                            throw reportInvalidBase64Char(base64Variant, readUnsignedByte4, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        _getByteArrayBuilder.append(i >> 4);
                    }
                }
                int i2 = (i << 6) | decodeBase64Char3;
                int readUnsignedByte5 = this._inputData.readUnsignedByte();
                int decodeBase64Char4 = base64Variant.decodeBase64Char(readUnsignedByte5);
                if (decodeBase64Char4 < 0) {
                    if (decodeBase64Char4 != -2) {
                        if (readUnsignedByte5 == 34 && !base64Variant.usesPadding()) {
                            _getByteArrayBuilder.appendTwoBytes(i2 >> 2);
                            return _getByteArrayBuilder.toByteArray();
                        }
                        decodeBase64Char4 = _decodeBase64Escape(base64Variant, readUnsignedByte5, 3);
                    }
                    if (decodeBase64Char4 == -2) {
                        _getByteArrayBuilder.appendTwoBytes(i2 >> 2);
                    }
                }
                _getByteArrayBuilder.appendThreeBytes(decodeBase64Char4 | (i2 << 6));
            }
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getTokenLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), -1L, -1L, this._tokenInputRow, -1);
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getCurrentLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), -1L, -1L, this._currInputRow, -1);
    }

    private static final int pad(int i, int i2) {
        return i2 == 4 ? i : i | ((-1) << (i2 << 3));
    }
}
