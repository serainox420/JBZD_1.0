package com.flurry.sdk;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.widget.Toast;
import com.flurry.sdk.it;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public class is {

    /* renamed from: a  reason: collision with root package name */
    public static int f2866a;
    public static int b;
    public static AtomicInteger c;
    static kf<List<it>> d;
    private static is f;
    private static Map<Integer, it> g;
    private final AtomicInteger h;
    private long i;
    private String e = is.class.getSimpleName();
    private kh<jq> j = new kh<jq>() { // from class: com.flurry.sdk.is.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(jq jqVar) {
            jq jqVar2 = jqVar;
            km.a(4, is.this.e, "onNetworkStateChanged : isNetworkEnable = " + jqVar2.f2934a);
            if (!jqVar2.f2934a) {
                return;
            }
            jy.a().b(new Runnable() { // from class: com.flurry.sdk.is.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    iu.a().b();
                }
            });
        }
    };

    private is() {
        g = new HashMap();
        this.h = new AtomicInteger(0);
        c = new AtomicInteger(0);
        if (b == 0) {
            b = 600000;
        }
        if (f2866a == 0) {
            f2866a = 15;
        }
        this.i = jy.a().f2947a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).getLong("timeToSendNextPulseReport", 0L);
        if (d == null) {
            l();
        }
        ki.a().a("com.flurry.android.sdk.NetworkStateEvent", this.j);
    }

    public static synchronized is a() {
        is isVar;
        synchronized (is.class) {
            if (f == null) {
                f = new is();
            }
            isVar = f;
        }
        return isVar;
    }

    public static void a(int i) {
        f2866a = i;
    }

    public static void b(int i) {
        b = i;
    }

    public final synchronized void a(it itVar) {
        if (itVar == null) {
            km.a(3, this.e, "Must add valid PulseCallbackAsyncReportInfo");
        } else {
            km.a(3, this.e, "Adding and sending " + itVar.c + " report to PulseCallbackManager.");
            if (itVar.a().size() != 0) {
                if (this.i == 0) {
                    this.i = System.currentTimeMillis() + b;
                    jy.a().b(new Runnable() { // from class: com.flurry.sdk.is.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            is.this.j();
                        }
                    });
                }
                int k = k();
                itVar.b = k;
                g.put(Integer.valueOf(k), itVar);
                for (ip ipVar : itVar.a()) {
                    hr.a().c.b((io) ipVar);
                }
            }
        }
    }

    public final synchronized void b(it itVar) {
        if (itVar == null) {
            km.a(3, this.e, "Must add valid PulseCallbackAsyncReportInfo");
        } else {
            if (this.i == 0) {
                this.i = System.currentTimeMillis() + b;
                jy.a().b(new Runnable() { // from class: com.flurry.sdk.is.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        is.this.j();
                    }
                });
            }
            int k = k();
            itVar.b = k;
            g.put(Integer.valueOf(k), itVar);
            for (ip ipVar : itVar.a()) {
                Iterator<iq> it = ipVar.f2858a.iterator();
                while (it.hasNext()) {
                    it.next();
                    c.incrementAndGet();
                    if (g()) {
                        km.a(3, this.e, "Max Callback Attempts threshold reached. Sending callback logging reports");
                        i();
                    }
                }
            }
            if (h()) {
                km.a(3, this.e, "Time threshold reached. Sending callback logging reports");
                i();
            }
            km.a(3, this.e, "Restoring " + itVar.c + " report to PulseCallbackManager. Number of stored completed callbacks: " + c.get());
        }
    }

    private synchronized void c(int i) {
        km.a(3, this.e, "Removing report " + i + " from PulseCallbackManager");
        g.remove(Integer.valueOf(i));
    }

    public static List<it> b() {
        return new ArrayList(g.values());
    }

    public final synchronized void a(final iq iqVar) {
        km.a(3, this.e, iqVar.l.m.c + " report sent successfully to " + iqVar.l.k);
        iqVar.f = ir.COMPLETE;
        iqVar.g = "";
        c(iqVar);
        if (km.c() <= 3 && km.d()) {
            jy.a().a(new Runnable() { // from class: com.flurry.sdk.is.4
                @Override // java.lang.Runnable
                public final void run() {
                    Toast.makeText(jy.a().f2947a, "PulseCallbackReportInfo HTTP Response Code: " + iqVar.e + " for url: " + iqVar.l.r, 1).show();
                }
            });
        }
    }

    public final synchronized boolean a(iq iqVar, String str) {
        boolean z = true;
        synchronized (this) {
            iqVar.h++;
            iqVar.i = System.currentTimeMillis();
            if ((iqVar.h > iqVar.l.d) || TextUtils.isEmpty(str)) {
                km.a(3, this.e, "Maximum number of redirects attempted. Aborting: " + iqVar.l.m.c + " report to " + iqVar.l.k);
                iqVar.f = ir.INVALID_RESPONSE;
                iqVar.g = "";
                c(iqVar);
                z = false;
            } else {
                km.a(3, this.e, "Report to " + iqVar.l.k + " redirecting to url: " + str);
                iqVar.l.r = str;
                c();
            }
        }
        return z;
    }

    public final synchronized void b(iq iqVar) {
        km.a(3, this.e, "Maximum number of attempts reached. Aborting: " + iqVar.l.m.c);
        iqVar.f = ir.TIMEOUT;
        iqVar.i = System.currentTimeMillis();
        iqVar.g = "";
        c(iqVar);
    }

    public final synchronized boolean b(iq iqVar, String str) {
        boolean z = false;
        synchronized (this) {
            iqVar.f = ir.INVALID_RESPONSE;
            iqVar.i = System.currentTimeMillis();
            if (str == null) {
                str = "";
            }
            iqVar.g = str;
            ip ipVar = iqVar.l;
            if (ipVar.p >= ipVar.c) {
                km.a(3, this.e, "Maximum number of attempts reached. Aborting: " + iqVar.l.m.c + " report to " + iqVar.l.k);
                c(iqVar);
            } else if (!mc.h(iqVar.l.r)) {
                km.a(3, this.e, "Url: " + iqVar.l.r + " is invalid.");
                c(iqVar);
            } else {
                km.a(3, this.e, "Retrying callback to " + iqVar.l.m.c + " in: " + (iqVar.l.g / 1000) + " seconds.");
                iqVar.a();
                c.incrementAndGet();
                c();
                f();
                z = true;
            }
        }
        return z;
    }

    public final void c() {
        jy.a().b(new Runnable() { // from class: com.flurry.sdk.is.5
            @Override // java.lang.Runnable
            public final void run() {
                is.a();
                List<it> b2 = is.b();
                if (is.d == null) {
                    is.l();
                }
                is.d.a(b2);
            }
        });
    }

    public static List<it> d() {
        if (d == null) {
            l();
        }
        return d.a();
    }

    private void c(iq iqVar) {
        iqVar.d = true;
        iqVar.a();
        c.incrementAndGet();
        iqVar.l.c();
        km.a(3, this.e, iqVar.l.m.c + " report to " + iqVar.l.k + " finalized.");
        c();
        f();
    }

    private void f() {
        if (g() || h()) {
            km.a(3, this.e, "Threshold reached. Sending callback logging reports");
            i();
        }
    }

    private static boolean g() {
        return c.intValue() >= f2866a;
    }

    private boolean h() {
        return System.currentTimeMillis() > this.i;
    }

    private void i() {
        for (it itVar : b()) {
            boolean z = false;
            for (ip ipVar : itVar.a()) {
                Iterator<iq> it = ipVar.f2858a.iterator();
                while (it.hasNext()) {
                    iq next = it.next();
                    if (next.j) {
                        it.remove();
                    } else if (!next.f.equals(ir.PENDING_COMPLETION)) {
                        next.j = true;
                        z = true;
                    }
                }
            }
            if (z) {
                iu.a().a(itVar);
            }
        }
        iu.a().b();
        this.i = System.currentTimeMillis() + b;
        j();
        for (it itVar2 : b()) {
            if (itVar2.b()) {
                c(itVar2.b);
            } else {
                for (ip ipVar2 : itVar2.a()) {
                    if (ipVar2.l) {
                        itVar2.d.remove(Long.valueOf(ipVar2.b));
                    } else {
                        Iterator<iq> it2 = ipVar2.f2858a.iterator();
                        while (it2.hasNext()) {
                            if (it2.next().j) {
                                it2.remove();
                            }
                        }
                    }
                }
            }
        }
        c = new AtomicInteger(0);
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        SharedPreferences.Editor edit = jy.a().f2947a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        edit.putLong("timeToSendNextPulseReport", this.i);
        edit.apply();
    }

    private synchronized int k() {
        return this.h.incrementAndGet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l() {
        d = new kf<>(jy.a().f2947a.getFileStreamPath(".yflurryanongoingpulsecallbackreporter"), ".yflurryanongoingpulsecallbackreporter", 2, new lj<List<it>>() { // from class: com.flurry.sdk.is.6
            @Override // com.flurry.sdk.lj
            public final lg<List<it>> a(int i) {
                return new lf(new it.a());
            }
        });
    }
}
