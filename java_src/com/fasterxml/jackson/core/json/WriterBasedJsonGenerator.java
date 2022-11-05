package com.fasterxml.jackson.core.json;

import com.applovin.sdk.AppLovinTargetingData;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberOutput;
import com.flurry.android.Constants;
import com.google.android.gms.games.request.GameRequest;
import java.io.IOException;
import java.io.InputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes.dex */
public final class WriterBasedJsonGenerator extends JsonGeneratorImpl {
    protected static final char[] HEX_CHARS = CharTypes.copyHexChars();
    protected static final int SHORT_WRITE = 32;
    protected SerializableString _currentEscape;
    protected char[] _entityBuffer;
    protected char[] _outputBuffer;
    protected int _outputEnd;
    protected int _outputHead;
    protected int _outputTail;
    protected char _quoteChar;
    protected final Writer _writer;

    public WriterBasedJsonGenerator(IOContext iOContext, int i, ObjectCodec objectCodec, Writer writer) {
        super(iOContext, i, objectCodec);
        this._quoteChar = '\"';
        this._writer = writer;
        this._outputBuffer = iOContext.allocConcatBuffer();
        this._outputEnd = this._outputBuffer.length;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object getOutputTarget() {
        return this._writer;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int getOutputBuffered() {
        return Math.max(0, this._outputTail - this._outputHead);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean canWriteFormattedNumbers() {
        return true;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(String str) throws IOException {
        boolean z = true;
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName != 1) {
            z = false;
        }
        _writeFieldName(str, z);
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(SerializableString serializableString) throws IOException {
        boolean z = true;
        int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName != 1) {
            z = false;
        }
        _writeFieldName(serializableString, z);
    }

    protected void _writeFieldName(String str, boolean z) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(str, z);
            return;
        }
        if (this._outputTail + 1 >= this._outputEnd) {
            _flushBuffer();
        }
        if (z) {
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = ',';
        }
        if (this._cfgUnqNames) {
            _writeString(str);
            return;
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = this._quoteChar;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr3[i3] = this._quoteChar;
    }

    protected void _writeFieldName(SerializableString serializableString, boolean z) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(serializableString, z);
            return;
        }
        if (this._outputTail + 1 >= this._outputEnd) {
            _flushBuffer();
        }
        if (z) {
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = ',';
        }
        char[] asQuotedChars = serializableString.asQuotedChars();
        if (this._cfgUnqNames) {
            writeRaw(asQuotedChars, 0, asQuotedChars.length);
            return;
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = this._quoteChar;
        int length = asQuotedChars.length;
        if (this._outputTail + length + 1 >= this._outputEnd) {
            writeRaw(asQuotedChars, 0, length);
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr3 = this._outputBuffer;
            int i3 = this._outputTail;
            this._outputTail = i3 + 1;
            cArr3[i3] = this._quoteChar;
            return;
        }
        System.arraycopy(asQuotedChars, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail += length;
        char[] cArr4 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr4[i4] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartArray() throws IOException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '[';
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeEndArray() throws IOException {
        if (!this._writeContext.inArray()) {
            _reportError("Current context not Array but " + this._writeContext.typeDesc());
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndArray(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = ']';
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeStartObject(Object obj) throws IOException {
        _verifyValueWrite("start an object");
        JsonWriteContext createChildObjectContext = this._writeContext.createChildObjectContext();
        this._writeContext = createChildObjectContext;
        if (obj != null) {
            createChildObjectContext.setCurrentValue(obj);
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartObject(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '{';
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartObject() throws IOException {
        _verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartObject(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '{';
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeEndObject() throws IOException {
        if (!this._writeContext.inObject()) {
            _reportError("Current context not Object but " + this._writeContext.typeDesc());
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndObject(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = '}';
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    protected void _writePPFieldName(String str, boolean z) throws IOException {
        if (z) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (this._cfgUnqNames) {
            _writeString(str);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = this._quoteChar;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = this._quoteChar;
    }

    protected void _writePPFieldName(SerializableString serializableString, boolean z) throws IOException {
        if (z) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        char[] asQuotedChars = serializableString.asQuotedChars();
        if (this._cfgUnqNames) {
            writeRaw(asQuotedChars, 0, asQuotedChars.length);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = this._quoteChar;
        writeRaw(asQuotedChars, 0, asQuotedChars.length);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(String str) throws IOException {
        _verifyValueWrite("write a string");
        if (str == null) {
            _writeNull();
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = this._quoteChar;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(char[] cArr, int i, int i2) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr2[i3] = this._quoteChar;
        _writeString(cArr, i, i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr3[i4] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeString(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = this._quoteChar;
        char[] asQuotedChars = serializableString.asQuotedChars();
        int length = asQuotedChars.length;
        if (length < 32) {
            if (length > this._outputEnd - this._outputTail) {
                _flushBuffer();
            }
            System.arraycopy(asQuotedChars, 0, this._outputBuffer, this._outputTail, length);
            this._outputTail += length;
        } else {
            _flushBuffer();
            this._writer.write(asQuotedChars, 0, length);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRawUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str) throws IOException {
        int length = str.length();
        int i = this._outputEnd - this._outputTail;
        if (i == 0) {
            _flushBuffer();
            i = this._outputEnd - this._outputTail;
        }
        if (i >= length) {
            str.getChars(0, length, this._outputBuffer, this._outputTail);
            this._outputTail += length;
            return;
        }
        writeRawLong(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str, int i, int i2) throws IOException {
        int i3 = this._outputEnd - this._outputTail;
        if (i3 < i2) {
            _flushBuffer();
            i3 = this._outputEnd - this._outputTail;
        }
        if (i3 >= i2) {
            str.getChars(i, i + i2, this._outputBuffer, this._outputTail);
            this._outputTail += i2;
            return;
        }
        writeRawLong(str.substring(i, i + i2));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(SerializableString serializableString) throws IOException {
        writeRaw(serializableString.getValue());
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char[] cArr, int i, int i2) throws IOException {
        if (i2 < 32) {
            if (i2 > this._outputEnd - this._outputTail) {
                _flushBuffer();
            }
            System.arraycopy(cArr, i, this._outputBuffer, this._outputTail, i2);
            this._outputTail += i2;
            return;
        }
        _flushBuffer();
        this._writer.write(cArr, i, i2);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char c) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = c;
    }

    private void writeRawLong(String str) throws IOException {
        int i = this._outputEnd - this._outputTail;
        str.getChars(0, i, this._outputBuffer, this._outputTail);
        this._outputTail += i;
        _flushBuffer();
        int length = str.length() - i;
        while (length > this._outputEnd) {
            int i2 = this._outputEnd;
            str.getChars(i, i + i2, this._outputBuffer, 0);
            this._outputHead = 0;
            this._outputTail = i2;
            _flushBuffer();
            i += i2;
            length -= i2;
        }
        str.getChars(i, i + length, this._outputBuffer, 0);
        this._outputHead = 0;
        this._outputTail = length;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr[i3] = this._quoteChar;
        _writeBinary(base64Variant, bArr, i, i + i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr2[i4] = this._quoteChar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = this._quoteChar;
        byte[] allocBase64Buffer = this._ioContext.allocBase64Buffer();
        try {
            if (i < 0) {
                i = _writeBinary(base64Variant, inputStream, allocBase64Buffer);
            } else {
                int _writeBinary = _writeBinary(base64Variant, inputStream, (byte[]) allocBase64Buffer, i);
                if (_writeBinary > 0) {
                    _reportError("Too few bytes available: missing " + _writeBinary + " bytes (out of " + i + ")");
                }
            }
            this._ioContext.releaseBase64Buffer(allocBase64Buffer);
            int i3 = this._outputTail;
            allocBase64Buffer = this._outputEnd;
            if (i3 >= allocBase64Buffer) {
                _flushBuffer();
            }
            char[] cArr2 = this._outputBuffer;
            int i4 = this._outputTail;
            this._outputTail = i4 + 1;
            cArr2[i4] = this._quoteChar;
            return i;
        } catch (Throwable th) {
            this._ioContext.releaseBase64Buffer(allocBase64Buffer);
            throw th;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(short s) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedShort(s);
            return;
        }
        if (this._outputTail + 6 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputInt(s, this._outputBuffer, this._outputTail);
    }

    private void _writeQuotedShort(short s) throws IOException {
        if (this._outputTail + 8 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = this._quoteChar;
        this._outputTail = NumberOutput.outputInt(s, this._outputBuffer, this._outputTail);
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(int i) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedInt(i);
            return;
        }
        if (this._outputTail + 11 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputInt(i, this._outputBuffer, this._outputTail);
    }

    private void _writeQuotedInt(int i) throws IOException {
        if (this._outputTail + 13 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = this._quoteChar;
        this._outputTail = NumberOutput.outputInt(i, this._outputBuffer, this._outputTail);
        char[] cArr2 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr2[i3] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(long j) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedLong(j);
            return;
        }
        if (this._outputTail + 21 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputLong(j, this._outputBuffer, this._outputTail);
    }

    private void _writeQuotedLong(long j) throws IOException {
        if (this._outputTail + 23 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = this._quoteChar;
        this._outputTail = NumberOutput.outputLong(j, this._outputBuffer, this._outputTail);
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigInteger bigInteger) throws IOException {
        _verifyValueWrite("write a number");
        if (bigInteger == null) {
            _writeNull();
        } else if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(bigInteger.toString());
        } else {
            writeRaw(bigInteger.toString());
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(double d) throws IOException {
        if (this._cfgNumbersAsStrings || (isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS) && (Double.isNaN(d) || Double.isInfinite(d)))) {
            writeString(String.valueOf(d));
            return;
        }
        _verifyValueWrite("write a number");
        writeRaw(String.valueOf(d));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(float f) throws IOException {
        if (this._cfgNumbersAsStrings || (isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS) && (Float.isNaN(f) || Float.isInfinite(f)))) {
            writeString(String.valueOf(f));
            return;
        }
        _verifyValueWrite("write a number");
        writeRaw(String.valueOf(f));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigDecimal bigDecimal) throws IOException {
        _verifyValueWrite("write a number");
        if (bigDecimal == null) {
            _writeNull();
        } else if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(_asString(bigDecimal));
        } else {
            writeRaw(_asString(bigDecimal));
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(String str) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(str);
        } else {
            writeRaw(str);
        }
    }

    private void _writeQuotedRaw(String str) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = this._quoteChar;
        writeRaw(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBoolean(boolean z) throws IOException {
        int i;
        _verifyValueWrite("write a boolean value");
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        int i2 = this._outputTail;
        char[] cArr = this._outputBuffer;
        if (z) {
            cArr[i2] = 't';
            int i3 = i2 + 1;
            cArr[i3] = 'r';
            int i4 = i3 + 1;
            cArr[i4] = 'u';
            i = i4 + 1;
            cArr[i] = 'e';
        } else {
            cArr[i2] = AppLovinTargetingData.GENDER_FEMALE;
            int i5 = i2 + 1;
            cArr[i5] = 'a';
            int i6 = i5 + 1;
            cArr[i6] = 'l';
            int i7 = i6 + 1;
            cArr[i7] = 's';
            i = i7 + 1;
            cArr[i] = 'e';
        }
        this._outputTail = i + 1;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNull() throws IOException {
        _verifyValueWrite("write a null");
        _writeNull();
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    protected void _verifyValueWrite(String str) throws IOException {
        char c;
        int writeValue = this._writeContext.writeValue();
        if (this._cfgPrettyPrinter != null) {
            _verifyPrettyValueWrite(str, writeValue);
            return;
        }
        switch (writeValue) {
            case 1:
                c = ',';
                break;
            case 2:
                c = ':';
                break;
            case 3:
                if (this._rootValueSeparator != null) {
                    writeRaw(this._rootValueSeparator.getValue());
                    return;
                }
                return;
            case 4:
            default:
                return;
            case 5:
                _reportCantWriteValueExpectName(str);
                return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = c;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
        _flushBuffer();
        if (this._writer != null && isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
            this._writer.flush();
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this._outputBuffer != null && isEnabled(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                JsonStreamContext outputContext = mo476getOutputContext();
                if (outputContext.inArray()) {
                    writeEndArray();
                } else if (!outputContext.inObject()) {
                    break;
                } else {
                    writeEndObject();
                }
            }
        }
        _flushBuffer();
        this._outputHead = 0;
        this._outputTail = 0;
        if (this._writer != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                this._writer.close();
            } else if (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
                this._writer.flush();
            }
        }
        _releaseBuffers();
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    protected void _releaseBuffers() {
        char[] cArr = this._outputBuffer;
        if (cArr != null) {
            this._outputBuffer = null;
            this._ioContext.releaseConcatBuffer(cArr);
        }
    }

    private void _writeString(String str) throws IOException {
        int length = str.length();
        if (length > this._outputEnd) {
            _writeLongString(str);
            return;
        }
        if (this._outputTail + length > this._outputEnd) {
            _flushBuffer();
        }
        str.getChars(0, length, this._outputBuffer, this._outputTail);
        if (this._characterEscapes != null) {
            _writeStringCustom(length);
        } else if (this._maximumNonEscapedChar != 0) {
            _writeStringASCII(length, this._maximumNonEscapedChar);
        } else {
            _writeString2(length);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001b, code lost:
        if (r3 <= 0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001d, code lost:
        r7._writer.write(r7._outputBuffer, r7._outputHead, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
        r3 = r7._outputBuffer;
        r4 = r7._outputTail;
        r7._outputTail = r4 + 1;
        r3 = r3[r4];
        _prependOrWriteCharacterEscape(r3, r1[r3]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
        r3 = r7._outputTail - r7._outputHead;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void _writeString2(int i) throws IOException {
        int i2 = this._outputTail + i;
        int[] iArr = this._outputEscapes;
        int length = iArr.length;
        while (this._outputTail < i2) {
            while (true) {
                char c = this._outputBuffer[this._outputTail];
                if (c < length && iArr[c] != 0) {
                    break;
                }
                int i3 = this._outputTail + 1;
                this._outputTail = i3;
                if (i3 >= i2) {
                    return;
                }
            }
        }
    }

    private void _writeLongString(String str) throws IOException {
        _flushBuffer();
        int length = str.length();
        int i = 0;
        do {
            int i2 = this._outputEnd;
            if (i + i2 > length) {
                i2 = length - i;
            }
            str.getChars(i, i + i2, this._outputBuffer, 0);
            if (this._characterEscapes != null) {
                _writeSegmentCustom(i2);
            } else if (this._maximumNonEscapedChar != 0) {
                _writeSegmentASCII(i2, this._maximumNonEscapedChar);
            } else {
                _writeSegment(i2);
            }
            i += i2;
        } while (i < length);
    }

    private void _writeSegment(int i) throws IOException {
        char c;
        int[] iArr = this._outputEscapes;
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            do {
                c = this._outputBuffer[i2];
                if (c < length && iArr[c] != 0) {
                    break;
                }
                i2++;
            } while (i2 < i);
            int i4 = i2 - i3;
            if (i4 > 0) {
                this._writer.write(this._outputBuffer, i3, i4);
                if (i2 >= i) {
                    return;
                }
            }
            int i5 = i2 + 1;
            i3 = _prependOrWriteCharacterEscape(this._outputBuffer, i5, i, c, iArr[c]);
            i2 = i5;
        }
    }

    private void _writeString(char[] cArr, int i, int i2) throws IOException {
        if (this._characterEscapes != null) {
            _writeStringCustom(cArr, i, i2);
        } else if (this._maximumNonEscapedChar != 0) {
            _writeStringASCII(cArr, i, i2, this._maximumNonEscapedChar);
        } else {
            int i3 = i2 + i;
            int[] iArr = this._outputEscapes;
            int length = iArr.length;
            int i4 = i;
            while (i4 < i3) {
                int i5 = i4;
                do {
                    char c = cArr[i5];
                    if (c < length && iArr[c] != 0) {
                        break;
                    }
                    i5++;
                } while (i5 < i3);
                int i6 = i5 - i4;
                if (i6 < 32) {
                    if (this._outputTail + i6 > this._outputEnd) {
                        _flushBuffer();
                    }
                    if (i6 > 0) {
                        System.arraycopy(cArr, i4, this._outputBuffer, this._outputTail, i6);
                        this._outputTail += i6;
                    }
                } else {
                    _flushBuffer();
                    this._writer.write(cArr, i4, i6);
                }
                if (i5 < i3) {
                    i4 = i5 + 1;
                    char c2 = cArr[i5];
                    _appendCharacterEscape(c2, iArr[c2]);
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0043 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void _writeStringASCII(int i, int i2) throws IOException, JsonGenerationException {
        char c;
        int i3;
        int i4;
        int i5 = this._outputTail + i;
        int[] iArr = this._outputEscapes;
        int min = Math.min(iArr.length, i2 + 1);
        while (this._outputTail < i5) {
            while (true) {
                c = this._outputBuffer[this._outputTail];
                if (c < min) {
                    i3 = iArr[c];
                    if (i3 != 0) {
                        break;
                    }
                    i4 = this._outputTail + 1;
                    this._outputTail = i4;
                    if (i4 >= i5) {
                        return;
                    }
                } else {
                    if (c > i2) {
                        i3 = -1;
                        break;
                    }
                    i4 = this._outputTail + 1;
                    this._outputTail = i4;
                    if (i4 >= i5) {
                    }
                }
            }
            int i6 = this._outputTail - this._outputHead;
            if (i6 > 0) {
                this._writer.write(this._outputBuffer, this._outputHead, i6);
            }
            this._outputTail++;
            _prependOrWriteCharacterEscape(c, i3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x002f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void _writeSegmentASCII(int i, int i2) throws IOException, JsonGenerationException {
        char c;
        int i3;
        int i4 = 0;
        int[] iArr = this._outputEscapes;
        int min = Math.min(iArr.length, i2 + 1);
        int i5 = 0;
        int i6 = 0;
        while (i6 < i) {
            while (true) {
                c = this._outputBuffer[i6];
                if (c < min) {
                    i3 = iArr[c];
                    if (i3 == 0) {
                        i4 = i3;
                        i6++;
                        if (i6 >= i) {
                            i3 = i4;
                            break;
                        }
                    } else {
                        break;
                    }
                } else {
                    if (c > i2) {
                        i3 = -1;
                        break;
                    }
                    i6++;
                    if (i6 >= i) {
                    }
                }
            }
            int i7 = i6 - i5;
            if (i7 > 0) {
                this._writer.write(this._outputBuffer, i5, i7);
                if (i6 >= i) {
                    return;
                }
            }
            int i8 = i6 + 1;
            i6 = i8;
            i5 = _prependOrWriteCharacterEscape(this._outputBuffer, i8, i, c, i3);
            i4 = i3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0018 A[EDGE_INSN: B:29:0x0018->B:9:0x0018 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void _writeStringASCII(char[] cArr, int i, int i2, int i3) throws IOException, JsonGenerationException {
        char c;
        int i4 = i2 + i;
        int[] iArr = this._outputEscapes;
        int min = Math.min(iArr.length, i3 + 1);
        int i5 = 0;
        int i6 = i;
        while (i6 < i4) {
            int i7 = i6;
            while (true) {
                c = cArr[i7];
                if (c < min) {
                    i5 = iArr[c];
                    if (i5 != 0) {
                        break;
                    }
                    i7++;
                    if (i7 >= i4) {
                        break;
                    }
                } else {
                    if (c > i3) {
                        i5 = -1;
                        break;
                    }
                    i7++;
                    if (i7 >= i4) {
                    }
                }
            }
            int i8 = i7 - i6;
            if (i8 < 32) {
                if (this._outputTail + i8 > this._outputEnd) {
                    _flushBuffer();
                }
                if (i8 > 0) {
                    System.arraycopy(cArr, i6, this._outputBuffer, this._outputTail, i8);
                    this._outputTail += i8;
                }
            } else {
                _flushBuffer();
                this._writer.write(cArr, i6, i8);
            }
            if (i7 < i4) {
                i6 = i7 + 1;
                _appendCharacterEscape(c, i5);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void _writeStringCustom(int i) throws IOException, JsonGenerationException {
        char c;
        int i2;
        int i3;
        int i4 = this._outputTail + i;
        int[] iArr = this._outputEscapes;
        int i5 = this._maximumNonEscapedChar < 1 ? GameRequest.TYPE_ALL : this._maximumNonEscapedChar;
        int min = Math.min(iArr.length, i5 + 1);
        CharacterEscapes characterEscapes = this._characterEscapes;
        while (this._outputTail < i4) {
            while (true) {
                c = this._outputBuffer[this._outputTail];
                if (c < min) {
                    i2 = iArr[c];
                    if (i2 != 0) {
                        break;
                    }
                    i3 = this._outputTail + 1;
                    this._outputTail = i3;
                    if (i3 >= i4) {
                        return;
                    }
                } else if (c > i5) {
                    i2 = -1;
                    break;
                } else {
                    SerializableString escapeSequence = characterEscapes.getEscapeSequence(c);
                    this._currentEscape = escapeSequence;
                    if (escapeSequence != null) {
                        i2 = -2;
                        break;
                    }
                    i3 = this._outputTail + 1;
                    this._outputTail = i3;
                    if (i3 >= i4) {
                    }
                }
            }
            int i6 = this._outputTail - this._outputHead;
            if (i6 > 0) {
                this._writer.write(this._outputBuffer, this._outputHead, i6);
            }
            this._outputTail++;
            _prependOrWriteCharacterEscape(c, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0048 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void _writeSegmentCustom(int i) throws IOException, JsonGenerationException {
        char c;
        int i2;
        int i3 = 0;
        int[] iArr = this._outputEscapes;
        char c2 = this._maximumNonEscapedChar < 1 ? (char) 65535 : this._maximumNonEscapedChar;
        int min = Math.min(iArr.length, c2 + 1);
        CharacterEscapes characterEscapes = this._characterEscapes;
        int i4 = 0;
        int i5 = 0;
        while (i3 < i) {
            while (true) {
                c = this._outputBuffer[i3];
                if (c < min) {
                    i2 = iArr[c];
                    if (i2 == 0) {
                        i5 = i2;
                        i3++;
                        if (i3 >= i) {
                            i2 = i5;
                            break;
                        }
                    } else {
                        break;
                    }
                } else if (c > c2) {
                    i2 = -1;
                    break;
                } else {
                    SerializableString escapeSequence = characterEscapes.getEscapeSequence(c);
                    this._currentEscape = escapeSequence;
                    if (escapeSequence != null) {
                        i2 = -2;
                        break;
                    }
                    i3++;
                    if (i3 >= i) {
                    }
                }
            }
            int i6 = i3 - i4;
            if (i6 > 0) {
                this._writer.write(this._outputBuffer, i4, i6);
                if (i3 >= i) {
                    return;
                }
            }
            int i7 = i3 + 1;
            i3 = i7;
            i4 = _prependOrWriteCharacterEscape(this._outputBuffer, i7, i, c, i2);
            i5 = i2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0022 A[EDGE_INSN: B:36:0x0022->B:12:0x0022 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void _writeStringCustom(char[] cArr, int i, int i2) throws IOException, JsonGenerationException {
        char c;
        int i3 = i2 + i;
        int[] iArr = this._outputEscapes;
        int i4 = this._maximumNonEscapedChar < 1 ? GameRequest.TYPE_ALL : this._maximumNonEscapedChar;
        int min = Math.min(iArr.length, i4 + 1);
        CharacterEscapes characterEscapes = this._characterEscapes;
        int i5 = 0;
        int i6 = i;
        while (i6 < i3) {
            int i7 = i6;
            while (true) {
                c = cArr[i7];
                if (c < min) {
                    i5 = iArr[c];
                    if (i5 != 0) {
                        break;
                    }
                    i7++;
                    if (i7 >= i3) {
                        break;
                    }
                } else if (c > i4) {
                    i5 = -1;
                    break;
                } else {
                    SerializableString escapeSequence = characterEscapes.getEscapeSequence(c);
                    this._currentEscape = escapeSequence;
                    if (escapeSequence != null) {
                        i5 = -2;
                        break;
                    }
                    i7++;
                    if (i7 >= i3) {
                    }
                }
            }
            int i8 = i7 - i6;
            if (i8 < 32) {
                if (this._outputTail + i8 > this._outputEnd) {
                    _flushBuffer();
                }
                if (i8 > 0) {
                    System.arraycopy(cArr, i6, this._outputBuffer, this._outputTail, i8);
                    this._outputTail += i8;
                }
            } else {
                _flushBuffer();
                this._writer.write(cArr, i6, i8);
            }
            if (i7 < i3) {
                i6 = i7 + 1;
                _appendCharacterEscape(c, i5);
            } else {
                return;
            }
        }
    }

    protected void _writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        int i3 = i2 - 3;
        int i4 = this._outputEnd - 6;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        while (i <= i3) {
            if (this._outputTail > i4) {
                _flushBuffer();
            }
            int i5 = i + 1;
            int i6 = i5 + 1;
            i = i6 + 1;
            this._outputTail = base64Variant.encodeBase64Chunk((((bArr[i5] & Constants.UNKNOWN) | (bArr[i] << 8)) << 8) | (bArr[i6] & Constants.UNKNOWN), this._outputBuffer, this._outputTail);
            maxLineLength--;
            if (maxLineLength <= 0) {
                char[] cArr = this._outputBuffer;
                int i7 = this._outputTail;
                this._outputTail = i7 + 1;
                cArr[i7] = '\\';
                char[] cArr2 = this._outputBuffer;
                int i8 = this._outputTail;
                this._outputTail = i8 + 1;
                cArr2[i8] = 'n';
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
        }
        int i9 = i2 - i;
        if (i9 > 0) {
            if (this._outputTail > i4) {
                _flushBuffer();
            }
            int i10 = i + 1;
            int i11 = bArr[i] << 16;
            if (i9 == 2) {
                int i12 = i10 + 1;
                i11 |= (bArr[i10] & Constants.UNKNOWN) << 8;
            }
            this._outputTail = base64Variant.encodeBase64Partial(i11, i9, this._outputBuffer, this._outputTail);
        }
    }

    protected int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr, int i) throws IOException, JsonGenerationException {
        int _readMore;
        int i2;
        int i3 = 0;
        int i4 = 0;
        int i5 = -3;
        int i6 = this._outputEnd - 6;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i7 = i;
        while (i7 > 2) {
            if (i3 > i5) {
                i4 = _readMore(inputStream, bArr, i3, i4, i7);
                i3 = 0;
                if (i4 < 3) {
                    break;
                }
                i5 = i4 - 3;
            }
            if (this._outputTail > i6) {
                _flushBuffer();
            }
            int i8 = i3 + 1;
            int i9 = i8 + 1;
            i3 = i9 + 1;
            i7 -= 3;
            this._outputTail = base64Variant.encodeBase64Chunk((((bArr[i8] & Constants.UNKNOWN) | (bArr[i3] << 8)) << 8) | (bArr[i9] & Constants.UNKNOWN), this._outputBuffer, this._outputTail);
            int i10 = maxLineLength - 1;
            if (i10 <= 0) {
                char[] cArr = this._outputBuffer;
                int i11 = this._outputTail;
                this._outputTail = i11 + 1;
                cArr[i11] = '\\';
                char[] cArr2 = this._outputBuffer;
                int i12 = this._outputTail;
                this._outputTail = i12 + 1;
                cArr2[i12] = 'n';
                i10 = base64Variant.getMaxLineLength() >> 2;
            }
            maxLineLength = i10;
        }
        if (i7 > 0 && (_readMore = _readMore(inputStream, bArr, i3, i4, i7)) > 0) {
            if (this._outputTail > i6) {
                _flushBuffer();
            }
            int i13 = bArr[0] << 16;
            if (1 < _readMore) {
                i13 |= (bArr[1] & Constants.UNKNOWN) << 8;
                i2 = 2;
            } else {
                i2 = 1;
            }
            this._outputTail = base64Variant.encodeBase64Partial(i13, i2, this._outputBuffer, this._outputTail);
            return i7 - i2;
        }
        return i7;
    }

    protected int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr) throws IOException, JsonGenerationException {
        int i;
        int i2;
        int i3 = -3;
        int i4 = this._outputEnd - 6;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            if (i7 > i3) {
                i6 = _readMore(inputStream, bArr, i7, i6, bArr.length);
                if (i6 < 3) {
                    break;
                }
                i3 = i6 - 3;
                i7 = 0;
            }
            if (this._outputTail > i4) {
                _flushBuffer();
            }
            int i8 = i7 + 1;
            int i9 = i8 + 1;
            i7 = i9 + 1;
            i5 += 3;
            this._outputTail = base64Variant.encodeBase64Chunk((((bArr[i8] & Constants.UNKNOWN) | (bArr[i7] << 8)) << 8) | (bArr[i9] & Constants.UNKNOWN), this._outputBuffer, this._outputTail);
            int i10 = maxLineLength - 1;
            if (i10 <= 0) {
                char[] cArr = this._outputBuffer;
                int i11 = this._outputTail;
                this._outputTail = i11 + 1;
                cArr[i11] = '\\';
                char[] cArr2 = this._outputBuffer;
                int i12 = this._outputTail;
                this._outputTail = i12 + 1;
                cArr2[i12] = 'n';
                i10 = base64Variant.getMaxLineLength() >> 2;
            }
            maxLineLength = i10;
        }
        if (0 < i6) {
            if (this._outputTail > i4) {
                _flushBuffer();
            }
            int i13 = bArr[0] << 16;
            if (1 < i6) {
                i = ((bArr[1] & Constants.UNKNOWN) << 8) | i13;
                i2 = 2;
            } else {
                i = i13;
                i2 = 1;
            }
            int i14 = i5 + i2;
            this._outputTail = base64Variant.encodeBase64Partial(i, i2, this._outputBuffer, this._outputTail);
            return i14;
        }
        return i5;
    }

    private int _readMore(InputStream inputStream, byte[] bArr, int i, int i2, int i3) throws IOException {
        int read;
        int i4 = 0;
        while (i < i2) {
            bArr[i4] = bArr[i];
            i4++;
            i++;
        }
        int min = Math.min(i3, bArr.length);
        do {
            int i5 = min - i4;
            if (i5 != 0 && (read = inputStream.read(bArr, i4, i5)) >= 0) {
                i4 += read;
            }
        } while (i4 < 3);
        return i4;
    }

    private final void _writeNull() throws IOException {
        if (this._outputTail + 4 >= this._outputEnd) {
            _flushBuffer();
        }
        int i = this._outputTail;
        char[] cArr = this._outputBuffer;
        cArr[i] = 'n';
        int i2 = i + 1;
        cArr[i2] = 'u';
        int i3 = i2 + 1;
        cArr[i3] = 'l';
        int i4 = i3 + 1;
        cArr[i4] = 'l';
        this._outputTail = i4 + 1;
    }

    private void _prependOrWriteCharacterEscape(char c, int i) throws IOException, JsonGenerationException {
        String value;
        int i2;
        if (i >= 0) {
            if (this._outputTail >= 2) {
                int i3 = this._outputTail - 2;
                this._outputHead = i3;
                this._outputBuffer[i3] = '\\';
                this._outputBuffer[i3 + 1] = (char) i;
                return;
            }
            char[] cArr = this._entityBuffer;
            if (cArr == null) {
                cArr = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            cArr[1] = (char) i;
            this._writer.write(cArr, 0, 2);
        } else if (i != -2) {
            if (this._outputTail >= 6) {
                char[] cArr2 = this._outputBuffer;
                int i4 = this._outputTail - 6;
                this._outputHead = i4;
                cArr2[i4] = '\\';
                int i5 = i4 + 1;
                cArr2[i5] = 'u';
                if (c > 255) {
                    int i6 = (c >> '\b') & 255;
                    int i7 = i5 + 1;
                    cArr2[i7] = HEX_CHARS[i6 >> 4];
                    i2 = i7 + 1;
                    cArr2[i2] = HEX_CHARS[i6 & 15];
                    c = (char) (c & 255);
                } else {
                    int i8 = i5 + 1;
                    cArr2[i8] = '0';
                    i2 = i8 + 1;
                    cArr2[i2] = '0';
                }
                int i9 = i2 + 1;
                cArr2[i9] = HEX_CHARS[c >> 4];
                cArr2[i9 + 1] = HEX_CHARS[c & 15];
                return;
            }
            char[] cArr3 = this._entityBuffer;
            if (cArr3 == null) {
                cArr3 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c > 255) {
                int i10 = (c >> '\b') & 255;
                int i11 = c & 255;
                cArr3[10] = HEX_CHARS[i10 >> 4];
                cArr3[11] = HEX_CHARS[i10 & 15];
                cArr3[12] = HEX_CHARS[i11 >> 4];
                cArr3[13] = HEX_CHARS[i11 & 15];
                this._writer.write(cArr3, 8, 6);
                return;
            }
            cArr3[6] = HEX_CHARS[c >> 4];
            cArr3[7] = HEX_CHARS[c & 15];
            this._writer.write(cArr3, 2, 6);
        } else {
            if (this._currentEscape == null) {
                value = this._characterEscapes.getEscapeSequence(c).getValue();
            } else {
                value = this._currentEscape.getValue();
                this._currentEscape = null;
            }
            int length = value.length();
            if (this._outputTail >= length) {
                int i12 = this._outputTail - length;
                this._outputHead = i12;
                value.getChars(0, length, this._outputBuffer, i12);
                return;
            }
            this._outputHead = this._outputTail;
            this._writer.write(value);
        }
    }

    private int _prependOrWriteCharacterEscape(char[] cArr, int i, int i2, char c, int i3) throws IOException, JsonGenerationException {
        String value;
        int i4;
        if (i3 >= 0) {
            if (i > 1 && i < i2) {
                int i5 = i - 2;
                cArr[i5] = '\\';
                cArr[i5 + 1] = (char) i3;
                return i5;
            }
            char[] cArr2 = this._entityBuffer;
            if (cArr2 == null) {
                cArr2 = _allocateEntityBuffer();
            }
            cArr2[1] = (char) i3;
            this._writer.write(cArr2, 0, 2);
            return i;
        } else if (i3 != -2) {
            if (i > 5 && i < i2) {
                int i6 = i - 6;
                int i7 = i6 + 1;
                cArr[i6] = '\\';
                int i8 = i7 + 1;
                cArr[i7] = 'u';
                if (c > 255) {
                    int i9 = (c >> '\b') & 255;
                    int i10 = i8 + 1;
                    cArr[i8] = HEX_CHARS[i9 >> 4];
                    i4 = i10 + 1;
                    cArr[i10] = HEX_CHARS[i9 & 15];
                    c = (char) (c & 255);
                } else {
                    int i11 = i8 + 1;
                    cArr[i8] = '0';
                    i4 = i11 + 1;
                    cArr[i11] = '0';
                }
                int i12 = i4 + 1;
                cArr[i4] = HEX_CHARS[c >> 4];
                cArr[i12] = HEX_CHARS[c & 15];
                return i12 - 5;
            }
            char[] cArr3 = this._entityBuffer;
            if (cArr3 == null) {
                cArr3 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c > 255) {
                int i13 = (c >> '\b') & 255;
                int i14 = c & 255;
                cArr3[10] = HEX_CHARS[i13 >> 4];
                cArr3[11] = HEX_CHARS[i13 & 15];
                cArr3[12] = HEX_CHARS[i14 >> 4];
                cArr3[13] = HEX_CHARS[i14 & 15];
                this._writer.write(cArr3, 8, 6);
                return i;
            }
            cArr3[6] = HEX_CHARS[c >> 4];
            cArr3[7] = HEX_CHARS[c & 15];
            this._writer.write(cArr3, 2, 6);
            return i;
        } else {
            if (this._currentEscape == null) {
                value = this._characterEscapes.getEscapeSequence(c).getValue();
            } else {
                value = this._currentEscape.getValue();
                this._currentEscape = null;
            }
            int length = value.length();
            if (i >= length && i < i2) {
                int i15 = i - length;
                value.getChars(0, length, cArr, i15);
                return i15;
            }
            this._writer.write(value);
            return i;
        }
    }

    private void _appendCharacterEscape(char c, int i) throws IOException, JsonGenerationException {
        String value;
        int i2;
        if (i >= 0) {
            if (this._outputTail + 2 > this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i3 = this._outputTail;
            this._outputTail = i3 + 1;
            cArr[i3] = '\\';
            char[] cArr2 = this._outputBuffer;
            int i4 = this._outputTail;
            this._outputTail = i4 + 1;
            cArr2[i4] = (char) i;
        } else if (i != -2) {
            if (this._outputTail + 5 >= this._outputEnd) {
                _flushBuffer();
            }
            int i5 = this._outputTail;
            char[] cArr3 = this._outputBuffer;
            int i6 = i5 + 1;
            cArr3[i5] = '\\';
            int i7 = i6 + 1;
            cArr3[i6] = 'u';
            if (c > 255) {
                int i8 = (c >> '\b') & 255;
                int i9 = i7 + 1;
                cArr3[i7] = HEX_CHARS[i8 >> 4];
                i2 = i9 + 1;
                cArr3[i9] = HEX_CHARS[i8 & 15];
                c = (char) (c & 255);
            } else {
                int i10 = i7 + 1;
                cArr3[i7] = '0';
                i2 = i10 + 1;
                cArr3[i10] = '0';
            }
            int i11 = i2 + 1;
            cArr3[i2] = HEX_CHARS[c >> 4];
            cArr3[i11] = HEX_CHARS[c & 15];
            this._outputTail = i11 + 1;
        } else {
            if (this._currentEscape == null) {
                value = this._characterEscapes.getEscapeSequence(c).getValue();
            } else {
                value = this._currentEscape.getValue();
                this._currentEscape = null;
            }
            int length = value.length();
            if (this._outputTail + length > this._outputEnd) {
                _flushBuffer();
                if (length > this._outputEnd) {
                    this._writer.write(value);
                    return;
                }
            }
            value.getChars(0, length, this._outputBuffer, this._outputTail);
            this._outputTail += length;
        }
    }

    private char[] _allocateEntityBuffer() {
        char[] cArr = {'\\', 0, '\\', 'u', '0', '0', 0, 0, '\\', 'u'};
        this._entityBuffer = cArr;
        return cArr;
    }

    protected void _flushBuffer() throws IOException {
        int i = this._outputTail - this._outputHead;
        if (i > 0) {
            int i2 = this._outputHead;
            this._outputHead = 0;
            this._outputTail = 0;
            this._writer.write(this._outputBuffer, i2, i);
        }
    }
}
