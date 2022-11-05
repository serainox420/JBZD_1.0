package com.flurry.sdk;

import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2.dex */
public class kt {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2980a = kt.class.getSimpleName();
    private Timer b;
    private a c;
    private ku d;

    public kt(ku kuVar) {
        this.d = kuVar;
    }

    public final synchronized void a(long j) {
        boolean z = false;
        synchronized (this) {
            if (this.b != null) {
                z = true;
            }
            if (z) {
                a();
            }
            this.b = new Timer("HttpRequestTimeoutTimer");
            this.c = new a(this, (byte) 0);
            this.b.schedule(this.c, j);
            km.a(3, f2980a, "HttpRequestTimeoutTimer started: " + j + "MS");
        }
    }

    public final synchronized void a() {
        if (this.b != null) {
            this.b.cancel();
            this.b = null;
            km.a(3, f2980a, "HttpRequestTimeoutTimer stopped.");
        }
        this.c = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends TimerTask {
        private a() {
        }

        /* synthetic */ a(kt ktVar, byte b) {
            this();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            km.a(3, kt.f2980a, "HttpRequest timed out. Cancelling.");
            ku kuVar = kt.this.d;
            km.a(3, ku.e, "Timeout (" + (System.currentTimeMillis() - kuVar.m) + "MS) for url: " + kuVar.f);
            kuVar.p = 629;
            kuVar.t = true;
            kuVar.h();
            kuVar.f();
        }
    }
}
