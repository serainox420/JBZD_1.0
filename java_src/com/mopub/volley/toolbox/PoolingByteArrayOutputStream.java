package com.mopub.volley.toolbox;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes3.dex */
public class PoolingByteArrayOutputStream extends ByteArrayOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final ByteArrayPool f4704a;

    public PoolingByteArrayOutputStream(ByteArrayPool byteArrayPool) {
        this(byteArrayPool, 256);
    }

    public PoolingByteArrayOutputStream(ByteArrayPool byteArrayPool, int i) {
        this.f4704a = byteArrayPool;
        this.buf = this.f4704a.getBuf(Math.max(i, 256));
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4704a.returnBuf(this.buf);
        this.buf = null;
        super.close();
    }

    public void finalize() {
        this.f4704a.returnBuf(this.buf);
    }

    private void a(int i) {
        if (this.count + i > this.buf.length) {
            byte[] buf = this.f4704a.getBuf((this.count + i) * 2);
            System.arraycopy(this.buf, 0, buf, 0, this.count);
            this.f4704a.returnBuf(this.buf);
            this.buf = buf;
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
        a(i2);
        super.write(bArr, i, i2);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(int i) {
        a(1);
        super.write(i);
    }
}
