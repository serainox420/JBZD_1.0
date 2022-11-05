package com.adcolony.sdk;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
class an extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    InputStream f1049a;
    int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public an(InputStream inputStream, int i, int i2) throws IOException {
        this.f1049a = inputStream;
        while (i > 0) {
            i -= (int) inputStream.skip(i);
        }
        this.b = i2;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        int available = this.f1049a.available();
        return available <= this.b ? available : this.b;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f1049a.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.b == 0) {
            return -1;
        }
        this.b--;
        return this.f1049a.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.b == 0) {
            return -1;
        }
        if (i2 > this.b) {
            i2 = this.b;
        }
        int read = this.f1049a.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        this.b -= read;
        return read;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        int i = (int) j;
        if (i <= 0) {
            return 0L;
        }
        if (i > this.b) {
            i = this.b;
        }
        this.b -= i;
        while (i > 0) {
            i -= (int) this.f1049a.skip(j);
        }
        return j;
    }
}
