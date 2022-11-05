package com.google.android.exoplayer2.source.a;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
/* compiled from: ContainerMediaChunk.java */
/* loaded from: classes2.dex */
public class i extends a {
    private final int j;
    private final long k;
    private final d l;
    private volatile int m;
    private volatile boolean n;
    private volatile boolean o;

    public i(com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.upstream.g gVar, Format format, int i, Object obj, long j, long j2, int i2, int i3, long j3, d dVar) {
        super(eVar, gVar, format, i, obj, j, j2, i2);
        this.j = i3;
        this.k = j3;
        this.l = dVar;
    }

    @Override // com.google.android.exoplayer2.source.a.l
    public int f() {
        return this.i + this.j;
    }

    @Override // com.google.android.exoplayer2.source.a.l
    public boolean g() {
        return this.o;
    }

    @Override // com.google.android.exoplayer2.source.a.c
    public final long e() {
        return this.m;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public final void a() {
        this.n = true;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public final boolean b() {
        return this.n;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public final void c() throws IOException, InterruptedException {
        com.google.android.exoplayer2.upstream.g a2 = v.a(this.f3344a, this.m);
        try {
            com.google.android.exoplayer2.extractor.b bVar = new com.google.android.exoplayer2.extractor.b(this.h, a2.c, this.h.a(a2));
            if (this.m == 0) {
                b d = d();
                d.a(this.k);
                this.l.a(d);
            }
            com.google.android.exoplayer2.extractor.f fVar = this.l.f3345a;
            int i = 0;
            while (i == 0 && !this.n) {
                i = fVar.a(bVar, (com.google.android.exoplayer2.extractor.l) null);
            }
            com.google.android.exoplayer2.util.a.b(i != 1);
            this.m = (int) (bVar.c() - this.f3344a.c);
            v.a(this.h);
            this.o = true;
        } catch (Throwable th) {
            v.a(this.h);
            throw th;
        }
    }
}
