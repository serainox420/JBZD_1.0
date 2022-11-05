package com.google.android.exoplayer2.extractor.f;

import android.util.Log;
import android.util.Pair;
import com.flurry.android.Constants;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.f.u;
import java.util.Arrays;
import java.util.Collections;
/* compiled from: AdtsReader.java */
/* loaded from: classes2.dex */
public final class d implements g {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f3259a = {73, 68, 51};
    private final boolean b;
    private final com.google.android.exoplayer2.util.k c;
    private final com.google.android.exoplayer2.util.l d;
    private final String e;
    private String f;
    private com.google.android.exoplayer2.extractor.n g;
    private com.google.android.exoplayer2.extractor.n h;
    private int i;
    private int j;
    private int k;
    private boolean l;
    private boolean m;
    private long n;
    private int o;
    private long p;
    private com.google.android.exoplayer2.extractor.n q;
    private long r;

    public d(boolean z) {
        this(z, null);
    }

    public d(boolean z, String str) {
        this.c = new com.google.android.exoplayer2.util.k(new byte[7]);
        this.d = new com.google.android.exoplayer2.util.l(Arrays.copyOf(f3259a, 10));
        c();
        this.b = z;
        this.e = str;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a() {
        c();
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.extractor.h hVar, u.c cVar) {
        cVar.a();
        this.f = cVar.c();
        this.g = hVar.a(cVar.b(), 1);
        if (this.b) {
            cVar.a();
            this.h = hVar.a(cVar.b(), 4);
            this.h.a(Format.a(cVar.c(), "application/id3", null, -1, null));
            return;
        }
        this.h = new com.google.android.exoplayer2.extractor.e();
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(long j, boolean z) {
        this.p = j;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.util.l lVar) {
        while (lVar.b() > 0) {
            switch (this.i) {
                case 0:
                    b(lVar);
                    break;
                case 1:
                    if (!a(lVar, this.d.f3511a, 10)) {
                        break;
                    } else {
                        f();
                        break;
                    }
                case 2:
                    if (!a(lVar, this.c.f3510a, this.l ? 7 : 5)) {
                        break;
                    } else {
                        g();
                        break;
                    }
                case 3:
                    c(lVar);
                    break;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void b() {
    }

    private boolean a(com.google.android.exoplayer2.util.l lVar, byte[] bArr, int i) {
        int min = Math.min(lVar.b(), i - this.j);
        lVar.a(bArr, this.j, min);
        this.j = min + this.j;
        return this.j == i;
    }

    private void c() {
        this.i = 0;
        this.j = 0;
        this.k = 256;
    }

    private void d() {
        this.i = 1;
        this.j = f3259a.length;
        this.o = 0;
        this.d.c(0);
    }

    private void a(com.google.android.exoplayer2.extractor.n nVar, long j, int i, int i2) {
        this.i = 3;
        this.j = i;
        this.q = nVar;
        this.r = j;
        this.o = i2;
    }

    private void e() {
        this.i = 2;
        this.j = 0;
    }

    private void b(com.google.android.exoplayer2.util.l lVar) {
        byte[] bArr = lVar.f3511a;
        int d = lVar.d();
        int c = lVar.c();
        while (d < c) {
            int i = d + 1;
            int i2 = bArr[d] & Constants.UNKNOWN;
            if (this.k == 512 && i2 >= 240 && i2 != 255) {
                this.l = (i2 & 1) == 0;
                e();
                lVar.c(i);
                return;
            }
            switch (i2 | this.k) {
                case 329:
                    this.k = 768;
                    d = i;
                    break;
                case 511:
                    this.k = 512;
                    d = i;
                    break;
                case 836:
                    this.k = 1024;
                    d = i;
                    break;
                case 1075:
                    d();
                    lVar.c(i);
                    return;
                default:
                    if (this.k == 256) {
                        d = i;
                        break;
                    } else {
                        this.k = 256;
                        d = i - 1;
                        break;
                    }
            }
        }
        lVar.c(d);
    }

    private void f() {
        this.h.a(this.d, 10);
        this.d.c(6);
        a(this.h, 0L, 10, this.d.r() + 10);
    }

    private void g() {
        int i = 2;
        this.c.a(0);
        if (!this.m) {
            int c = this.c.c(2) + 1;
            if (c != 2) {
                Log.w("AdtsReader", "Detected audio object type: " + c + ", but assuming AAC LC.");
            } else {
                i = c;
            }
            int c2 = this.c.c(4);
            this.c.b(1);
            byte[] a2 = com.google.android.exoplayer2.util.c.a(i, c2, this.c.c(3));
            Pair<Integer, Integer> a3 = com.google.android.exoplayer2.util.c.a(a2);
            Format a4 = Format.a(this.f, "audio/mp4a-latm", null, -1, -1, ((Integer) a3.second).intValue(), ((Integer) a3.first).intValue(), Collections.singletonList(a2), null, 0, this.e);
            this.n = 1024000000 / a4.r;
            this.g.a(a4);
            this.m = true;
        } else {
            this.c.b(10);
        }
        this.c.b(4);
        int c3 = (this.c.c(13) - 2) - 5;
        if (this.l) {
            c3 -= 2;
        }
        a(this.g, this.n, 0, c3);
    }

    private void c(com.google.android.exoplayer2.util.l lVar) {
        int min = Math.min(lVar.b(), this.o - this.j);
        this.q.a(lVar, min);
        this.j = min + this.j;
        if (this.j == this.o) {
            this.q.a(this.p, 1, this.o, 0, null);
            this.p += this.r;
            c();
        }
    }
}
