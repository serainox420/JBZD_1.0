package com.google.android.exoplayer2.util;
/* compiled from: FlacStreamInfo.java */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final int f3505a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final long h;

    public f(byte[] bArr, int i) {
        k kVar = new k(bArr);
        kVar.a(i * 8);
        this.f3505a = kVar.c(16);
        this.b = kVar.c(16);
        this.c = kVar.c(24);
        this.d = kVar.c(24);
        this.e = kVar.c(20);
        this.f = kVar.c(3) + 1;
        this.g = kVar.c(5) + 1;
        this.h = kVar.c(36);
    }

    public int a() {
        return this.g * this.e;
    }

    public long b() {
        return (this.h * 1000000) / this.e;
    }
}
