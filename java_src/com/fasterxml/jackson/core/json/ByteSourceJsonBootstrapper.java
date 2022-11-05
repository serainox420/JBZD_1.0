package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.format.InputAccessor;
import com.fasterxml.jackson.core.format.MatchStrength;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.MergedStream;
import com.fasterxml.jackson.core.io.UTF32Reader;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import com.flurry.android.Constants;
import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.DataInput;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
/* loaded from: classes.dex */
public final class ByteSourceJsonBootstrapper {
    static final byte UTF8_BOM_1 = -17;
    static final byte UTF8_BOM_2 = -69;
    static final byte UTF8_BOM_3 = -65;
    private boolean _bigEndian;
    private final boolean _bufferRecyclable;
    private int _bytesPerChar;
    private final IOContext _context;
    private final InputStream _in;
    private final byte[] _inputBuffer;
    private int _inputEnd;
    private int _inputPtr;

    public ByteSourceJsonBootstrapper(IOContext iOContext, InputStream inputStream) {
        this._bigEndian = true;
        this._context = iOContext;
        this._in = inputStream;
        this._inputBuffer = iOContext.allocReadIOBuffer();
        this._inputPtr = 0;
        this._inputEnd = 0;
        this._bufferRecyclable = true;
    }

    public ByteSourceJsonBootstrapper(IOContext iOContext, byte[] bArr, int i, int i2) {
        this._bigEndian = true;
        this._context = iOContext;
        this._in = null;
        this._inputBuffer = bArr;
        this._inputPtr = i;
        this._inputEnd = i + i2;
        this._bufferRecyclable = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
        if (checkUTF16(r2 >>> 16) != false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0076, code lost:
        if (checkUTF16(((r5._inputBuffer[r5._inputPtr] & com.flurry.android.Constants.UNKNOWN) << 8) | (r5._inputBuffer[r5._inputPtr + 1] & com.flurry.android.Constants.UNKNOWN)) != false) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JsonEncoding detectEncoding() throws IOException {
        JsonEncoding jsonEncoding;
        boolean z = true;
        if (ensureLoaded(4)) {
            int i = (this._inputBuffer[this._inputPtr] << 24) | ((this._inputBuffer[this._inputPtr + 1] & Constants.UNKNOWN) << 16) | ((this._inputBuffer[this._inputPtr + 2] & Constants.UNKNOWN) << 8) | (this._inputBuffer[this._inputPtr + 3] & Constants.UNKNOWN);
            if (!handleBOM(i)) {
                if (!checkUTF32(i)) {
                }
            }
        } else {
            if (ensureLoaded(2)) {
            }
            z = false;
        }
        if (!z) {
            jsonEncoding = JsonEncoding.UTF8;
        } else {
            switch (this._bytesPerChar) {
                case 1:
                    jsonEncoding = JsonEncoding.UTF8;
                    break;
                case 2:
                    if (!this._bigEndian) {
                        jsonEncoding = JsonEncoding.UTF16_LE;
                        break;
                    } else {
                        jsonEncoding = JsonEncoding.UTF16_BE;
                        break;
                    }
                case 3:
                default:
                    throw new RuntimeException("Internal error");
                case 4:
                    if (!this._bigEndian) {
                        jsonEncoding = JsonEncoding.UTF32_LE;
                        break;
                    } else {
                        jsonEncoding = JsonEncoding.UTF32_BE;
                        break;
                    }
            }
        }
        this._context.setEncoding(jsonEncoding);
        return jsonEncoding;
    }

    public static int skipUTF8BOM(DataInput dataInput) throws IOException {
        int readUnsignedByte = dataInput.readUnsignedByte();
        if (readUnsignedByte == 239) {
            int readUnsignedByte2 = dataInput.readUnsignedByte();
            if (readUnsignedByte2 != 187) {
                throw new IOException("Unexpected byte 0x" + Integer.toHexString(readUnsignedByte2) + " following 0xEF; should get 0xBB as part of UTF-8 BOM");
            }
            int readUnsignedByte3 = dataInput.readUnsignedByte();
            if (readUnsignedByte3 != 191) {
                throw new IOException("Unexpected byte 0x" + Integer.toHexString(readUnsignedByte3) + " following 0xEF 0xBB; should get 0xBF as part of UTF-8 BOM");
            }
            return dataInput.readUnsignedByte();
        }
        return readUnsignedByte;
    }

    public Reader constructReader() throws IOException {
        InputStream mergedStream;
        JsonEncoding encoding = this._context.getEncoding();
        switch (encoding.bits()) {
            case 8:
            case 16:
                InputStream inputStream = this._in;
                if (inputStream == null) {
                    mergedStream = new ByteArrayInputStream(this._inputBuffer, this._inputPtr, this._inputEnd);
                } else {
                    mergedStream = this._inputPtr < this._inputEnd ? new MergedStream(this._context, inputStream, this._inputBuffer, this._inputPtr, this._inputEnd) : inputStream;
                }
                return new InputStreamReader(mergedStream, encoding.getJavaName());
            case 32:
                return new UTF32Reader(this._context, this._in, this._inputBuffer, this._inputPtr, this._inputEnd, this._context.getEncoding().isBigEndian());
            default:
                throw new RuntimeException("Internal error");
        }
    }

    public JsonParser constructParser(int i, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, CharsToNameCanonicalizer charsToNameCanonicalizer, int i2) throws IOException {
        if (detectEncoding() != JsonEncoding.UTF8 || !JsonFactory.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(i2)) {
            return new ReaderBasedJsonParser(this._context, i, constructReader(), objectCodec, charsToNameCanonicalizer.makeChild(i2));
        }
        return new UTF8StreamJsonParser(this._context, i, this._in, objectCodec, byteQuadsCanonicalizer.makeChild(i2), this._inputBuffer, this._inputPtr, this._inputEnd, this._bufferRecyclable);
    }

    public static MatchStrength hasJSONFormat(InputAccessor inputAccessor) throws IOException {
        if (!inputAccessor.hasMoreBytes()) {
            return MatchStrength.INCONCLUSIVE;
        }
        byte nextByte = inputAccessor.nextByte();
        if (nextByte == -17) {
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != -69) {
                return MatchStrength.NO_MATCH;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != -65) {
                return MatchStrength.NO_MATCH;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            nextByte = inputAccessor.nextByte();
        }
        int skipSpace = skipSpace(inputAccessor, nextByte);
        if (skipSpace < 0) {
            return MatchStrength.INCONCLUSIVE;
        }
        if (skipSpace == 123) {
            int skipSpace2 = skipSpace(inputAccessor);
            if (skipSpace2 < 0) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (skipSpace2 == 34 || skipSpace2 == 125) {
                return MatchStrength.SOLID_MATCH;
            }
            return MatchStrength.NO_MATCH;
        } else if (skipSpace == 91) {
            int skipSpace3 = skipSpace(inputAccessor);
            if (skipSpace3 < 0) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (skipSpace3 == 93 || skipSpace3 == 91) {
                return MatchStrength.SOLID_MATCH;
            }
            return MatchStrength.SOLID_MATCH;
        } else {
            MatchStrength matchStrength = MatchStrength.WEAK_MATCH;
            if (skipSpace != 34) {
                if (skipSpace > 57 || skipSpace < 48) {
                    if (skipSpace == 45) {
                        int skipSpace4 = skipSpace(inputAccessor);
                        if (skipSpace4 < 0) {
                            return MatchStrength.INCONCLUSIVE;
                        }
                        return (skipSpace4 > 57 || skipSpace4 < 48) ? MatchStrength.NO_MATCH : matchStrength;
                    } else if (skipSpace == 110) {
                        return tryMatch(inputAccessor, "ull", matchStrength);
                    } else {
                        if (skipSpace == 116) {
                            return tryMatch(inputAccessor, "rue", matchStrength);
                        }
                        if (skipSpace == 102) {
                            return tryMatch(inputAccessor, "alse", matchStrength);
                        }
                        return MatchStrength.NO_MATCH;
                    }
                }
                return matchStrength;
            }
            return matchStrength;
        }
    }

    private static MatchStrength tryMatch(InputAccessor inputAccessor, String str, MatchStrength matchStrength) throws IOException {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != str.charAt(i)) {
                return MatchStrength.NO_MATCH;
            }
        }
        return matchStrength;
    }

    private static int skipSpace(InputAccessor inputAccessor) throws IOException {
        if (!inputAccessor.hasMoreBytes()) {
            return -1;
        }
        return skipSpace(inputAccessor, inputAccessor.nextByte());
    }

    private static int skipSpace(InputAccessor inputAccessor, byte b) throws IOException {
        while (true) {
            int i = b & Constants.UNKNOWN;
            if (i == 32 || i == 13 || i == 10 || i == 9) {
                if (!inputAccessor.hasMoreBytes()) {
                    return -1;
                }
                b = inputAccessor.nextByte();
            } else {
                return i;
            }
        }
    }

    private boolean handleBOM(int i) throws IOException {
        switch (i) {
            case -16842752:
                reportWeirdUCS4("3412");
                break;
            case -131072:
                this._inputPtr += 4;
                this._bytesPerChar = 4;
                this._bigEndian = false;
                return true;
            case 65279:
                this._bigEndian = true;
                this._inputPtr += 4;
                this._bytesPerChar = 4;
                return true;
            case 65534:
                reportWeirdUCS4("2143");
                break;
        }
        int i2 = i >>> 16;
        if (i2 == 65279) {
            this._inputPtr += 2;
            this._bytesPerChar = 2;
            this._bigEndian = true;
            return true;
        } else if (i2 == 65534) {
            this._inputPtr += 2;
            this._bytesPerChar = 2;
            this._bigEndian = false;
            return true;
        } else if ((i >>> 8) != 15711167) {
            return false;
        } else {
            this._inputPtr += 3;
            this._bytesPerChar = 1;
            this._bigEndian = true;
            return true;
        }
    }

    private boolean checkUTF32(int i) throws IOException {
        if ((i >> 8) == 0) {
            this._bigEndian = true;
        } else if ((16777215 & i) == 0) {
            this._bigEndian = false;
        } else if (((-16711681) & i) == 0) {
            reportWeirdUCS4("3412");
        } else if (((-65281) & i) != 0) {
            return false;
        } else {
            reportWeirdUCS4("2143");
        }
        this._bytesPerChar = 4;
        return true;
    }

    private boolean checkUTF16(int i) {
        if ((65280 & i) == 0) {
            this._bigEndian = true;
        } else if ((i & 255) != 0) {
            return false;
        } else {
            this._bigEndian = false;
        }
        this._bytesPerChar = 2;
        return true;
    }

    private void reportWeirdUCS4(String str) throws IOException {
        throw new CharConversionException("Unsupported UCS-4 endianness (" + str + ") detected");
    }

    protected boolean ensureLoaded(int i) throws IOException {
        int read;
        int i2 = this._inputEnd - this._inputPtr;
        while (i2 < i) {
            if (this._in == null) {
                read = -1;
            } else {
                read = this._in.read(this._inputBuffer, this._inputEnd, this._inputBuffer.length - this._inputEnd);
            }
            if (read < 1) {
                return false;
            }
            this._inputEnd += read;
            i2 = read + i2;
        }
        return true;
    }
}
