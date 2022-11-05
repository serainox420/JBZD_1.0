package com.google.android.exoplayer2.extractor.g;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.f;
import com.google.android.exoplayer2.extractor.g;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import java.io.IOException;
import java.util.List;
/* compiled from: WavExtractor.java */
/* loaded from: classes2.dex */
public final class a implements f, m {

    /* renamed from: a  reason: collision with root package name */
    public static final i f3285a = new i() { // from class: com.google.android.exoplayer2.extractor.g.a.1
        @Override // com.google.android.exoplayer2.extractor.i
        public f[] a() {
            return new f[]{new a()};
        }
    };
    private h b;
    private n c;
    private b d;
    private int e;
    private int f;

    @Override // com.google.android.exoplayer2.extractor.f
    public boolean a(g gVar) throws IOException, InterruptedException {
        return c.a(gVar) != null;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(h hVar) {
        this.b = hVar;
        this.c = hVar.a(0, 1);
        this.d = null;
        hVar.a();
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.f = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void c() {
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public int a(g gVar, l lVar) throws IOException, InterruptedException {
        if (this.d == null) {
            this.d = c.a(gVar);
            if (this.d == null) {
                throw new ParserException("Unsupported or unrecognized wav header.");
            }
            this.c.a(Format.a((String) null, "audio/raw", (String) null, this.d.c(), 32768, this.d.e(), this.d.d(), this.d.g(), (List<byte[]>) null, (DrmInitData) null, 0, (String) null));
            this.e = this.d.b();
        }
        if (!this.d.f()) {
            c.a(gVar, this.d);
            this.b.a(this);
        }
        int a2 = this.c.a(gVar, 32768 - this.f, true);
        if (a2 != -1) {
            this.f += a2;
        }
        int i = this.f / this.e;
        if (i > 0) {
            long b = this.d.b(gVar.c() - this.f);
            int i2 = i * this.e;
            this.f -= i2;
            this.c.a(b, 1, i2, this.f, null);
        }
        return a2 == -1 ? -1 : 0;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long b() {
        return this.d.a();
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public boolean a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long b(long j) {
        return this.d.a(j);
    }
}
