package com.google.android.exoplayer2.upstream;

import com.flurry.android.Constants;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: DataSourceInputStream.java */
/* loaded from: classes2.dex */
public final class f extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final e f3488a;
    private final g b;
    private long f;
    private boolean d = false;
    private boolean e = false;
    private final byte[] c = new byte[1];

    public f(e eVar, g gVar) {
        this.f3488a = eVar;
        this.b = gVar;
    }

    public long a() {
        return this.f;
    }

    public void b() throws IOException {
        c();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.c) == -1) {
            return -1;
        }
        return this.c[0] & Constants.UNKNOWN;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        com.google.android.exoplayer2.util.a.b(!this.e);
        c();
        int a2 = this.f3488a.a(bArr, i, i2);
        if (a2 == -1) {
            return -1;
        }
        this.f += a2;
        return a2;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.e) {
            this.f3488a.a();
            this.e = true;
        }
    }

    private void c() throws IOException {
        if (!this.d) {
            this.f3488a.a(this.b);
            this.d = true;
        }
    }
}
