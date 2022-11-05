package com.adcolony.sdk;

import com.adcolony.sdk.au;
import com.facebook.login.widget.ToolTipPopup;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.Iterator;
import java.util.concurrent.Executors;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aj implements Runnable {
    long c;
    long d;
    long e;
    long f;
    long g;
    long h;
    long i;
    boolean l;
    boolean m;
    boolean n;
    boolean o;
    boolean p;
    boolean q;
    boolean r;

    /* renamed from: a  reason: collision with root package name */
    final long f1043a = NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS;
    final long b = 5000;
    boolean j = true;
    boolean k = true;

    public void a() {
        a.a("SessionInfo.stopped", new ac() { // from class: com.adcolony.sdk.aj.1
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                aj.this.q = true;
            }
        });
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            if (this.o) {
                break;
            }
            this.f = System.currentTimeMillis();
            a.a();
            if (this.d >= NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS) {
                u.d.a("Ending session due to excessive suspend time: ").b(this.d);
                break;
            }
            if (!this.j) {
                if (this.l && !this.k) {
                    this.l = false;
                    c();
                }
                if (!this.p && a.l != null && a.l.isFinishing()) {
                    this.p = true;
                    this.h = 0L;
                }
                if (this.p) {
                    this.h += this.e;
                    if (this.h > 5000) {
                        u.d.b("Ending session due to excessive time between an Activity finishing and an onResume() event.");
                        break;
                    }
                }
                this.d += this.e;
            } else {
                if (this.l && this.k) {
                    this.l = false;
                    this.p = false;
                    d();
                }
                this.d = 0L;
            }
            this.e = (this.j || this.d < 5000) ? 17L : 100L;
            a(this.e);
            this.g = System.currentTimeMillis() - this.f;
            if (this.g > 0 && this.g < ToolTipPopup.DEFAULT_POPUP_DISPLAY_TIME) {
                this.c += this.g;
            }
            if (a.l == null || System.currentTimeMillis() - this.i > 1000) {
            }
            this.i = System.currentTimeMillis();
            String c = a.m.p.c();
            if (!c.equals(a.m.B)) {
                a.m.B = c;
                JSONObject a2 = s.a();
                s.a(a2, "network_type", a.m.B);
                new z("Network.on_status_change", 1, a2).b();
            }
        }
        u.c.b("AdColony session ending, releasing Activity reference.");
        a.m.E = true;
        a.l = null;
        this.n = true;
        this.r = true;
        b();
        au.b bVar = new au.b(10.0d);
        while (!this.q && !bVar.b() && this.r) {
            a.a();
            a(100L);
        }
        u.d.b("SessionInfo.stopped message received, ending ADC.update_module() spam.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        if (!this.m) {
            if (this.n) {
                a.m.E = false;
                this.n = false;
            }
            this.c = 0L;
            this.d = 0L;
            this.m = true;
            this.j = true;
            this.q = false;
            new Thread(this).start();
            if (z) {
                JSONObject a2 = s.a();
                s.a(a2, "id", au.b());
                new z("SessionInfo.on_start", 1, a2).b();
            }
            if (AdColony.f965a.isShutdown()) {
                AdColony.f965a = Executors.newSingleThreadExecutor();
            }
        }
    }

    void b() {
        this.m = false;
        this.j = false;
        if (w.j != null) {
            w.j.a();
        }
        JSONObject a2 = s.a();
        s.a(a2, "session_length", this.c / 1000.0d);
        new z("SessionInfo.on_stop", 1, a2).b();
        a.a();
        AdColony.f965a.shutdown();
        u.d.b("SESSION STOP");
    }

    void c() {
        if (a.m != null && a.m.d != null) {
            Iterator<ad> it = a.m.d.f1033a.iterator();
            while (it.hasNext()) {
                new z("SessionInfo.on_pause", it.next().a()).b();
            }
        }
        this.k = true;
        a.a();
    }

    void d() {
        if (a.m != null && a.m.d != null) {
            synchronized (a.m.d.f1033a) {
                Iterator<ad> it = a.m.d.f1033a.iterator();
                while (it.hasNext()) {
                    new z("SessionInfo.on_resume", it.next().a()).b();
                }
            }
        }
        this.k = false;
    }

    void a(long j) {
        try {
            Thread.sleep(j);
        } catch (InterruptedException e) {
        }
    }
}
