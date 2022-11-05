package com.adcolony.sdk;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.adcolony.sdk.AdColonyPubServices;
import com.adcolony.sdk.bn;
import com.adcolony.sdk.cm;
import com.facebook.internal.NativeProtocol;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.io.File;
import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class bg {
    private static final String ap = "sentTokenToServer";
    private static final String aq = "push_device_token";
    private static final String ar = "registered_push_app_version";
    String N;
    String P;
    String Q;
    String R;
    ArrayList<String> U;
    ArrayList<String> V;
    ArrayList<String> W;
    ArrayList<String> X;
    Map<String, Object> Y;
    Map<String, Object> Z;

    /* renamed from: a  reason: collision with root package name */
    by f1127a;
    Map<String, Object> ac;
    SharedPreferences af;
    SharedPreferences.Editor ag;
    AdColonyPubServices.ServiceAvailability ai;
    AdColonyPubServicesVIPInformation aj;
    AdColonyPubServicesConReceiver ak;
    Thread.UncaughtExceptionHandler am;
    Handler an;
    HandlerThread ao;
    by b;
    by c;
    by d;
    by e;
    HandlerThread f;
    HandlerThread g;
    HandlerThread h;
    HandlerThread i;
    ch k;
    be l;
    bm m;
    ck n;
    cf o;
    ci p;
    cn q;
    br r;
    cj s;
    bl t;
    YvolverDeepLinkManager v;
    boolean w;
    boolean x;
    cd j = new cd();
    bq u = new bq(this.j);
    boolean y = false;
    boolean z = false;
    boolean A = false;
    boolean B = false;
    boolean C = false;
    boolean D = false;
    boolean E = false;
    int F = 1;
    int G = 0;
    int H = 0;
    int I = 1;
    int J = 2;
    int K = 3;
    int L = 4;
    long M = 0;
    String O = "";
    String S = bn.aB;
    final String T = "miscPrefs";
    Map<String, Object> aa = null;
    Map<String, Object> ab = null;
    Activity ad = null;
    Context ae = null;
    bo ah = null;
    bd al = null;
    private Thread.UncaughtExceptionHandler as = new a();
    private bu at = new bu();

    abstract String a();

    abstract void a(String str);

    abstract void a(Map<String, Object> map);

    abstract ArrayList<String> b();

    abstract void b(String str);

    abstract void c();

    abstract int d();

    abstract boolean e();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        cb.a((String) null, "Using v3.0.7", false);
        this.Y = new HashMap();
        this.Z = new HashMap();
        this.U = b();
        this.j.a(this.u);
        this.l = new be();
        this.d = new by(Looper.getMainLooper());
        this.am = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this.as);
        this.f = new HandlerThread("_dbThread");
        this.f.start();
        this.f1127a = new by(this.f.getLooper());
        this.g = new HandlerThread("_netThread");
        this.g.start();
        this.b = new by(this.g.getLooper());
        this.h = new HandlerThread("_statsThread");
        this.h.start();
        this.c = new by(this.h.getLooper());
        this.i = new HandlerThread("_deviceHandlerThread");
        this.i.start();
        this.e = new by(this.i.getLooper());
        this.ao = new HandlerThread("adIdThread");
        this.ao.start();
        this.an = new by(this.ao.getLooper());
        this.m = new bm();
        this.n = new ck();
        this.o = new cf();
        this.p = new ci();
        this.q = new cn();
        this.r = new br();
        this.s = new cj();
        this.t = new bl();
        this.k = new ch();
        this.v = new YvolverDeepLinkManager();
        this.al = new bd();
        this.s.b();
    }

    /* loaded from: classes.dex */
    private class a implements Thread.UncaughtExceptionHandler {
        public a() {
            cb.b(bg.this.a(), "Installed exception handler", true);
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            bg.this.a(new Exception(th), bn.a.YVOLVER_ERROR_UNCAUGHT_EXCEPTION, "Uncaught exception", true);
            bg.this.am.uncaughtException(thread, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String g() {
        if (this.Q != null) {
            return c(this.Q);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<String> h() {
        return this.U;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c(String str) {
        return u(str);
    }

    private String u(String str) {
        if (str == null) {
            return null;
        }
        if (str.isEmpty()) {
            return "";
        }
        try {
            char[] charArray = str.toCharArray();
            int length = str.length();
            char c = charArray[length >> 1];
            for (int i = length >> 1; i < length - 1; i++) {
                charArray[i] = charArray[i + 1];
            }
            String str2 = new String(Arrays.copyOfRange(charArray, 0, length - 1));
            int a2 = co.a(c);
            ArrayList<String> a3 = cl.a(str2);
            if (a2 >= 0 && a2 < a3.size()) {
                return co.e(a3.get(a2));
            }
        } catch (Exception e) {
            cb.a(a(), "Exception->" + e.getMessage(), e);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(boolean z) {
        if (z) {
            this.Q = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return this.ai == AdColonyPubServices.ServiceAvailability.SERVICE_INVISIBLE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Activity j() {
        return this.ad;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity) {
        this.ad = activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context k() {
        return this.ad;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context l() {
        return this.ae;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b(final Activity activity) {
        this.at.a(new bv() { // from class: com.adcolony.sdk.bg.1
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(bg.this.a(), "SetActivity called: " + activity, true);
                if (activity != null) {
                    bg.this.ad = activity;
                    if (bg.this.ae == null) {
                        bg.this.ae = bg.this.ad.getApplicationContext();
                    }
                    if (bg.this.al == null) {
                        bg.this.al = new bd();
                    }
                    if (!bg.this.E) {
                        activity.getApplication().registerActivityLifecycleCallbacks(bg.this.al);
                        bg.this.E = true;
                    }
                    if (bg.this.ah == null) {
                        bg.this.ah = new bo(bg.this.l());
                    }
                    new bp(bg.this.u) { // from class: com.adcolony.sdk.bg.1.1
                        @Override // com.adcolony.sdk.bp
                        public void a() {
                            b();
                        }
                    };
                    bg.this.j.a();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m() {
        cb.b(a(), "should Send " + (!i()), true);
        return !i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(int i) {
        String str = bn.ax;
        if (i == this.H) {
            return bn.ax;
        }
        if (i == this.I) {
            return bn.ay;
        }
        if (i == this.J) {
            return bn.az;
        }
        if (i == this.K) {
            return bn.aA;
        }
        if (i == this.L) {
            return bn.aB;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        this.z = true;
        if (this.q.j() || this.q.l()) {
            this.q.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        this.z = false;
        this.q.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean p() {
        return this.z;
    }

    void a(ArrayList<Object> arrayList) {
        if (arrayList == null) {
            cb.b("IN-APP-MSG-QUEUE", "handleNotifications params==null", true);
            return;
        }
        int size = arrayList.size();
        cb.b("IN-APP-MSG-QUEUE", "handleNotifications: notifications.size()==" + size, true);
        for (int i = size - 1; i >= 0; i--) {
            this.q.a((Map) arrayList.get(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(ArrayList<String> arrayList) {
        if (arrayList == null) {
            return false;
        }
        ArrayList<String> arrayList2 = new ArrayList<>();
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList2.add(arrayList.get(i));
        }
        if (arrayList2.isEmpty()) {
            return false;
        }
        Collections.sort(arrayList2, new Comparator<String>() { // from class: com.adcolony.sdk.bg.12
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(String str, String str2) {
                return str.compareToIgnoreCase(str2);
            }
        });
        if (this.V == null || !this.V.equals(arrayList2)) {
            this.V = arrayList2;
            cb.b(a(), " nonConsumables=" + this.V, true);
        }
        return true;
    }

    private String aK() {
        if (this.S != null && !this.S.equals(bn.aB)) {
            this.S += "/api/public/app/config";
        }
        cb.b(a(), "devUrl:" + this.S, true);
        return this.S;
    }

    private String c(int i) {
        return i == this.L ? aK() : b(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public bp a(bp bpVar, Map<String, Object> map) {
        int e = e(map);
        final String d = d(map);
        final String str = c(e) + "/" + d;
        return new bp(this.u) { // from class: com.adcolony.sdk.bg.23
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                bg.this.B = false;
                bg.this.C = false;
                ce.c().a(d, str, null, "config", false, null, 0, new bk() { // from class: com.adcolony.sdk.bg.23.1
                    @Override // com.adcolony.sdk.bk
                    public void a(bn.a aVar) {
                        bg.this.B = aVar == bn.a.YVOLVER_ERROR_NONE;
                        a(bg.this.B, aVar);
                    }
                });
            }
        };
    }

    synchronized boolean q() {
        return this.C;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public bp a(bp bpVar, final Map<String, Object> map, final String str) {
        return new bp(this.u, bpVar) { // from class: com.adcolony.sdk.bg.29
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                bg.this.C = false;
                if (!i()) {
                    if (j().h()) {
                        d();
                    } else {
                        a(j().c());
                    }
                }
                if (bg.this.B) {
                    if (bg.this.Q == null) {
                        cb.b(bg.this.a(), "Invalid API key", false);
                    } else {
                        HashMap hashMap = new HashMap();
                        hashMap.put("data", bg.this.ah.o());
                        hashMap.put("reason", str);
                        if (bg.this.P != null) {
                            hashMap.put("s2s_session_token", bg.this.P);
                        }
                        bg.this.l.b();
                        hashMap.put("asset_signatures", bg.this.l.e().toString());
                        ce.c().a(bg.this.d(map), bg.this.m.a(bn.aD), hashMap, Consts.CommandInit, false, null, 1, new bk() { // from class: com.adcolony.sdk.bg.29.1
                            @Override // com.adcolony.sdk.bk
                            public void a(bn.a aVar) {
                                bg.this.C = aVar == bn.a.YVOLVER_ERROR_NONE;
                                a(bg.this.C, aVar);
                            }
                        });
                    }
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b(final Map<String, Object> map) {
        cb.b(a(), "Yvolver configure called.", true);
        new bp(this.u) { // from class: com.adcolony.sdk.bg.30
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                bg.this.D = true;
                bg.this.w = true;
                bg.this.c(map);
                bg.this.f("SetApiKey");
                b();
            }
        };
    }

    synchronized void c(final Map<String, Object> map) {
        cb.b(a(), "Yvolver setInitParams called", true);
        new bp(this.u) { // from class: com.adcolony.sdk.bg.31
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                if (map != null) {
                    if (map.containsKey("yv_h") && map.get("yv_h") != null && !map.get("yv_h").equals(null)) {
                        bg.this.S = (String) map.get("yv_h");
                    }
                    bg.this.G = bg.this.H;
                    if (map.containsKey("yv_e") && map.get("yv_e") != null && !map.get("yv_e").equals(null)) {
                        String str = (String) map.get("yv_e");
                        if (str.equals("dev")) {
                            bg.this.G = bg.this.L;
                        } else if (str.equals("staging")) {
                            bg.this.G = bg.this.K;
                        } else if (str.equals("alpha")) {
                            bg.this.G = bg.this.J;
                        } else if (str.equals("swap")) {
                            bg.this.G = bg.this.I;
                        }
                    }
                    if (map.containsKey("yv_apikey") && map.get("yv_apikey") != null && !map.get("yv_apikey").equals(null)) {
                        bg.this.N = (String) map.get("yv_apikey");
                    }
                }
                bg.this.aa = map;
                b();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(final String str) {
        if (x()) {
            new bp(this.u) { // from class: com.adcolony.sdk.bg.32
                @Override // com.adcolony.sdk.bp
                public synchronized void a() {
                    bg.this.c(co.b(str));
                    bg.this.f("SuperUserCommand");
                }
            };
        }
    }

    synchronized void a(final bw bwVar) {
        if (com.adcolony.sdk.a.m != null && com.adcolony.sdk.a.m.m != null && !com.adcolony.sdk.a.m.m.b) {
            this.d.a(new bv() { // from class: com.adcolony.sdk.bg.33
                @Override // com.adcolony.sdk.bv
                public void a() {
                    if (com.adcolony.sdk.a.m.m.b) {
                        bwVar.a();
                    } else {
                        bg.this.d.a(this, 1000L);
                    }
                }
            }, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(AdColonyPubServicesCallbacks adColonyPubServicesCallbacks) {
        if (co.f() && !am()) {
            try {
                if (!this.t.f1115a.contains(adColonyPubServicesCallbacks)) {
                    this.t.a(adColonyPubServicesCallbacks);
                }
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.addYvolverListener");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b(AdColonyPubServicesCallbacks adColonyPubServicesCallbacks) {
        this.t.f1115a.remove(adColonyPubServicesCallbacks);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String r() {
        return this.N;
    }

    String s() {
        return "3.0.7";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e(String str) {
        String[] strArr;
        if (str != null) {
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            for (String str2 : new String[]{"Android", "Model/" + this.ah.e(), "OS/" + this.ah.b(), "App/" + this.ah.a()}) {
                sb.append(str2);
                sb2.append(str2);
                sb2.append("; ");
            }
            return "Yvolver/3.0.7 (" + sb2.toString() + g(this.ah.j() + str + "3.0.7" + sb.toString()) + ")";
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final String str, final Map<String, Object> map) {
        new bp(this.u) { // from class: com.adcolony.sdk.bg.34
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                bg.this.r.a(str, map);
                b();
            }
        };
    }

    void b(final String str, final Map<String, Object> map) {
        new bp(this.u) { // from class: com.adcolony.sdk.bg.2
            @Override // com.adcolony.sdk.bp
            void a() {
                if (bg.this.x) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("name", str);
                    hashMap.put("data", map);
                    bg.this.a("developer_event", hashMap);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final String str, final bn.b bVar, final boolean z, final Map<String, Object> map) {
        new bp(this.u) { // from class: com.adcolony.sdk.bg.3
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                bg.this.r.a(str, bVar, z, map);
                b();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final int i, final String str, final String str2, final boolean z) {
        this.at.a(new bv() { // from class: com.adcolony.sdk.bg.4
            @Override // com.adcolony.sdk.bv
            public void a() {
                HashMap hashMap = new HashMap();
                hashMap.put("in_game_currency_quantity", Integer.valueOf(i));
                hashMap.put("iap_transaction_id", str2);
                hashMap.put("iap_product_id", str);
                bg.this.a(z ? "iapRewardSuccessCalled" : "iapRewardSuccessAttempt", bn.b.YVOLVER_SEVERITY_DEBUG, false, (Map<String, Object>) hashMap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final int i, final String str, final String str2, final int i2, final String str3) {
        this.at.a(new bv() { // from class: com.adcolony.sdk.bg.5
            @Override // com.adcolony.sdk.bv
            public void a() {
                HashMap hashMap = new HashMap();
                hashMap.put("in_game_currency_quantity", Integer.valueOf(i));
                hashMap.put("iap_transaction_id", str2);
                hashMap.put("iap_product_id", str);
                hashMap.put(NativeProtocol.BRIDGE_ARG_ERROR_CODE, Integer.valueOf(i2));
                hashMap.put("error", str3);
                bg.this.a("iapRewardError", bn.b.YVOLVER_SEVERITY_DEBUG, false, (Map<String, Object>) hashMap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyPubServices.ServiceAvailability t() {
        return this.ai == null ? AdColonyPubServices.ServiceAvailability.SERVICE_UNAVAILABLE : this.ai;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(final AdColonyPubServices.ServiceAvailability serviceAvailability) {
        this.at.a(new bv() { // from class: com.adcolony.sdk.bg.6
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(bg.this.a(), "setServiceAvailability (availability: " + bg.this.ai + ", status: " + serviceAvailability + ")", true);
                if (bg.this.ai != serviceAvailability) {
                    bg.this.ai = serviceAvailability;
                    if (bg.this.x()) {
                        bg.this.q.b();
                    }
                    if (bg.this.ai == AdColonyPubServices.ServiceAvailability.SERVICE_AVAILABLE) {
                        bz.aK().an();
                        if (bz.aK().j() != null) {
                            bg.this.aI().c();
                            cb.b(bg.this.a(), "init success trying to execute pending notifications", true);
                            do {
                            } while (bg.this.k.b());
                            bg.this.v.a();
                        } else {
                            bg.this.v.a();
                        }
                    }
                    bg.this.t.a(serviceAvailability);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u() {
        if (z()) {
            c();
        }
        a(AdColonyPubServices.ServiceAvailability.SERVICE_UNAVAILABLE);
    }

    Map<String, Object> v() {
        HashMap hashMap = new HashMap();
        hashMap.put("apiKey", r());
        hashMap.put("productionMode", Integer.valueOf(this.G));
        hashMap.put("configEndpoint", b(this.G));
        return hashMap;
    }

    String d(Map<String, Object> map) {
        return (String) map.get("apiKey");
    }

    int e(Map<String, Object> map) {
        return ((Integer) map.get("productionMode")).intValue();
    }

    String f(Map<String, Object> map) {
        return (String) map.get("configEndpoint");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void f(final String str) {
        cb.b(a(), "startYvolver called", true);
        new bp(this.u) { // from class: com.adcolony.sdk.bg.7
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                if (!com.adcolony.sdk.a.m.m.b) {
                    bz.aK().a(new bw() { // from class: com.adcolony.sdk.bg.7.1
                        @Override // com.adcolony.sdk.bw
                        public void a() {
                            bg.this.f(str);
                        }
                    });
                } else {
                    bg.this.ah.p();
                    bg.this.a(bg.this.N, bg.this.G, str);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(final String str, final int i, final String str2) {
        this.at.a(new bv() { // from class: com.adcolony.sdk.bg.8
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(bg.this.a(), "startYvolver was called (apiKey1: " + str + ", productionMode: " + i + ", configEndpoint: " + bg.this.b(i) + ", reason: " + str2 + ")", true);
                if (str != null && bg.this.l() != null) {
                    bg.this.n.a(true);
                    bg.this.x = true;
                    bp bpVar = new bp(bg.this.u) { // from class: com.adcolony.sdk.bg.8.1
                        @Override // com.adcolony.sdk.bp
                        public void a() {
                            if (bg.this.ai != AdColonyPubServices.ServiceAvailability.SERVICE_CONNECTING) {
                                bg.this.a(AdColonyPubServices.ServiceAvailability.SERVICE_CONNECTING);
                                bg.this.f(false);
                                b();
                                return;
                            }
                            d();
                        }
                    };
                    HashMap hashMap = new HashMap();
                    hashMap.put("apiKey", str);
                    hashMap.put("productionMode", Integer.valueOf(i));
                    hashMap.put("configEndpoint", bg.this.b(i));
                    bp a2 = bg.this.a(bg.this.a(bpVar, hashMap), hashMap, str2);
                    final HashMap hashMap2 = new HashMap(hashMap);
                    new bp(bg.this.u, a2) { // from class: com.adcolony.sdk.bg.8.2
                        @Override // com.adcolony.sdk.bp
                        public synchronized void a() {
                            bg.this.b(this, hashMap2);
                        }
                    };
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(bp bpVar, Map<String, Object> map) {
        bp j = bpVar.j();
        cb.b(a(), "startYvolverCleanup was called", true);
        this.N = d(map);
        this.G = e(map);
        if (!j.g()) {
            f(false);
            if (j.f()) {
                bs c = j.c();
                cb.b(a(), "Initialization failed: " + (c == null ? null : c.toString()));
                this.s.f();
            }
            if (t() == AdColonyPubServices.ServiceAvailability.SERVICE_CONNECTING) {
                a(AdColonyPubServices.ServiceAvailability.SERVICE_UNAVAILABLE);
            }
            bpVar.d();
        } else {
            cb.b(a(), "Initialization succeeded", true);
            if (t() == AdColonyPubServices.ServiceAvailability.SERVICE_CONNECTING) {
                a(AdColonyPubServices.ServiceAvailability.SERVICE_AVAILABLE);
            }
            bpVar.b();
        }
        this.r.b(false);
        this.p.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean w() {
        return co.f() && !am() && this.ai == AdColonyPubServices.ServiceAvailability.SERVICE_AVAILABLE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean x() {
        if (!co.f() || am() || !co.l()) {
            return false;
        }
        return this.ai == AdColonyPubServices.ServiceAvailability.SERVICE_AVAILABLE || this.ai == AdColonyPubServices.ServiceAvailability.SERVICE_INVISIBLE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean y() {
        return z();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean z() {
        boolean z = false;
        AdColonyPubServices.ServiceAvailability t = t();
        boolean z2 = (t == AdColonyPubServices.ServiceAvailability.SERVICE_BANNED || this.Q == null) ? false : true;
        int D = this.m.D();
        int a2 = this.n.a();
        if (a2 >= D) {
            HashMap hashMap = new HashMap();
            hashMap.put("limit", Integer.valueOf(D));
            hashMap.put("current_amount", Integer.valueOf(a2));
            this.o.b("overflow_stat", hashMap);
            this.n.a(0L);
        } else {
            z = z2;
        }
        cb.b(a(), "shouldQueueStatCommand(): availability: " + t + ", apiSecret: " + this.Q + ", returning: " + z + ", num stats: " + a2, true);
        return z;
    }

    String A() {
        return g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String g(String str) {
        return co.a(str, A());
    }

    int B() {
        return this.G;
    }

    void a(boolean z) {
        if (co.f() && !am()) {
            this.y = z;
        }
    }

    synchronized void h(String str) {
        if (this.P != str && co.f() && !am()) {
            try {
                this.P = str;
                cb.b(a(), "Setting session token: ", true);
                a(this.P);
                if (this.x) {
                    f("SetSessionToken");
                }
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.setSessionToken");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(String str) {
        if (co.f() && !am()) {
            try {
                if (!str.equals(this.R)) {
                    this.R = str;
                    if (this.x) {
                        f("SetDeviceToken");
                    }
                }
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.setDeviceToken");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(String str) {
        this.O = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void C() {
        if (co.f() && !am()) {
            try {
                this.n.a(0L);
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.refreshStats");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Map<String, Object> map, String str, String str2) {
        if (map == null || str2 == null) {
            return false;
        }
        if (!map.containsKey("payload_signature") || map.get("payload_signature") == null) {
            return false;
        }
        String str3 = (String) map.get("payload_signature");
        String a2 = co.a(g(), new HashMap(map), new String[]{"payload_signature"});
        boolean equals = a2.equals(str3);
        if (!equals) {
            cb.b(a(), ", Invalid signature for payload " + str2 + ", got: " + str3 + ", expected:" + a2, true);
            a("InvalidPayloadSignature->" + str2 + ", got: " + str3 + ", expected: " + a2, bn.b.YVOLVER_SEVERITY_ERROR, false, (Map<String, Object>) null);
        }
        return equals;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(final Map<String, Object> map, final String str, final String str2) {
        this.at.a(new bv() { // from class: com.adcolony.sdk.bg.9
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (map == null || str == null || str2 == null) {
                    String str3 = null;
                    if (map == null) {
                        str3 = "Response param == null in YvolverImpl.handleCommonResponse";
                    } else if (str == null) {
                        str3 = "apiKey param == null in YvolverImpl.handleCommonResponse";
                    } else if (str2 == null) {
                        str3 = "Callback param == null in YvolverImpl.handleCommonResponse";
                    }
                    if (str3 != null) {
                        bz.aK().a(new RuntimeException(str3), "YvolverImpl.handleCommonResponse");
                        return;
                    }
                    return;
                }
                if (map.containsKey(bn.am)) {
                    String str4 = (String) map.get(bn.am);
                    if (str2 != null && !str2.equals("config")) {
                        bg.this.l(str4);
                    }
                }
                if (map.containsKey("timestamp") && map.get("timestamp") != null) {
                    co.a(((Long) map.get("timestamp")).longValue() - co.g());
                }
                if (map.containsKey("notifications") && bg.this.m()) {
                    cb.b("IN-APP-MSG-QUEUE", "Response contains notifications. About to get and call handleNotifications", true);
                    bg.this.a((ArrayList) map.get("notifications"));
                }
                if (map.containsKey("config_outdated")) {
                    bg.this.f("ConfigOutdated");
                }
                if (map.containsKey("reset_device_id")) {
                    bg.this.G();
                }
                if (map.containsKey(bn.aj)) {
                    cb.b(bg.this.a(), "" + map.get(bn.aj), true);
                    bg.this.b((ArrayList) map.get(bn.aj));
                }
                if (map.containsKey("experiments")) {
                    bg.this.h((Map) map.get("experiments"));
                }
                if (map.containsKey("device_token")) {
                    bg.this.a(map);
                }
                if (map.containsKey("user_info")) {
                    cb.b(bg.this.a(), "response contains user_info", true);
                    bg.this.a((Map) map.get("user_info"), str);
                }
                if (map.containsKey("digital_items")) {
                    bg.this.d((ArrayList) map.get("digital_items"));
                }
                if (map.containsKey("stats")) {
                    ce.c().a((ArrayList) map.get("stats"));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean D() {
        return w();
    }

    void g(Map<String, ?> map) {
        HashMap hashMap = new HashMap();
        if (map != null) {
            hashMap.put("source_id", map.get("sourceId"));
        }
        a("show_dev_iap", hashMap);
        cp.b().d();
    }

    ArrayList<String> E() {
        if (!co.f() || am()) {
            return null;
        }
        return this.V;
    }

    void c(ArrayList<String> arrayList) {
        this.V = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void F() {
        this.ah.r();
        f("ResetDeviceId");
    }

    void G() {
        cp.b().d();
        if (this.ah != null) {
            this.ah.q();
        }
        f("ResetDeviceId");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String k(String str) {
        String r = r();
        return (this.m == null || this.ah == null || r == null) ? "" : this.m.a("catalog") + str + "?device_id=" + this.ah.j() + "&consumer_key=" + r + "&sdk_version=3.0.7";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void H() {
        if (co.f() && am()) {
            new bp(this.u) { // from class: com.adcolony.sdk.bg.10
                @Override // com.adcolony.sdk.bp
                public synchronized void a() {
                    ce.c().a(bg.this.m.a(bn.aK), (Map<String, String>) null, (String) null, false, (Map<String, Object>) null, 1, new bk() { // from class: com.adcolony.sdk.bg.10.1
                        @Override // com.adcolony.sdk.bk
                        public void a(bn.a aVar) {
                            a(aVar == bn.a.YVOLVER_ERROR_NONE, aVar);
                        }
                    });
                }
            };
        }
    }

    void l(final String str) {
        this.at.a(new bv() { // from class: com.adcolony.sdk.bg.11
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(bg.this.a(), "handle service availability was called", true);
                if (str != null) {
                    if (bn.a().containsKey(str)) {
                        bg.this.a(bn.a().get(str));
                        return;
                    }
                    bg.this.a(AdColonyPubServices.ServiceAvailability.SERVICE_UNKNOWN);
                    return;
                }
                bg.this.a(AdColonyPubServices.ServiceAvailability.SERVICE_UNKNOWN);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean I() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) k().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnectedOrConnecting()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void J() {
        this.at.a(new bv() { // from class: com.adcolony.sdk.bg.13
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (Build.MANUFACTURER.equalsIgnoreCase("amazon")) {
                    bg.this.p.j();
                } else {
                    bg.this.p.i();
                }
                bg.this.p.k();
                bg.this.r.a(true);
                bg.this.n.e();
                bg.this.p.h();
                ArrayList arrayList = (ArrayList) bg.this.aa.get("yv_injected_logs");
                if (arrayList != null) {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 < arrayList.size()) {
                            bg.this.o.a("loadTest", (Map) arrayList.get(i2));
                            i = i2 + 1;
                        } else {
                            return;
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2, String str3, long j, int i) {
        if (co.f() && !am()) {
            try {
                this.p.a(str, str2, str3, j, i);
                return;
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.grantRewardFromInAppPurchaseGoogle");
                return;
            }
        }
        cb.b(a(), "Unable to grant reward from IAP due to uninitialization or previous error");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2, String str3, String str4, int i) {
        if (co.f() && !am()) {
            try {
                this.p.a(str, str2, str3, str4, i);
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.grantRewardFromInAppPurchaseAmazon");
            }
        }
    }

    boolean a(String str, int i, String str2, Map<String, Object> map) {
        return this.p.a(str, i, str2, map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(EnumSet<AdColonyPubServices.NotificationType> enumSet) {
        b(enumSet.contains(AdColonyPubServices.NotificationType.TOAST));
        c(enumSet.contains(AdColonyPubServices.NotificationType.MODAL));
    }

    void b(boolean z) {
        if (co.f() && !am()) {
            try {
                boolean andSet = this.q.f1344a.getAndSet(z);
                if (z && !andSet) {
                    this.q.b();
                }
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.allowToasts");
            }
        }
    }

    void c(boolean z) {
        if (co.f() && !am()) {
            try {
                boolean andSet = this.q.b.getAndSet(z);
                if (z && !andSet) {
                    this.q.b();
                }
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.allowModals");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(String str) {
        this.Q = str;
    }

    void K() {
        this.n.d();
    }

    HashMap<String, Object> n(String str) {
        if (co.f() && !am()) {
            try {
                return this.n.b(str);
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.getStat");
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long o(String str) throws Exception {
        if (co.f() && !am()) {
            try {
                return this.n.a(str);
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.getStatValueLong");
            }
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<HashMap<String, Object>> L() {
        if (co.f() && !am()) {
            try {
                return this.n.b();
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.getStats");
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(String str, long j) {
        if (co.f() && !am()) {
            try {
                return this.n.c(str, j);
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.setStat");
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(String str, long j) {
        if (co.f() && !am()) {
            try {
                return this.n.b(str, j);
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.incrementStat");
            }
        }
        return false;
    }

    boolean c(String str, long j) {
        if (co.f() && !am()) {
            try {
                return this.n.a(str, j);
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.decrementStat");
            }
        }
        return false;
    }

    boolean p(String str) {
        return this.n.c(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void M() {
        if (co.f() && !am()) {
            try {
                this.n.g();
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.markStartRound");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void N() {
        if (co.f() && !am()) {
            try {
                this.n.h();
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.markEndRound");
            }
        }
    }

    void O() {
        this.at.a(new bv() { // from class: com.adcolony.sdk.bg.14
            @Override // com.adcolony.sdk.bv
            public void a() {
                bg.this.af = bg.this.l().getSharedPreferences("miscPrefs", 0);
                bg.this.ag = bg.this.af.edit();
                bg.this.ag.clear();
                bg.this.ag.commit();
                new File(bg.this.l().getFilesDir().getPath() + "/shared_prefs/miscPrefs.xml").delete();
            }
        });
    }

    boolean P() {
        if (l() != null) {
            this.af = l().getSharedPreferences("miscPrefs", 0);
            return this.af.getBoolean("enabled", true);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int Q() {
        if (l() != null) {
            this.af = l().getSharedPreferences("miscPrefs", 0);
            return this.af.getInt("xPos", 15);
        }
        return 15;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int R() {
        if (l() != null) {
            this.af = l().getSharedPreferences("miscPrefs", 0);
            return this.af.getInt("yPos", 15);
        }
        return 15;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        if (l() != null) {
            this.af = l().getSharedPreferences("miscPrefs", 0);
            this.ag = this.af.edit();
            this.ag.putInt("lastMessageId", i);
            this.ag.apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int S() {
        if (l() != null) {
            this.af = l().getSharedPreferences("miscPrefs", 0);
            return this.af.getInt("lastMessageId", 0);
        }
        return 0;
    }

    void T() {
        new bp(this.u) { // from class: com.adcolony.sdk.bg.15
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                String a2 = co.a(bz.aK().l());
                if (a2 != null) {
                    bg.this.l().getFileStreamPath(a2).delete();
                }
                b();
            }
        };
    }

    void q(final String str) {
        this.at.a(new bv() { // from class: com.adcolony.sdk.bg.16
            @Override // com.adcolony.sdk.bv
            public void a() {
                CookieSyncManager.createInstance(bg.this.l());
                CookieManager cookieManager = CookieManager.getInstance();
                String cookie = cookieManager.getCookie(str);
                if (cookie != null) {
                    String[] split = cookie.split(";");
                    for (int i = 0; i < split.length; i++) {
                        cookieManager.setCookie(str, split[i].split("=")[0].trim() + "=; Expires=Wed, 31 Dec 1979 23:59:59 GMT");
                    }
                }
                cookieManager.removeExpiredCookie();
                CookieSyncManager.getInstance().sync();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U() {
        q(".facebook.com");
        q("https://.facebook.com");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void V() {
        this.at.a(new bv() { // from class: com.adcolony.sdk.bg.17
            @Override // com.adcolony.sdk.bv
            public void a() {
                bg.this.n.c();
                bg.this.ah.r();
                bg.this.T();
                bg.this.l.d();
                bg.this.O();
                bg.this.o.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void W() {
        this.at.a(new bv() { // from class: com.adcolony.sdk.bg.18
            @Override // com.adcolony.sdk.bv
            public void a() {
                bg.this.p.b();
                bg.this.p.a();
                bg.this.n.c();
                bg.this.o.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Object> X() {
        if (this.Z == null) {
            this.Z = new HashMap();
        }
        if (this.ab == null) {
            this.ab = new HashMap();
            this.ab.put("can_show_in_app_purchase_page", Boolean.valueOf(e()));
        }
        this.Z.putAll(this.ab);
        if (this.W != null && !this.W.isEmpty()) {
            this.Z.put("unsupported_digital_item_product_ids", this.W);
        }
        this.Z.put("contentScale", Float.valueOf(co.a()));
        this.Z.put("densityDPI", Integer.valueOf(co.d()));
        this.Z.put("screenHeight", Integer.valueOf(co.b()));
        this.Z.put("screenWidth", Integer.valueOf(co.c()));
        return this.Z;
    }

    ArrayList<String> Y() {
        if (!co.f() || am()) {
            return null;
        }
        try {
            if (this.X != null && !this.X.isEmpty()) {
                return this.X;
            }
            return null;
        } catch (Exception e) {
            bz.aK().a(e, "YvolverBaseImpl.getSupportedDigitalItemProductIds");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized AdColonyPubServicesVIPInformation Z() {
        AdColonyPubServicesVIPInformation adColonyPubServicesVIPInformation;
        if (co.f() && !am()) {
            try {
                adColonyPubServicesVIPInformation = this.aj;
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.getUserVipStatus");
            }
        }
        adColonyPubServicesVIPInformation = null;
        return adColonyPubServicesVIPInformation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Map<String, Object> aa() {
        Map<String, Object> map;
        if (co.f() && !am()) {
            try {
                map = this.ac;
            } catch (Exception e) {
                bz.aK().a(e, "YvolverBaseImpl.getExperiments");
            }
        }
        map = null;
        return map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object r(String str) {
        if (!co.f() || am()) {
            return null;
        }
        try {
            if (this.ac != null && this.ac.containsKey(str)) {
                return this.ac.get(str);
            }
            return null;
        } catch (Exception e) {
            bz.aK().a(e, "YvolverBaseImpl.getExperimentValue");
            return null;
        }
    }

    void h(Map<String, Object> map) {
        this.ac = map;
        co.a(this.ac, "ex.bin", bz.aK().l());
    }

    synchronized boolean a(Map<String, Object> map, String str) {
        boolean z;
        boolean z2 = false;
        synchronized (this) {
            if (map != null) {
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.putAll(map);
                    String str2 = (String) hashMap.get("signature");
                    String a2 = co.a(g(), hashMap, new String[]{"signature"});
                    new HashMap();
                    if (a2.equals(str2)) {
                        this.aj = new AdColonyPubServicesVIPInformation(hashMap);
                        bz.aK().aB().d();
                        z = true;
                    } else {
                        String str3 = "Invalid signature for VIP user info, got: " + str2 + ", expected: " + a2;
                        cb.b(a(), str3, true);
                        a(str3, bn.b.YVOLVER_SEVERITY_ERROR, false, (Map<String, Object>) null);
                        z = false;
                    }
                    z2 = z;
                } catch (Exception e) {
                    a(e, "Caught exception when handling VIP", true);
                }
            }
        }
        return z2;
    }

    boolean d(ArrayList<String> arrayList) {
        if (arrayList != null && !arrayList.isEmpty()) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next());
                this.X = arrayList2;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(final boolean z) {
        this.d.a(new bv() { // from class: com.adcolony.sdk.bg.19
            @Override // com.adcolony.sdk.bv
            public void a() {
                bg.this.w = false;
                cb.b(bg.this.a(), "onStop()", true);
                if (Build.VERSION.SDK_INT < 14) {
                    cb.b(bg.this.a(), "Aborting handle restart. OS is too old.");
                } else if (z) {
                    cb.b(bg.this.a(), "app in in background", true);
                    HashMap hashMap = new HashMap();
                    hashMap.put("state", "BACKGROUND");
                    bg.this.a("visibility_changed", hashMap);
                    if (bg.this.m.r()) {
                        bg.this.r.a(true);
                    }
                    bg.this.s.c();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(final Activity activity) {
        this.d.a(new bv() { // from class: com.adcolony.sdk.bg.20
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(bg.this.a(), "onPause()", true);
                if (Build.VERSION.SDK_INT < 14) {
                    cb.b(bg.this.a(), "Aborting handle pause. OS is too old.");
                    return;
                }
                bg.this.q.a(activity);
                try {
                    bg.this.l().unregisterReceiver(bg.this.ak);
                } catch (Exception e) {
                    cb.b(bg.this.a(), "conReceive receiver not registered", true);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final Activity activity, final boolean z) {
        this.d.a(new bv() { // from class: com.adcolony.sdk.bg.21
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(bg.this.a(), "onResume()", true);
                if (Build.VERSION.SDK_INT < 14) {
                    cb.b(bg.this.a(), "Aborting handle resume. OS is too old.");
                    return;
                }
                bg.this.b(activity);
                bg.this.w = true;
                bg.this.q.g();
                bg.this.ak = new AdColonyPubServicesConReceiver();
                bg.this.l().registerReceiver(bg.this.ak, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                if (z) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("state", "FOREGROUND");
                    bg.this.a("visibility_changed", hashMap);
                }
                if (bg.this.t() == AdColonyPubServices.ServiceAvailability.SERVICE_AVAILABLE) {
                    cb.b(bg.this.a(), "onResume trying to execute pending Notifications", true);
                    do {
                    } while (bg.this.k.b());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(final boolean z) {
        this.d.a(new bv() { // from class: com.adcolony.sdk.bg.22
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(bg.this.a(), "onRestart()", true);
                if (Build.VERSION.SDK_INT < 14) {
                    cb.b(bg.this.a(), "Aborting handle restart. OS is too old.");
                } else if (z) {
                    bg.this.v.a();
                    HashMap hashMap = new HashMap();
                    hashMap.put("state", "LAUNCHED");
                    bg.this.a("visibility_changed", hashMap);
                    bg.this.s.e();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(Activity activity) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ab() {
        this.at.a(new bv() { // from class: com.adcolony.sdk.bg.24
            @Override // com.adcolony.sdk.bv
            public void a() {
                bg.this.q.f();
                bg.this.ag();
                HashMap hashMap = new HashMap();
                hashMap.put("state", "STOPPED");
                bg.this.a("visibility_changed", hashMap);
            }
        });
    }

    boolean ac() {
        if (bz.aK().ad() && this.q.l()) {
            cb.b(a(), "handleOnBackPressed was called", true);
            this.q.a(cm.a.HARDWARE_BACK_BUTTON);
            return false;
        }
        return false;
    }

    boolean ad() {
        return this.q.j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(String str) throws Exception {
        this.k.a(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ae() {
        af();
        this.k.a();
        this.ah.p();
        f("NewPushToken");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(final String str) {
        if (str != null) {
            this.at.a(new bv() { // from class: com.adcolony.sdk.bg.25
                @Override // com.adcolony.sdk.bv
                public void a() {
                    cb.b(bg.this.a(), "PUSH TOKEN:" + str, true);
                    if (bg.this.k.b(str)) {
                        bg.this.af = bg.this.l().getSharedPreferences("miscPrefs", 0);
                        bg.this.ag = bg.this.af.edit();
                        bg.this.ag.putString(bg.aq, str);
                        bg.this.ag.putBoolean(bg.ap, true);
                        try {
                            bg.this.ag.putInt(bg.ar, bg.this.k().getPackageManager().getPackageInfo(bg.this.k().getPackageName(), 0).versionCode);
                        } catch (PackageManager.NameNotFoundException e) {
                            cb.a(bg.this.a(), "Did not store appVersion. NameNotFound Exception was thrown->" + e, e);
                        }
                        bg.this.ag.apply();
                        bg.this.ah.p();
                        bg.this.f("NewPushToken");
                    }
                }
            });
        }
    }

    void af() {
        if (this.af != null) {
            cb.b(a(), "unregistering push-token", true);
            this.ag = this.af.edit();
            this.ag.remove(aq);
            this.ag.putBoolean(ap, false);
            this.ag.apply();
        }
    }

    void ag() {
        this.k.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String ah() {
        return this.k.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String ai() {
        try {
            this.af = k().getSharedPreferences("miscPrefs", 0);
            return this.af.getString(aq, null);
        } catch (Exception e) {
            return null;
        }
    }

    int aj() {
        try {
            this.af = k().getSharedPreferences("miscPrefs", 0);
            return this.af.getInt(ar, -1);
        } catch (Exception e) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String ak() {
        return this.k.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int al() throws Exception {
        int e = this.k.e();
        if (e == -1) {
            e = l().getPackageManager().getApplicationInfo(l().getPackageName(), 128).icon;
            if (e == -1) {
                throw new RuntimeException("AdColony could not retrieve default notification icon.");
            }
        }
        return e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Intent intent) {
        try {
            if (b(intent)) {
                return false;
            }
            return c(intent);
        } catch (Exception e) {
            bz.aK().a(e, "YvolverBaseImpl.handleRemoteIntent");
            return false;
        }
    }

    boolean b(Intent intent) {
        boolean z;
        try {
            cb.b(a(), "handleDeepLink()", true);
            if (intent.getData() != null) {
                cb.b(a(), "handleDeepLink() isDeepLink", true);
                Uri data = intent.getData();
                if (data.getScheme().startsWith("adc")) {
                    String query = data.getQuery() == null ? "" : data.getQuery();
                    String host = data.getHost() == null ? "" : data.getHost();
                    String path = data.getPath() == null ? "" : data.getPath();
                    HashMap hashMap = new HashMap();
                    hashMap.put("url", data.toString());
                    hashMap.put("decoded_parms", query);
                    hashMap.put("host", host);
                    hashMap.put("path", path);
                    hashMap.put("source_application", "");
                    hashMap.put("callback", false);
                    a("application_open_url", hashMap);
                    z = true;
                } else {
                    z = false;
                }
                HashMap hashMap2 = new HashMap();
                for (String str : data.getQueryParameterNames()) {
                    String queryParameter = data.getQueryParameter(str);
                    if (queryParameter != null && !queryParameter.isEmpty()) {
                        hashMap2.put(str, queryParameter);
                    }
                }
                cb.b(a(), "handleDeepLink() callingOnReceiveDeepLink", true);
                this.v.a(data, hashMap2, z);
                return true;
            }
            cb.b(a(), "handleDeepLink !deeplink", true);
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    boolean c(Intent intent) {
        return this.k.a(intent);
    }

    static int a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Could not get package name: " + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(final Map<String, Object> map) {
        ap().a(new bv() { // from class: com.adcolony.sdk.bg.26
            @Override // com.adcolony.sdk.bv
            public void a() {
                Object obj = map.get("url");
                if (obj != null && (obj instanceof String)) {
                    Uri parse = Uri.parse((String) obj);
                    if (parse != null) {
                        HashMap hashMap = new HashMap();
                        String uri = parse.toString();
                        String query = parse.getQuery() == null ? "" : parse.getQuery();
                        String path = parse.getPath() == null ? "" : parse.getPath();
                        String host = parse.getHost() == null ? "" : parse.getHost();
                        hashMap.put("url", uri);
                        hashMap.put("decoded_parms", query);
                        hashMap.put("host", host);
                        hashMap.put("path", path);
                        hashMap.put("source_application", "");
                        hashMap.put("callback", "");
                        bg.this.a("application_open_url", hashMap);
                        try {
                            Intent intent = new Intent("android.intent.action.VIEW", parse);
                            intent.addFlags(67108864);
                            bg.this.k().startActivity(intent);
                            return;
                        } catch (ActivityNotFoundException e) {
                            bg.this.b(e, "Activity not found when calling startActivity in adcOpenUrl. Exception msg=" + e.getMessage());
                            return;
                        }
                    }
                    cb.c(bg.this.a(), "Error occurred when parsing url string to URI sent from push notification");
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(final Map<String, Serializable> map) {
        ap().a(new bv() { // from class: com.adcolony.sdk.bg.27
            @Override // com.adcolony.sdk.bv
            public void a() {
                Serializable serializable = (Serializable) map.get("path");
                if (serializable != null && (serializable instanceof String)) {
                    cp.b().a((String) serializable, false, false);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean am() {
        if (this.A) {
            cb.b(a(), "AdColonyPubServices previously encountered an exception. Ignoring AdColonyPubServices API calls");
        }
        return this.A;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(bn.a aVar, String str, boolean z, AdColonyPubServices.ServiceAvailability serviceAvailability) {
        if (str == null) {
            str = "";
        }
        bs bsVar = new bs(aVar, str);
        cb.a(a(), "Disabling AdColonyPubServices due to error or exception: SDK error; code: " + aVar.ordinal() + ", reason:" + str, bsVar, z, true);
        b(serviceAvailability);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Exception exc, String str, boolean z) {
        a(new bs(exc, str), str, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Exception exc, bn.a aVar, String str, boolean z) {
        a(new bs(exc, aVar, str), str, z);
    }

    void a(bs bsVar, String str, boolean z) {
        cb.b(a(), "SDK exception; message:" + bsVar.getMessage() + ", reason:" + str, bsVar, z, true);
        b(AdColonyPubServices.ServiceAvailability.SERVICE_UNAVAILABLE);
    }

    private void b(AdColonyPubServices.ServiceAvailability serviceAvailability) {
        bz.aK().a(serviceAvailability);
        this.A = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void an() {
        this.A = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Exception exc, String str) {
        String str2 = "An error occurred in " + str + ". Error=" + exc.getMessage();
        cb.a(a(), str2, new bs(exc, str2), true);
    }

    void b(Exception exc, String str) {
        cb.a(a(), str, new bs(exc, str), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final Exception exc, final boolean z) {
        this.at.a(new bv() { // from class: com.adcolony.sdk.bg.28
            @Override // com.adcolony.sdk.bv
            public void a() {
                boolean z2;
                boolean z3;
                if (exc != null) {
                    StringWriter stringWriter = new StringWriter();
                    exc.printStackTrace(new PrintWriter(stringWriter));
                    Map<String, ?> a2 = bg.this.o.a();
                    if (a2 == null || a2.isEmpty()) {
                        z2 = false;
                    } else {
                        z2 = false;
                        for (Map.Entry<String, ?> entry : a2.entrySet()) {
                            Map<String, Object> map = (Map) entry.getValue();
                            if (map.get("type").equals("error")) {
                                Map map2 = (Map) map.get("data");
                                if (map2.containsKey("description") && map2.get("description").equals(exc.toString())) {
                                    if (map2.containsKey("num")) {
                                        map2.put("num", Integer.valueOf(((Integer) map2.get("num")).intValue() + 1));
                                        map.put("data", map2);
                                        bg.this.o.d(entry.getKey(), map);
                                        cb.b(bg.this.a(), "sending exception to server: " + map2, true);
                                    }
                                    z3 = true;
                                    z2 = z3;
                                }
                            }
                            z3 = z2;
                            z2 = z3;
                        }
                    }
                    if (!z2) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("description", exc);
                        hashMap.put("stackTrace", stringWriter.toString());
                        hashMap.put("num", 1);
                        if (z) {
                            bg.this.a("exception", hashMap);
                            cb.b(bg.this.a(), "logged new fatal exception: " + exc, false);
                        } else {
                            bg.this.a("error", hashMap);
                            cb.b(bg.this.a(), "Logged new non-fatal exception:" + exc);
                        }
                        cb.b(bg.this.a(), hashMap.toString(), true);
                    }
                }
                bg.this.r.a(true);
                if (z) {
                    bg.this.u();
                    bg.this.s.d();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public by ao() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public by ap() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Object> aq() {
        return this.Y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public bo ar() {
        return this.ah;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public be as() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public bm at() {
        if (this.m == null) {
            this.m = new bm();
        }
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean au() {
        return this.w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ck av() {
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public by aw() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public br ax() {
        return this.r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ci ay() {
        return this.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cn az() {
        return this.q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cj aA() {
        return this.s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public bl aB() {
        if (this.t == null) {
            this.t = new bl();
        }
        return this.t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cf aC() {
        return this.o;
    }

    YvolverDeepLinkManager aD() {
        return this.v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(ArrayList<String> arrayList) {
        this.U = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long aE() {
        return this.M;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j) {
        this.M = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Object> aF() {
        return this.aa;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int aG() {
        return this.F;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void aH() {
        this.F++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ch aI() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int aJ() {
        return this.al.a();
    }
}
