package com.google.android.exoplayer2.util;
/* compiled from: ConditionVariable.java */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3504a;

    public synchronized boolean a() {
        boolean z = true;
        synchronized (this) {
            if (this.f3504a) {
                z = false;
            } else {
                this.f3504a = true;
                notifyAll();
            }
        }
        return z;
    }

    public synchronized boolean b() {
        boolean z;
        z = this.f3504a;
        this.f3504a = false;
        return z;
    }

    public synchronized void c() throws InterruptedException {
        while (!this.f3504a) {
            wait();
        }
    }
}
