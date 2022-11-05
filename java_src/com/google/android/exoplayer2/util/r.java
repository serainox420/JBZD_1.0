package com.google.android.exoplayer2.util;

import android.os.SystemClock;
/* compiled from: StandaloneMediaClock.java */
/* loaded from: classes2.dex */
public final class r implements h {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3517a;
    private long b;
    private long c;

    public void a() {
        if (!this.f3517a) {
            this.f3517a = true;
            this.c = b(this.b);
        }
    }

    public void b() {
        if (this.f3517a) {
            this.b = b(this.c);
            this.f3517a = false;
        }
    }

    public void a(long j) {
        this.b = j;
        this.c = b(j);
    }

    @Override // com.google.android.exoplayer2.util.h
    public long w() {
        return this.f3517a ? b(this.c) : this.b;
    }

    private long b(long j) {
        return (SystemClock.elapsedRealtime() * 1000) - j;
    }
}
