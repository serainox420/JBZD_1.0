package com.google.android.exoplayer2.source.a;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
/* compiled from: SingleSampleMediaChunk.java */
/* loaded from: classes2.dex */
public final class m extends a {
    private final int j;
    private final Format k;
    private volatile int l;
    private volatile boolean m;
    private volatile boolean n;

    public m(com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.upstream.g gVar, Format format, int i, Object obj, long j, long j2, int i2, int i3, Format format2) {
        super(eVar, gVar, format, i, obj, j, j2, i2);
        this.j = i3;
        this.k = format2;
    }

    @Override // com.google.android.exoplayer2.source.a.l
    public boolean g() {
        return this.n;
    }

    @Override // com.google.android.exoplayer2.source.a.c
    public long e() {
        return this.l;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public void a() {
        this.m = true;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public boolean b() {
        return this.m;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public void c() throws IOException, InterruptedException {
        try {
            long a2 = this.h.a(v.a(this.f3344a, this.l));
            if (a2 != -1) {
                a2 += this.l;
            }
            com.google.android.exoplayer2.extractor.b bVar = new com.google.android.exoplayer2.extractor.b(this.h, this.l, a2);
            b d = d();
            d.a(0L);
            n a3 = d.a(0, this.j);
            a3.a(this.k);
            for (int i = 0; i != -1; i = a3.a(bVar, Integer.MAX_VALUE, true)) {
                this.l = i + this.l;
            }
            a3.a(this.f, 1, this.l, 0, null);
            v.a(this.h);
            this.n = true;
        } catch (Throwable th) {
            v.a(this.h);
            throw th;
        }
    }
}
