package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.base.GeneratorBase;
import com.flurry.android.Constants;
import com.google.android.gms.location.places.Place;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
/* loaded from: classes.dex */
public class UTF32Reader extends Reader {
    protected static final int LAST_VALID_UNICODE_CHAR = 1114111;
    protected static final char NC = 0;
    protected final boolean _bigEndian;
    protected byte[] _buffer;
    protected int _byteCount;
    protected int _charCount;
    protected final IOContext _context;
    protected InputStream _in;
    protected int _length;
    protected final boolean _managedBuffers;
    protected int _ptr;
    protected char _surrogate = 0;
    protected char[] _tmpBuf;

    public UTF32Reader(IOContext iOContext, InputStream inputStream, byte[] bArr, int i, int i2, boolean z) {
        boolean z2 = false;
        this._context = iOContext;
        this._in = inputStream;
        this._buffer = bArr;
        this._ptr = i;
        this._length = i2;
        this._bigEndian = z;
        this._managedBuffers = inputStream != null ? true : z2;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this._in;
        if (inputStream != null) {
            this._in = null;
            freeBuffers();
            inputStream.close();
        }
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (this._tmpBuf == null) {
            this._tmpBuf = new char[1];
        }
        if (read(this._tmpBuf, 0, 1) < 1) {
            return -1;
        }
        return this._tmpBuf[0];
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int i5;
        if (this._buffer == null) {
            return -1;
        }
        if (i2 >= 1) {
            if (i < 0 || i + i2 > cArr.length) {
                reportBounds(cArr, i, i2);
            }
            int i6 = i2 + i;
            if (this._surrogate != 0) {
                i3 = i + 1;
                cArr[i] = this._surrogate;
                this._surrogate = (char) 0;
            } else {
                int i7 = this._length - this._ptr;
                if (i7 < 4 && !loadMore(i7)) {
                    return -1;
                }
                i3 = i;
            }
            while (true) {
                if (i3 >= i6) {
                    i4 = i3;
                    break;
                }
                int i8 = this._ptr;
                if (this._bigEndian) {
                    i5 = (this._buffer[i8 + 3] & Constants.UNKNOWN) | (this._buffer[i8] << 24) | ((this._buffer[i8 + 1] & Constants.UNKNOWN) << 16) | ((this._buffer[i8 + 2] & Constants.UNKNOWN) << 8);
                } else {
                    i5 = (this._buffer[i8 + 3] << 24) | (this._buffer[i8] & Constants.UNKNOWN) | ((this._buffer[i8 + 1] & Constants.UNKNOWN) << 8) | ((this._buffer[i8 + 2] & Constants.UNKNOWN) << 16);
                }
                this._ptr += 4;
                if (i5 > 65535) {
                    if (i5 > LAST_VALID_UNICODE_CHAR) {
                        reportInvalid(i5, i3 - i, "(above " + Integer.toHexString(LAST_VALID_UNICODE_CHAR) + ") ");
                    }
                    int i9 = i5 - 65536;
                    i4 = i3 + 1;
                    cArr[i3] = (char) (GeneratorBase.SURR1_FIRST + (i9 >> 10));
                    i5 = (i9 & Place.TYPE_SUBLOCALITY_LEVEL_1) | GeneratorBase.SURR2_FIRST;
                    if (i4 >= i6) {
                        this._surrogate = (char) i5;
                        break;
                    }
                } else {
                    i4 = i3;
                }
                i3 = i4 + 1;
                cArr[i4] = (char) i5;
                if (this._ptr >= this._length) {
                    i4 = i3;
                    break;
                }
            }
            int i10 = i4 - i;
            this._charCount += i10;
            return i10;
        }
        return i2;
    }

    private void reportUnexpectedEOF(int i, int i2) throws IOException {
        throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i + ", needed " + i2 + ", at char #" + this._charCount + ", byte #" + (this._byteCount + i) + ")");
    }

    private void reportInvalid(int i, int i2, String str) throws IOException {
        throw new CharConversionException("Invalid UTF-32 character 0x" + Integer.toHexString(i) + str + " at char #" + (this._charCount + i2) + ", byte #" + ((this._byteCount + this._ptr) - 1) + ")");
    }

    private boolean loadMore(int i) throws IOException {
        this._byteCount += this._length - i;
        if (i > 0) {
            if (this._ptr > 0) {
                System.arraycopy(this._buffer, this._ptr, this._buffer, 0, i);
                this._ptr = 0;
            }
            this._length = i;
        } else {
            this._ptr = 0;
            int read = this._in == null ? -1 : this._in.read(this._buffer);
            if (read < 1) {
                this._length = 0;
                if (read < 0) {
                    if (!this._managedBuffers) {
                        return false;
                    }
                    freeBuffers();
                    return false;
                }
                reportStrangeStream();
            }
            this._length = read;
        }
        while (this._length < 4) {
            int read2 = this._in == null ? -1 : this._in.read(this._buffer, this._length, this._buffer.length - this._length);
            if (read2 < 1) {
                if (read2 < 0) {
                    if (this._managedBuffers) {
                        freeBuffers();
                    }
                    reportUnexpectedEOF(this._length, 4);
                }
                reportStrangeStream();
            }
            this._length = read2 + this._length;
        }
        return true;
    }

    private void freeBuffers() {
        byte[] bArr = this._buffer;
        if (bArr != null) {
            this._buffer = null;
            this._context.releaseReadIOBuffer(bArr);
        }
    }

    private void reportBounds(char[] cArr, int i, int i2) throws IOException {
        throw new ArrayIndexOutOfBoundsException("read(buf," + i + "," + i2 + "), cbuf[" + cArr.length + "]");
    }

    private void reportStrangeStream() throws IOException {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }
}
