package com.applovin.impl.sdk;

import android.content.SharedPreferences;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f1580a = new Object();
    private static final Map b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map a(AppLovinSdkImpl appLovinSdkImpl) {
        Map c;
        synchronized (f1580a) {
            appLovinSdkImpl.getLogger().d("AdDataCache", "Reading cached device data...");
            c = c(appLovinSdkImpl);
        }
        return c;
    }

    private static void a(String str, Map map) {
        String[] split = str.split("=");
        if (split.length == 2) {
            map.put(split[0], split[1]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Map map, AppLovinSdkImpl appLovinSdkImpl) {
        b(map, appLovinSdkImpl);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(AppLovinSdkImpl appLovinSdkImpl) {
        synchronized (f1580a) {
            appLovinSdkImpl.getLogger().d("AdDataCache", "Clearing old device data cache...");
            a(new HashMap(0), appLovinSdkImpl);
        }
    }

    private static void b(Map map, AppLovinSdkImpl appLovinSdkImpl) {
        if (map == null) {
            throw new IllegalArgumentException("No ad aata specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        try {
            synchronized (b) {
                Map map2 = (Map) b.get("ad_data_cache");
                if (map2 == null) {
                    map2 = new HashMap();
                }
                map2.clear();
                map2.putAll(map);
                b.put("ad_data_cache", map2);
            }
            SharedPreferences.Editor edit = appLovinSdkImpl.getSettingsManager().a().edit();
            edit.putString("ad_data_cache", di.a(map));
            edit.commit();
            appLovinSdkImpl.getLogger().d("AdDataCache", map.size() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "ad_data_cache entries saved in cache");
        } catch (Exception e) {
            appLovinSdkImpl.getLogger().e("AdDataCache", "Unable to save ad data entries", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Map c(AppLovinSdkImpl appLovinSdkImpl) {
        Map map;
        Map map2;
        SharedPreferences a2;
        String string;
        Exception e;
        synchronized (b) {
            map = (Map) b.get("ad_data_cache");
        }
        if (map != null || (string = (a2 = appLovinSdkImpl.getSettingsManager().a()).getString("ad_data_cache", "")) == null || string.length() <= 0) {
            map2 = map;
        } else {
            try {
                map2 = new HashMap();
            } catch (Exception e2) {
                map2 = map;
                e = e2;
            }
            try {
                for (String str : string.split("&")) {
                    a(str, map2);
                }
                synchronized (b) {
                    b.put("ad_data_cache", map2);
                }
                appLovinSdkImpl.getLogger().d("AdDataCache", map2.size() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "ad_data_cache entries loaded from cache");
            } catch (Exception e3) {
                e = e3;
                appLovinSdkImpl.getLogger().e("AdDataCache", "Unable to load ad data", e);
                SharedPreferences.Editor edit = a2.edit();
                edit.putString("ad_data_cache", "");
                edit.commit();
                if (map2 == null) {
                }
            }
        }
        return map2 == null ? new HashMap(map2) : new HashMap();
    }
}
