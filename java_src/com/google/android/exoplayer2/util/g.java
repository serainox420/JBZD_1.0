package com.google.android.exoplayer2.util;

import java.util.Arrays;
/* compiled from: LongArray.java */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private int f3506a;
    private long[] b;

    public g() {
        this(32);
    }

    public g(int i) {
        this.b = new long[i];
    }

    public void a(long j) {
        if (this.f3506a == this.b.length) {
            this.b = Arrays.copyOf(this.b, this.f3506a * 2);
        }
        long[] jArr = this.b;
        int i = this.f3506a;
        this.f3506a = i + 1;
        jArr[i] = j;
    }

    public long a(int i) {
        if (i < 0 || i >= this.f3506a) {
            throw new IndexOutOfBoundsException("Invalid index " + i + ", size is " + this.f3506a);
        }
        return this.b[i];
    }

    public int a() {
        return this.f3506a;
    }

    public long[] b() {
        return Arrays.copyOf(this.b, this.f3506a);
    }
}
