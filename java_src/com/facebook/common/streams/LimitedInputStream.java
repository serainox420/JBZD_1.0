package com.facebook.common.streams;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class LimitedInputStream extends FilterInputStream {
    private int mBytesToRead;
    private int mBytesToReadWhenMarked;

    public LimitedInputStream(InputStream inputStream, int i) {
        super(inputStream);
        if (inputStream == null) {
            throw new NullPointerException();
        }
        if (i < 0) {
            throw new IllegalArgumentException("limit must be >= 0");
        }
        this.mBytesToRead = i;
        this.mBytesToReadWhenMarked = -1;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.mBytesToRead == 0) {
            return -1;
        }
        int read = this.in.read();
        if (read != -1) {
            this.mBytesToRead--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.mBytesToRead == 0) {
            return -1;
        }
        int read = this.in.read(bArr, i, Math.min(i2, this.mBytesToRead));
        if (read > 0) {
            this.mBytesToRead -= read;
            return read;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long skip = this.in.skip(Math.min(j, this.mBytesToRead));
        this.mBytesToRead = (int) (this.mBytesToRead - skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return Math.min(this.in.available(), this.mBytesToRead);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        if (this.in.markSupported()) {
            this.in.mark(i);
            this.mBytesToReadWhenMarked = this.mBytesToRead;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (!this.in.markSupported()) {
            throw new IOException("mark is not supported");
        }
        if (this.mBytesToReadWhenMarked == -1) {
            throw new IOException("mark not set");
        }
        this.in.reset();
        this.mBytesToRead = this.mBytesToReadWhenMarked;
    }
}
