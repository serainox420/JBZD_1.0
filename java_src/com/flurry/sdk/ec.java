package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.flurry.sdk.ax;
import com.flurry.sdk.az;
import com.flurry.sdk.ll;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class ec {
    private static final String j = ec.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    WeakReference<lk> f2592a;
    public bi b;
    h c;
    public g d;
    public hc e;
    public hm f;
    File g;
    kf<List<az>> h;
    public String i;
    private final Map<String, az> k = Collections.synchronizedMap(new HashMap());
    private final kh<ll> l = new kh<ll>() { // from class: com.flurry.sdk.ec.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(ll llVar) {
            String defaultUserAgent;
            String str = null;
            ll llVar2 = llVar;
            if (ec.this.f2592a == null || llVar2.b == ec.this.f2592a.get()) {
                switch (AnonymousClass5.f2601a[llVar2.c - 1]) {
                    case 1:
                        final ec ecVar = ec.this;
                        lk lkVar = llVar2.b;
                        Context context = llVar2.f3027a.get();
                        ecVar.f2592a = new WeakReference<>(lkVar);
                        ecVar.b = new bi();
                        ecVar.c = new h();
                        ecVar.d = new g();
                        g gVar = ecVar.d;
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setData(Uri.parse("market://details?id=" + jy.a().f2947a.getPackageName()));
                        gVar.c = ly.a(intent);
                        ecVar.e = new hf();
                        ecVar.f = new hg();
                        ecVar.g = jy.a().f2947a.getFileStreamPath(".flurryadlog." + Integer.toString(jy.a().d.hashCode(), 16));
                        i.a().b.b();
                        ecVar.h = new kf<>(jy.a().f2947a.getFileStreamPath(".yflurryadlog." + Long.toString(ly.i(jy.a().d), 16)), ".yflurryadlog.", 1, new lj<List<az>>() { // from class: com.flurry.sdk.ec.6
                            @Override // com.flurry.sdk.lj
                            public final lg<List<az>> a(int i) {
                                return new lf(new az.a(new ax.a()));
                            }
                        });
                        if (context != null) {
                            if (context == null) {
                                defaultUserAgent = null;
                            } else {
                                defaultUserAgent = Build.VERSION.SDK_INT >= 17 ? WebSettings.getDefaultUserAgent(context) : null;
                            }
                            if (!TextUtils.isEmpty(defaultUserAgent)) {
                                str = defaultUserAgent;
                            } else if (context != null) {
                                str = new WebView(context).getSettings().getUserAgentString();
                            }
                        }
                        ecVar.i = str;
                        jy.a().b(new ma() { // from class: com.flurry.sdk.ec.7
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                ec.this.d();
                            }
                        });
                        return;
                    case 2:
                        final ec ecVar2 = ec.this;
                        Context context2 = llVar2.f3027a.get();
                        h hVar = ecVar2.c;
                        km.a(3, h.f2781a, "Registered Event Handler ");
                        ki.a().a("com.flurry.android.impl.ads.AdEvent", hVar.b);
                        i.a().h.b();
                        jy.a().b(new ma() { // from class: com.flurry.sdk.ec.8
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                i.a().i.b();
                            }
                        });
                        jy.a().b(new ma() { // from class: com.flurry.sdk.ec.9
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                i.a().f.c();
                            }
                        });
                        if (kc.a().b()) {
                            return;
                        }
                        i.a().b.b(context2);
                        i.a().c.b(context2);
                        return;
                    case 3:
                        final ec ecVar3 = ec.this;
                        Context context3 = llVar2.f3027a.get();
                        if (!kc.a().b()) {
                            i.a().b.a(context3);
                            i.a().c.a(context3);
                        }
                        jy.a().b(new ma() { // from class: com.flurry.sdk.ec.10
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                ec.this.c();
                            }
                        });
                        jy.a().b(new ma() { // from class: com.flurry.sdk.ec.11
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                i.a().f();
                            }
                        });
                        jy.a().b(new ma() { // from class: com.flurry.sdk.ec.12
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                i.a().g();
                            }
                        });
                        return;
                    case 4:
                        ki.a().b("com.flurry.android.sdk.FlurrySessionEvent", ec.this.l);
                        final ec ecVar4 = ec.this;
                        h hVar2 = ecVar4.c;
                        km.a(3, h.f2781a, "Unregister Event Handler ");
                        ki.a().a(hVar2.b);
                        i.a().b.a();
                        i.a().c.a();
                        jy.a().b(new ma() { // from class: com.flurry.sdk.ec.13
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                ec.this.b();
                            }
                        });
                        jy.a().b(new ma() { // from class: com.flurry.sdk.ec.2
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                i.a().i.c();
                            }
                        });
                        jy.a().b(new ma() { // from class: com.flurry.sdk.ec.3
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                i.a().f.c = true;
                                en.a().f2619a.clear();
                            }
                        });
                        f.a().b("native");
                        f.a().b.clear();
                        return;
                    default:
                        return;
                }
            }
        }
    };

    /* renamed from: com.flurry.sdk.ec$5  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass5 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2601a = new int[ll.a.a().length];

        static {
            try {
                f2601a[ll.a.f3028a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2601a[ll.a.c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2601a[ll.a.d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2601a[ll.a.e - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public ec() {
        ki.a().a("com.flurry.android.sdk.FlurrySessionEvent", this.l);
    }

    public final synchronized void a() {
        jy.a().b(new ma() { // from class: com.flurry.sdk.ec.4
            @Override // com.flurry.sdk.ma
            public final void a() {
                ec.this.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b() {
        dj djVar;
        j a2;
        byte[] bArr;
        List<di> a3 = fi.a(new ArrayList(this.k.values()));
        if (a3.isEmpty()) {
            km.a(3, j, "List of adLogs is empty");
            djVar = null;
        } else {
            String str = jy.a().d;
            List<co> e = fi.e();
            dj djVar2 = new dj();
            djVar2.f2535a = str;
            djVar2.b = e;
            djVar2.c = a3;
            djVar2.f = false;
            djVar2.d = System.currentTimeMillis();
            djVar2.e = Integer.toString(jz.a());
            km.a(3, j, "Got ad log request:" + djVar2.toString());
            djVar = djVar2;
        }
        if (djVar != null) {
            dq dqVar = i.a().e;
            String str2 = (j.a().d != null ? a2.d : j.d() ? "https://adlog.flurry.com" : "http://adlog.flurry.com") + "/v2/postAdLog.do";
            String str3 = jy.a().d;
            String sb = new StringBuilder().append(jz.a()).toString();
            if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(sb)) {
                km.a(6, dqVar.b, "Ad log that has to be sent is EMPTY or NULL");
            } else {
                try {
                    bArr = dqVar.f2550a.a((kq<dj>) djVar);
                } catch (Exception e2) {
                    km.a(5, dqVar.b, "Failed to encode sdk log request: " + e2);
                    bArr = null;
                }
                if (bArr != null) {
                    dqVar.b(dq.a(bArr, str2), str3, sb);
                }
            }
        }
        this.k.clear();
        this.h.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c() {
        km.a(4, j, "Saving AdLog data.");
        this.h.a(new ArrayList(this.k.values()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() {
        km.a(4, j, "Loading AdLog data.");
        List<az> a2 = this.h.a();
        if (a2 != null) {
            a(a2);
        } else if (this.g.exists()) {
            km.a(4, j, "Legacy AdLog data found, converting.");
            List<az> b = l.b(this.g);
            if (b != null) {
                a(b);
            }
            this.g.delete();
            c();
        }
    }

    public final synchronized void a(String str, bc bcVar, boolean z, Map<String, String> map) {
        if (bcVar != null) {
            km.a(3, j, "logAdEvent(" + str + ", " + bcVar + ", " + z + ", " + map + ")");
            az a2 = a(str);
            String str2 = bcVar.ag;
            jk.a();
            a2.d.add(new ax(str2, z, jk.f(), map));
        }
    }

    private void a(List<az> list) {
        for (az azVar : list) {
            this.k.put(azVar.c, azVar);
        }
    }

    public final az a(String str) {
        az azVar = this.k.get(str);
        if (azVar == null) {
            azVar = new az(str);
            if (this.k.size() < 32767) {
                this.k.put(azVar.c, azVar);
            }
        }
        return azVar;
    }
}
