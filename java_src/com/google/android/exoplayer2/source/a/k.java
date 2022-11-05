package com.google.android.exoplayer2.source.a;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.a.d;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
/* compiled from: InitializationChunk.java */
/* loaded from: classes2.dex */
public final class k extends c {
    private final d i;
    private volatile int j;
    private volatile boolean k;

    public k(com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.upstream.g gVar, Format format, int i, Object obj, d dVar) {
        super(eVar, gVar, 2, format, i, obj, -9223372036854775807L, -9223372036854775807L);
        this.i = dVar;
    }

    @Override // com.google.android.exoplayer2.source.a.c
    public long e() {
        return this.j;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public void a() {
        this.k = true;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public boolean b() {
        return this.k;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public void c() throws IOException, InterruptedException {
        com.google.android.exoplayer2.upstream.g a2 = v.a(this.f3344a, this.j);
        try {
            com.google.android.exoplayer2.extractor.b bVar = new com.google.android.exoplayer2.extractor.b(this.h, a2.c, this.h.a(a2));
            if (this.j == 0) {
                this.i.a((d.b) null);
            }
            com.google.android.exoplayer2.extractor.f fVar = this.i.f3345a;
            int i = 0;
            while (i == 0 && !this.k) {
                i = fVar.a(bVar, (com.google.android.exoplayer2.extractor.l) null);
            }
            com.google.android.exoplayer2.util.a.b(i != 1);
            this.j = (int) (bVar.c() - this.f3344a.c);
        } finally {
            v.a(this.h);
        }
    }
}
