package com.google.android.exoplayer2.extractor.g;
/* compiled from: WavHeader.java */
/* loaded from: classes2.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f3286a;
    private final int b;
    private final int c;
    private final int d;
    private final int e;
    private final int f;
    private long g;
    private long h;

    public b(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f3286a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
    }

    public long a() {
        return ((this.h / this.d) * 1000000) / this.b;
    }

    public int b() {
        return this.d;
    }

    public int c() {
        return this.b * this.e * this.f3286a;
    }

    public int d() {
        return this.b;
    }

    public int e() {
        return this.f3286a;
    }

    public long a(long j) {
        return Math.min((((this.c * j) / 1000000) / this.d) * this.d, this.h - this.d) + this.g;
    }

    public long b(long j) {
        return (1000000 * j) / this.c;
    }

    public boolean f() {
        return (this.g == 0 || this.h == 0) ? false : true;
    }

    public void a(long j, long j2) {
        this.g = j;
        this.h = j2;
    }

    public int g() {
        return this.f;
    }
}
