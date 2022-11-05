package com.google.android.exoplayer2.extractor.d;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.l;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StreamReader.java */
/* loaded from: classes2.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    private d f3246a;
    private n b;
    private com.google.android.exoplayer2.extractor.h c;
    private f d;
    private long e;
    private long f;
    private long g;
    private int h;
    private int i;
    private a j;
    private long k;
    private boolean l;
    private boolean m;

    protected abstract boolean a(l lVar, long j, a aVar) throws IOException, InterruptedException;

    protected abstract long b(l lVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StreamReader.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        Format f3247a;
        f b;

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.google.android.exoplayer2.extractor.h hVar, n nVar) {
        this.c = hVar;
        this.b = nVar;
        this.f3246a = new d();
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z) {
        if (z) {
            this.j = new a();
            this.f = 0L;
            this.h = 0;
        } else {
            this.h = 1;
        }
        this.e = -1L;
        this.g = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j, long j2) {
        this.f3246a.a();
        if (j == 0) {
            a(!this.l);
        } else if (this.h != 0) {
            this.e = this.d.a(j2);
            this.h = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(com.google.android.exoplayer2.extractor.g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        switch (this.h) {
            case 0:
                return a(gVar);
            case 1:
                gVar.b((int) this.f);
                this.h = 2;
                return 0;
            case 2:
                return b(gVar, lVar);
            default:
                throw new IllegalStateException();
        }
    }

    private int a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        boolean z = true;
        while (z) {
            if (!this.f3246a.a(gVar)) {
                this.h = 3;
                return -1;
            }
            this.k = gVar.c() - this.f;
            z = a(this.f3246a.c(), this.f, this.j);
            if (z) {
                this.f = gVar.c();
            }
        }
        this.i = this.j.f3247a.r;
        if (!this.m) {
            this.b.a(this.j.f3247a);
            this.m = true;
        }
        if (this.j.b != null) {
            this.d = this.j.b;
        } else if (gVar.d() == -1) {
            this.d = new b();
        } else {
            e b2 = this.f3246a.b();
            this.d = new com.google.android.exoplayer2.extractor.d.a(this.f, gVar.d(), this, b2.i + b2.h, b2.c);
        }
        this.j = null;
        this.h = 2;
        return 0;
    }

    private int b(com.google.android.exoplayer2.extractor.g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        long a2 = this.d.a(gVar);
        if (a2 >= 0) {
            lVar.f3290a = a2;
            return 1;
        }
        if (a2 < -1) {
            c(-(a2 + 2));
        }
        if (!this.l) {
            this.c.a(this.d.c());
            this.l = true;
        }
        if (this.k > 0 || this.f3246a.a(gVar)) {
            this.k = 0L;
            l c = this.f3246a.c();
            long b2 = b(c);
            if (b2 >= 0 && this.g + b2 >= this.e) {
                long a3 = a(this.g);
                this.b.a(c, c.c());
                this.b.a(a3, 1, c.c(), 0, null);
                this.e = -1L;
            }
            this.g += b2;
            return 0;
        }
        this.h = 3;
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long a(long j) {
        return (1000000 * j) / this.i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long b(long j) {
        return (this.i * j) / 1000000;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(long j) {
        this.g = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StreamReader.java */
    /* loaded from: classes2.dex */
    public static final class b implements f {
        private b() {
        }

        @Override // com.google.android.exoplayer2.extractor.d.f
        public long a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
            return -1L;
        }

        @Override // com.google.android.exoplayer2.extractor.d.f
        public long a(long j) {
            return 0L;
        }

        @Override // com.google.android.exoplayer2.extractor.d.f
        public m c() {
            return new m.a(-9223372036854775807L);
        }
    }
}
