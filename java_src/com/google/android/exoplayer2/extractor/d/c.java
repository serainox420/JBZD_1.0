package com.google.android.exoplayer2.extractor.d;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.l;
import java.io.IOException;
/* compiled from: OggExtractor.java */
/* loaded from: classes2.dex */
public class c implements com.google.android.exoplayer2.extractor.f {

    /* renamed from: a  reason: collision with root package name */
    public static final com.google.android.exoplayer2.extractor.i f3242a = new com.google.android.exoplayer2.extractor.i() { // from class: com.google.android.exoplayer2.extractor.d.c.1
        @Override // com.google.android.exoplayer2.extractor.i
        public com.google.android.exoplayer2.extractor.f[] a() {
            return new com.google.android.exoplayer2.extractor.f[]{new c()};
        }
    };
    private h b;

    @Override // com.google.android.exoplayer2.extractor.f
    public boolean a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        try {
            e eVar = new e();
            if (!eVar.a(gVar, true) || (eVar.b & 2) != 2) {
                return false;
            }
            int min = Math.min(eVar.i, 8);
            l lVar = new l(min);
            gVar.c(lVar.f3511a, 0, min);
            if (b.a(a(lVar))) {
                this.b = new b();
            } else if (j.a(a(lVar))) {
                this.b = new j();
            } else if (!g.a(a(lVar))) {
                return false;
            } else {
                this.b = new g();
            }
            return true;
        } catch (ParserException e) {
            return false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(com.google.android.exoplayer2.extractor.h hVar) {
        n a2 = hVar.a(0, 1);
        hVar.a();
        this.b.a(hVar, a2);
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.b.a(j, j2);
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void c() {
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public int a(com.google.android.exoplayer2.extractor.g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        return this.b.a(gVar, lVar);
    }

    private static l a(l lVar) {
        lVar.c(0);
        return lVar;
    }
}
