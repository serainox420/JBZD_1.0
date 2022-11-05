package com.google.android.exoplayer2.extractor.f;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.f.u;
/* compiled from: Ac3Reader.java */
/* loaded from: classes2.dex */
public final class b implements g {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.k f3257a;
    private final com.google.android.exoplayer2.util.l b;
    private final String c;
    private String d;
    private com.google.android.exoplayer2.extractor.n e;
    private int f;
    private int g;
    private boolean h;
    private long i;
    private Format j;
    private int k;
    private boolean l;
    private long m;

    public b() {
        this(null);
    }

    public b(String str) {
        this.f3257a = new com.google.android.exoplayer2.util.k(new byte[8]);
        this.b = new com.google.android.exoplayer2.util.l(this.f3257a.f3510a);
        this.f = 0;
        this.c = str;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a() {
        this.f = 0;
        this.g = 0;
        this.h = false;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.extractor.h hVar, u.c cVar) {
        cVar.a();
        this.d = cVar.c();
        this.e = hVar.a(cVar.b(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(long j, boolean z) {
        this.m = j;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.util.l lVar) {
        while (lVar.b() > 0) {
            switch (this.f) {
                case 0:
                    if (!b(lVar)) {
                        break;
                    } else {
                        this.f = 1;
                        this.b.f3511a[0] = 11;
                        this.b.f3511a[1] = 119;
                        this.g = 2;
                        break;
                    }
                case 1:
                    if (!a(lVar, this.b.f3511a, 8)) {
                        break;
                    } else {
                        c();
                        this.b.c(0);
                        this.e.a(this.b, 8);
                        this.f = 2;
                        break;
                    }
                case 2:
                    int min = Math.min(lVar.b(), this.k - this.g);
                    this.e.a(lVar, min);
                    this.g = min + this.g;
                    if (this.g != this.k) {
                        break;
                    } else {
                        this.e.a(this.m, 1, this.k, 0, null);
                        this.m += this.i;
                        this.f = 0;
                        break;
                    }
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void b() {
    }

    private boolean a(com.google.android.exoplayer2.util.l lVar, byte[] bArr, int i) {
        int min = Math.min(lVar.b(), i - this.g);
        lVar.a(bArr, this.g, min);
        this.g = min + this.g;
        return this.g == i;
    }

    private boolean b(com.google.android.exoplayer2.util.l lVar) {
        while (lVar.b() > 0) {
            if (!this.h) {
                this.h = lVar.f() == 11;
            } else {
                int f = lVar.f();
                if (f == 119) {
                    this.h = false;
                    return true;
                }
                this.h = f == 11;
            }
        }
        return false;
    }

    private void c() {
        int a2;
        Format a3;
        if (this.j == null) {
            this.f3257a.b(40);
            this.l = this.f3257a.c(5) == 16;
            this.f3257a.a(this.f3257a.b() - 45);
            if (this.l) {
                a3 = com.google.android.exoplayer2.audio.a.b(this.f3257a, this.d, this.c, (DrmInitData) null);
            } else {
                a3 = com.google.android.exoplayer2.audio.a.a(this.f3257a, this.d, this.c, (DrmInitData) null);
            }
            this.j = a3;
            this.e.a(this.j);
        }
        this.k = this.l ? com.google.android.exoplayer2.audio.a.b(this.f3257a.f3510a) : com.google.android.exoplayer2.audio.a.a(this.f3257a.f3510a);
        if (this.l) {
            a2 = com.google.android.exoplayer2.audio.a.c(this.f3257a.f3510a);
        } else {
            a2 = com.google.android.exoplayer2.audio.a.a();
        }
        this.i = (int) ((a2 * 1000000) / this.j.r);
    }
}
