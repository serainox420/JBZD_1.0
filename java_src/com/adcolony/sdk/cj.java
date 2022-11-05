package com.adcolony.sdk;

import android.os.Looper;
import com.adcolony.sdk.AdColonyPubServices;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cj {
    int d;
    long e;
    long f;
    long g;
    long h;
    int i;
    long j;
    long k;

    /* renamed from: a  reason: collision with root package name */
    int f1328a = 0;
    int b = 1;
    int c = 2;
    by l = new by(Looper.getMainLooper());
    bv m = new bv() { // from class: com.adcolony.sdk.cj.1
        @Override // com.adcolony.sdk.bv
        public void a() {
            cb.b(cj.this.i(), "timerRoutine started", true);
            if (bz.aK().x()) {
                bz.aK().J();
                if (bz.aK().t() == AdColonyPubServices.ServiceAvailability.SERVICE_INVISIBLE) {
                    bz.aK().f("InvisibleReinitAttempt");
                }
            } else if (bz.aK().I()) {
                bz.aK().f("InternetAvailableFromTimer");
            }
            cj.this.l.b(cj.this.m, bz.aK().at().o());
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public String i() {
        return "AdColonyPubServices";
    }

    void a() {
        this.e = 0L;
        this.f = 0L;
        this.g = 0L;
        this.h = 0L;
        this.i = 0;
        this.j = 0L;
        this.d = this.f1328a;
        this.l.b(this.m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.l.a(new bv() { // from class: com.adcolony.sdk.cj.2
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (cj.this.d != cj.this.b) {
                    long currentTimeMillis = System.currentTimeMillis();
                    cj.this.a();
                    cj.this.j = currentTimeMillis;
                    cj.this.d = cj.this.b;
                    cj.this.a(bz.aK().at().o());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (this.d == this.b) {
            long currentTimeMillis = System.currentTimeMillis();
            cb.b(i(), "pause session time:" + currentTimeMillis, true);
            this.d = this.c;
            this.g = currentTimeMillis;
            this.i++;
            this.e = currentTimeMillis - this.j;
            this.j = currentTimeMillis;
            this.l.b(this.m);
            bz.aK().c();
        }
    }

    void a(int i) {
        this.f |= bn.a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long d() {
        if (this.d == this.f1328a) {
            return 0L;
        }
        long currentTimeMillis = System.currentTimeMillis();
        cb.b(i(), "stopSession time: " + currentTimeMillis, true);
        if (this.g > 0) {
            this.e += this.g - this.j;
        } else {
            this.e += currentTimeMillis - this.j;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("paused_time_ms", Long.valueOf(this.h));
        hashMap.put("paused_count", Integer.valueOf(this.i));
        hashMap.put("grace_period_ms", Long.valueOf(bz.aK().at().n()));
        hashMap.put("active_time_ms", Long.valueOf(this.e));
        hashMap.put("error_bit_code", Long.valueOf(this.f));
        hashMap.put("reset_session_timer_ms", Integer.valueOf(bz.aK().at().o()));
        bz.aK().ax().a("stop_session", hashMap);
        long j = this.e;
        a();
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.g;
        long n = bz.aK().at().n();
        boolean z = this.g > 0 && j > n;
        if (!z && this.d == this.b) {
            cb.b(i(), "resumeSession returned early", true);
            return;
        }
        if (currentTimeMillis < this.j) {
            cb.b(i(), "timeMs: " + currentTimeMillis + "\n_sessionResumedTime: " + this.j, true);
            this.d = this.f1328a;
        }
        long o = bz.aK().at().o();
        if (this.d == this.f1328a) {
            cb.b(i(), "ResumeSession: no paused session - creating a new one.", true);
            b();
        } else if (z) {
            cb.b(i(), "ResumeSession: resume grace period expired " + j + " > " + n, true);
            this.i--;
            d();
            b();
            bz.aK().u();
            bz.aK().f("GracePeriodExpired");
        } else {
            this.g = 0L;
            this.h += j;
            this.d = this.b;
            if (o - j < 0) {
            }
            cb.b(i(), "ResumeSession: normal resume after " + j + " ms", true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        a(bz.aK().at().o());
    }

    void a(long j) {
        this.l.b(this.m);
        this.l.b(this.m, j);
        cb.b(i(), "Session timer starting in " + j + " repeats every " + bz.aK().at().o(), true);
    }

    long g() {
        return this.e;
    }

    void b(long j) {
        this.k = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long h() {
        return this.k;
    }
}
