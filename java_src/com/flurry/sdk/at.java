package com.flurry.sdk;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public final class at extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final long f2459a;
    private long b;

    public at(InputStream inputStream, long j) {
        super(inputStream);
        this.f2459a = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.in = null;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        return a(super.read());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return a(super.read(bArr));
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        return a(super.read(bArr, i, i2));
    }

    private int a(int i) throws IOException {
        this.b += i;
        if (this.b > this.f2459a) {
            throw new IOException("Size limit exceeded: " + this.f2459a + " bytes, read " + this.b + " bytes!");
        }
        return i;
    }
}
