package com.flurry.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Build;
import android.text.TextUtils;
import com.flurry.sdk.ik;
import com.flurry.sdk.it;
import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
import com.flurry.sdk.lq;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class im implements lq.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2841a = im.class.getSimpleName();
    private kf<ik> h;
    private kf<List<it>> i;
    private boolean m;
    private String n;
    private boolean o;
    private boolean p;
    private long r;
    private boolean s;
    private hz t;
    private boolean u;
    private final Runnable b = new ma() { // from class: com.flurry.sdk.im.1
        @Override // com.flurry.sdk.ma
        public final void a() {
            im.this.f();
        }
    };
    private final kh<jm> c = new kh<jm>() { // from class: com.flurry.sdk.im.4
        @Override // com.flurry.sdk.kh
        public final /* bridge */ /* synthetic */ void a(jm jmVar) {
            im.this.f();
        }
    };
    private final kh<jn> d = new kh<jn>() { // from class: com.flurry.sdk.im.5
        @Override // com.flurry.sdk.kh
        public final /* bridge */ /* synthetic */ void a(jn jnVar) {
            im.this.f();
        }
    };
    private final kh<jq> e = new kh<jq>() { // from class: com.flurry.sdk.im.6
        @Override // com.flurry.sdk.kh
        public final /* bridge */ /* synthetic */ void a(jq jqVar) {
            if (jqVar.f2934a) {
                im.this.f();
            }
        }
    };
    private final kq<hy> f = new kq<>("proton config request", new iy());
    private final kq<hz> g = new kq<>("proton config response", new iz());
    private final il j = new il();
    private final kd<String, ic> k = new kd<>();
    private final List<it> l = new ArrayList();
    private long q = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;

    public im() {
        this.o = true;
        lp a2 = lp.a();
        this.m = ((Boolean) a2.a("ProtonEnabled")).booleanValue();
        a2.a("ProtonEnabled", (lq.a) this);
        km.a(4, f2841a, "initSettings, protonEnabled = " + this.m);
        this.n = (String) a2.a("ProtonConfigUrl");
        a2.a("ProtonConfigUrl", (lq.a) this);
        km.a(4, f2841a, "initSettings, protonConfigUrl = " + this.n);
        this.o = ((Boolean) a2.a("analyticsEnabled")).booleanValue();
        a2.a("analyticsEnabled", (lq.a) this);
        km.a(4, f2841a, "initSettings, AnalyticsEnabled = " + this.o);
        ki.a().a("com.flurry.android.sdk.IdProviderFinishedEvent", this.c);
        ki.a().a("com.flurry.android.sdk.IdProviderUpdatedAdvertisingId", this.d);
        ki.a().a("com.flurry.android.sdk.NetworkStateEvent", this.e);
        Context context = jy.a().f2947a;
        this.h = new kf<>(context.getFileStreamPath(".yflurryprotonconfig." + Long.toString(ly.i(jy.a().d), 16)), ".yflurryprotonconfig.", 1, new lj<ik>() { // from class: com.flurry.sdk.im.7
            @Override // com.flurry.sdk.lj
            public final lg<ik> a(int i) {
                return new ik.a();
            }
        });
        this.i = new kf<>(context.getFileStreamPath(".yflurryprotonreport." + Long.toString(ly.i(jy.a().d), 16)), ".yflurryprotonreport.", 1, new lj<List<it>>() { // from class: com.flurry.sdk.im.8
            @Override // com.flurry.sdk.lj
            public final lg<List<it>> a(int i) {
                return new lf(new it.a());
            }
        });
        jy.a().b(new ma() { // from class: com.flurry.sdk.im.9
            @Override // com.flurry.sdk.ma
            public final void a() {
                im.this.i();
            }
        });
        jy.a().b(new ma() { // from class: com.flurry.sdk.im.10
            @Override // com.flurry.sdk.ma
            public final void a() {
                im.this.k();
            }
        });
    }

    @Override // com.flurry.sdk.lq.a
    public final void a(String str, Object obj) {
        char c = 65535;
        switch (str.hashCode()) {
            case -1720015653:
                if (str.equals("analyticsEnabled")) {
                    c = 2;
                    break;
                }
                break;
            case 640941243:
                if (str.equals("ProtonEnabled")) {
                    c = 0;
                    break;
                }
                break;
            case 1591403975:
                if (str.equals("ProtonConfigUrl")) {
                    c = 1;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.m = ((Boolean) obj).booleanValue();
                km.a(4, f2841a, "onSettingUpdate, protonEnabled = " + this.m);
                return;
            case 1:
                this.n = (String) obj;
                km.a(4, f2841a, "onSettingUpdate, protonConfigUrl = " + this.n);
                return;
            case 2:
                this.o = ((Boolean) obj).booleanValue();
                km.a(4, f2841a, "onSettingUpdate, AnalyticsEnabled = " + this.o);
                return;
            default:
                km.a(6, f2841a, "onSettingUpdate internal error!");
                return;
        }
    }

    public final synchronized void a() {
        if (this.m) {
            ly.b();
            jk.a();
            io.f2855a = jk.c();
            this.u = false;
            f();
        }
    }

    public final synchronized void b() {
        if (this.m) {
            ly.b();
            jk.a();
            b(jk.c());
            j();
        }
    }

    public final synchronized void a(long j) {
        if (this.m) {
            ly.b();
            b(j);
            b("flurry.session_end", (Map<String, String>) null);
            jy.a().b(new ma() { // from class: com.flurry.sdk.im.11
                @Override // com.flurry.sdk.ma
                public final void a() {
                    im.this.l();
                }
            });
        }
    }

    public final synchronized void c() {
        if (this.m) {
            ly.b();
            j();
        }
    }

    public final synchronized void a(String str, Map<String, String> map) {
        if (this.m) {
            ly.b();
            b(str, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e() {
        if (this.m) {
            ly.b();
            SharedPreferences sharedPreferences = jy.a().f2947a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
            if (sharedPreferences.getBoolean("com.flurry.android.flurryAppInstall", true)) {
                b("flurry.app_install", (Map<String, String>) null);
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putBoolean("com.flurry.android.flurryAppInstall", false);
                edit.apply();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r4v1, types: [byte[], RequestObjectType] */
    public synchronized void f() {
        if (this.m) {
            ly.b();
            if (this.p && jl.a().b()) {
                final long currentTimeMillis = System.currentTimeMillis();
                final boolean z = !jl.a().c();
                if (this.t != null) {
                    if (this.s != z) {
                        km.a(3, f2841a, "Limit ad tracking value has changed, purging");
                        this.t = null;
                    } else if (System.currentTimeMillis() < this.r + (this.t.b * 1000)) {
                        km.a(3, f2841a, "Cached Proton config valid, no need to refresh");
                        if (!this.u) {
                            this.u = true;
                            b("flurry.session_start", (Map<String, String>) null);
                        }
                    } else if (System.currentTimeMillis() >= this.r + (this.t.c * 1000)) {
                        km.a(3, f2841a, "Cached Proton config expired, purging");
                        this.t = null;
                        this.k.a();
                    }
                }
                jw.a().a(this);
                km.a(3, f2841a, "Requesting proton config");
                ?? g = g();
                if (g != 0) {
                    ks ksVar = new ks();
                    ksVar.f = TextUtils.isEmpty(this.n) ? "https://proton.flurry.com/sdk/v1/config" : this.n;
                    ksVar.w = 5000;
                    ksVar.g = ku.a.kPost;
                    String num = Integer.toString(kq.a((byte[]) g));
                    ksVar.a("Content-Type", "application/x-flurry;version=2");
                    ksVar.a("Accept", "application/x-flurry;version=2");
                    ksVar.a("FM-Checksum", num);
                    ksVar.c = new lc();
                    ksVar.d = new lc();
                    ksVar.b = g;
                    ksVar.f2978a = new ks.a<byte[], byte[]>() { // from class: com.flurry.sdk.im.2
                        @Override // com.flurry.sdk.ks.a
                        public final /* synthetic */ void a(ks<byte[], byte[]> ksVar2, byte[] bArr) {
                            long j;
                            hz hzVar;
                            hz hzVar2 = null;
                            final byte[] bArr2 = bArr;
                            int i = ksVar2.p;
                            km.a(3, im.f2841a, "Proton config request: HTTP status code is:" + i);
                            if (i == 400 || i == 406 || i == 412 || i == 415) {
                                im.this.q = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
                                return;
                            }
                            if (ksVar2.c() && bArr2 != null) {
                                jy.a().b(new ma() { // from class: com.flurry.sdk.im.2.1
                                    @Override // com.flurry.sdk.ma
                                    public final void a() {
                                        im.this.a(currentTimeMillis, z, bArr2);
                                    }
                                });
                                try {
                                    hzVar = (hz) im.this.g.b(bArr2);
                                } catch (Exception e) {
                                    km.a(5, im.f2841a, "Failed to decode proton config response: " + e);
                                    hzVar = null;
                                }
                                if (im.b(hzVar)) {
                                    hzVar2 = hzVar;
                                }
                                if (hzVar2 != null) {
                                    im.this.q = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
                                    im.this.r = currentTimeMillis;
                                    im.this.s = z;
                                    im.this.t = hzVar2;
                                    im.this.h();
                                    if (!im.this.u) {
                                        im.this.u = true;
                                        im.this.b("flurry.session_start", (Map<String, String>) null);
                                    }
                                    im.this.e();
                                }
                            }
                            if (hzVar2 == null) {
                                long j2 = im.this.q << 1;
                                if (i == 429) {
                                    List<String> a2 = ksVar2.a("Retry-After");
                                    if (!a2.isEmpty()) {
                                        String str = a2.get(0);
                                        km.a(3, im.f2841a, "Server returned retry time: " + str);
                                        try {
                                            j = Long.parseLong(str) * 1000;
                                        } catch (NumberFormatException e2) {
                                            km.a(3, im.f2841a, "Server returned nonsensical retry time");
                                        }
                                        im.this.q = j;
                                        km.a(3, im.f2841a, "Proton config request failed, backing off: " + im.this.q + "ms");
                                        jy.a().a(im.this.b, im.this.q);
                                    }
                                }
                                j = j2;
                                im.this.q = j;
                                km.a(3, im.f2841a, "Proton config request failed, backing off: " + im.this.q + "ms");
                                jy.a().a(im.this.b, im.this.q);
                            }
                        }
                    };
                    jw.a().a((Object) this, (im) ksVar);
                }
            }
        }
    }

    private byte[] g() {
        try {
            hy hyVar = new hy();
            hyVar.f2819a = jy.a().d;
            hyVar.b = lv.a(jy.a().f2947a);
            hyVar.c = lv.b(jy.a().f2947a);
            hyVar.d = jz.a();
            hyVar.e = 3;
            ju.a();
            hyVar.f = ju.b();
            hyVar.g = !jl.a().c();
            hyVar.h = new ib();
            hyVar.h.f2829a = new hv();
            hyVar.h.f2829a.f2816a = Build.MODEL;
            hyVar.h.f2829a.b = Build.BRAND;
            hyVar.h.f2829a.c = Build.ID;
            hyVar.h.f2829a.d = Build.DEVICE;
            hyVar.h.f2829a.e = Build.PRODUCT;
            hyVar.h.f2829a.f = Build.VERSION.RELEASE;
            hyVar.i = new ArrayList();
            for (Map.Entry entry : Collections.unmodifiableMap(jl.a().f2923a).entrySet()) {
                ia iaVar = new ia();
                iaVar.f2828a = ((jt) entry.getKey()).c;
                if (((jt) entry.getKey()).d) {
                    iaVar.b = new String((byte[]) entry.getValue());
                } else {
                    iaVar.b = ly.b((byte[]) entry.getValue());
                }
                hyVar.i.add(iaVar);
            }
            Location g = jp.a().g();
            if (g != null) {
                int d = jp.d();
                hyVar.j = new Cif();
                hyVar.j.f2832a = new ie();
                hyVar.j.f2832a.f2831a = ly.a(g.getLatitude(), d);
                hyVar.j.f2832a.b = ly.a(g.getLongitude(), d);
                hyVar.j.f2832a.c = (float) ly.a(g.getAccuracy(), d);
            }
            String str = (String) lp.a().a("UserId");
            if (!str.equals("")) {
                hyVar.k = new ii();
                hyVar.k.f2835a = str;
            }
            return this.f.a((kq<hy>) hyVar);
        } catch (Exception e) {
            km.a(5, f2841a, "Proton config request failed with exception: " + e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(hz hzVar) {
        boolean z;
        boolean z2;
        if (hzVar == null) {
            return false;
        }
        hx hxVar = hzVar.e;
        if (hxVar != null && hxVar.f2818a != null) {
            for (int i = 0; i < hxVar.f2818a.size(); i++) {
                hw hwVar = hxVar.f2818a.get(i);
                if (hwVar != null) {
                    if (!hwVar.b.equals("") && hwVar.f2817a != -1 && !hwVar.e.equals("")) {
                        List<ic> list = hwVar.c;
                        if (list != null) {
                            for (ic icVar : list) {
                                if (icVar.f2830a.equals("")) {
                                    km.a(3, f2841a, "An event is missing a name");
                                    z2 = false;
                                    break;
                                } else if ((icVar instanceof id) && ((id) icVar).c.equals("")) {
                                    km.a(3, f2841a, "An event trigger is missing a param name");
                                    z2 = false;
                                    break;
                                }
                            }
                        }
                        z2 = true;
                        if (!z2) {
                        }
                    }
                    km.a(3, f2841a, "A callback template is missing required values");
                    z = false;
                    break;
                }
            }
        }
        z = true;
        if (z && (hzVar.e == null || hzVar.e.e == null || !hzVar.e.e.equals(""))) {
            return true;
        }
        km.a(3, f2841a, "Config response is missing required values.");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        List<hw> list;
        List<ic> list2;
        if (this.t != null) {
            km.a(5, f2841a, "Processing config response");
            is.a(this.t.e.c);
            is.b(this.t.e.d * 1000);
            iu a2 = iu.a();
            String str = this.t.e.e;
            if (str != null && !str.endsWith(".do")) {
                km.a(5, iu.b, "overriding analytics agent report URL without an endpoint, are you sure?");
            }
            a2.f2877a = str;
            if (this.m) {
                lp.a().a("analyticsEnabled", Boolean.valueOf(this.t.f.b));
            }
            this.k.a();
            hx hxVar = this.t.e;
            if (hxVar != null && (list = hxVar.f2818a) != null) {
                for (hw hwVar : list) {
                    if (hwVar != null && (list2 = hwVar.c) != null) {
                        for (ic icVar : list2) {
                            if (icVar != null && !TextUtils.isEmpty(icVar.f2830a)) {
                                icVar.b = hwVar;
                                this.k.a((kd<String, ic>) icVar.f2830a, (String) icVar);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(String str, Map<String, String> map) {
        ix ixVar;
        boolean z;
        km.a(3, f2841a, "Event triggered: " + str);
        if (!this.o) {
            km.e(f2841a, "Analytics and pulse have been disabled.");
        } else if (this.t == null) {
            km.a(3, f2841a, "Config response is empty. No events to fire.");
        } else {
            ly.b();
            if (!TextUtils.isEmpty(str)) {
                List<ic> a2 = this.k.a((kd<String, ic>) str);
                if (a2 == null) {
                    km.a(3, f2841a, "No events to fire. Returning.");
                } else if (a2.size() == 0) {
                    km.a(3, f2841a, "No events to fire. Returning.");
                } else {
                    long currentTimeMillis = System.currentTimeMillis();
                    boolean z2 = map != null;
                    char c = 65535;
                    switch (str.hashCode()) {
                        case 645204782:
                            if (str.equals("flurry.session_end")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 1371447545:
                            if (str.equals("flurry.app_install")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 1579613685:
                            if (str.equals("flurry.session_start")) {
                                c = 0;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                            ixVar = ix.SESSION_START;
                            break;
                        case 1:
                            ixVar = ix.SESSION_END;
                            break;
                        case 2:
                            ixVar = ix.INSTALL;
                            break;
                        default:
                            ixVar = ix.APPLICATION_EVENT;
                            break;
                    }
                    HashMap hashMap = new HashMap();
                    for (ic icVar : a2) {
                        boolean z3 = false;
                        if (icVar instanceof id) {
                            km.a(4, f2841a, "Event contains triggers.");
                            String[] strArr = ((id) icVar).d;
                            if (strArr == null) {
                                km.a(4, f2841a, "Template does not contain trigger values. Firing.");
                                z3 = true;
                            } else if (strArr.length == 0) {
                                km.a(4, f2841a, "Template does not contain trigger values. Firing.");
                                z3 = true;
                            } else if (map == null) {
                                km.a(4, f2841a, "Publisher has not passed in params list. Not firing.");
                            }
                            String str2 = map.get(((id) icVar).c);
                            if (str2 == null) {
                                km.a(4, f2841a, "Publisher params has no value associated with proton key. Not firing.");
                            } else {
                                int length = strArr.length;
                                int i = 0;
                                while (true) {
                                    if (i >= length) {
                                        z = z3;
                                    } else if (!strArr[i].equals(str2)) {
                                        i++;
                                    } else {
                                        z = true;
                                    }
                                }
                                if (!z) {
                                    km.a(4, f2841a, "Publisher params list does not match proton param values. Not firing.");
                                } else {
                                    km.a(4, f2841a, "Publisher params match proton values. Firing.");
                                }
                            }
                        }
                        hw hwVar = icVar.b;
                        if (hwVar == null) {
                            km.a(3, f2841a, "Template is empty. Not firing current event.");
                        } else {
                            km.a(3, f2841a, "Creating callback report for partner: " + hwVar.b);
                            HashMap hashMap2 = new HashMap();
                            hashMap2.put("event_name", str);
                            hashMap2.put("event_time_millis", String.valueOf(currentTimeMillis));
                            String a3 = this.j.a(hwVar.e, hashMap2);
                            String str3 = null;
                            if (hwVar.f != null) {
                                str3 = this.j.a(hwVar.f, hashMap2);
                            }
                            hashMap.put(Long.valueOf(hwVar.f2817a), new ip(hwVar.b, hwVar.f2817a, a3, System.currentTimeMillis() + 259200000, this.t.e.b, hwVar.g, hwVar.d, hwVar.j, hwVar.i, hwVar.h, str3));
                        }
                    }
                    if (hashMap.size() != 0) {
                        jk.a();
                        long c2 = jk.c();
                        jk.a();
                        it itVar = new it(str, z2, c2, jk.f(), ixVar, hashMap);
                        if ("flurry.session_end".equals(str)) {
                            km.a(3, f2841a, "Storing Pulse callbacks for event: " + str);
                            this.l.add(itVar);
                        } else {
                            km.a(3, f2841a, "Firing Pulse callbacks for event: " + str);
                            is.a().a(itVar);
                        }
                    }
                }
            }
        }
    }

    private synchronized void b(long j) {
        Iterator<it> it = this.l.iterator();
        while (it.hasNext()) {
            if (j == it.next().f2873a) {
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void i() {
        hz hzVar;
        ik a2 = this.h.a();
        if (a2 != null) {
            try {
                hzVar = this.g.b(a2.c);
            } catch (Exception e) {
                km.a(5, f2841a, "Failed to decode saved proton config response: " + e);
                this.h.b();
                hzVar = null;
            }
            if (!b(hzVar)) {
                hzVar = null;
            }
            if (hzVar != null) {
                km.a(4, f2841a, "Loaded saved proton config response");
                this.q = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
                this.r = a2.f2837a;
                this.s = a2.b;
                this.t = hzVar;
                h();
            }
        }
        this.p = true;
        jy.a().b(new ma() { // from class: com.flurry.sdk.im.3
            @Override // com.flurry.sdk.ma
            public final void a() {
                im.this.f();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(long j, boolean z, byte[] bArr) {
        if (bArr != null) {
            km.a(4, f2841a, "Saving proton config response");
            ik ikVar = new ik();
            ikVar.f2837a = j;
            ikVar.b = z;
            ikVar.c = bArr;
            this.h.a(ikVar);
        }
    }

    private synchronized void j() {
        if (!this.o) {
            km.e(f2841a, "Analytics disabled, not sending pulse reports.");
        } else {
            km.a(4, f2841a, "Sending " + this.l.size() + " queued reports.");
            for (it itVar : this.l) {
                km.a(3, f2841a, "Firing Pulse callbacks for event: " + itVar.c);
                is.a().a(itVar);
            }
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void k() {
        km.a(4, f2841a, "Loading queued report data.");
        List<it> a2 = this.i.a();
        if (a2 != null) {
            this.l.addAll(a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void l() {
        km.a(4, f2841a, "Saving queued report data.");
        this.i.a(this.l);
    }

    private synchronized void m() {
        this.l.clear();
        this.i.b();
    }
}
