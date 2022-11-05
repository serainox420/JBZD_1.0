package com.facebook.ads.internal.f;

import android.os.Build;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.ads.internal.server.AdPlacementType;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class e {
    private static final String c = e.class.getSimpleName();
    private static final AdPlacementType d = AdPlacementType.UNKNOWN;

    /* renamed from: a  reason: collision with root package name */
    public int f2150a;
    public int b;
    private AdPlacementType e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private boolean m;
    private List<b> n;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private e(Map<String, String> map) {
        char c2;
        this.f2150a = -1;
        this.b = -1;
        this.e = d;
        this.f = 1;
        this.g = 0;
        this.h = 0;
        this.i = 20;
        this.j = 0;
        this.k = 1000;
        this.l = 10000;
        this.m = false;
        this.n = null;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            switch (key.hashCode()) {
                case -1899431321:
                    if (key.equals("conv_tracking_data")) {
                        c2 = 11;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1561601017:
                    if (key.equals("refresh_threshold")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -856794442:
                    if (key.equals("viewability_check_interval")) {
                        c2 = '\t';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -726276175:
                    if (key.equals("request_timeout")) {
                        c2 = '\n';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -553208868:
                    if (key.equals("cacheable")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3575610:
                    if (key.equals("type")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 700812481:
                    if (key.equals("min_viewability_percentage")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 858630459:
                    if (key.equals("viewability_check_ticker")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1085444827:
                    if (key.equals("refresh")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1183549815:
                    if (key.equals("viewability_check_initial_delay")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1503616961:
                    if (key.equals("placement_height")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2002133996:
                    if (key.equals("placement_width")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    this.e = AdPlacementType.fromString(entry.getValue());
                    break;
                case 1:
                    this.f = Integer.parseInt(entry.getValue());
                    break;
                case 2:
                    this.g = Integer.parseInt(entry.getValue());
                    break;
                case 3:
                    this.h = Integer.parseInt(entry.getValue());
                    break;
                case 4:
                    this.i = Integer.parseInt(entry.getValue());
                    break;
                case 5:
                    this.m = Boolean.valueOf(entry.getValue()).booleanValue();
                    break;
                case 6:
                    this.f2150a = Integer.parseInt(entry.getValue());
                    break;
                case 7:
                    this.b = Integer.parseInt(entry.getValue());
                    break;
                case '\b':
                    this.j = Integer.parseInt(entry.getValue());
                    break;
                case '\t':
                    this.k = Integer.parseInt(entry.getValue());
                    break;
                case '\n':
                    this.l = Integer.parseInt(entry.getValue());
                    break;
                case 11:
                    this.n = b.a(entry.getValue());
                    try {
                        CookieManager cookieManager = CookieManager.getInstance();
                        boolean acceptCookie = cookieManager.acceptCookie();
                        cookieManager.setAcceptCookie(true);
                        for (b bVar : this.n) {
                            if (bVar.b()) {
                                cookieManager.setCookie(bVar.f2144a, bVar.b + "=" + bVar.c + ";Domain=" + bVar.f2144a + ";Expires=" + bVar.a() + ";path=/");
                            }
                        }
                        if (Build.VERSION.SDK_INT < 21) {
                            CookieSyncManager.getInstance().startSync();
                        }
                        cookieManager.setAcceptCookie(acceptCookie);
                        break;
                    } catch (Exception e) {
                        Log.w(c, "Failed to set cookie.");
                        break;
                    }
            }
        }
    }

    public static e a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Iterator<String> keys = jSONObject.keys();
        HashMap hashMap = new HashMap();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, String.valueOf(jSONObject.opt(next)));
        }
        return new e(hashMap);
    }

    public AdPlacementType a() {
        return this.e;
    }

    public long b() {
        return this.h * 1000;
    }

    public long c() {
        return this.i * 1000;
    }

    public boolean d() {
        return this.m;
    }

    public int e() {
        return this.f;
    }

    public int f() {
        return this.g;
    }

    public int g() {
        return this.j;
    }

    public int h() {
        return this.k;
    }

    public int i() {
        return this.l;
    }
}
