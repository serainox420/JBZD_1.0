package com.fasterxml.jackson.core.json;

import com.facebook.imageutils.JfifUtil;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.flurry.android.Constants;
import com.google.android.gms.location.places.Place;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Arrays;
/* loaded from: classes.dex */
public class UTF8StreamJsonParser extends ParserBase {
    static final byte BYTE_LF = 10;
    protected boolean _bufferRecyclable;
    protected byte[] _inputBuffer;
    protected InputStream _inputStream;
    protected int _nameStartCol;
    protected int _nameStartOffset;
    protected int _nameStartRow;
    protected ObjectCodec _objectCodec;
    private int _quad1;
    protected int[] _quadBuffer;
    protected final ByteQuadsCanonicalizer _symbols;
    protected boolean _tokenIncomplete;
    private static final int[] _icUTF8 = CharTypes.getInputCodeUtf8();
    protected static final int[] _icLatin1 = CharTypes.getInputCodeLatin1();

    public UTF8StreamJsonParser(IOContext iOContext, int i, InputStream inputStream, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, byte[] bArr, int i2, int i3, boolean z) {
        super(iOContext, i);
        this._quadBuffer = new int[16];
        this._inputStream = inputStream;
        this._objectCodec = objectCodec;
        this._symbols = byteQuadsCanonicalizer;
        this._inputBuffer = bArr;
        this._inputPtr = i2;
        this._inputEnd = i3;
        this._currInputRowStart = i2;
        this._currInputProcessed = -i2;
        this._bufferRecyclable = z;
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
        int i = this._inputEnd - this._inputPtr;
        if (i < 1) {
            return 0;
        }
        outputStream.write(this._inputBuffer, this._inputPtr, i);
        return i;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object getInputSource() {
        return this._inputStream;
    }

    protected final boolean _loadMore() throws IOException {
        int length;
        int i = this._inputEnd;
        this._currInputProcessed += this._inputEnd;
        this._currInputRowStart -= this._inputEnd;
        this._nameStartOffset -= i;
        if (this._inputStream == null || (length = this._inputBuffer.length) == 0) {
            return false;
        }
        int read = this._inputStream.read(this._inputBuffer, 0, length);
        if (read > 0) {
            this._inputPtr = 0;
            this._inputEnd = read;
            return true;
        }
        _closeInput();
        if (read != 0) {
            return false;
        }
        throw new IOException("InputStream.read() returned 0 characters when trying to read " + this._inputBuffer.length + " bytes");
    }

    protected final boolean _loadToHaveAtLeast(int i) throws IOException {
        if (this._inputStream == null) {
            return false;
        }
        int i2 = this._inputEnd - this._inputPtr;
        if (i2 > 0 && this._inputPtr > 0) {
            int i3 = this._inputPtr;
            this._currInputProcessed += i3;
            this._currInputRowStart -= i3;
            this._nameStartOffset -= i3;
            System.arraycopy(this._inputBuffer, i3, this._inputBuffer, 0, i2);
            this._inputEnd = i2;
        } else {
            this._inputEnd = 0;
        }
        this._inputPtr = 0;
        while (this._inputEnd < i) {
            int read = this._inputStream.read(this._inputBuffer, this._inputEnd, this._inputBuffer.length - this._inputEnd);
            if (read < 1) {
                _closeInput();
                if (read != 0) {
                    return false;
                }
                throw new IOException("InputStream.read() returned 0 characters when trying to read " + i2 + " bytes");
            }
            this._inputEnd = read + this._inputEnd;
        }
        return true;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _closeInput() throws IOException {
        if (this._inputStream != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE)) {
                this._inputStream.close();
            }
            this._inputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.core.base.ParserBase
    public void _releaseBuffers() throws IOException {
        byte[] bArr;
        super._releaseBuffers();
        this._symbols.release();
        if (this._bufferRecyclable && (bArr = this._inputBuffer) != null) {
            this._inputBuffer = ByteArrayBuilder.NO_BYTES;
            this._ioContext.releaseReadIOBuffer(bArr);
        }
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getTextLength() throws IOException {
        if (this._currToken != null) {
            switch (this._currToken.id()) {
                case 5:
                    return this._parsingContext.getCurrentName().length();
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
                    return this._currToken.asCharArray().length;
            }
            return this._textBuffer.size();
        }
        return 0;
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

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
        r11._tokenIncomplete = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002d, code lost:
        if (r2 <= 0) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
        r0 = r0 + r2;
        r13.write(r14, 0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0033, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:?, code lost:
        return r0;
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
            if (this._inputPtr >= this._inputEnd) {
                _loadMoreGuaranteed();
            }
            byte[] bArr2 = this._inputBuffer;
            int i4 = this._inputPtr;
            this._inputPtr = i4 + 1;
            int i5 = bArr2[i4] & Constants.UNKNOWN;
            if (i5 > 32) {
                int decodeBase64Char = base64Variant.decodeBase64Char(i5);
                if (decodeBase64Char < 0) {
                    if (i5 == 34) {
                        break;
                    }
                    decodeBase64Char = _decodeBase64Escape(base64Variant, i5, 0);
                    if (decodeBase64Char < 0) {
                        continue;
                    }
                }
                int i6 = decodeBase64Char;
                if (i3 > length) {
                    i2 += i3;
                    outputStream.write(bArr, 0, i3);
                    i = 0;
                } else {
                    i = i3;
                }
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr3 = this._inputBuffer;
                int i7 = this._inputPtr;
                this._inputPtr = i7 + 1;
                int i8 = bArr3[i7] & Constants.UNKNOWN;
                int decodeBase64Char2 = base64Variant.decodeBase64Char(i8);
                if (decodeBase64Char2 < 0) {
                    decodeBase64Char2 = _decodeBase64Escape(base64Variant, i8, 1);
                }
                int i9 = (i6 << 6) | decodeBase64Char2;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr4 = this._inputBuffer;
                int i10 = this._inputPtr;
                this._inputPtr = i10 + 1;
                int i11 = bArr4[i10] & Constants.UNKNOWN;
                int decodeBase64Char3 = base64Variant.decodeBase64Char(i11);
                if (decodeBase64Char3 < 0) {
                    if (decodeBase64Char3 != -2) {
                        if (i11 == 34 && !base64Variant.usesPadding()) {
                            i3 = i + 1;
                            bArr[i] = (byte) (i9 >> 4);
                            break;
                        }
                        decodeBase64Char3 = _decodeBase64Escape(base64Variant, i11, 2);
                    }
                    if (decodeBase64Char3 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            _loadMoreGuaranteed();
                        }
                        byte[] bArr5 = this._inputBuffer;
                        int i12 = this._inputPtr;
                        this._inputPtr = i12 + 1;
                        int i13 = bArr5[i12] & Constants.UNKNOWN;
                        if (!base64Variant.usesPaddingChar(i13)) {
                            throw reportInvalidBase64Char(base64Variant, i13, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        i3 = i + 1;
                        bArr[i] = (byte) (i9 >> 4);
                    }
                }
                int i14 = (i9 << 6) | decodeBase64Char3;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr6 = this._inputBuffer;
                int i15 = this._inputPtr;
                this._inputPtr = i15 + 1;
                int i16 = bArr6[i15] & Constants.UNKNOWN;
                int decodeBase64Char4 = base64Variant.decodeBase64Char(i16);
                if (decodeBase64Char4 < 0) {
                    if (decodeBase64Char4 != -2) {
                        if (i16 == 34 && !base64Variant.usesPadding()) {
                            int i17 = i14 >> 2;
                            int i18 = i + 1;
                            bArr[i] = (byte) (i17 >> 8);
                            i3 = i18 + 1;
                            bArr[i18] = (byte) i17;
                            break;
                        }
                        decodeBase64Char4 = _decodeBase64Escape(base64Variant, i16, 3);
                    }
                    if (decodeBase64Char4 == -2) {
                        int i19 = i14 >> 2;
                        int i20 = i + 1;
                        bArr[i] = (byte) (i19 >> 8);
                        i3 = i20 + 1;
                        bArr[i20] = (byte) i19;
                    }
                }
                int i21 = (i14 << 6) | decodeBase64Char4;
                int i22 = i + 1;
                bArr[i] = (byte) (i21 >> 16);
                int i23 = i22 + 1;
                bArr[i22] = (byte) (i21 >> 8);
                i3 = i23 + 1;
                bArr[i23] = (byte) i21;
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
        int _skipWSOrEnd = _skipWSOrEnd();
        if (_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return null;
        }
        this._binaryValue = null;
        if (_skipWSOrEnd == 93) {
            _updateLocation();
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, '}');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            JsonToken jsonToken2 = JsonToken.END_ARRAY;
            this._currToken = jsonToken2;
            return jsonToken2;
        } else if (_skipWSOrEnd == 125) {
            _updateLocation();
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, ']');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            JsonToken jsonToken3 = JsonToken.END_OBJECT;
            this._currToken = jsonToken3;
            return jsonToken3;
        } else {
            if (this._parsingContext.expectComma()) {
                if (_skipWSOrEnd != 44) {
                    _reportUnexpectedChar(_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
                }
                _skipWSOrEnd = _skipWS();
            }
            if (!this._parsingContext.inObject()) {
                _updateLocation();
                return _nextTokenNotInObject(_skipWSOrEnd);
            }
            _updateNameLocation();
            this._parsingContext.setCurrentName(_parseName(_skipWSOrEnd));
            this._currToken = JsonToken.FIELD_NAME;
            int _skipColon = _skipColon();
            _updateLocation();
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
    public boolean nextFieldName(SerializableString serializableString) throws IOException {
        this._numTypesValid = 0;
        if (this._currToken == JsonToken.FIELD_NAME) {
            _nextAfterName();
            return false;
        }
        if (this._tokenIncomplete) {
            _skipString();
        }
        int _skipWSOrEnd = _skipWSOrEnd();
        if (_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return false;
        }
        this._binaryValue = null;
        if (_skipWSOrEnd == 93) {
            _updateLocation();
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, '}');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            this._currToken = JsonToken.END_ARRAY;
            return false;
        } else if (_skipWSOrEnd == 125) {
            _updateLocation();
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, ']');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            this._currToken = JsonToken.END_OBJECT;
            return false;
        } else {
            if (this._parsingContext.expectComma()) {
                if (_skipWSOrEnd != 44) {
                    _reportUnexpectedChar(_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
                }
                _skipWSOrEnd = _skipWS();
            }
            if (!this._parsingContext.inObject()) {
                _updateLocation();
                _nextTokenNotInObject(_skipWSOrEnd);
                return false;
            }
            _updateNameLocation();
            if (_skipWSOrEnd == 34) {
                byte[] asQuotedUTF8 = serializableString.asQuotedUTF8();
                int length = asQuotedUTF8.length;
                if (this._inputPtr + length + 4 < this._inputEnd) {
                    int i = this._inputPtr + length;
                    if (this._inputBuffer[i] == 34) {
                        int i2 = 0;
                        int i3 = this._inputPtr;
                        while (i3 != i) {
                            if (asQuotedUTF8[i2] == this._inputBuffer[i3]) {
                                i2++;
                                i3++;
                            }
                        }
                        this._parsingContext.setCurrentName(serializableString.getValue());
                        _isNextTokenNameYes(_skipColonFast(i3 + 1));
                        return true;
                    }
                }
            }
            return _isNextTokenNameMaybe(_skipWSOrEnd, serializableString);
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
        int _skipWSOrEnd = _skipWSOrEnd();
        if (_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return null;
        }
        this._binaryValue = null;
        if (_skipWSOrEnd == 93) {
            _updateLocation();
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, '}');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            this._currToken = JsonToken.END_ARRAY;
            return null;
        } else if (_skipWSOrEnd == 125) {
            _updateLocation();
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, ']');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            this._currToken = JsonToken.END_OBJECT;
            return null;
        } else {
            if (this._parsingContext.expectComma()) {
                if (_skipWSOrEnd != 44) {
                    _reportUnexpectedChar(_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
                }
                _skipWSOrEnd = _skipWS();
            }
            if (!this._parsingContext.inObject()) {
                _updateLocation();
                _nextTokenNotInObject(_skipWSOrEnd);
                return null;
            }
            _updateNameLocation();
            String _parseName = _parseName(_skipWSOrEnd);
            this._parsingContext.setCurrentName(_parseName);
            this._currToken = JsonToken.FIELD_NAME;
            int _skipColon = _skipColon();
            _updateLocation();
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

    private final int _skipColonFast(int i) throws IOException {
        int i2 = i + 1;
        byte b = this._inputBuffer[i];
        if (b == 58) {
            int i3 = i2 + 1;
            byte b2 = this._inputBuffer[i2];
            if (b2 > 32) {
                if (b2 != 47 && b2 != 35) {
                    this._inputPtr = i3;
                    return b2;
                }
            } else if (b2 == 32 || b2 == 9) {
                int i4 = i3 + 1;
                byte b3 = this._inputBuffer[i3];
                if (b3 > 32 && b3 != 47 && b3 != 35) {
                    this._inputPtr = i4;
                    return b3;
                }
                i3 = i4;
            }
            this._inputPtr = i3 - 1;
            return _skipColon2(true);
        }
        if (b == 32 || b == 9) {
            b = this._inputBuffer[i2];
            i2++;
        }
        if (b == 58) {
            int i5 = i2 + 1;
            byte b4 = this._inputBuffer[i2];
            if (b4 > 32) {
                if (b4 != 47 && b4 != 35) {
                    this._inputPtr = i5;
                    return b4;
                }
            } else if (b4 == 32 || b4 == 9) {
                int i6 = i5 + 1;
                byte b5 = this._inputBuffer[i5];
                if (b5 > 32 && b5 != 47 && b5 != 35) {
                    this._inputPtr = i6;
                    return b5;
                }
                i5 = i6;
            }
            this._inputPtr = i5 - 1;
            return _skipColon2(true);
        }
        this._inputPtr = i2 - 1;
        return _skipColon2(false);
    }

    private final void _isNextTokenNameYes(int i) throws IOException {
        this._currToken = JsonToken.FIELD_NAME;
        _updateLocation();
        switch (i) {
            case 34:
                this._tokenIncomplete = true;
                this._nextToken = JsonToken.VALUE_STRING;
                return;
            case 45:
                this._nextToken = _parseNegNumber();
                return;
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
                this._nextToken = _parsePosNumber(i);
                return;
            case 91:
                this._nextToken = JsonToken.START_ARRAY;
                return;
            case 102:
                _matchToken(Consts.False, 1);
                this._nextToken = JsonToken.VALUE_FALSE;
                return;
            case 110:
                _matchToken("null", 1);
                this._nextToken = JsonToken.VALUE_NULL;
                return;
            case 116:
                _matchToken("true", 1);
                this._nextToken = JsonToken.VALUE_TRUE;
                return;
            case 123:
                this._nextToken = JsonToken.START_OBJECT;
                return;
            default:
                this._nextToken = _handleUnexpectedValue(i);
                return;
        }
    }

    private final boolean _isNextTokenNameMaybe(int i, SerializableString serializableString) throws IOException {
        JsonToken _parsePosNumber;
        String _parseName = _parseName(i);
        this._parsingContext.setCurrentName(_parseName);
        boolean equals = _parseName.equals(serializableString.getValue());
        this._currToken = JsonToken.FIELD_NAME;
        int _skipColon = _skipColon();
        _updateLocation();
        if (_skipColon == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
            return equals;
        }
        switch (_skipColon) {
            case 45:
                _parsePosNumber = _parseNegNumber();
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
                _parsePosNumber = _parsePosNumber(_skipColon);
                break;
            case 91:
                _parsePosNumber = JsonToken.START_ARRAY;
                break;
            case 102:
                _matchToken(Consts.False, 1);
                _parsePosNumber = JsonToken.VALUE_FALSE;
                break;
            case 110:
                _matchToken("null", 1);
                _parsePosNumber = JsonToken.VALUE_NULL;
                break;
            case 116:
                _matchToken("true", 1);
                _parsePosNumber = JsonToken.VALUE_TRUE;
                break;
            case 123:
                _parsePosNumber = JsonToken.START_OBJECT;
                break;
            default:
                _parsePosNumber = _handleUnexpectedValue(_skipColon);
                break;
        }
        this._nextToken = _parsePosNumber;
        return equals;
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
        int i2;
        int i3 = 1;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        if (i == 48) {
            i = _verifyNoLeadingZeroes();
        }
        emptyAndGetCurrentSegment[0] = (char) i;
        int length = (this._inputPtr + emptyAndGetCurrentSegment.length) - 1;
        if (length > this._inputEnd) {
            length = this._inputEnd;
            i2 = 1;
        } else {
            i2 = 1;
        }
        while (this._inputPtr < length) {
            byte[] bArr = this._inputBuffer;
            int i4 = this._inputPtr;
            this._inputPtr = i4 + 1;
            int i5 = bArr[i4] & Constants.UNKNOWN;
            if (i5 >= 48 && i5 <= 57) {
                emptyAndGetCurrentSegment[i3] = (char) i5;
                i3++;
                i2++;
            } else if (i5 == 46 || i5 == 101 || i5 == 69) {
                return _parseFloat(emptyAndGetCurrentSegment, i3, i5, false, i2);
            } else {
                this._inputPtr--;
                this._textBuffer.setCurrentLength(i3);
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(i5);
                }
                return resetInt(false, i2);
            }
        }
        return _parseNumber2(emptyAndGetCurrentSegment, i3, false, i2);
    }

    protected JsonToken _parseNegNumber() throws IOException {
        int i;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment[0] = '-';
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        int i3 = bArr[i2] & Constants.UNKNOWN;
        if (i3 < 48 || i3 > 57) {
            return _handleInvalidNumberStart(i3, true);
        }
        if (i3 == 48) {
            i3 = _verifyNoLeadingZeroes();
        }
        int i4 = 2;
        emptyAndGetCurrentSegment[1] = (char) i3;
        int length = (this._inputPtr + emptyAndGetCurrentSegment.length) - 2;
        if (length > this._inputEnd) {
            length = this._inputEnd;
            i = 1;
        } else {
            i = 1;
        }
        while (this._inputPtr < length) {
            byte[] bArr2 = this._inputBuffer;
            int i5 = this._inputPtr;
            this._inputPtr = i5 + 1;
            int i6 = bArr2[i5] & Constants.UNKNOWN;
            if (i6 >= 48 && i6 <= 57) {
                i++;
                emptyAndGetCurrentSegment[i4] = (char) i6;
                i4++;
            } else if (i6 == 46 || i6 == 101 || i6 == 69) {
                return _parseFloat(emptyAndGetCurrentSegment, i4, i6, true, i);
            } else {
                this._inputPtr--;
                this._textBuffer.setCurrentLength(i4);
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(i6);
                }
                return resetInt(true, i);
            }
        }
        return _parseNumber2(emptyAndGetCurrentSegment, i4, true, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
        if (r3 == 46) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
        if (r3 == 101) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
        if (r3 != 69) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
        r6._inputPtr--;
        r6._textBuffer.setCurrentLength(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
        if (r6._parsingContext.inRoot() == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0066, code lost:
        r0 = r6._inputBuffer;
        r1 = r6._inputPtr;
        r6._inputPtr = r1 + 1;
        _verifyRootSpace(r0[r1] & com.flurry.android.Constants.UNKNOWN);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
        return _parseFloat(r1, r2, r3, r9, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
        return resetInt(r9, r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final JsonToken _parseNumber2(char[] cArr, int i, boolean z, int i2) throws IOException {
        int i3 = i2;
        int i4 = i;
        char[] cArr2 = cArr;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                this._textBuffer.setCurrentLength(i4);
                return resetInt(z, i3);
            }
            byte[] bArr = this._inputBuffer;
            int i5 = this._inputPtr;
            this._inputPtr = i5 + 1;
            int i6 = bArr[i5] & Constants.UNKNOWN;
            if (i6 > 57 || i6 < 48) {
                break;
            }
            if (i4 >= cArr2.length) {
                cArr2 = this._textBuffer.finishCurrentSegment();
                i4 = 0;
            }
            int i7 = i4;
            i4 = i7 + 1;
            cArr2[i7] = (char) i6;
            i3++;
        }
    }

    private final int _verifyNoLeadingZeroes() throws IOException {
        if (this._inputPtr < this._inputEnd || _loadMore()) {
            int i = this._inputBuffer[this._inputPtr] & Constants.UNKNOWN;
            if (i < 48 || i > 57) {
                return 48;
            }
            if (!isEnabled(JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
                reportInvalidNumber("Leading zeroes not allowed");
            }
            this._inputPtr++;
            if (i == 48) {
                do {
                    if (this._inputPtr < this._inputEnd || _loadMore()) {
                        i = this._inputBuffer[this._inputPtr] & Constants.UNKNOWN;
                        if (i < 48 || i > 57) {
                            return 48;
                        }
                        this._inputPtr++;
                    } else {
                        return i;
                    }
                } while (i == 48);
                return i;
            }
            return i;
        }
        return 48;
    }

    private final JsonToken _parseFloat(char[] cArr, int i, int i2, boolean z, int i3) throws IOException {
        int i4;
        int i5;
        char[] cArr2;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z2;
        int i10;
        int i11;
        int i12 = 0;
        boolean z3 = false;
        if (i2 != 46) {
            i4 = 0;
            i5 = i2;
            cArr2 = cArr;
            i6 = i;
        } else {
            if (i >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i = 0;
            }
            int i13 = i + 1;
            cArr[i] = (char) i2;
            while (true) {
                if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                    z3 = true;
                    i5 = i2;
                    break;
                }
                byte[] bArr = this._inputBuffer;
                int i14 = this._inputPtr;
                this._inputPtr = i14 + 1;
                i2 = bArr[i14] & Constants.UNKNOWN;
                if (i2 < 48) {
                    i5 = i2;
                    break;
                } else if (i2 > 57) {
                    i5 = i2;
                    break;
                } else {
                    i12++;
                    if (i13 >= cArr.length) {
                        cArr = this._textBuffer.finishCurrentSegment();
                        i13 = 0;
                    }
                    int i15 = i13;
                    i13 = i15 + 1;
                    cArr[i15] = (char) i2;
                }
            }
            if (i12 == 0) {
                reportUnexpectedNumberChar(i5, "Decimal point not followed by a digit");
            }
            i4 = i12;
            i6 = i13;
            cArr2 = cArr;
        }
        int i16 = 0;
        if (i5 != 101 && i5 != 69) {
            z2 = z3;
            i8 = i5;
            i10 = i6;
            i11 = 0;
        } else {
            if (i6 >= cArr2.length) {
                cArr2 = this._textBuffer.finishCurrentSegment();
                i6 = 0;
            }
            int i17 = i6 + 1;
            cArr2[i6] = (char) i5;
            if (this._inputPtr >= this._inputEnd) {
                _loadMoreGuaranteed();
            }
            byte[] bArr2 = this._inputBuffer;
            int i18 = this._inputPtr;
            this._inputPtr = i18 + 1;
            int i19 = bArr2[i18] & Constants.UNKNOWN;
            if (i19 == 45 || i19 == 43) {
                if (i17 >= cArr2.length) {
                    cArr2 = this._textBuffer.finishCurrentSegment();
                    i7 = 0;
                } else {
                    i7 = i17;
                }
                int i20 = i7 + 1;
                cArr2[i7] = (char) i19;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr3 = this._inputBuffer;
                int i21 = this._inputPtr;
                this._inputPtr = i21 + 1;
                i8 = bArr3[i21] & Constants.UNKNOWN;
                i9 = i20;
            } else {
                i9 = i17;
                i8 = i19;
            }
            while (i8 <= 57 && i8 >= 48) {
                i16++;
                if (i9 >= cArr2.length) {
                    cArr2 = this._textBuffer.finishCurrentSegment();
                    i9 = 0;
                }
                int i22 = i9 + 1;
                cArr2[i9] = (char) i8;
                if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                    i11 = i16;
                    z2 = true;
                    i10 = i22;
                    break;
                }
                byte[] bArr4 = this._inputBuffer;
                int i23 = this._inputPtr;
                this._inputPtr = i23 + 1;
                i8 = bArr4[i23] & Constants.UNKNOWN;
                i9 = i22;
            }
            z2 = z3;
            int i24 = i16;
            i10 = i9;
            i11 = i24;
            if (i11 == 0) {
                reportUnexpectedNumberChar(i8, "Exponent indicator not followed by a digit");
            }
        }
        if (!z2) {
            this._inputPtr--;
            if (this._parsingContext.inRoot()) {
                _verifyRootSpace(i8);
            }
        }
        this._textBuffer.setCurrentLength(i10);
        return resetFloat(z, i3, i4, i11);
    }

    private final void _verifyRootSpace(int i) throws IOException {
        this._inputPtr++;
        switch (i) {
            case 9:
            case 32:
                return;
            case 10:
                this._currInputRow++;
                this._currInputRowStart = this._inputPtr;
                return;
            case 13:
                _skipCR();
                return;
            default:
                _reportMissingRootWS(i);
                return;
        }
    }

    protected final String _parseName(int i) throws IOException {
        if (i != 34) {
            return _handleOddName(i);
        }
        if (this._inputPtr + 13 > this._inputEnd) {
            return slowParseName();
        }
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        int i3 = bArr[i2] & Constants.UNKNOWN;
        if (iArr[i3] == 0) {
            int i4 = this._inputPtr;
            this._inputPtr = i4 + 1;
            int i5 = bArr[i4] & Constants.UNKNOWN;
            if (iArr[i5] == 0) {
                int i6 = (i3 << 8) | i5;
                int i7 = this._inputPtr;
                this._inputPtr = i7 + 1;
                int i8 = bArr[i7] & Constants.UNKNOWN;
                if (iArr[i8] == 0) {
                    int i9 = (i6 << 8) | i8;
                    int i10 = this._inputPtr;
                    this._inputPtr = i10 + 1;
                    int i11 = bArr[i10] & Constants.UNKNOWN;
                    if (iArr[i11] == 0) {
                        int i12 = (i9 << 8) | i11;
                        int i13 = this._inputPtr;
                        this._inputPtr = i13 + 1;
                        int i14 = bArr[i13] & Constants.UNKNOWN;
                        if (iArr[i14] == 0) {
                            this._quad1 = i12;
                            return parseMediumName(i14);
                        } else if (i14 == 34) {
                            return findName(i12, 4);
                        } else {
                            return parseName(i12, i14, 4);
                        }
                    } else if (i11 == 34) {
                        return findName(i9, 3);
                    } else {
                        return parseName(i9, i11, 3);
                    }
                } else if (i8 == 34) {
                    return findName(i6, 2);
                } else {
                    return parseName(i6, i8, 2);
                }
            } else if (i5 == 34) {
                return findName(i3, 1);
            } else {
                return parseName(i3, i5, 1);
            }
        } else if (i3 == 34) {
            return "";
        } else {
            return parseName(0, i3, 0);
        }
    }

    protected final String parseMediumName(int i) throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        int i3 = bArr[i2] & Constants.UNKNOWN;
        if (iArr[i3] != 0) {
            if (i3 == 34) {
                return findName(this._quad1, i, 1);
            }
            return parseName(this._quad1, i, i3, 1);
        }
        int i4 = i3 | (i << 8);
        int i5 = this._inputPtr;
        this._inputPtr = i5 + 1;
        int i6 = bArr[i5] & Constants.UNKNOWN;
        if (iArr[i6] != 0) {
            if (i6 == 34) {
                return findName(this._quad1, i4, 2);
            }
            return parseName(this._quad1, i4, i6, 2);
        }
        int i7 = (i4 << 8) | i6;
        int i8 = this._inputPtr;
        this._inputPtr = i8 + 1;
        int i9 = bArr[i8] & Constants.UNKNOWN;
        if (iArr[i9] != 0) {
            if (i9 == 34) {
                return findName(this._quad1, i7, 3);
            }
            return parseName(this._quad1, i7, i9, 3);
        }
        int i10 = (i7 << 8) | i9;
        int i11 = this._inputPtr;
        this._inputPtr = i11 + 1;
        int i12 = bArr[i11] & Constants.UNKNOWN;
        if (iArr[i12] != 0) {
            if (i12 == 34) {
                return findName(this._quad1, i10, 4);
            }
            return parseName(this._quad1, i10, i12, 4);
        }
        return parseMediumName2(i12, i10);
    }

    protected final String parseMediumName2(int i, int i2) throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        int i4 = bArr[i3] & Constants.UNKNOWN;
        if (iArr[i4] != 0) {
            if (i4 == 34) {
                return findName(this._quad1, i2, i, 1);
            }
            return parseName(this._quad1, i2, i, i4, 1);
        }
        int i5 = (i << 8) | i4;
        int i6 = this._inputPtr;
        this._inputPtr = i6 + 1;
        int i7 = bArr[i6] & Constants.UNKNOWN;
        if (iArr[i7] != 0) {
            if (i7 == 34) {
                return findName(this._quad1, i2, i5, 2);
            }
            return parseName(this._quad1, i2, i5, i7, 2);
        }
        int i8 = (i5 << 8) | i7;
        int i9 = this._inputPtr;
        this._inputPtr = i9 + 1;
        int i10 = bArr[i9] & Constants.UNKNOWN;
        if (iArr[i10] != 0) {
            if (i10 == 34) {
                return findName(this._quad1, i2, i8, 3);
            }
            return parseName(this._quad1, i2, i8, i10, 3);
        }
        int i11 = (i8 << 8) | i10;
        int i12 = this._inputPtr;
        this._inputPtr = i12 + 1;
        int i13 = bArr[i12] & Constants.UNKNOWN;
        if (iArr[i13] != 0) {
            if (i13 == 34) {
                return findName(this._quad1, i2, i11, 4);
            }
            return parseName(this._quad1, i2, i11, i13, 4);
        }
        return parseLongName(i13, i2, i11);
    }

    protected final String parseLongName(int i, int i2, int i3) throws IOException {
        this._quadBuffer[0] = this._quad1;
        this._quadBuffer[1] = i2;
        this._quadBuffer[2] = i3;
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i4 = 3;
        int i5 = i;
        while (this._inputPtr + 4 <= this._inputEnd) {
            int i6 = this._inputPtr;
            this._inputPtr = i6 + 1;
            int i7 = bArr[i6] & Constants.UNKNOWN;
            if (iArr[i7] != 0) {
                if (i7 == 34) {
                    return findName(this._quadBuffer, i4, i5, 1);
                }
                return parseEscapedName(this._quadBuffer, i4, i5, i7, 1);
            }
            int i8 = (i5 << 8) | i7;
            int i9 = this._inputPtr;
            this._inputPtr = i9 + 1;
            int i10 = bArr[i9] & Constants.UNKNOWN;
            if (iArr[i10] != 0) {
                if (i10 == 34) {
                    return findName(this._quadBuffer, i4, i8, 2);
                }
                return parseEscapedName(this._quadBuffer, i4, i8, i10, 2);
            }
            int i11 = (i8 << 8) | i10;
            int i12 = this._inputPtr;
            this._inputPtr = i12 + 1;
            int i13 = bArr[i12] & Constants.UNKNOWN;
            if (iArr[i13] != 0) {
                if (i13 == 34) {
                    return findName(this._quadBuffer, i4, i11, 3);
                }
                return parseEscapedName(this._quadBuffer, i4, i11, i13, 3);
            }
            int i14 = (i11 << 8) | i13;
            int i15 = this._inputPtr;
            this._inputPtr = i15 + 1;
            int i16 = bArr[i15] & Constants.UNKNOWN;
            if (iArr[i16] != 0) {
                if (i16 == 34) {
                    return findName(this._quadBuffer, i4, i14, 4);
                }
                return parseEscapedName(this._quadBuffer, i4, i14, i16, 4);
            }
            if (i4 >= this._quadBuffer.length) {
                this._quadBuffer = growArrayBy(this._quadBuffer, i4);
            }
            this._quadBuffer[i4] = i14;
            i4++;
            i5 = i16;
        }
        return parseEscapedName(this._quadBuffer, i4, 0, i5, 0);
    }

    protected String slowParseName() throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(": was expecting closing '\"' for name", JsonToken.FIELD_NAME);
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        int i2 = bArr[i] & Constants.UNKNOWN;
        return i2 == 34 ? "" : parseEscapedName(this._quadBuffer, 0, 0, i2, 0);
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
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c1  */
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
                            iArr = growArrayBy(iArr, iArr.length);
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
                                iArr3 = growArrayBy(iArr3, iArr3.length);
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
                        iArr = iArr2;
                    } else {
                        if (i >= iArr2.length) {
                            iArr2 = growArrayBy(iArr2, iArr2.length);
                            this._quadBuffer = iArr2;
                        }
                        iArr2[i] = i5;
                        i4 = 1;
                        i++;
                        iArr = iArr2;
                    }
                    if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                        _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
                    }
                    byte[] bArr = this._inputBuffer;
                    int i15 = this._inputPtr;
                    this._inputPtr = i15 + 1;
                    i3 = bArr[i15] & Constants.UNKNOWN;
                }
            }
            i5 = i2;
            iArr2 = iArr;
            i2 = i3;
            if (i4 >= 4) {
            }
            if (this._inputPtr >= this._inputEnd) {
                _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
            }
            byte[] bArr2 = this._inputBuffer;
            int i152 = this._inputPtr;
            this._inputPtr = i152 + 1;
            i3 = bArr2[i152] & Constants.UNKNOWN;
        }
        if (i4 > 0) {
            if (i >= iArr.length) {
                iArr = growArrayBy(iArr, iArr.length);
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
                    iArr2 = growArrayBy(iArr2, iArr2.length);
                    this._quadBuffer = iArr2;
                }
                int i10 = i8 + 1;
                iArr2[i8] = i6;
                iArr = iArr2;
                i2 = 1;
                i3 = i7;
                i4 = i10;
            }
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
            }
            int i11 = this._inputBuffer[this._inputPtr] & Constants.UNKNOWN;
            if (inputCodeUtf8JsNames[i11] != 0) {
                break;
            }
            this._inputPtr++;
            i6 = i3;
            i5 = i2;
            iArr2 = iArr;
            i8 = i4;
            i7 = i11;
        }
        if (i2 > 0) {
            if (i4 >= iArr.length) {
                iArr = growArrayBy(iArr, iArr.length);
                this._quadBuffer = iArr;
            }
            iArr[i4] = i3;
            i4++;
        }
        String findName = this._symbols.findName(iArr, i4);
        return findName == null ? addName(iArr, i4, i2) : findName;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f9  */
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
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(": was expecting closing ''' for field name", JsonToken.FIELD_NAME);
        }
        byte[] bArr = this._inputBuffer;
        int i16 = this._inputPtr;
        this._inputPtr = i16 + 1;
        int i17 = bArr[i16] & Constants.UNKNOWN;
        if (i17 == 39) {
            return "";
        }
        int[] iArr5 = this._quadBuffer;
        int[] iArr6 = _icLatin1;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        while (i17 != 39) {
            if (i17 != 34 && iArr6[i17] != 0) {
                if (i17 != 92) {
                    _throwUnquotedSpace(i17, "name");
                } else {
                    i17 = _decodeEscaped();
                }
                if (i17 > 127) {
                    if (i18 >= 4) {
                        if (i20 >= iArr5.length) {
                            iArr5 = growArrayBy(iArr5, iArr5.length);
                            this._quadBuffer = iArr5;
                        }
                        int i21 = i20 + 1;
                        iArr5[i20] = i19;
                        i10 = 0;
                        i3 = i21;
                        i9 = 0;
                    } else {
                        int i22 = i18;
                        i9 = i19;
                        i3 = i20;
                        i10 = i22;
                    }
                    if (i17 < 2048) {
                        int i23 = i10 + 1;
                        i14 = (i9 << 8) | (i17 >> 6) | JfifUtil.MARKER_SOFn;
                        iArr4 = iArr5;
                        i15 = i23;
                    } else {
                        int i24 = (i9 << 8) | (i17 >> 12) | 224;
                        int i25 = i10 + 1;
                        if (i25 >= 4) {
                            if (i3 >= iArr5.length) {
                                iArr5 = growArrayBy(iArr5, iArr5.length);
                                this._quadBuffer = iArr5;
                            }
                            iArr5[i3] = i24;
                            i12 = i3 + 1;
                            iArr3 = iArr5;
                            i13 = 0;
                            i11 = 0;
                        } else {
                            i11 = i24;
                            i12 = i3;
                            iArr3 = iArr5;
                            i13 = i25;
                        }
                        i14 = (i11 << 8) | ((i17 >> 6) & 63) | 128;
                        i15 = i13 + 1;
                        int i26 = i12;
                        iArr4 = iArr3;
                        i3 = i26;
                    }
                    i2 = i14;
                    i4 = i15;
                    iArr5 = iArr4;
                    i5 = (i17 & 63) | 128;
                    if (i4 >= 4) {
                        int i27 = i4 + 1;
                        i7 = i5 | (i2 << 8);
                        i8 = i3;
                        iArr2 = iArr5;
                        i6 = i27;
                    } else {
                        if (i3 >= iArr5.length) {
                            iArr5 = growArrayBy(iArr5, iArr5.length);
                            this._quadBuffer = iArr5;
                        }
                        int i28 = i3 + 1;
                        iArr5[i3] = i2;
                        iArr2 = iArr5;
                        i6 = 1;
                        i7 = i5;
                        i8 = i28;
                    }
                    if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                        _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
                    }
                    byte[] bArr2 = this._inputBuffer;
                    int i29 = this._inputPtr;
                    this._inputPtr = i29 + 1;
                    i17 = bArr2[i29] & Constants.UNKNOWN;
                    int i30 = i6;
                    iArr5 = iArr2;
                    i19 = i7;
                    i20 = i8;
                    i18 = i30;
                }
            }
            i2 = i19;
            i3 = i20;
            i4 = i18;
            i5 = i17;
            if (i4 >= 4) {
            }
            if (this._inputPtr >= this._inputEnd) {
                _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
            }
            byte[] bArr22 = this._inputBuffer;
            int i292 = this._inputPtr;
            this._inputPtr = i292 + 1;
            i17 = bArr22[i292] & Constants.UNKNOWN;
            int i302 = i6;
            iArr5 = iArr2;
            i19 = i7;
            i20 = i8;
            i18 = i302;
        }
        if (i18 > 0) {
            if (i20 >= iArr5.length) {
                iArr5 = growArrayBy(iArr5, iArr5.length);
                this._quadBuffer = iArr5;
            }
            iArr5[i20] = pad(i19, i18);
            iArr = iArr5;
            i = i20 + 1;
        } else {
            iArr = iArr5;
            i = i20;
        }
        String findName = this._symbols.findName(iArr, i);
        return findName == null ? addName(iArr, i, i18) : findName;
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
            iArr = growArrayBy(iArr, iArr.length);
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

    protected void _loadMoreGuaranteed() throws IOException {
        if (!_loadMore()) {
            _reportInvalidEOF();
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _finishString() throws IOException {
        int i = this._inputPtr;
        if (i >= this._inputEnd) {
            _loadMoreGuaranteed();
            i = this._inputPtr;
        }
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int min = Math.min(this._inputEnd, emptyAndGetCurrentSegment.length + i);
        byte[] bArr = this._inputBuffer;
        int i2 = i;
        int i3 = 0;
        while (true) {
            if (i2 >= min) {
                break;
            }
            int i4 = bArr[i2] & Constants.UNKNOWN;
            if (iArr[i4] != 0) {
                if (i4 == 34) {
                    this._inputPtr = i2 + 1;
                    this._textBuffer.setCurrentLength(i3);
                    return;
                }
            } else {
                emptyAndGetCurrentSegment[i3] = (char) i4;
                i3++;
                i2++;
            }
        }
        this._inputPtr = i2;
        _finishString2(emptyAndGetCurrentSegment, i3);
    }

    protected String _finishAndReturnString() throws IOException {
        int i = this._inputPtr;
        if (i >= this._inputEnd) {
            _loadMoreGuaranteed();
            i = this._inputPtr;
        }
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int min = Math.min(this._inputEnd, emptyAndGetCurrentSegment.length + i);
        byte[] bArr = this._inputBuffer;
        int i2 = i;
        int i3 = 0;
        while (true) {
            if (i2 >= min) {
                break;
            }
            int i4 = bArr[i2] & Constants.UNKNOWN;
            if (iArr[i4] != 0) {
                if (i4 == 34) {
                    this._inputPtr = i2 + 1;
                    return this._textBuffer.setCurrentAndReturn(i3);
                }
            } else {
                emptyAndGetCurrentSegment[i3] = (char) i4;
                i3++;
                i2++;
            }
        }
        this._inputPtr = i2;
        _finishString2(emptyAndGetCurrentSegment, i3);
        return this._textBuffer.contentsAsString();
    }

    private final void _finishString2(char[] cArr, int i) throws IOException {
        int i2;
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        while (true) {
            int i3 = this._inputPtr;
            if (i3 >= this._inputEnd) {
                _loadMoreGuaranteed();
                i3 = this._inputPtr;
            }
            if (i >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i = 0;
            }
            int min = Math.min(this._inputEnd, (cArr.length - i) + i3);
            while (true) {
                if (i3 < min) {
                    int i4 = i3 + 1;
                    int i5 = bArr[i3] & Constants.UNKNOWN;
                    if (iArr[i5] != 0) {
                        this._inputPtr = i4;
                        if (i5 != 34) {
                            switch (iArr[i5]) {
                                case 1:
                                    i5 = _decodeEscaped();
                                    break;
                                case 2:
                                    i5 = _decodeUtf8_2(i5);
                                    break;
                                case 3:
                                    if (this._inputEnd - this._inputPtr >= 2) {
                                        i5 = _decodeUtf8_3fast(i5);
                                        break;
                                    } else {
                                        i5 = _decodeUtf8_3(i5);
                                        break;
                                    }
                                case 4:
                                    int _decodeUtf8_4 = _decodeUtf8_4(i5);
                                    int i6 = i + 1;
                                    cArr[i] = (char) (55296 | (_decodeUtf8_4 >> 10));
                                    if (i6 >= cArr.length) {
                                        cArr = this._textBuffer.finishCurrentSegment();
                                        i6 = 0;
                                    }
                                    i = i6;
                                    i5 = (_decodeUtf8_4 & Place.TYPE_SUBLOCALITY_LEVEL_1) | GeneratorBase.SURR2_FIRST;
                                    break;
                                default:
                                    if (i5 < 32) {
                                        _throwUnquotedSpace(i5, "string value");
                                        break;
                                    } else {
                                        _reportInvalidChar(i5);
                                        break;
                                    }
                            }
                            if (i >= cArr.length) {
                                cArr = this._textBuffer.finishCurrentSegment();
                                i2 = 0;
                            } else {
                                i2 = i;
                            }
                            i = i2 + 1;
                            cArr[i2] = (char) i5;
                        } else {
                            this._textBuffer.setCurrentLength(i);
                            return;
                        }
                    } else {
                        cArr[i] = (char) i5;
                        i3 = i4;
                        i++;
                    }
                } else {
                    this._inputPtr = i3;
                }
            }
        }
    }

    protected void _skipString() throws IOException {
        this._tokenIncomplete = false;
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        while (true) {
            int i = this._inputPtr;
            int i2 = this._inputEnd;
            if (i >= i2) {
                _loadMoreGuaranteed();
                i = this._inputPtr;
                i2 = this._inputEnd;
            }
            while (true) {
                if (i < i2) {
                    int i3 = i + 1;
                    int i4 = bArr[i] & Constants.UNKNOWN;
                    if (iArr[i4] != 0) {
                        this._inputPtr = i3;
                        if (i4 != 34) {
                            switch (iArr[i4]) {
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
                                    _skipUtf8_4(i4);
                                    continue;
                                default:
                                    if (i4 < 32) {
                                        _throwUnquotedSpace(i4, "string value");
                                        break;
                                    } else {
                                        _reportInvalidChar(i4);
                                        continue;
                                    }
                            }
                        } else {
                            return;
                        }
                    } else {
                        i = i3;
                    }
                } else {
                    this._inputPtr = i;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
        if (r4._parsingContext.inArray() != false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
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
                    _reportInvalidToken("" + ((char) i), "('true', 'false' or 'null')");
                }
                _reportUnexpectedChar(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
                return null;
            case 43:
                if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                    _reportInvalidEOFInValue(JsonToken.VALUE_NUMBER_INT);
                }
                byte[] bArr = this._inputBuffer;
                int i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                return _handleInvalidNumberStart(bArr[i2] & Constants.UNKNOWN, false);
            case 44:
                if (isEnabled(JsonParser.Feature.ALLOW_MISSING_VALUES)) {
                    this._inputPtr--;
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

    protected JsonToken _handleApos() throws IOException {
        int i;
        int i2;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        int i3 = 0;
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                _loadMoreGuaranteed();
            }
            if (i3 >= emptyAndGetCurrentSegment.length) {
                emptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                i3 = 0;
            }
            int i4 = this._inputEnd;
            int length = this._inputPtr + (emptyAndGetCurrentSegment.length - i3);
            if (length >= i4) {
                length = i4;
            }
            while (this._inputPtr < length) {
                int i5 = this._inputPtr;
                this._inputPtr = i5 + 1;
                int i6 = bArr[i5] & Constants.UNKNOWN;
                if (i6 != 39 && iArr[i6] == 0) {
                    emptyAndGetCurrentSegment[i3] = (char) i6;
                    i3++;
                } else if (i6 != 39) {
                    switch (iArr[i6]) {
                        case 1:
                            i = _decodeEscaped();
                            break;
                        case 2:
                            i = _decodeUtf8_2(i6);
                            break;
                        case 3:
                            if (this._inputEnd - this._inputPtr >= 2) {
                                i = _decodeUtf8_3fast(i6);
                                break;
                            } else {
                                i = _decodeUtf8_3(i6);
                                break;
                            }
                        case 4:
                            int _decodeUtf8_4 = _decodeUtf8_4(i6);
                            int i7 = i3 + 1;
                            emptyAndGetCurrentSegment[i3] = (char) (55296 | (_decodeUtf8_4 >> 10));
                            if (i7 >= emptyAndGetCurrentSegment.length) {
                                emptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                                i3 = 0;
                            } else {
                                i3 = i7;
                            }
                            i = 56320 | (_decodeUtf8_4 & Place.TYPE_SUBLOCALITY_LEVEL_1);
                            break;
                        default:
                            if (i6 < 32) {
                                _throwUnquotedSpace(i6, "string value");
                            }
                            _reportInvalidChar(i6);
                            i = i6;
                            break;
                    }
                    if (i3 >= emptyAndGetCurrentSegment.length) {
                        emptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                        i2 = 0;
                    } else {
                        i2 = i3;
                    }
                    i3 = i2 + 1;
                    emptyAndGetCurrentSegment[i2] = (char) i;
                } else {
                    this._textBuffer.setCurrentLength(i3);
                    return JsonToken.VALUE_STRING;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x006e, code lost:
        reportUnexpectedNumberChar(r0, "expected digit (0-9) to follow minus sign, for valid numeric value");
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected JsonToken _handleInvalidNumberStart(int i, boolean z) throws IOException {
        String str;
        byte b = i;
        while (true) {
            if (b != 73) {
                break;
            }
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOFInValue(JsonToken.VALUE_NUMBER_FLOAT);
            }
            byte[] bArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            byte b2 = bArr[i2];
            if (b2 == 78) {
                str = z ? "-INF" : "+INF";
            } else if (b2 != 110) {
                b = b2;
                break;
            } else {
                str = z ? "-Infinity" : "+Infinity";
            }
            _matchToken(str, 3);
            if (isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                return resetAsNaN(str, z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY);
            }
            _reportError("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            b = b2;
        }
    }

    protected final void _matchToken(String str, int i) throws IOException {
        int length = str.length();
        if (this._inputPtr + length >= this._inputEnd) {
            _matchToken2(str, i);
            return;
        }
        do {
            if (this._inputBuffer[this._inputPtr] != str.charAt(i)) {
                _reportInvalidToken(str.substring(0, i));
            }
            this._inputPtr++;
            i++;
        } while (i < length);
        int i2 = this._inputBuffer[this._inputPtr] & Constants.UNKNOWN;
        if (i2 >= 48 && i2 != 93 && i2 != 125) {
            _checkMatchEnd(str, i, i2);
        }
    }

    private final void _matchToken2(String str, int i) throws IOException {
        int i2;
        int length = str.length();
        do {
            if ((this._inputPtr >= this._inputEnd && !_loadMore()) || this._inputBuffer[this._inputPtr] != str.charAt(i)) {
                _reportInvalidToken(str.substring(0, i));
            }
            this._inputPtr++;
            i++;
        } while (i < length);
        if ((this._inputPtr < this._inputEnd || _loadMore()) && (i2 = this._inputBuffer[this._inputPtr] & Constants.UNKNOWN) >= 48 && i2 != 93 && i2 != 125) {
            _checkMatchEnd(str, i, i2);
        }
    }

    private final void _checkMatchEnd(String str, int i, int i2) throws IOException {
        if (Character.isJavaIdentifierPart((char) _decodeCharForError(i2))) {
            _reportInvalidToken(str.substring(0, i));
        }
    }

    private final int _skipWS() throws IOException {
        while (this._inputPtr < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            int i2 = bArr[i] & Constants.UNKNOWN;
            if (i2 > 32) {
                if (i2 == 47 || i2 == 35) {
                    this._inputPtr--;
                    return _skipWS2();
                }
                return i2;
            } else if (i2 != 32) {
                if (i2 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i2 == 13) {
                    _skipCR();
                } else if (i2 != 9) {
                    _throwInvalidSpace(i2);
                }
            }
        }
        return _skipWS2();
    }

    private final int _skipWS2() throws IOException {
        int i;
        while (true) {
            if (this._inputPtr < this._inputEnd || _loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                i = bArr[i2] & Constants.UNKNOWN;
                if (i > 32) {
                    if (i == 47) {
                        _skipComment();
                    } else if (i != 35 || !_skipYAMLComment()) {
                        break;
                    }
                } else if (i != 32) {
                    if (i == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (i == 13) {
                        _skipCR();
                    } else if (i != 9) {
                        _throwInvalidSpace(i);
                    }
                }
            } else {
                throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.typeDesc() + " entries");
            }
        }
        return i;
    }

    private final int _skipWSOrEnd() throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            return _eofAsNextChar();
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        int i2 = bArr[i] & Constants.UNKNOWN;
        if (i2 > 32) {
            if (i2 == 47 || i2 == 35) {
                this._inputPtr--;
                return _skipWSOrEnd2();
            }
            return i2;
        }
        if (i2 != 32) {
            if (i2 == 10) {
                this._currInputRow++;
                this._currInputRowStart = this._inputPtr;
            } else if (i2 == 13) {
                _skipCR();
            } else if (i2 != 9) {
                _throwInvalidSpace(i2);
            }
        }
        while (this._inputPtr < this._inputEnd) {
            byte[] bArr2 = this._inputBuffer;
            int i3 = this._inputPtr;
            this._inputPtr = i3 + 1;
            int i4 = bArr2[i3] & Constants.UNKNOWN;
            if (i4 > 32) {
                if (i4 == 47 || i4 == 35) {
                    this._inputPtr--;
                    return _skipWSOrEnd2();
                }
                return i4;
            } else if (i4 != 32) {
                if (i4 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i4 == 13) {
                    _skipCR();
                } else if (i4 != 9) {
                    _throwInvalidSpace(i4);
                }
            }
        }
        return _skipWSOrEnd2();
    }

    private final int _skipWSOrEnd2() throws IOException {
        while (true) {
            if (this._inputPtr < this._inputEnd || _loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                int i2 = bArr[i] & Constants.UNKNOWN;
                if (i2 > 32) {
                    if (i2 == 47) {
                        _skipComment();
                    } else if (i2 != 35 || !_skipYAMLComment()) {
                        return i2;
                    }
                } else if (i2 != 32) {
                    if (i2 == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (i2 == 13) {
                        _skipCR();
                    } else if (i2 != 9) {
                        _throwInvalidSpace(i2);
                    }
                }
            } else {
                return _eofAsNextChar();
            }
        }
    }

    private final int _skipColon() throws IOException {
        if (this._inputPtr + 4 >= this._inputEnd) {
            return _skipColon2(false);
        }
        byte b = this._inputBuffer[this._inputPtr];
        if (b == 58) {
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr + 1;
            this._inputPtr = i;
            byte b2 = bArr[i];
            if (b2 > 32) {
                if (b2 == 47 || b2 == 35) {
                    return _skipColon2(true);
                }
                this._inputPtr++;
                return b2;
            }
            if (b2 == 32 || b2 == 9) {
                byte[] bArr2 = this._inputBuffer;
                int i2 = this._inputPtr + 1;
                this._inputPtr = i2;
                byte b3 = bArr2[i2];
                if (b3 > 32) {
                    if (b3 == 47 || b3 == 35) {
                        return _skipColon2(true);
                    }
                    this._inputPtr++;
                    return b3;
                }
            }
            return _skipColon2(true);
        }
        if (b == 32 || b == 9) {
            byte[] bArr3 = this._inputBuffer;
            int i3 = this._inputPtr + 1;
            this._inputPtr = i3;
            b = bArr3[i3];
        }
        if (b == 58) {
            byte[] bArr4 = this._inputBuffer;
            int i4 = this._inputPtr + 1;
            this._inputPtr = i4;
            byte b4 = bArr4[i4];
            if (b4 > 32) {
                if (b4 == 47 || b4 == 35) {
                    return _skipColon2(true);
                }
                this._inputPtr++;
                return b4;
            }
            if (b4 == 32 || b4 == 9) {
                byte[] bArr5 = this._inputBuffer;
                int i5 = this._inputPtr + 1;
                this._inputPtr = i5;
                byte b5 = bArr5[i5];
                if (b5 > 32) {
                    if (b5 == 47 || b5 == 35) {
                        return _skipColon2(true);
                    }
                    this._inputPtr++;
                    return b5;
                }
            }
            return _skipColon2(true);
        }
        return _skipColon2(false);
    }

    private final int _skipColon2(boolean z) throws IOException {
        while (true) {
            if (this._inputPtr < this._inputEnd || _loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                int i2 = bArr[i] & Constants.UNKNOWN;
                if (i2 > 32) {
                    if (i2 == 47) {
                        _skipComment();
                    } else if (i2 != 35 || !_skipYAMLComment()) {
                        if (!z) {
                            if (i2 != 58) {
                                _reportUnexpectedChar(i2, "was expecting a colon to separate field name and value");
                            }
                            z = true;
                        } else {
                            return i2;
                        }
                    }
                } else if (i2 != 32) {
                    if (i2 == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (i2 == 13) {
                        _skipCR();
                    } else if (i2 != 9) {
                        _throwInvalidSpace(i2);
                    }
                }
            } else {
                _reportInvalidEOF(" within/between " + this._parsingContext.typeDesc() + " entries", null);
                return -1;
            }
        }
    }

    private final void _skipComment() throws IOException {
        if (!isEnabled(JsonParser.Feature.ALLOW_COMMENTS)) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(" in a comment", null);
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        int i2 = bArr[i] & Constants.UNKNOWN;
        if (i2 == 47) {
            _skipLine();
        } else if (i2 == 42) {
            _skipCComment();
        } else {
            _reportUnexpectedChar(i2, "was expecting either '*' or '/' for a comment");
        }
    }

    private final void _skipCComment() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            if (this._inputPtr < this._inputEnd || _loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                int i2 = bArr[i] & Constants.UNKNOWN;
                int i3 = inputCodeComment[i2];
                if (i3 != 0) {
                    switch (i3) {
                        case 2:
                            _skipUtf8_2();
                            continue;
                        case 3:
                            _skipUtf8_3();
                            continue;
                        case 4:
                            _skipUtf8_4(i2);
                            continue;
                        case 10:
                            this._currInputRow++;
                            this._currInputRowStart = this._inputPtr;
                            continue;
                        case 13:
                            _skipCR();
                            continue;
                        case 42:
                            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                                break;
                            } else if (this._inputBuffer[this._inputPtr] == 47) {
                                this._inputPtr++;
                                return;
                            } else {
                                continue;
                            }
                        default:
                            _reportInvalidChar(i2);
                            continue;
                    }
                }
            }
        }
        _reportInvalidEOF(" in a comment", null);
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
            if (this._inputPtr < this._inputEnd || _loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                int i2 = bArr[i] & Constants.UNKNOWN;
                int i3 = inputCodeComment[i2];
                if (i3 != 0) {
                    switch (i3) {
                        case 2:
                            _skipUtf8_2();
                            continue;
                        case 3:
                            _skipUtf8_3();
                            continue;
                        case 4:
                            _skipUtf8_4(i2);
                            continue;
                        case 10:
                            this._currInputRow++;
                            this._currInputRowStart = this._inputPtr;
                            return;
                        case 13:
                            _skipCR();
                            return;
                        case 42:
                            break;
                        default:
                            if (i3 < 0) {
                                _reportInvalidChar(i2);
                                break;
                            } else {
                                continue;
                            }
                    }
                }
            } else {
                return;
            }
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected char _decodeEscaped() throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(" in character escape sequence", JsonToken.VALUE_STRING);
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        byte b = bArr[i];
        switch (b) {
            case 34:
            case 47:
            case 92:
                return (char) b;
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
                int i2 = 0;
                for (int i3 = 0; i3 < 4; i3++) {
                    if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                        _reportInvalidEOF(" in character escape sequence", JsonToken.VALUE_STRING);
                    }
                    byte[] bArr2 = this._inputBuffer;
                    int i4 = this._inputPtr;
                    this._inputPtr = i4 + 1;
                    byte b2 = bArr2[i4];
                    int charToHex = CharTypes.charToHex(b2);
                    if (charToHex < 0) {
                        _reportUnexpectedChar(b2, "expected a hex-digit for character escape sequence");
                    }
                    i2 = (i2 << 4) | charToHex;
                }
                return (char) i2;
            default:
                return _handleUnrecognizedCharacterEscape((char) _decodeCharForError(b));
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
            int nextByte = nextByte();
            if ((nextByte & JfifUtil.MARKER_SOFn) != 128) {
                _reportInvalidOther(nextByte & 255);
            }
            int i4 = (i2 << 6) | (nextByte & 63);
            if (c <= 1) {
                return i4;
            }
            int nextByte2 = nextByte();
            if ((nextByte2 & JfifUtil.MARKER_SOFn) != 128) {
                _reportInvalidOther(nextByte2 & 255);
            }
            int i5 = (nextByte2 & 63) | (i4 << 6);
            if (c <= 2) {
                return i5;
            }
            int nextByte3 = nextByte();
            if ((nextByte3 & JfifUtil.MARKER_SOFn) != 128) {
                _reportInvalidOther(nextByte3 & 255);
            }
            return (nextByte3 & 63) | (i5 << 6);
        }
        return i3;
    }

    private final int _decodeUtf8_2(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & Constants.UNKNOWN, this._inputPtr);
        }
        return (b & 63) | ((i & 31) << 6);
    }

    private final int _decodeUtf8_3(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        int i2 = i & 15;
        byte[] bArr = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b = bArr[i3];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & Constants.UNKNOWN, this._inputPtr);
        }
        int i4 = (i2 << 6) | (b & 63);
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i5 = this._inputPtr;
        this._inputPtr = i5 + 1;
        byte b2 = bArr2[i5];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & Constants.UNKNOWN, this._inputPtr);
        }
        return (i4 << 6) | (b2 & 63);
    }

    private final int _decodeUtf8_3fast(int i) throws IOException {
        int i2 = i & 15;
        byte[] bArr = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b = bArr[i3];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & Constants.UNKNOWN, this._inputPtr);
        }
        int i4 = (i2 << 6) | (b & 63);
        byte[] bArr2 = this._inputBuffer;
        int i5 = this._inputPtr;
        this._inputPtr = i5 + 1;
        byte b2 = bArr2[i5];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & Constants.UNKNOWN, this._inputPtr);
        }
        return (i4 << 6) | (b2 & 63);
    }

    private final int _decodeUtf8_4(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & Constants.UNKNOWN, this._inputPtr);
        }
        int i3 = (b & 63) | ((i & 7) << 6);
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i4 = this._inputPtr;
        this._inputPtr = i4 + 1;
        byte b2 = bArr2[i4];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & Constants.UNKNOWN, this._inputPtr);
        }
        int i5 = (i3 << 6) | (b2 & 63);
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr3 = this._inputBuffer;
        int i6 = this._inputPtr;
        this._inputPtr = i6 + 1;
        byte b3 = bArr3[i6];
        if ((b3 & 192) != 128) {
            _reportInvalidOther(b3 & Constants.UNKNOWN, this._inputPtr);
        }
        return ((i5 << 6) | (b3 & 63)) - 65536;
    }

    private final void _skipUtf8_2() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        byte b = bArr[i];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & Constants.UNKNOWN, this._inputPtr);
        }
    }

    private final void _skipUtf8_3() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        byte b = bArr[i];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & Constants.UNKNOWN, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b2 = bArr2[i2];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & Constants.UNKNOWN, this._inputPtr);
        }
    }

    private final void _skipUtf8_4(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & Constants.UNKNOWN, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b2 = bArr2[i3];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & Constants.UNKNOWN, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr3 = this._inputBuffer;
        int i4 = this._inputPtr;
        this._inputPtr = i4 + 1;
        byte b3 = bArr3[i4];
        if ((b3 & 192) != 128) {
            _reportInvalidOther(b3 & Constants.UNKNOWN, this._inputPtr);
        }
    }

    protected final void _skipCR() throws IOException {
        if ((this._inputPtr < this._inputEnd || _loadMore()) && this._inputBuffer[this._inputPtr] == 10) {
            this._inputPtr++;
        }
        this._currInputRow++;
        this._currInputRowStart = this._inputPtr;
    }

    private int nextByte() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        return bArr[i] & Constants.UNKNOWN;
    }

    protected void _reportInvalidToken(String str) throws IOException {
        _reportInvalidToken(str, "'null', 'true', 'false' or NaN");
    }

    protected void _reportInvalidToken(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (sb.length() < 256 && (this._inputPtr < this._inputEnd || _loadMore())) {
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char _decodeCharForError = (char) _decodeCharForError(bArr[i]);
            if (!Character.isJavaIdentifierPart(_decodeCharForError)) {
                break;
            }
            sb.append(_decodeCharForError);
        }
        if (sb.length() == 256) {
            sb.append("...");
        }
        _reportError("Unrecognized token '" + sb.toString() + "': was expecting " + str2);
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

    protected void _reportInvalidOther(int i) throws JsonParseException {
        _reportError("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i));
    }

    protected void _reportInvalidOther(int i, int i2) throws JsonParseException {
        this._inputPtr = i2;
        _reportInvalidOther(i);
    }

    public static int[] growArrayBy(int[] iArr, int i) {
        return iArr == null ? new int[i] : Arrays.copyOf(iArr, iArr.length + i);
    }

    protected final byte[] _decodeBase64(Base64Variant base64Variant) throws IOException {
        ByteArrayBuilder _getByteArrayBuilder = _getByteArrayBuilder();
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                _loadMoreGuaranteed();
            }
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            int i2 = bArr[i] & Constants.UNKNOWN;
            if (i2 > 32) {
                int decodeBase64Char = base64Variant.decodeBase64Char(i2);
                if (decodeBase64Char < 0) {
                    if (i2 == 34) {
                        return _getByteArrayBuilder.toByteArray();
                    }
                    decodeBase64Char = _decodeBase64Escape(base64Variant, i2, 0);
                    if (decodeBase64Char < 0) {
                        continue;
                    }
                }
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr2 = this._inputBuffer;
                int i3 = this._inputPtr;
                this._inputPtr = i3 + 1;
                int i4 = bArr2[i3] & Constants.UNKNOWN;
                int decodeBase64Char2 = base64Variant.decodeBase64Char(i4);
                if (decodeBase64Char2 < 0) {
                    decodeBase64Char2 = _decodeBase64Escape(base64Variant, i4, 1);
                }
                int i5 = decodeBase64Char2 | (decodeBase64Char << 6);
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr3 = this._inputBuffer;
                int i6 = this._inputPtr;
                this._inputPtr = i6 + 1;
                int i7 = bArr3[i6] & Constants.UNKNOWN;
                int decodeBase64Char3 = base64Variant.decodeBase64Char(i7);
                if (decodeBase64Char3 < 0) {
                    if (decodeBase64Char3 != -2) {
                        if (i7 == 34 && !base64Variant.usesPadding()) {
                            _getByteArrayBuilder.append(i5 >> 4);
                            return _getByteArrayBuilder.toByteArray();
                        }
                        decodeBase64Char3 = _decodeBase64Escape(base64Variant, i7, 2);
                    }
                    if (decodeBase64Char3 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            _loadMoreGuaranteed();
                        }
                        byte[] bArr4 = this._inputBuffer;
                        int i8 = this._inputPtr;
                        this._inputPtr = i8 + 1;
                        int i9 = bArr4[i8] & Constants.UNKNOWN;
                        if (!base64Variant.usesPaddingChar(i9)) {
                            throw reportInvalidBase64Char(base64Variant, i9, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        _getByteArrayBuilder.append(i5 >> 4);
                    }
                }
                int i10 = (i5 << 6) | decodeBase64Char3;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr5 = this._inputBuffer;
                int i11 = this._inputPtr;
                this._inputPtr = i11 + 1;
                int i12 = bArr5[i11] & Constants.UNKNOWN;
                int decodeBase64Char4 = base64Variant.decodeBase64Char(i12);
                if (decodeBase64Char4 < 0) {
                    if (decodeBase64Char4 != -2) {
                        if (i12 == 34 && !base64Variant.usesPadding()) {
                            _getByteArrayBuilder.appendTwoBytes(i10 >> 2);
                            return _getByteArrayBuilder.toByteArray();
                        }
                        decodeBase64Char4 = _decodeBase64Escape(base64Variant, i12, 3);
                    }
                    if (decodeBase64Char4 == -2) {
                        _getByteArrayBuilder.appendTwoBytes(i10 >> 2);
                    }
                }
                _getByteArrayBuilder.appendThreeBytes(decodeBase64Char4 | (i10 << 6));
            }
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getTokenLocation() {
        Object sourceReference = this._ioContext.getSourceReference();
        return this._currToken == JsonToken.FIELD_NAME ? new JsonLocation(sourceReference, this._currInputProcessed + (this._nameStartOffset - 1), -1L, this._nameStartRow, this._nameStartCol) : new JsonLocation(sourceReference, this._tokenInputTotal - 1, -1L, this._tokenInputRow, this._tokenInputCol);
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getCurrentLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), this._currInputProcessed + this._inputPtr, -1L, this._currInputRow, (this._inputPtr - this._currInputRowStart) + 1);
    }

    private final void _updateLocation() {
        this._tokenInputRow = this._currInputRow;
        int i = this._inputPtr;
        this._tokenInputTotal = this._currInputProcessed + i;
        this._tokenInputCol = i - this._currInputRowStart;
    }

    private final void _updateNameLocation() {
        this._nameStartRow = this._currInputRow;
        int i = this._inputPtr;
        this._nameStartOffset = i;
        this._nameStartCol = i - this._currInputRowStart;
    }

    private static final int pad(int i, int i2) {
        return i2 == 4 ? i : i | ((-1) << (i2 << 3));
    }
}
