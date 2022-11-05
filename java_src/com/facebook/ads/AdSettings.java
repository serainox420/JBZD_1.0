package com.facebook.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.util.AdInternalSettings;
import com.facebook.ads.internal.util.h;
import com.facebook.ads.internal.util.t;
import com.facebook.internal.ServerProtocol;
import java.util.Collection;
import java.util.HashSet;
import java.util.UUID;
/* loaded from: classes.dex */
public class AdSettings {
    public static final boolean DEBUG = false;

    /* renamed from: a  reason: collision with root package name */
    static volatile boolean f2010a;
    private static final String b = AdSettings.class.getSimpleName();
    private static final Collection<String> c = new HashSet();
    private static final Collection<String> d = new HashSet();
    private static String e;
    private static boolean f;
    private static boolean g;
    private static String h;
    private static boolean i;
    private static String j;

    static {
        d.add(ServerProtocol.DIALOG_PARAM_SDK_VERSION);
        d.add("google_sdk");
        d.add("vbox86p");
        d.add("vbox86tp");
        f2010a = false;
    }

    private static void a(String str) {
        if (f2010a) {
            return;
        }
        f2010a = true;
        Log.d(b, "Test mode device hash: " + str);
        Log.d(b, "When testing your app with Facebook's ad units you must specify the device hashed ID to ensure the delivery of test ads, add the following code before loading an ad: AdSettings.addTestDevice(\"" + str + "\");");
    }

    public static void addTestDevice(String str) {
        c.add(str);
    }

    public static void addTestDevices(Collection<String> collection) {
        c.addAll(collection);
    }

    public static void clearTestDevices() {
        c.clear();
    }

    public static String getMediationService() {
        return h;
    }

    public static String getUrlPrefix() {
        return e;
    }

    public static boolean isChildDirected() {
        return i;
    }

    public static boolean isTestMode(Context context) {
        if (AdInternalSettings.f2211a || d.contains(Build.PRODUCT)) {
            return true;
        }
        if (j == null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("FBAdPrefs", 0);
            j = sharedPreferences.getString("deviceIdHash", null);
            if (TextUtils.isEmpty(j)) {
                h.a a2 = h.a(context.getContentResolver());
                if (!TextUtils.isEmpty(a2.b)) {
                    j = t.a(a2.b);
                } else if (!TextUtils.isEmpty(a2.f2241a)) {
                    j = t.a(a2.f2241a);
                } else {
                    j = t.a(UUID.randomUUID().toString());
                }
                sharedPreferences.edit().putString("deviceIdHash", j).apply();
            }
        }
        if (c.contains(j)) {
            return true;
        }
        a(j);
        return false;
    }

    public static boolean isVideoAutoplay() {
        return f;
    }

    public static boolean isVideoAutoplayOnMobile() {
        return g;
    }

    public static void setIsChildDirected(boolean z) {
        i = z;
    }

    public static void setMediationService(String str) {
        h = str;
    }

    public static void setUrlPrefix(String str) {
        e = str;
    }

    public static void setVideoAutoplay(boolean z) {
        f = z;
    }

    public static void setVideoAutoplayOnMobile(boolean z) {
        g = z;
    }
}
