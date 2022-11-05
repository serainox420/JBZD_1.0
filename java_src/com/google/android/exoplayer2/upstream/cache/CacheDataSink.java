package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.p;
import com.google.android.exoplayer2.util.v;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class CacheDataSink implements com.google.android.exoplayer2.upstream.d {

    /* renamed from: a  reason: collision with root package name */
    private final Cache f3478a;
    private final long b;
    private final int c;
    private com.google.android.exoplayer2.upstream.g d;
    private File e;
    private OutputStream f;
    private FileOutputStream g;
    private long h;
    private long i;
    private p j;

    /* loaded from: classes2.dex */
    public static class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    public CacheDataSink(Cache cache, long j, int i) {
        this.f3478a = (Cache) com.google.android.exoplayer2.util.a.a(cache);
        this.b = j;
        this.c = i;
    }

    @Override // com.google.android.exoplayer2.upstream.d
    public void a(com.google.android.exoplayer2.upstream.g gVar) throws CacheDataSinkException {
        if (gVar.e == -1 && !gVar.a(2)) {
            this.d = null;
            return;
        }
        this.d = gVar;
        this.i = 0L;
        try {
            b();
        } catch (IOException e) {
            throw new CacheDataSinkException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.d
    public void a(byte[] bArr, int i, int i2) throws CacheDataSinkException {
        if (this.d != null) {
            int i3 = 0;
            while (i3 < i2) {
                try {
                    if (this.h == this.b) {
                        c();
                        b();
                    }
                    int min = (int) Math.min(i2 - i3, this.b - this.h);
                    this.f.write(bArr, i + i3, min);
                    i3 += min;
                    this.h += min;
                    this.i += min;
                } catch (IOException e) {
                    throw new CacheDataSinkException(e);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.d
    public void a() throws CacheDataSinkException {
        if (this.d != null) {
            try {
                c();
            } catch (IOException e) {
                throw new CacheDataSinkException(e);
            }
        }
    }

    private void b() throws IOException {
        this.e = this.f3478a.a(this.d.f, this.d.c + this.i, this.d.e == -1 ? this.b : Math.min(this.d.e - this.i, this.b));
        this.g = new FileOutputStream(this.e);
        if (this.c > 0) {
            if (this.j == null) {
                this.j = new p(this.g, this.c);
            } else {
                this.j.a(this.g);
            }
            this.f = this.j;
        } else {
            this.f = this.g;
        }
        this.h = 0L;
    }

    private void c() throws IOException {
        if (this.f != null) {
            try {
                this.f.flush();
                this.g.getFD().sync();
                v.a(this.f);
                this.f = null;
                File file = this.e;
                this.e = null;
                this.f3478a.a(file);
            } catch (Throwable th) {
                v.a(this.f);
                this.f = null;
                File file2 = this.e;
                this.e = null;
                file2.delete();
                throw th;
            }
        }
    }
}
