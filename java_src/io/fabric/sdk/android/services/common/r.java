package io.fabric.sdk.android.services.common;

import android.os.SystemClock;
import android.util.Log;
/* compiled from: TimingMetric.java */
/* loaded from: classes3.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private final String f5681a;
    private final String b;
    private final boolean c;
    private long d;
    private long e;

    public r(String str, String str2) {
        this.f5681a = str;
        this.b = str2;
        this.c = !Log.isLoggable(str2, 2);
    }

    public synchronized void a() {
        if (!this.c) {
            this.d = SystemClock.elapsedRealtime();
            this.e = 0L;
        }
    }

    public synchronized void b() {
        if (!this.c && this.e == 0) {
            this.e = SystemClock.elapsedRealtime() - this.d;
            c();
        }
    }

    private void c() {
        Log.v(this.b, this.f5681a + ": " + this.e + "ms");
    }
}
