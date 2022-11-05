package com.mopub.common.util;

import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class Timer {

    /* renamed from: a  reason: collision with root package name */
    private long f4395a;
    private long b;
    private a c = a.STOPPED;

    /* loaded from: classes3.dex */
    private enum a {
        STARTED,
        STOPPED
    }

    public void start() {
        this.b = System.nanoTime();
        this.c = a.STARTED;
    }

    public void stop() {
        if (this.c != a.STARTED) {
            throw new IllegalStateException("EventTimer was not started.");
        }
        this.c = a.STOPPED;
        this.f4395a = System.nanoTime();
    }

    public long getTime() {
        long j;
        if (this.c == a.STARTED) {
            j = System.nanoTime();
        } else {
            j = this.f4395a;
        }
        return TimeUnit.MILLISECONDS.convert(j - this.b, TimeUnit.NANOSECONDS);
    }
}
