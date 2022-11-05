package com.adcolony.sdk;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.util.DisplayMetrics;
import com.adcolony.sdk.au;
import com.google.firebase.a.a;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AdColony {

    /* renamed from: a  reason: collision with root package name */
    static ExecutorService f965a = Executors.newSingleThreadExecutor();

    public static boolean configure(Activity activity, String str, String... strArr) {
        return configure(activity, null, str, strArr);
    }

    public static boolean configure(Activity activity, AdColonyAppOptions adColonyAppOptions, String str, String... strArr) {
        long currentTimeMillis;
        if (af.a(0, null)) {
            u.e.b("Cannot configure AdColony; configuration mechanism requires 5 seconds between attempts.");
            return false;
        }
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        if (adColonyAppOptions == null) {
            adColonyAppOptions = new AdColonyAppOptions();
        }
        if (a.m != null && a.m.v != null && a.m.v.d != null && !s.d(a.m.v.d, "reconfigurable")) {
            if (a.m.v.f977a != null && !a.m.v.f977a.equals(str)) {
                u.e.b("Ignoring call to AdColony.configure, as the app id does not match what was used during the initial configuration.");
                return false;
            } else if (a.m.v.b != null && a(strArr, a.m.v.b)) {
                u.e.b("Ignoring call to AdColony.configure, as the same zone ids were used during the previous configuration.");
                return false;
            }
        }
        adColonyAppOptions.a(str);
        adColonyAppOptions.a(strArr);
        a(activity, adColonyAppOptions);
        String format = new SimpleDateFormat("HH:mm:ss:SSS").format(new Date(System.currentTimeMillis()));
        boolean z = true;
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i] != null && !strArr[i].equals("")) {
                z = false;
            }
        }
        if (str.equals("") || z) {
            u.g.b("AdColony.configure() called with an empty app or zone id String.");
            return false;
        }
        a.n = true;
        if (Build.VERSION.SDK_INT < 14) {
            u.e.b("The minimum API level for the AdColony SDK is 14.");
            a.a(activity, adColonyAppOptions, true);
        } else {
            a.a(activity, adColonyAppOptions, false);
        }
        u.f.b("Configure: Total Time (ms): " + (System.currentTimeMillis() - currentTimeMillis) + " and started at " + format);
        return true;
    }

    static boolean a(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length != strArr2.length) {
            return false;
        }
        Arrays.sort(strArr);
        Arrays.sort(strArr2);
        return Arrays.equals(strArr, strArr2);
    }

    public static AdColonyZone getZone(String str) {
        if (!a.n || a.m == null) {
            u.e.b("Ignoring call to AdColony.getZone() as AdColony has not yet been configured.");
            return null;
        } else if (a.m.z.containsKey(str)) {
            return a.m.z.get(str);
        } else {
            AdColonyZone adColonyZone = new AdColonyZone(str);
            a.m.z.put(str, adColonyZone);
            return adColonyZone;
        }
    }

    public static boolean notifyIAPComplete(String str, String str2) {
        return notifyIAPComplete(str, str2, null, -1.0d);
    }

    public static boolean notifyIAPComplete(final String str, final String str2, final String str3, final double d) {
        if (!a.n || a.m == null) {
            u.e.b("Ignoring call to notifyIAPComplete as AdColony has not yet been configured.");
            return false;
        } else if (!au.d(str) || !au.d(str2)) {
            u.e.b("Ignoring call to notifyIAPComplete as one of the passed Strings is greater than 128 characters.");
            return false;
        } else {
            if (str3 != null && str3.length() > 3) {
                u.e.b("You are trying to report an IAP event with a currency String containing more than 3 characters.");
            }
            f965a.execute(new Runnable() { // from class: com.adcolony.sdk.AdColony.1
                @Override // java.lang.Runnable
                public void run() {
                    AdColony.a();
                    JSONObject a2 = s.a();
                    if (d >= 0.0d) {
                        s.a(a2, a.b.PRICE, d);
                    }
                    if (str3 != null && str3.length() <= 3) {
                        s.a(a2, "currency_code", str3);
                    }
                    s.a(a2, "product_id", str);
                    s.a(a2, "transaction_id", str2);
                    new z("AdColony.on_iap_report", 1, a2).b();
                }
            });
            return true;
        }
    }

    static boolean a(String str, ay ayVar, int i, int i2) {
        return true;
    }

    public static boolean requestNativeAdView(String str, AdColonyNativeAdViewListener adColonyNativeAdViewListener, AdColonyAdSize adColonyAdSize) {
        return requestNativeAdView(str, adColonyNativeAdViewListener, adColonyAdSize, null);
    }

    public static boolean requestNativeAdView(final String str, final AdColonyNativeAdViewListener adColonyNativeAdViewListener, final AdColonyAdSize adColonyAdSize, final AdColonyAdOptions adColonyAdOptions) {
        if (!a.n || a.m == null) {
            u.e.b("Ignoring call to requestNativeAdView as AdColony has not yet been configured.");
            a(adColonyNativeAdViewListener, str);
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString("zone_id", str);
        if (af.a(1, bundle)) {
            a(adColonyNativeAdViewListener, str);
            return false;
        }
        try {
            f965a.execute(new Runnable() { // from class: com.adcolony.sdk.AdColony.2
                @Override // java.lang.Runnable
                public void run() {
                    if (a.m.E || a.m.F) {
                        AdColony.b();
                        AdColony.a(AdColonyNativeAdViewListener.this, str);
                    }
                    if (!AdColony.a() && a.l != null) {
                        AdColony.a(AdColonyNativeAdViewListener.this, str);
                    }
                    if (a.m.z.get(str) == null) {
                        new AdColonyZone(str);
                        u.b.b("Zone info for " + str + " doesn't exist in hashmap");
                    }
                    a.m.g.a(str, AdColonyNativeAdViewListener.this, adColonyAdSize, adColonyAdOptions);
                }
            });
            return true;
        } catch (RejectedExecutionException e) {
            a(adColonyNativeAdViewListener, str);
            return false;
        }
    }

    public static boolean setAppOptions(final AdColonyAppOptions adColonyAppOptions) {
        if (!a.n || a.m == null) {
            u.e.b("Ignoring call to AdColony.setAppOptions() as AdColony has not yet been configured.");
            return false;
        }
        try {
            f965a.execute(new Runnable() { // from class: com.adcolony.sdk.AdColony.3
                @Override // java.lang.Runnable
                public void run() {
                    AdColony.a();
                    a.m.v = AdColonyAppOptions.this;
                    JSONObject a2 = s.a();
                    s.a(a2, "options", AdColonyAppOptions.this.d);
                    new z("Options.set_options", 1, a2).b();
                }
            });
            return true;
        } catch (RejectedExecutionException e) {
            return false;
        }
    }

    public static AdColonyAppOptions getAppOptions() {
        if (!a.n || a.m == null || a.m.v == null) {
            return null;
        }
        return a.m.v;
    }

    public static boolean setRewardListener(AdColonyRewardListener adColonyRewardListener) {
        if (!a.n || a.m == null) {
            u.e.b("Ignoring call to AdColony.setRewardListener() as AdColony has not yet been configured.");
            return false;
        }
        a.m.t = adColonyRewardListener;
        return true;
    }

    public static boolean removeRewardListener() {
        if (!a.n || a.m == null) {
            u.e.b("Ignoring call to AdColony.removeRewardListener() as AdColony has not yet been configured.");
            return false;
        }
        a.m.t = null;
        return true;
    }

    public static String getSDKVersion() {
        if (!a.n || a.m == null) {
            return "";
        }
        j jVar = a.m.m;
        return "3.0.7";
    }

    public static AdColonyRewardListener getRewardListener() {
        if (!a.n || a.m == null) {
            return null;
        }
        return a.m.t;
    }

    public static boolean addCustomMessageListener(AdColonyCustomMessageListener adColonyCustomMessageListener, final String str) {
        if (!a.n || a.m == null) {
            u.e.b("Ignoring call to AdColony.addCustomMessageListener as AdColony has not yet been configured.");
            return false;
        } else if (!au.d(str)) {
            u.e.b("Ignoring call to AdColony.addCustomMessageListener.");
            return false;
        } else {
            try {
                a.m.u.put(str, adColonyCustomMessageListener);
                f965a.execute(new Runnable() { // from class: com.adcolony.sdk.AdColony.4
                    @Override // java.lang.Runnable
                    public void run() {
                        AdColony.a();
                        JSONObject a2 = s.a();
                        s.a(a2, "type", str);
                        new z("CustomMessage.register", 1, a2).b();
                    }
                });
                return true;
            } catch (RejectedExecutionException e) {
                return false;
            }
        }
    }

    public static AdColonyCustomMessageListener getCustomMessageListener(String str) {
        if (!a.n || a.m == null) {
            return null;
        }
        return a.m.u.get(str);
    }

    public static boolean removeCustomMessageListener(final String str) {
        if (!a.n || a.m == null) {
            u.e.b("Ignoring call to AdColony.removeCustomMessageListener as AdColony has not yet been configured.");
            return false;
        }
        a.m.u.remove(str);
        f965a.execute(new Runnable() { // from class: com.adcolony.sdk.AdColony.5
            @Override // java.lang.Runnable
            public void run() {
                AdColony.a();
                JSONObject a2 = s.a();
                s.a(a2, "type", str);
                new z("CustomMessage.unregister", 1, a2).b();
            }
        });
        return true;
    }

    public static boolean clearCustomMessageListeners() {
        if (!a.n || a.m == null) {
            u.e.b("Ignoring call to AdColony.clearCustomMessageListeners as AdColony has not yet been configured.");
            return false;
        }
        a.m.u.clear();
        f965a.execute(new Runnable() { // from class: com.adcolony.sdk.AdColony.6
            @Override // java.lang.Runnable
            public void run() {
                AdColony.a();
                for (String str : a.m.u.keySet()) {
                    JSONObject a2 = s.a();
                    s.a(a2, "type", str);
                    new z("CustomMessage.unregister", 1, a2).b();
                }
            }
        });
        return true;
    }

    public static boolean requestInterstitial(String str, AdColonyInterstitialListener adColonyInterstitialListener) {
        return requestInterstitial(str, adColonyInterstitialListener, null);
    }

    public static boolean requestInterstitial(final String str, final AdColonyInterstitialListener adColonyInterstitialListener, final AdColonyAdOptions adColonyAdOptions) {
        if (!a.n) {
            u.e.b("Ignoring call to AdColony.requestInterstitial as AdColony has not yet been configured.");
            adColonyInterstitialListener.onRequestNotFilled(new AdColonyZone(str));
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString("zone_id", str);
        if (af.a(1, bundle)) {
            AdColonyZone adColonyZone = a.m.z.get(str);
            if (adColonyZone == null) {
                adColonyZone = new AdColonyZone(str);
                u.b.b("Zone info for " + str + " doesn't exist in hashmap");
            }
            adColonyInterstitialListener.onRequestNotFilled(adColonyZone);
            return false;
        }
        try {
            f965a.execute(new Runnable() { // from class: com.adcolony.sdk.AdColony.7
                @Override // java.lang.Runnable
                public void run() {
                    if (a.m.E || a.m.F) {
                        AdColony.b();
                        AdColony.a(AdColonyInterstitialListener.this, str);
                    }
                    if (!AdColony.a() && a.l != null) {
                        AdColony.a(AdColonyInterstitialListener.this, str);
                    }
                    final AdColonyZone adColonyZone2 = a.m.z.get(str);
                    if (adColonyZone2 == null) {
                        adColonyZone2 = new AdColonyZone(str);
                        u.b.b("Zone info for " + str + " doesn't exist in hashmap");
                    }
                    if (adColonyZone2.getZoneType() != 2) {
                        a.m.g.a(str, AdColonyInterstitialListener.this, adColonyAdOptions);
                    } else if (a.l != null) {
                        a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.AdColony.7.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AdColonyInterstitialListener.this.onRequestNotFilled(adColonyZone2);
                            }
                        });
                    }
                }
            });
            return true;
        } catch (RejectedExecutionException e) {
            a(adColonyInterstitialListener, str);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        au.b bVar = new au.b(15.0d);
        while (!a.m.G && !bVar.b()) {
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
            }
        }
        return a.m.G;
    }

    static boolean a(final AdColonyInterstitialListener adColonyInterstitialListener, final String str) {
        if (adColonyInterstitialListener != null && a.l != null) {
            a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.AdColony.8
                @Override // java.lang.Runnable
                public void run() {
                    AdColonyZone adColonyZone = a.m == null ? null : a.m.z.get(str);
                    if (adColonyZone == null) {
                        adColonyZone = new AdColonyZone(str);
                    }
                    adColonyInterstitialListener.onRequestNotFilled(adColonyZone);
                }
            });
            return false;
        }
        return false;
    }

    static boolean a(final AdColonyNativeAdViewListener adColonyNativeAdViewListener, final String str) {
        if (adColonyNativeAdViewListener != null && a.l != null) {
            a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.AdColony.9
                @Override // java.lang.Runnable
                public void run() {
                    AdColonyZone adColonyZone = a.m == null ? null : a.m.z.get(str);
                    if (adColonyZone == null) {
                        adColonyZone = new AdColonyZone(str);
                    }
                    adColonyNativeAdViewListener.onRequestNotFilled(adColonyZone);
                }
            });
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Activity activity, AdColonyAppOptions adColonyAppOptions) {
        if (adColonyAppOptions != null && activity != null) {
            String a2 = a(activity);
            HashMap hashMap = new HashMap();
            hashMap.put("sessionId", "unknown");
            hashMap.put("packageName", a2);
            hashMap.put("appId", "" + adColonyAppOptions.f977a);
            hashMap.put("zoneIds", adColonyAppOptions.c.toString());
            hashMap.put("controllerVersion", "unknown");
            hashMap.put("apiLevel", Integer.valueOf(Build.VERSION.SDK_INT));
            hashMap.put("manufacturer", Build.MANUFACTURER);
            hashMap.put(PubMaticConstants.MODEL_PARAM, Build.MODEL);
            hashMap.put("osVersion", Build.VERSION.RELEASE);
            w.a(hashMap);
        }
    }

    static String a(Activity activity) {
        try {
            return activity.getApplicationContext().getPackageName();
        } catch (Exception e) {
            return "unknown";
        }
    }

    static void b() {
        u.g.b("The AdColony API is not available while AdColony is disabled.");
    }

    static boolean c() {
        if (!a.n) {
            u.e.b("Ignoring call to AdColony.isTablet() as AdColony has not yet been configured.");
            return false;
        } else if (a.l == null) {
            return false;
        } else {
            DisplayMetrics displayMetrics = a.l.getResources().getDisplayMetrics();
            float f = displayMetrics.widthPixels / displayMetrics.xdpi;
            float f2 = displayMetrics.heightPixels / displayMetrics.ydpi;
            return Math.sqrt((double) ((f2 * f2) + (f * f))) >= 6.0d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d() {
        return (a.m == null || a.m.m == null || a.m.m.f1446a == null) ? "" : a.m.m.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e() {
        return (a.m == null || a.m.m == null) ? "" : a.m.m.a();
    }
}
