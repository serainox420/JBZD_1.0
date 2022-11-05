package com.google.android.exoplayer2.a;
/* compiled from: Buffer.java */
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private int f3145a;

    public void a() {
        this.f3145a = 0;
    }

    public final boolean c_() {
        return d(Integer.MIN_VALUE);
    }

    public final boolean c() {
        return d(4);
    }

    public final boolean d() {
        return d(1);
    }

    public final void a_(int i) {
        this.f3145a = i;
    }

    public final void b(int i) {
        this.f3145a |= i;
    }

    public final void c(int i) {
        this.f3145a &= i ^ (-1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean d(int i) {
        return (this.f3145a & i) == i;
    }
}
