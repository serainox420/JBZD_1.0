package com.facebook.ads.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static h f2166a;
    private final SharedPreferences b;

    public h(Context context) {
        this.b = context.getApplicationContext().getSharedPreferences("com.facebook.ads.FEATURE_CONFIG", 0);
    }

    public static boolean a(Context context) {
        return Build.VERSION.SDK_INT >= 14 && com.facebook.ads.internal.util.h.a("com.google.android.exoplayer", "ExoPlayer") && k(context).a("adnw_enable_exoplayer", false);
    }

    public static boolean b(Context context) {
        return Build.VERSION.SDK_INT >= 19 && k(context).a("adnw_enable_iab", false);
    }

    public static boolean c(Context context) {
        return k(context).a("adnw_debug_logging", false);
    }

    public static long d(Context context) {
        return k(context).a("unified_logging_immediate_delay_ms", 500L);
    }

    public static long e(Context context) {
        return k(context).a("unified_logging_dispatch_interval_seconds", 300) * 1000;
    }

    public static boolean f(Context context) {
        return k(context).a("video_and_endcard_autorotate", "autorotate_disabled").equals("autorotate_enabled");
    }

    public static int g(Context context) {
        return k(context).a("minimum_elapsed_time_after_impression", -1);
    }

    public static int h(Context context) {
        return k(context).a("ad_viewability_tap_margin", 0);
    }

    public static boolean i(Context context) {
        return k(context).a("visible_area_check_enabled", false);
    }

    public static int j(Context context) {
        return k(context).a("visible_area_percentage", 50);
    }

    private static h k(Context context) {
        if (f2166a == null) {
            synchronized (h.class) {
                if (f2166a == null) {
                    f2166a = new h(context);
                }
            }
        }
        return f2166a;
    }

    public int a(String str, int i) {
        String string = this.b.getString(str, String.valueOf(i));
        return (string == null || string.equals("null")) ? i : Integer.valueOf(string).intValue();
    }

    public long a(String str, long j) {
        String string = this.b.getString(str, String.valueOf(j));
        return (string == null || string.equals("null")) ? j : Long.valueOf(string).longValue();
    }

    public String a(String str, String str2) {
        String string = this.b.getString(str, str2);
        return (string == null || string.equals("null")) ? str2 : string;
    }

    public void a(String str) {
        if (str == null || str.isEmpty() || str.equals("[]")) {
            return;
        }
        SharedPreferences.Editor edit = this.b.edit();
        JSONObject jSONObject = new JSONObject(str);
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            edit.putString(next, jSONObject.getString(next));
        }
        edit.commit();
    }

    public boolean a(String str, boolean z) {
        String string = this.b.getString(str, String.valueOf(z));
        return (string == null || string.equals("null")) ? z : Boolean.valueOf(string).booleanValue();
    }
}
