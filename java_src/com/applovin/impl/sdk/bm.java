package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class bm {
    private static bm d;

    /* renamed from: a  reason: collision with root package name */
    private final Map f1615a = new HashMap(1);
    private final Map b = new HashMap(1);
    private final Object c = new Object();

    private bm() {
    }

    public static synchronized bm a() {
        bm bmVar;
        synchronized (bm.class) {
            if (d == null) {
                d = new bm();
            }
            bmVar = d;
        }
        return bmVar;
    }

    public Map a(AppLovinAd appLovinAd) {
        Map map;
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        synchronized (this.c) {
            map = (Map) this.b.remove(appLovinAdImpl);
        }
        return map;
    }

    public void a(AppLovinAd appLovinAd, String str) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        synchronized (this.c) {
            this.f1615a.put(appLovinAdImpl, str);
        }
    }

    public void a(AppLovinAd appLovinAd, Map map) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        synchronized (this.c) {
            this.b.put(appLovinAdImpl, map);
        }
    }

    public String b(AppLovinAd appLovinAd) {
        String str;
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        synchronized (this.c) {
            str = (String) this.f1615a.remove(appLovinAdImpl);
        }
        return str;
    }
}
