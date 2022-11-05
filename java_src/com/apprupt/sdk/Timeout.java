package com.apprupt.sdk;

import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public class Timeout {
    private Timer e;
    private final Runnable g;

    /* renamed from: a  reason: collision with root package name */
    private boolean f1974a = false;
    private int b = 0;
    private long c = 0;
    private boolean d = false;
    private int f = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Timeout(Runnable runnable) {
        this.g = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b() {
        if (this.e != null) {
            this.e.cancel();
            this.e = null;
        }
        int i = this.f + 1;
        this.f = i;
        return i;
    }

    public void a(final long j) {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.Timeout.1
            @Override // java.lang.Runnable
            public void run() {
                Timeout.this.b = Integer.MIN_VALUE;
                Timeout.this.c = j;
                Timeout.this.f1974a = false;
                Timeout.this.c();
            }
        }, true);
    }

    /* renamed from: com.apprupt.sdk.Timeout$2  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f1976a;
        final /* synthetic */ long b;
        final /* synthetic */ Timeout c;

        @Override // java.lang.Runnable
        public void run() {
            this.c.b = this.f1976a;
            this.c.c = this.b;
            this.c.f1974a = true;
            this.c.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        final int b = b();
        this.d = false;
        if (this.b > 0) {
            this.b--;
        }
        Timer timer = new Timer();
        this.e = timer;
        timer.schedule(new TimerTask() { // from class: com.apprupt.sdk.Timeout.3
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Timeout.this.a(b);
            }
        }, this.c);
    }

    public void a() {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.Timeout.4
            @Override // java.lang.Runnable
            public void run() {
                Timeout.this.b();
                Timeout.this.d = true;
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i) {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.Timeout.5
            @Override // java.lang.Runnable
            public void run() {
                if (i == Timeout.this.f && !Timeout.this.d) {
                    Timeout.this.g.run();
                    if (Timeout.this.f1974a && !Timeout.this.d) {
                        if (Timeout.this.b == Integer.MIN_VALUE || Timeout.this.b > 0) {
                            Timeout.this.c();
                        }
                    }
                }
            }
        }, true);
    }
}
