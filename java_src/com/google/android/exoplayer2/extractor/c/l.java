package com.google.android.exoplayer2.extractor.c;

import java.io.IOException;
/* compiled from: TrackFragment.java */
/* loaded from: classes2.dex */
final class l {

    /* renamed from: a  reason: collision with root package name */
    public c f3233a;
    public long b;
    public long c;
    public long d;
    public int e;
    public int f;
    public long[] g;
    public int[] h;
    public int[] i;
    public int[] j;
    public long[] k;
    public boolean[] l;
    public boolean m;
    public boolean[] n;
    public k o;
    public int p;
    public com.google.android.exoplayer2.util.l q;
    public boolean r;
    public long s;

    public void a() {
        this.e = 0;
        this.s = 0L;
        this.m = false;
        this.r = false;
        this.o = null;
    }

    public void a(int i, int i2) {
        this.e = i;
        this.f = i2;
        if (this.h == null || this.h.length < i) {
            this.g = new long[i];
            this.h = new int[i];
        }
        if (this.i == null || this.i.length < i2) {
            int i3 = (i2 * 125) / 100;
            this.i = new int[i3];
            this.j = new int[i3];
            this.k = new long[i3];
            this.l = new boolean[i3];
            this.n = new boolean[i3];
        }
    }

    public void a(int i) {
        if (this.q == null || this.q.c() < i) {
            this.q = new com.google.android.exoplayer2.util.l(i);
        }
        this.p = i;
        this.m = true;
        this.r = true;
    }

    public void a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        gVar.b(this.q.f3511a, 0, this.p);
        this.q.c(0);
        this.r = false;
    }

    public void a(com.google.android.exoplayer2.util.l lVar) {
        lVar.a(this.q.f3511a, 0, this.p);
        this.q.c(0);
        this.r = false;
    }

    public long b(int i) {
        return this.k[i] + this.j[i];
    }
}
