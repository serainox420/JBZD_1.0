package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.q;
import java.io.IOException;
import java.io.InterruptedIOException;
/* compiled from: CacheDataSource.java */
/* loaded from: classes2.dex */
public final class b implements com.google.android.exoplayer2.upstream.e {

    /* renamed from: a  reason: collision with root package name */
    private final Cache f3480a;
    private final com.google.android.exoplayer2.upstream.e b;
    private final com.google.android.exoplayer2.upstream.e c;
    private final com.google.android.exoplayer2.upstream.e d;
    private final a e;
    private final boolean f;
    private final boolean g;
    private final boolean h;
    private com.google.android.exoplayer2.upstream.e i;
    private boolean j;
    private Uri k;
    private int l;
    private String m;
    private long n;
    private long o;
    private e p;
    private boolean q;
    private boolean r;
    private long s;

    /* compiled from: CacheDataSource.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(long j, long j2);
    }

    public b(Cache cache, com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.upstream.e eVar2, com.google.android.exoplayer2.upstream.d dVar, int i, a aVar) {
        boolean z = true;
        this.f3480a = cache;
        this.b = eVar2;
        this.f = (i & 1) != 0;
        this.g = (i & 2) != 0;
        this.h = (i & 4) == 0 ? false : z;
        this.d = eVar;
        if (dVar != null) {
            this.c = new q(eVar, dVar);
        } else {
            this.c = null;
        }
        this.e = aVar;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public long a(com.google.android.exoplayer2.upstream.g gVar) throws IOException {
        boolean z = true;
        try {
            this.k = gVar.f3489a;
            this.l = gVar.g;
            this.m = gVar.f != null ? gVar.f : this.k.toString();
            this.n = gVar.d;
            if ((!this.g || !this.q) && (gVar.e != -1 || !this.h)) {
                z = false;
            }
            this.r = z;
            if (gVar.e != -1 || this.r) {
                this.o = gVar.e;
            } else {
                this.o = this.f3480a.a(this.m);
                if (this.o != -1) {
                    this.o -= gVar.d;
                }
            }
            a(true);
            return this.o;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public int a(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.o == 0) {
            return -1;
        }
        try {
            int a2 = this.i.a(bArr, i, i2);
            if (a2 >= 0) {
                if (this.i == this.b) {
                    this.s += a2;
                }
                this.n += a2;
                if (this.o != -1) {
                    this.o -= a2;
                    return a2;
                }
                return a2;
            }
            if (this.j) {
                a(this.n);
                this.o = 0L;
            }
            c();
            if ((this.o > 0 || this.o == -1) && a(false)) {
                return a(bArr, i, i2);
            }
            return a2;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public Uri b() {
        return this.i == this.d ? this.i.b() : this.k;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public void a() throws IOException {
        this.k = null;
        d();
        try {
            c();
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    private boolean a(boolean z) throws IOException {
        e a2;
        long j;
        com.google.android.exoplayer2.upstream.g gVar;
        long j2;
        if (this.r) {
            a2 = null;
        } else if (this.f) {
            try {
                a2 = this.f3480a.a(this.m, this.n);
            } catch (InterruptedException e) {
                throw new InterruptedIOException();
            }
        } else {
            a2 = this.f3480a.b(this.m, this.n);
        }
        if (a2 == null) {
            this.i = this.d;
            gVar = new com.google.android.exoplayer2.upstream.g(this.k, this.n, this.o, this.m, this.l);
        } else if (a2.d) {
            Uri fromFile = Uri.fromFile(a2.e);
            long j3 = this.n - a2.b;
            long j4 = a2.c - j3;
            if (this.o != -1) {
                j4 = Math.min(j4, this.o);
            }
            com.google.android.exoplayer2.upstream.g gVar2 = new com.google.android.exoplayer2.upstream.g(fromFile, this.n, j3, j4, this.m, this.l);
            this.i = this.b;
            gVar = gVar2;
        } else {
            if (a2.a()) {
                j = this.o;
            } else {
                j = a2.c;
                if (this.o != -1) {
                    j = Math.min(j, this.o);
                }
            }
            com.google.android.exoplayer2.upstream.g gVar3 = new com.google.android.exoplayer2.upstream.g(this.k, this.n, j, this.m, this.l);
            if (this.c != null) {
                this.i = this.c;
                this.p = a2;
                gVar = gVar3;
            } else {
                this.i = this.d;
                this.f3480a.a(a2);
                gVar = gVar3;
            }
        }
        this.j = gVar.e == -1;
        boolean z2 = false;
        try {
            j2 = this.i.a(gVar);
            z2 = true;
        } catch (IOException e2) {
            IOException iOException = e2;
            if (!z && this.j) {
                Throwable th = iOException;
                while (true) {
                    if (th != null) {
                        if ((th instanceof DataSourceException) && ((DataSourceException) th).reason == 0) {
                            iOException = null;
                            break;
                        }
                        th = th.getCause();
                    } else {
                        break;
                    }
                }
            }
            if (iOException == null) {
                j2 = 0;
            } else {
                throw iOException;
            }
        }
        if (this.j && j2 != -1) {
            this.o = j2;
            a(gVar.d + this.o);
        }
        return z2;
    }

    private void a(long j) throws IOException {
        if (this.i == this.c) {
            this.f3480a.c(this.m, j);
        }
    }

    /* JADX WARN: Finally extract failed */
    private void c() throws IOException {
        if (this.i != null) {
            try {
                this.i.a();
                this.i = null;
                this.j = false;
                if (this.p != null) {
                    this.f3480a.a(this.p);
                    this.p = null;
                }
            } catch (Throwable th) {
                if (this.p != null) {
                    this.f3480a.a(this.p);
                    this.p = null;
                }
                throw th;
            }
        }
    }

    private void a(IOException iOException) {
        if (this.i == this.b || (iOException instanceof Cache.CacheException)) {
            this.q = true;
        }
    }

    private void d() {
        if (this.e != null && this.s > 0) {
            this.e.a(this.f3480a.a(), this.s);
            this.s = 0L;
        }
    }
}
