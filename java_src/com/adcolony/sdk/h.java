package com.adcolony.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import com.adcolony.sdk.ADCDownload;
import com.facebook.GraphResponse;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.firebase.a.a;
import com.loopme.debugging.Params;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h implements ADCDownload.Listener {

    /* renamed from: a  reason: collision with root package name */
    static final String f1423a = "026ae9c9824b3e483fa6c71fa88f57ae27816141";
    static final String b = "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5";
    String B;
    boolean D;
    boolean E;
    boolean F;
    boolean G;
    boolean H;
    private JSONObject I;
    private String K;
    private String L;
    private String M;
    private boolean N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private int S;
    private Application.ActivityLifecycleCallbacks V;
    i c;
    ab d;
    l e;
    aj f;
    d g;
    k h;
    n i;
    w j;
    am k;
    ao l;
    j m;
    aq n;
    ap o;
    ae p;
    c q;
    ax r;
    AdColonyInterstitial s;
    AdColonyRewardListener t;
    AdColonyAppOptions v;
    z w;
    boolean x;
    z y;
    HashMap<String, AdColonyCustomMessageListener> u = new HashMap<>();
    HashMap<String, AdColonyZone> z = new HashMap<>();
    HashMap<Integer, aw> A = new HashMap<>();
    private String J = "https://adc3-launch.adcolony.com/v4/launch";
    int C = 1;
    private int T = 1;
    private final int U = 120;

    Activity a() {
        return a.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0147  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(AdColonyAppOptions adColonyAppOptions, boolean z) {
        boolean z2;
        boolean z3 = true;
        this.F = z;
        this.v = adColonyAppOptions;
        this.d = new ab();
        this.c = new i();
        this.e = new l();
        this.e.a();
        this.f = new aj();
        this.f.a();
        this.g = new d();
        this.g.a();
        this.h = new k();
        this.i = new n();
        this.i.a();
        this.j = new w();
        w wVar = this.j;
        w.a();
        this.k = new am();
        this.k.a();
        this.l = new ao();
        this.l.a();
        this.m = new j();
        this.m.d();
        this.p = new ae();
        this.B = this.p.c();
        if (!z) {
            this.O = new File(this.k.f1048a + f1423a).exists();
            this.P = new File(this.k.f1048a + b).exists();
            if (this.O && this.P) {
                String b2 = s.b(s.c(this.k.f1048a + f1423a), Params.SDK_VERSION);
                j jVar = this.m;
                if (b2.equals("3.0.7")) {
                    z2 = true;
                    this.N = z2;
                    a(this.N);
                    if (a.l != null && this.V == null) {
                        this.V = new Application.ActivityLifecycleCallbacks() { // from class: com.adcolony.sdk.h.1
                            @Override // android.app.Application.ActivityLifecycleCallbacks
                            public void onActivityResumed(Activity activity) {
                                a.o = true;
                                if (a.l != null && h.this.f.j && (a.l instanceof b) && !((b) a.l).g) {
                                    u.d.b("Ignoring onActivityResumed");
                                    return;
                                }
                                u.d.b("onActivityResumed() Activity Lifecycle Callback");
                                a.a(activity);
                                if (h.this.w != null) {
                                    h.this.w.a(h.this.w.b).b();
                                    h.this.w = null;
                                }
                                h.this.E = false;
                                h.this.f.j = true;
                                h.this.f.l = true;
                                h.this.f.r = false;
                                if (h.this.H && !h.this.f.m) {
                                    h.this.f.a(true);
                                }
                                h.this.h.a();
                                if (w.j == null || w.j.c == null || w.j.c.isShutdown()) {
                                    AdColony.a(activity, a.m.v);
                                } else {
                                    w.j.a(5L, TimeUnit.SECONDS);
                                }
                            }

                            @Override // android.app.Application.ActivityLifecycleCallbacks
                            public void onActivityPaused(Activity activity) {
                                a.o = false;
                                h.this.f.j = false;
                                h.this.f.l = true;
                                if (a.m != null) {
                                    a.m.m.x();
                                }
                            }

                            @Override // android.app.Application.ActivityLifecycleCallbacks
                            public void onActivityDestroyed(Activity activity) {
                            }

                            @Override // android.app.Application.ActivityLifecycleCallbacks
                            public void onActivityStarted(Activity activity) {
                            }

                            @Override // android.app.Application.ActivityLifecycleCallbacks
                            public void onActivityStopped(Activity activity) {
                            }

                            @Override // android.app.Application.ActivityLifecycleCallbacks
                            public void onActivityCreated(Activity activity, Bundle bundle) {
                                if (!h.this.f.m) {
                                    h.this.f.a(true);
                                }
                                a.a(activity);
                            }

                            @Override // android.app.Application.ActivityLifecycleCallbacks
                            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                            }
                        };
                        a.l.getApplication().registerActivityLifecycleCallbacks(this.V);
                    }
                    if (new File(this.k.f1048a + f1423a).exists()) {
                        this.I = s.c(this.k.f1048a + f1423a);
                        b(this.I);
                    }
                }
            }
            z2 = false;
            this.N = z2;
            a(this.N);
            if (a.l != null) {
                this.V = new Application.ActivityLifecycleCallbacks() { // from class: com.adcolony.sdk.h.1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityResumed(Activity activity) {
                        a.o = true;
                        if (a.l != null && h.this.f.j && (a.l instanceof b) && !((b) a.l).g) {
                            u.d.b("Ignoring onActivityResumed");
                            return;
                        }
                        u.d.b("onActivityResumed() Activity Lifecycle Callback");
                        a.a(activity);
                        if (h.this.w != null) {
                            h.this.w.a(h.this.w.b).b();
                            h.this.w = null;
                        }
                        h.this.E = false;
                        h.this.f.j = true;
                        h.this.f.l = true;
                        h.this.f.r = false;
                        if (h.this.H && !h.this.f.m) {
                            h.this.f.a(true);
                        }
                        h.this.h.a();
                        if (w.j == null || w.j.c == null || w.j.c.isShutdown()) {
                            AdColony.a(activity, a.m.v);
                        } else {
                            w.j.a(5L, TimeUnit.SECONDS);
                        }
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPaused(Activity activity) {
                        a.o = false;
                        h.this.f.j = false;
                        h.this.f.l = true;
                        if (a.m != null) {
                            a.m.m.x();
                        }
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityDestroyed(Activity activity) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStarted(Activity activity) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStopped(Activity activity) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityCreated(Activity activity, Bundle bundle) {
                        if (!h.this.f.m) {
                            h.this.f.a(true);
                        }
                        a.a(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    }
                };
                a.l.getApplication().registerActivityLifecycleCallbacks(this.V);
            }
            if (new File(this.k.f1048a + f1423a).exists()) {
            }
        }
        this.C++;
        a.a("Module.load", new ac() { // from class: com.adcolony.sdk.h.12
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                h.this.c(zVar);
            }
        });
        a.a("Module.unload", new ac() { // from class: com.adcolony.sdk.h.13
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                h.this.a(zVar);
            }
        });
        a.a("AdColony.on_configured", new ac() { // from class: com.adcolony.sdk.h.14
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                h.this.G = true;
                if (h.this.R) {
                    JSONObject a2 = s.a();
                    JSONObject a3 = s.a();
                    s.a(a3, "app_version", au.a());
                    s.a(a2, "app_bundle_info", a3);
                    new z("AdColony.on_update", 1, a2).b();
                    h.this.R = false;
                }
                if (w.j != null) {
                    w.j.b(s.b(zVar.b, "app_session_id"));
                }
            }
        });
        a.a("AdColony.get_app_info", new ac() { // from class: com.adcolony.sdk.h.15
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                h.this.b(zVar);
            }
        });
        a.a("AdColony.v4vc_reward", new ac() { // from class: com.adcolony.sdk.h.16
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                h.this.f(zVar);
            }
        });
        a.a("AdColony.zone_info", new ac() { // from class: com.adcolony.sdk.h.17
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                h.this.g(zVar);
            }
        });
        a.a("AdColony.probe_launch_server", new ac() { // from class: com.adcolony.sdk.h.18
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                h.this.a(true, true);
            }
        });
        a.a("Crypto.sha1", new ac() { // from class: com.adcolony.sdk.h.19
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                JSONObject a2 = s.a();
                s.a(a2, "sha1", au.c(s.b(zVar.b, "data")));
                zVar.a(a2).b();
            }
        });
        a.a("Crypto.crc32", new ac() { // from class: com.adcolony.sdk.h.2
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                JSONObject a2 = s.a();
                s.b(a2, "crc32", au.b(s.b(zVar.b, "data")));
                zVar.a(a2).b();
            }
        });
        a.a("Crypto.uuid", new ac() { // from class: com.adcolony.sdk.h.3
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                int c = s.c(zVar.b, "number");
                JSONObject a2 = s.a();
                s.a(a2, "uuids", au.a(c));
                zVar.a(a2).b();
            }
        });
        a.a("Device.query_advertiser_info", new ac() { // from class: com.adcolony.sdk.h.4
            @Override // com.adcolony.sdk.ac
            public void a(final z zVar) {
                if (a.l != null) {
                    au.b.execute(new Runnable() { // from class: com.adcolony.sdk.h.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            h.this.a(a.l, zVar);
                        }
                    });
                }
            }
        });
        a.a("AdColony.controller_version", new ac() { // from class: com.adcolony.sdk.h.5
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                h.this.m.g = s.b(zVar.b, "version");
                if (w.j != null) {
                    w.j.a(h.this.m.g);
                }
                u.d.b("Controller version: " + h.this.m.g);
            }
        });
        try {
            int i = (int) (a.l.getPackageManager().getPackageInfo(a.l.getPackageName(), 0).lastUpdateTime / 1000);
            if (new File(this.k.f1048a + "AppVersion").exists()) {
                JSONObject c = s.c(this.k.f1048a + "AppVersion");
                if ((c != null ? s.c(c, "last_update") : i) != i) {
                    this.R = true;
                } else {
                    z3 = false;
                }
            }
            if (z3) {
                JSONObject a2 = s.a();
                s.b(a2, "last_update", i);
                s.h(a2, this.k.f1048a + "AppVersion");
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    boolean b() {
        if (this.F || !this.m.c().contains("arm") || ADCNative.nativeNeonSupported()) {
            return true;
        }
        u.g.b("ARM architechture without NEON support. Disabling AdColony.");
        b(true);
        return false;
    }

    boolean a(boolean z) {
        return a(z, false);
    }

    boolean a(boolean z, boolean z2) {
        au.e(a.l.getFilesDir().getAbsolutePath() + "/../");
        u.b.a(">").b(a.l.getFilesDir().getAbsolutePath() + "/../");
        File file = new File(this.k.c() + "/../lib/libImmEndpointWarpJ.so");
        this.m.d = file.exists();
        this.Q = z2;
        this.N = z;
        if (z && !z2) {
            u.d.b("Loading .so from libs");
            try {
                System.loadLibrary("js");
                System.loadLibrary("adcolony");
                this.d.a();
                b();
            } catch (UnsatisfiedLinkError e) {
                u.g.b("Expecting libadcolony.so in libs directory but it was not found.");
                b(true);
                return false;
            }
        }
        d();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        new Thread(new Runnable() { // from class: com.adcolony.sdk.h.6
            @Override // java.lang.Runnable
            public void run() {
                JSONObject a2 = s.a();
                s.a(a2, "url", h.this.J);
                s.a(a2, a.b.CONTENT_TYPE, "application/json");
                s.a(a2, "content", h.this.m.a(h.this.m).toString());
                u.b.b("Launch: " + h.this.m.a(h.this.m).toString());
                u.d.a("Saving Launch to ").a(h.this.k.f1048a).b(h.f1423a);
                new ADCDownload(new z("WebServices.post", 0, a2), h.this);
            }
        }).start();
    }

    boolean a(JSONObject jSONObject) {
        if (!this.N) {
            u.f.b("Non-standard launch. Downloading new controller.");
            return true;
        } else if (this.I != null && s.b(s.f(this.I, "controller"), "sha1").equals(s.b(s.f(jSONObject, "controller"), "sha1"))) {
            return false;
        } else {
            u.f.b("Controller sha1 does not match, downloading new controller.");
            return true;
        }
    }

    void a(z zVar) {
        a(s.c(zVar.b, "id"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        this.F = z;
    }

    void b(z zVar) {
        JSONObject jSONObject = this.v.d;
        s.a(jSONObject, "app_id", this.v.f977a);
        s.a(jSONObject, "zone_ids", this.v.c);
        JSONObject a2 = s.a();
        s.a(a2, "options", jSONObject);
        zVar.a(a2).b();
    }

    boolean c(final z zVar) {
        if (a.l == null) {
            return false;
        }
        try {
            final int c = zVar.b.has("id") ? s.c(zVar.b, "id") : 0;
            if (c <= 0) {
                ab abVar = this.d;
                c = abVar.c;
                abVar.c = c + 1;
            }
            a(c);
            boolean d = s.d(zVar.b, "is_webview");
            final boolean d2 = s.d(zVar.b, "is_display_module");
            if (d) {
                a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.h.7
                    @Override // java.lang.Runnable
                    public void run() {
                        Context applicationContext = a.l.getApplicationContext();
                        ab abVar2 = h.this.d;
                        int i = abVar2.c;
                        abVar2.c = i + 1;
                        aw awVar = new aw(applicationContext, i, d2);
                        awVar.a(true, zVar);
                        h.this.A.put(Integer.valueOf(awVar.a()), awVar);
                    }
                });
            } else {
                final ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
                newSingleThreadExecutor.submit(new Runnable() { // from class: com.adcolony.sdk.h.8
                    @Override // java.lang.Runnable
                    public void run() {
                        JSONObject f = s.f(zVar.b, "info");
                        if (c == 1 && a.m.v != null) {
                            s.a(f, "options", a.m.v.d);
                        }
                        h.this.d.a(new ADCVMModule(a.l, c, s.b(zVar.b, "filepath"), f, newSingleThreadExecutor));
                    }
                });
                JSONObject a2 = s.a();
                s.a(a2, GraphResponse.SUCCESS_KEY, true);
                s.b(a2, "id", c);
                zVar.a(a2).b();
            }
            return true;
        } catch (RuntimeException e) {
            u.h.b("Failed to create AdUnit file://" + s.b(zVar.b, "filepath"));
            u.h.b(e.toString());
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(z zVar) {
        this.w = zVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(z zVar) {
        this.y = zVar;
    }

    void c() {
        int i = 120;
        if (a.m != null && a.m.f != null && a.m.f.m) {
            this.S++;
            if (this.T * this.S <= 120) {
                i = this.T * this.S;
            }
            this.T = i;
            au.a(new Runnable() { // from class: com.adcolony.sdk.h.9
                @Override // java.lang.Runnable
                public void run() {
                    new Handler().postDelayed(new Runnable() { // from class: com.adcolony.sdk.h.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (a.m != null && a.m.f != null && a.m.f.m) {
                                h.this.d();
                            }
                        }
                    }, h.this.T * 1000);
                }
            });
            return;
        }
        u.f.b("Max launch server download attempts hit, or AdColony is no longer active.");
    }

    @Override // com.adcolony.sdk.ADCDownload.Listener
    public void on_download_finished(ADCDownload aDCDownload, z zVar, Map<String, List<String>> map) {
        if (aDCDownload.f957a.equals(this.J)) {
            if (aDCDownload.e) {
                u.b.b("Launch: " + aDCDownload.b);
                JSONObject a2 = s.a(aDCDownload.b);
                j jVar = this.m;
                s.a(a2, Params.SDK_VERSION, "3.0.7");
                if (a2 != null) {
                    s.h(a2, this.k.f1048a + f1423a);
                    if (!c(a2)) {
                        if (!this.N) {
                            u.g.b("Incomplete or disabled launch server response. Disabling AdColony until next launch.");
                            b(true);
                            return;
                        }
                        return;
                    }
                    if (a(a2)) {
                        u.d.b("Controller missing or out of date. Downloading new controller.");
                        JSONObject a3 = s.a();
                        s.a(a3, "url", this.K);
                        s.a(a3, "filepath", this.k.f1048a + b);
                        new ADCDownload(new z("WebServices.download", 0, a3), this);
                    }
                    this.I = a2;
                    return;
                }
                return;
            }
            c();
        } else if (aDCDownload.f957a.equals(this.K)) {
            if (!a(this.L)) {
                u.e.b("Downloaded controller sha1 does not match expected value, retrying.");
                c();
            } else if (!this.N && !this.Q && a.l != null) {
                a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.h.10
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            System.loadLibrary("js");
                            System.loadLibrary("adcolony");
                        } catch (UnsatisfiedLinkError e) {
                            h.this.b(true);
                            u.g.b("Expecting libadcolony.so in libs folder but it was not found. Disabling AdColony until next launch.");
                        }
                        h.this.d.a();
                        h.this.b();
                    }
                });
            }
        }
    }

    private boolean a(String str) {
        File file = new File(a.l.getFilesDir().getAbsolutePath() + "/adc3/" + b);
        if (file.exists()) {
            return au.a(str, file);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Context context, z zVar) {
        if (context == null) {
            return false;
        }
        AdvertisingIdClient.Info info = null;
        try {
            info = AdvertisingIdClient.getAdvertisingIdInfo(context);
        } catch (Exception e) {
            e.printStackTrace();
            if (Build.MANUFACTURER.equals("Amazon")) {
                return false;
            }
            u.e.b("Advertising ID is not available. Collecting Android ID instead of Advertising ID.");
            return false;
        } catch (NoClassDefFoundError e2) {
            u.e.b("Google Play Services ads dependencies are missing. Collecting Android ID instead of Advertising ID.");
            return false;
        } catch (NoSuchMethodError e3) {
            u.e.b("Google Play Services is out of date, please update to GPS 4.0+. Collecting Android ID instead of Advertising ID.");
        }
        if (info == null) {
            return false;
        }
        this.m.f1446a = info.getId();
        this.m.c = info.isLimitAdTrackingEnabled();
        this.m.b = true;
        if (zVar != null) {
            JSONObject a2 = s.a();
            s.a(a2, "advertiser_id", this.m.b());
            s.a(a2, "limit_ad_tracking", this.m.f());
            zVar.a(a2).b();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AdColonyAppOptions adColonyAppOptions) {
        synchronized (this.g.b) {
            for (Map.Entry<String, AdColonyInterstitial> entry : this.g.b.entrySet()) {
                AdColonyInterstitial value = entry.getValue();
                value.h = true;
                value.f980a.onExpiring(value);
            }
            this.g.b.clear();
        }
        this.G = false;
        a(1);
        this.z.clear();
        this.v = adColonyAppOptions;
        this.d.a();
        a(true, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i) {
        if (this.d.a(i) == null) {
            return false;
        }
        if (this.A.containsKey(Integer.valueOf(i))) {
            aw awVar = this.A.get(Integer.valueOf(i));
            if (awVar.b) {
                awVar.loadUrl("about:blank");
                awVar.clearCache(true);
                awVar.removeAllViews();
                awVar.c = true;
            }
            this.A.remove(Integer.valueOf(i));
        }
        if (this.y != null) {
            this.y.b();
            this.y = null;
            this.x = false;
        }
        u.d.a("Destroying module with id = ").b(i);
        return true;
    }

    void b(JSONObject jSONObject) {
        boolean z = true;
        if (!ADCVMModule.d) {
            JSONObject f = s.f(jSONObject, "logging");
            w.i = s.a(f, "send_level", 1);
            if (!w.f1502a && !s.d(f, "log_private")) {
                z = false;
            }
            w.f1502a = z;
            w.h = s.a(f, "print_level", 3);
        }
    }

    boolean c(JSONObject jSONObject) {
        if (jSONObject == null) {
            u.d.b("Launch response verification failed - response is null or unknown");
            return false;
        }
        try {
            JSONObject f = s.f(jSONObject, "controller");
            this.K = s.b(f, "url");
            this.L = s.b(f, "sha1");
            this.M = s.b(jSONObject, "status");
            b(jSONObject);
        } catch (Exception e) {
            try {
                new File(this.k.f1048a + f1423a).delete();
            } catch (Exception e2) {
            }
        }
        if (this.M.equals("disable")) {
            try {
                new File(this.k.f1048a + b).delete();
            } catch (Exception e3) {
            }
            u.f.b("Launch server response with disabled status. Disabling AdColony until next launch.");
            b(true);
            return false;
        } else if (!this.K.equals("") && !this.M.equals("")) {
            return true;
        } else {
            u.g.b("Missing controller status or URL. Disabling AdColony until next launch.");
            return false;
        }
    }

    boolean f(final z zVar) {
        if (this.t == null || a.l == null) {
            return false;
        }
        a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.h.11
            @Override // java.lang.Runnable
            public void run() {
                h.this.t.onReward(new AdColonyReward(zVar));
            }
        });
        return true;
    }

    void g(z zVar) {
        AdColonyZone adColonyZone;
        if (this.F) {
            u.f.b("AdColony is disabled. Ignoring zone_info message.");
            return;
        }
        JSONObject f = s.f(zVar.b, "reward");
        String b2 = s.b(f, "reward_name");
        int c = s.c(f, "reward_amount");
        int c2 = s.c(f, "views_per_reward");
        int c3 = s.c(f, "views_until_reward");
        String b3 = s.b(zVar.b, "zone_id");
        int c4 = s.c(zVar.b, "status");
        int c5 = s.c(zVar.b, "type");
        String b4 = s.b(zVar.b, "reward_name_plural");
        String b5 = s.b(zVar.b, "reward_prompt");
        boolean z = c4 != 1;
        if (this.z.containsKey(b3)) {
            adColonyZone = this.z.get(b3);
        } else {
            adColonyZone = new AdColonyZone(b3);
            this.z.put(b3, adColonyZone);
        }
        adColonyZone.r = s.d(zVar.b, "rewarded");
        adColonyZone.h = b3;
        adColonyZone.i = b2;
        adColonyZone.j = b4;
        adColonyZone.k = b5;
        adColonyZone.o = c2;
        adColonyZone.n = c3;
        adColonyZone.p = c;
        adColonyZone.l = c4;
        adColonyZone.m = c5;
        adColonyZone.q = z;
    }
}
