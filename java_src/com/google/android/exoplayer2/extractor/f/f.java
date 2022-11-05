package com.google.android.exoplayer2.extractor.f;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.f.u;
/* compiled from: DtsReader.java */
/* loaded from: classes2.dex */
public final class f implements g {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.l f3261a = new com.google.android.exoplayer2.util.l(new byte[15]);
    private final String b;
    private String c;
    private com.google.android.exoplayer2.extractor.n d;
    private int e;
    private int f;
    private int g;
    private long h;
    private Format i;
    private int j;
    private long k;

    public f(String str) {
        this.f3261a.f3511a[0] = Byte.MAX_VALUE;
        this.f3261a.f3511a[1] = -2;
        this.f3261a.f3511a[2] = Byte.MIN_VALUE;
        this.f3261a.f3511a[3] = 1;
        this.e = 0;
        this.b = str;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a() {
        this.e = 0;
        this.f = 0;
        this.g = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.extractor.h hVar, u.c cVar) {
        cVar.a();
        this.c = cVar.c();
        this.d = hVar.a(cVar.b(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(long j, boolean z) {
        this.k = j;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.util.l lVar) {
        while (lVar.b() > 0) {
            switch (this.e) {
                case 0:
                    if (!b(lVar)) {
                        break;
                    } else {
                        this.f = 4;
                        this.e = 1;
                        break;
                    }
                case 1:
                    if (!a(lVar, this.f3261a.f3511a, 15)) {
                        break;
                    } else {
                        c();
                        this.f3261a.c(0);
                        this.d.a(this.f3261a, 15);
                        this.e = 2;
                        break;
                    }
                case 2:
                    int min = Math.min(lVar.b(), this.j - this.f);
                    this.d.a(lVar, min);
                    this.f = min + this.f;
                    if (this.f != this.j) {
                        break;
                    } else {
                        this.d.a(this.k, 1, this.j, 0, null);
                        this.k += this.h;
                        this.e = 0;
                        break;
                    }
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void b() {
    }

    private boolean a(com.google.android.exoplayer2.util.l lVar, byte[] bArr, int i) {
        int min = Math.min(lVar.b(), i - this.f);
        lVar.a(bArr, this.f, min);
        this.f = min + this.f;
        return this.f == i;
    }

    private boolean b(com.google.android.exoplayer2.util.l lVar) {
        while (lVar.b() > 0) {
            this.g <<= 8;
            this.g |= lVar.f();
            if (this.g == 2147385345) {
                this.g = 0;
                return true;
            }
        }
        return false;
    }

    private void c() {
        byte[] bArr = this.f3261a.f3511a;
        if (this.i == null) {
            this.i = com.google.android.exoplayer2.audio.f.a(bArr, this.c, this.b, null);
            this.d.a(this.i);
        }
        this.j = com.google.android.exoplayer2.audio.f.b(bArr);
        this.h = (int) ((com.google.android.exoplayer2.audio.f.a(bArr) * 1000000) / this.i.r);
    }
}
