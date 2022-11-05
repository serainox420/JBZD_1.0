package com.fasterxml.jackson.core.io;

import com.flurry.android.Constants;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class MergedStream extends InputStream {
    private byte[] _b;
    private final IOContext _ctxt;
    private final int _end;
    private final InputStream _in;
    private int _ptr;

    public MergedStream(IOContext iOContext, InputStream inputStream, byte[] bArr, int i, int i2) {
        this._ctxt = iOContext;
        this._in = inputStream;
        this._b = bArr;
        this._ptr = i;
        this._end = i2;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this._b != null ? this._end - this._ptr : this._in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        _free();
        this._in.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        if (this._b == null) {
            this._in.mark(i);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this._b == null && this._in.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this._b != null) {
            byte[] bArr = this._b;
            int i = this._ptr;
            this._ptr = i + 1;
            int i2 = bArr[i] & Constants.UNKNOWN;
            if (this._ptr >= this._end) {
                _free();
                return i2;
            }
            return i2;
        }
        return this._in.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this._b != null) {
            int i3 = this._end - this._ptr;
            if (i2 > i3) {
                i2 = i3;
            }
            System.arraycopy(this._b, this._ptr, bArr, i, i2);
            this._ptr += i2;
            if (this._ptr >= this._end) {
                _free();
                return i2;
            }
            return i2;
        }
        return this._in.read(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        if (this._b == null) {
            this._in.reset();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long j2;
        if (this._b != null) {
            int i = this._end - this._ptr;
            if (i > j) {
                this._ptr += (int) j;
                return j;
            }
            _free();
            j2 = i + 0;
            j -= i;
        } else {
            j2 = 0;
        }
        if (j > 0) {
            j2 += this._in.skip(j);
        }
        return j2;
    }

    private void _free() {
        byte[] bArr = this._b;
        if (bArr != null) {
            this._b = null;
            if (this._ctxt != null) {
                this._ctxt.releaseReadIOBuffer(bArr);
            }
        }
    }
}
