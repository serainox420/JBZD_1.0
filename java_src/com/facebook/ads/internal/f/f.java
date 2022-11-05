package com.facebook.ads.internal.f;

import android.content.Context;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.p;
import com.facebook.ads.internal.util.t;
import com.facebook.ads.internal.util.y;
import com.facebook.appevents.AppEventsConstants;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes.dex */
public class f {
    private static final ExecutorService g = Executors.newSingleThreadExecutor();
    private static String h = null;
    private static p.a i = p.a();

    /* renamed from: a  reason: collision with root package name */
    protected String f2151a;
    protected AdPlacementType b;
    protected c c;
    public Context d;
    public com.facebook.ads.internal.e e;
    public boolean f;
    private com.facebook.ads.internal.c j;
    private int k;
    private AdSize l;

    public f(Context context, String str, AdSize adSize, com.facebook.ads.internal.e eVar, com.facebook.ads.internal.c cVar, int i2, boolean z) {
        this.f2151a = str;
        this.l = adSize;
        this.e = eVar;
        this.c = c.a(eVar);
        this.j = cVar;
        this.k = i2;
        this.f = z;
        a(context);
    }

    private void a(final Context context) {
        this.d = context;
        g.a();
        i.a(context);
        g();
        g.submit(new Runnable() { // from class: com.facebook.ads.internal.f.f.1
            @Override // java.lang.Runnable
            public void run() {
                if (f.h == null) {
                    String unused = f.h = t.a(context, context.getPackageName());
                }
            }
        });
    }

    private void a(Map<String, String> map, String str, String str2) {
        map.put(str, str2);
    }

    private static Map<String, String> b(Context context) {
        HashMap hashMap = new HashMap();
        hashMap.put("SDK", io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE);
        hashMap.put("SDK_VERSION", "4.20.0");
        hashMap.put("LOCALE", Locale.getDefault().toString());
        float f = context.getResources().getDisplayMetrics().density;
        int i2 = context.getResources().getDisplayMetrics().widthPixels;
        int i3 = context.getResources().getDisplayMetrics().heightPixels;
        hashMap.put("DENSITY", String.valueOf(f));
        hashMap.put("SCREEN_WIDTH", String.valueOf((int) (i2 / f)));
        hashMap.put("SCREEN_HEIGHT", String.valueOf((int) (i3 / f)));
        hashMap.put("IDFA", i.o);
        hashMap.put("IDFA_FLAG", i.p ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1");
        hashMap.put("ATTRIBUTION_ID", i.n);
        hashMap.put("ID_SOURCE", i.q);
        hashMap.put("OS", "Android");
        hashMap.put("OSVERS", i.f2156a);
        hashMap.put("BUNDLE", i.d);
        hashMap.put("APPNAME", i.e);
        hashMap.put("APPVERS", i.f);
        hashMap.put("APPBUILD", String.valueOf(i.g));
        hashMap.put("CARRIER", i.i);
        hashMap.put("MAKE", i.b);
        hashMap.put("MODEL", i.c);
        hashMap.put("ROOTED", String.valueOf(i.d));
        hashMap.put("COPPA", String.valueOf(AdSettings.isChildDirected()));
        hashMap.put("INSTALLER", i.h);
        hashMap.put("SDK_CAPABILITY", com.facebook.ads.internal.d.b());
        hashMap.put("NETWORK_TYPE", String.valueOf(y.c(context).g));
        hashMap.put("REQUEST_TIME", com.facebook.ads.internal.util.h.a(System.currentTimeMillis()));
        hashMap.put("SESSION_TIME", com.facebook.ads.internal.util.h.a(g.b()));
        hashMap.put("SESSION_ID", g.c());
        return hashMap;
    }

    private void g() {
        if (this.c == null) {
            this.c = c.UNKNOWN;
        }
        switch (this.c) {
            case INTERSTITIAL:
                this.b = AdPlacementType.INTERSTITIAL;
                return;
            case BANNER:
                this.b = AdPlacementType.BANNER;
                return;
            case NATIVE:
                this.b = AdPlacementType.NATIVE;
                return;
            case REWARDED_VIDEO:
                this.b = AdPlacementType.REWARDED_VIDEO;
                return;
            default:
                this.b = AdPlacementType.UNKNOWN;
                return;
        }
    }

    public String a() {
        return this.f2151a;
    }

    public c b() {
        return this.c;
    }

    public AdSize c() {
        return this.l;
    }

    public int d() {
        return this.k;
    }

    public Map<String, String> e() {
        HashMap hashMap = new HashMap();
        a(hashMap, "PLACEMENT_ID", this.f2151a);
        if (this.b != AdPlacementType.UNKNOWN) {
            a(hashMap, "PLACEMENT_TYPE", this.b.toString().toLowerCase());
        }
        for (Map.Entry<String, String> entry : b(this.d).entrySet()) {
            a(hashMap, entry.getKey(), entry.getValue());
        }
        if (this.l != null) {
            a(hashMap, "WIDTH", String.valueOf(this.l.getWidth()));
            a(hashMap, "HEIGHT", String.valueOf(this.l.getHeight()));
        }
        a(hashMap, "ADAPTERS", com.facebook.ads.internal.adapters.d.a(this.b));
        if (this.e != null) {
            a(hashMap, "TEMPLATE_ID", String.valueOf(this.e.a()));
        }
        if (this.j != null) {
            a(hashMap, "REQUEST_TYPE", String.valueOf(this.j.a()));
        }
        if (this.f) {
            a(hashMap, "TEST_MODE", "1");
        }
        if (this.k != 0) {
            a(hashMap, "NUM_ADS_REQUESTED", String.valueOf(this.k));
        }
        String mediationService = AdSettings.getMediationService();
        if (mediationService != null) {
            a(hashMap, "MEDIATION_SERVICE", mediationService);
        }
        a(hashMap, "CLIENT_EVENTS", com.facebook.ads.internal.util.d.a());
        if (h != null) {
            a(hashMap, "AFP", h);
        }
        a(hashMap, "UNITY", String.valueOf(com.facebook.ads.internal.util.h.a(this.d)));
        a(hashMap, "KG_RESTRICTED", String.valueOf(com.facebook.ads.internal.util.h.b(this.d)));
        return hashMap;
    }
}
