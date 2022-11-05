package com.flurry.sdk;

import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2.dex */
final class ln {

    /* renamed from: a  reason: collision with root package name */
    private Timer f3035a;
    private a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            ln.this.a();
            ki.a().a(new lo());
        }
    }

    public final synchronized void a(long j) {
        if (this.f3035a != null) {
            a();
        }
        this.f3035a = new Timer("FlurrySessionTimer");
        this.b = new a();
        this.f3035a.schedule(this.b, j);
    }

    public final synchronized void a() {
        if (this.f3035a != null) {
            this.f3035a.cancel();
            this.f3035a = null;
        }
        this.b = null;
    }
}
