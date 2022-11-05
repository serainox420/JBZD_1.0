package com.google.android.exoplayer2.extractor.f;

import com.flurry.android.Constants;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.f.u;
/* compiled from: MpegAudioReader.java */
/* loaded from: classes2.dex */
public final class l implements g {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.l f3270a;
    private final com.google.android.exoplayer2.extractor.k b;
    private final String c;
    private String d;
    private com.google.android.exoplayer2.extractor.n e;
    private int f;
    private int g;
    private boolean h;
    private boolean i;
    private long j;
    private int k;
    private long l;

    public l() {
        this(null);
    }

    public l(String str) {
        this.f = 0;
        this.f3270a = new com.google.android.exoplayer2.util.l(4);
        this.f3270a.f3511a[0] = -1;
        this.b = new com.google.android.exoplayer2.extractor.k();
        this.c = str;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a() {
        this.f = 0;
        this.g = 0;
        this.i = false;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.extractor.h hVar, u.c cVar) {
        cVar.a();
        this.d = cVar.c();
        this.e = hVar.a(cVar.b(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(long j, boolean z) {
        this.l = j;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.util.l lVar) {
        while (lVar.b() > 0) {
            switch (this.f) {
                case 0:
                    b(lVar);
                    break;
                case 1:
                    c(lVar);
                    break;
                case 2:
                    d(lVar);
                    break;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void b() {
    }

    private void b(com.google.android.exoplayer2.util.l lVar) {
        byte[] bArr = lVar.f3511a;
        int d = lVar.d();
        int c = lVar.c();
        for (int i = d; i < c; i++) {
            boolean z = (bArr[i] & Constants.UNKNOWN) == 255;
            boolean z2 = this.i && (bArr[i] & 224) == 224;
            this.i = z;
            if (z2) {
                lVar.c(i + 1);
                this.i = false;
                this.f3270a.f3511a[1] = bArr[i];
                this.g = 2;
                this.f = 1;
                return;
            }
        }
        lVar.c(c);
    }

    private void c(com.google.android.exoplayer2.util.l lVar) {
        int min = Math.min(lVar.b(), 4 - this.g);
        lVar.a(this.f3270a.f3511a, this.g, min);
        this.g = min + this.g;
        if (this.g >= 4) {
            this.f3270a.c(0);
            if (!com.google.android.exoplayer2.extractor.k.a(this.f3270a.m(), this.b)) {
                this.g = 0;
                this.f = 1;
                return;
            }
            this.k = this.b.c;
            if (!this.h) {
                this.j = (1000000 * this.b.g) / this.b.d;
                this.e.a(Format.a(this.d, this.b.b, null, -1, 4096, this.b.e, this.b.d, null, null, 0, this.c));
                this.h = true;
            }
            this.f3270a.c(0);
            this.e.a(this.f3270a, 4);
            this.f = 2;
        }
    }

    private void d(com.google.android.exoplayer2.util.l lVar) {
        int min = Math.min(lVar.b(), this.k - this.g);
        this.e.a(lVar, min);
        this.g = min + this.g;
        if (this.g >= this.k) {
            this.e.a(this.l, 1, this.k, 0, null);
            this.l += this.j;
            this.g = 0;
            this.f = 0;
        }
    }
}
