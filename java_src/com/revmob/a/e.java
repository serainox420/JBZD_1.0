package com.revmob.a;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.preference.PreferenceManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.google.firebase.a.a;
import com.mopub.mobileads.VastIconXmlManager;
import com.pubmatic.sdk.banner.mraid.Consts;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import com.revmob.RevMobAdsListener;
import com.revmob.ads.banner.RevMobBanner;
import com.revmob.client.RevMobClient;
import com.revmob.internal.RMLog;
import com.revmob.internal.u;
import com.revmob.internal.w;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static Context f4738a;
    public static RevMobAdsListener b;
    public static boolean c;
    public static JSONArray d;
    public static String e;
    public static Thread f;
    private static String h;
    private static String i;
    private static com.revmob.client.f j;
    private static double k;
    private static boolean l;
    private static boolean m;
    private static int n;
    private static int o;
    private static JSONArray q;
    private static JSONArray r;
    private static DisplayMetrics g = new DisplayMetrics();
    private static int p = 0;

    public static String a() {
        return b().toString();
    }

    private static JSONArray a(int i2, JSONArray jSONArray) {
        JSONArray jSONArray2 = new JSONArray();
        if (jSONArray.length() < i2) {
            i2 = jSONArray.length();
        }
        for (int i3 = 0; i3 < i2; i3++) {
            try {
                jSONArray2.put(jSONArray.get(i3));
            } catch (JSONException e2) {
                u.a(e2, null, w.c, null, "removeObjectsIfAboveThreshold");
                e2.printStackTrace();
            }
        }
        return jSONArray2;
    }

    private static JSONArray a(JSONArray jSONArray, int i2) {
        JSONArray jSONArray2 = new JSONArray();
        int length = jSONArray.length();
        if (jSONArray != null) {
            for (int i3 = 0; i3 < length; i3++) {
                if (i3 != i2) {
                    try {
                        jSONArray2.put(jSONArray.get(i3));
                    } catch (JSONException e2) {
                        u.a(e2, null, w.c, null, "rmJsonObjAtIndexFromJsonArray");
                        e2.printStackTrace();
                    }
                }
            }
        }
        return jSONArray2;
    }

    private static JSONArray a(JSONArray jSONArray, Object obj) {
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(obj);
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                jSONArray2.put(jSONArray.get(i2));
            } catch (JSONException e2) {
                u.a(e2, null, w.c, null, "putAtStartOfJSONArray");
            }
        }
        return jSONArray2;
    }

    public static void a(int i2, int i3, int i4) {
        n = i3;
        o = i4;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(f4738a);
        if (i2 > 0) {
            try {
                q = new JSONArray(defaultSharedPreferences.getString("sessions", "[]"));
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("date", (int) (k / 1000.0d));
                q = a(q, jSONObject);
                q = a(i2, q);
            } catch (JSONException e2) {
                u.a(e2, null, w.c, null, "initCampaignHistory1");
                e2.printStackTrace();
            }
        }
        if (n > 0) {
            try {
                r = new JSONArray(defaultSharedPreferences.getString("history", "[]"));
                r = a(n, r);
            } catch (JSONException e3) {
                u.a(e3, null, w.c, null, "initCampaignHistory2");
                e3.printStackTrace();
            }
        }
    }

    public static void a(String str, double d2) {
        JSONObject jSONObject;
        for (int i2 = 0; i2 < d.length(); i2++) {
            try {
                jSONObject = d.getJSONObject(i2);
            } catch (JSONException e2) {
                u.a(e2, null, w.c, null, "addCreativeTime1");
                e2.printStackTrace();
                jSONObject = null;
            }
            try {
                if (jSONObject.getString("id").equals(str)) {
                    a(d, i2);
                    jSONObject.put("creative", d2);
                    d.put(i2, jSONObject);
                }
            } catch (JSONException e3) {
                u.a(e3, null, w.c, null, "addCreativeTime2");
                e3.printStackTrace();
            }
        }
    }

    public static void a(String str, Activity activity) {
        f4738a = activity;
        if (RevMobClient.c != null) {
            RMLog.i("RevMob SDK Version: " + RevMobClient.b + " (" + RevMobClient.c + "-" + RevMobClient.d + ")");
        } else {
            RMLog.i("RevMob SDK Version: " + RevMobClient.b);
        }
        RMLog.i("App ID: " + str);
        RMLog.i("IP Address: " + com.revmob.internal.c.b());
        RMLog.i("Simulator: " + (Build.MODEL.contains(ServerProtocol.DIALOG_PARAM_SDK_VERSION) || Build.MODEL.contains("Emulator")));
        RMLog.i("OS Version: " + Build.VERSION.RELEASE);
        RMLog.i("Android API: " + Build.VERSION.SDK_INT);
        RMLog.i("Manufacturer: " + Build.MANUFACTURER);
        RMLog.i("Model: " + Build.MODEL);
        RMLog.i("Android ID: ");
        RMLog.i("Serial number: ");
        RMLog.i("ID for Advertising: " + h);
        RMLog.i("Limit Ad Tracking: " + j());
        RMLog.i("Is User a Kid: " + i());
        RMLog.i("Language: " + Locale.getDefault().getLanguage());
        RMLog.i("Locale: " + h());
        RMLog.i("User Agent: " + com.revmob.internal.c.a());
        RMLog.i("Screen size: " + g.widthPixels + "," + g.heightPixels);
        RMLog.i("Density scale: " + g.density);
        RMLog.i("Density dpi: " + g.densityDpi);
        try {
            RMLog.i("User Location: " + e());
        } catch (JSONException e2) {
            u.a(e2, null, w.c, null, "printEnvironmentInformation");
            e2.printStackTrace();
        }
    }

    public static void a(String str, com.revmob.client.f fVar, RevMobAdsListener revMobAdsListener, Activity activity) {
        try {
            i = str;
            j = fVar;
            b = revMobAdsListener;
            f4738a = activity;
            if (f != null) {
                return;
            }
            Thread thread = new Thread(new f());
            f = thread;
            thread.start();
        } catch (Exception e2) {
            u.a(e2, null, w.c, null, "loadAdvertisingInfo2");
            RMLog.e("Error loading advertising info: " + e2.getMessage());
        }
    }

    public static void a(String str, String str2) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        Object obj;
        JSONObject jSONObject3;
        if (str == null || str.equals("") || str2.equals("")) {
            RMLog.d("Null object somewhere: " + str2 + str);
            return;
        }
        p++;
        if (r != null) {
            int i2 = 0;
            JSONObject jSONObject4 = null;
            while (true) {
                if (i2 >= r.length()) {
                    break;
                }
                try {
                    jSONObject3 = r.getJSONObject(i2);
                } catch (JSONException e2) {
                    u.a(e2, null, w.c, null, "recordCampaign1");
                    jSONObject3 = null;
                }
                try {
                } catch (JSONException e3) {
                    e = e3;
                }
                if (jSONObject3.names().getString(0).equals(str)) {
                    try {
                        r = a(r, i2);
                        jSONObject4 = jSONObject3;
                        break;
                    } catch (JSONException e4) {
                        jSONObject4 = jSONObject3;
                        e = e4;
                        u.a(e, null, w.c, null, "recordCampaign2");
                        e.printStackTrace();
                        i2++;
                    }
                } else {
                    continue;
                    i2++;
                }
            }
            if (jSONObject4 == null) {
                jSONObject4 = new JSONObject();
                try {
                    jSONObject4.put(str, 1);
                } catch (JSONException e5) {
                    u.a(e5, null, w.c, null, "recordCampaign3");
                }
            } else {
                try {
                    jSONObject4.put(str, jSONObject4.getInt(str) + 1);
                } catch (JSONException e6) {
                    u.a(e6, null, w.c, null, "recordCampaign4");
                }
            }
            r = a(r, jSONObject4);
            r = a(n, r);
        }
        if (q != null) {
            try {
                jSONObject = q.getJSONObject(0).getJSONObject(str2);
            } catch (JSONException e7) {
                jSONObject = null;
            }
            if (jSONObject == null) {
                JSONObject jSONObject5 = new JSONObject();
                try {
                    q.getJSONObject(0).put(str2, jSONObject5);
                    jSONObject2 = jSONObject5;
                } catch (JSONException e8) {
                    u.a(e8, null, w.c, null, "recordCampaign6");
                    e8.printStackTrace();
                    jSONObject2 = jSONObject5;
                }
            } else {
                jSONObject2 = jSONObject;
            }
            try {
                obj = jSONObject2.get(str);
            } catch (Exception e9) {
                obj = null;
            }
            if (obj == null) {
                if (o != 0) {
                    try {
                        jSONObject2.put(str, new JSONArray("[" + p + "]"));
                    } catch (JSONException e10) {
                        u.a(e10, null, w.c, null, "recordCampaign8");
                    }
                } else {
                    try {
                        jSONObject2.put(str, 1);
                    } catch (JSONException e11) {
                        u.a(e11, null, w.c, null, "recordCampaign9");
                    }
                }
            } else if (obj instanceof JSONArray) {
                ((JSONArray) obj).put(p);
                if (((JSONArray) obj).length() > o) {
                    jSONObject2.remove(str);
                    try {
                        jSONObject2.put(str, ((JSONArray) obj).length());
                    } catch (JSONException e12) {
                        u.a(e12, null, w.c, null, "recordCampaign10");
                    }
                }
            } else {
                try {
                    jSONObject2.put(str, ((Integer) obj).intValue() + 1);
                } catch (JSONException e13) {
                    u.a(e13, null, w.c, null, "recordCampaign11");
                }
            }
        }
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f4738a).edit();
        if (r != null) {
            edit.putString("history", r.toString());
        }
        if (q != null) {
            edit.putString("sessions", q.toString());
        }
        edit.commit();
    }

    public static void a(String str, boolean z, double d2, double d3) {
        JSONObject jSONObject;
        for (int i2 = 0; i2 < d.length(); i2++) {
            try {
                jSONObject = d.getJSONObject(i2);
            } catch (JSONException e2) {
                u.a(e2, null, w.c, null, "addClickAndRedirectsTime1");
                e2.printStackTrace();
                jSONObject = null;
            }
            try {
                if (jSONObject.getString("id").equals(str)) {
                    a(d, i2);
                    jSONObject.put(z ? "fetchClick" : "click", d2);
                    jSONObject.put("redirects", d3);
                    d.put(i2, jSONObject);
                }
            } catch (JSONException e3) {
                u.a(e3, null, w.c, null, "addClickAndRedirectsTime2");
                e3.printStackTrace();
            }
        }
    }

    private static void a(JSONObject jSONObject, String str, String str2) {
        if (str2 == null || str2.equals("")) {
            return;
        }
        jSONObject.put(str, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0106 A[Catch: JSONException -> 0x01ed, TryCatch #0 {JSONException -> 0x01ed, blocks: (B:3:0x001b, B:5:0x0023, B:6:0x002a, B:8:0x003f, B:10:0x0047, B:11:0x004e, B:13:0x0056, B:18:0x0064, B:20:0x006a, B:23:0x0071, B:24:0x0073, B:26:0x00ef, B:28:0x00f9, B:32:0x0106, B:35:0x010e, B:37:0x0120, B:38:0x0129, B:40:0x0182, B:41:0x018f, B:43:0x0193, B:45:0x0197, B:46:0x019e, B:48:0x01a2, B:49:0x01a9, B:50:0x01d8, B:69:0x020b, B:54:0x01e2, B:57:0x01e9, B:63:0x01fb, B:66:0x0202), top: B:82:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0120 A[Catch: JSONException -> 0x01ed, TryCatch #0 {JSONException -> 0x01ed, blocks: (B:3:0x001b, B:5:0x0023, B:6:0x002a, B:8:0x003f, B:10:0x0047, B:11:0x004e, B:13:0x0056, B:18:0x0064, B:20:0x006a, B:23:0x0071, B:24:0x0073, B:26:0x00ef, B:28:0x00f9, B:32:0x0106, B:35:0x010e, B:37:0x0120, B:38:0x0129, B:40:0x0182, B:41:0x018f, B:43:0x0193, B:45:0x0197, B:46:0x019e, B:48:0x01a2, B:49:0x01a9, B:50:0x01d8, B:69:0x020b, B:54:0x01e2, B:57:0x01e9, B:63:0x01fb, B:66:0x0202), top: B:82:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0182 A[Catch: JSONException -> 0x01ed, TryCatch #0 {JSONException -> 0x01ed, blocks: (B:3:0x001b, B:5:0x0023, B:6:0x002a, B:8:0x003f, B:10:0x0047, B:11:0x004e, B:13:0x0056, B:18:0x0064, B:20:0x006a, B:23:0x0071, B:24:0x0073, B:26:0x00ef, B:28:0x00f9, B:32:0x0106, B:35:0x010e, B:37:0x0120, B:38:0x0129, B:40:0x0182, B:41:0x018f, B:43:0x0193, B:45:0x0197, B:46:0x019e, B:48:0x01a2, B:49:0x01a9, B:50:0x01d8, B:69:0x020b, B:54:0x01e2, B:57:0x01e9, B:63:0x01fb, B:66:0x0202), top: B:82:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0193 A[Catch: JSONException -> 0x01ed, TryCatch #0 {JSONException -> 0x01ed, blocks: (B:3:0x001b, B:5:0x0023, B:6:0x002a, B:8:0x003f, B:10:0x0047, B:11:0x004e, B:13:0x0056, B:18:0x0064, B:20:0x006a, B:23:0x0071, B:24:0x0073, B:26:0x00ef, B:28:0x00f9, B:32:0x0106, B:35:0x010e, B:37:0x0120, B:38:0x0129, B:40:0x0182, B:41:0x018f, B:43:0x0193, B:45:0x0197, B:46:0x019e, B:48:0x01a2, B:49:0x01a9, B:50:0x01d8, B:69:0x020b, B:54:0x01e2, B:57:0x01e9, B:63:0x01fb, B:66:0x0202), top: B:82:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x020b A[Catch: JSONException -> 0x01ed, TryCatch #0 {JSONException -> 0x01ed, blocks: (B:3:0x001b, B:5:0x0023, B:6:0x002a, B:8:0x003f, B:10:0x0047, B:11:0x004e, B:13:0x0056, B:18:0x0064, B:20:0x006a, B:23:0x0071, B:24:0x0073, B:26:0x00ef, B:28:0x00f9, B:32:0x0106, B:35:0x010e, B:37:0x0120, B:38:0x0129, B:40:0x0182, B:41:0x018f, B:43:0x0193, B:45:0x0197, B:46:0x019e, B:48:0x01a2, B:49:0x01a9, B:50:0x01d8, B:69:0x020b, B:54:0x01e2, B:57:0x01e9, B:63:0x01fb, B:66:0x0202), top: B:82:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0211  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JSONObject b() {
        boolean z;
        ((Activity) f4738a).getWindowManager().getDefaultDisplay().getMetrics(g);
        try {
            if (k == 0.0d) {
                k = System.currentTimeMillis();
            }
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            h.a(jSONObject2);
            if (jSONObject2.length() != 0) {
                String string = jSONObject2.has("age_range_max") ? jSONObject2.getString("age_range_max") : null;
                String string2 = jSONObject2.has("age_range_min") ? jSONObject2.getString("age_range_min") : null;
                if (string != null || string2 != null) {
                    if (string != null && string2 != null) {
                        l = Integer.parseInt(string) < 13 || Integer.parseInt(string2) < 13;
                    } else if (string2 != null) {
                        l = Integer.parseInt(string2) < 13;
                    } else if (string != null) {
                        if (Integer.parseInt(string) < 13) {
                            z = true;
                            l = z;
                        }
                    }
                    jSONObject.put("social", jSONObject2);
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("width", g.widthPixels);
                    jSONObject4.put("height", g.heightPixels);
                    jSONObject4.put("scale", g.density);
                    jSONObject4.put("density_dpi", g.densityDpi);
                    jSONObject3.put("screen", jSONObject4);
                    a(jSONObject3, PubMaticConstants.MODEL_PARAM, Build.MODEL);
                    a(jSONObject3, PhoenixConstants.APP_API_PARAM, new StringBuilder().append(Build.VERSION.SDK_INT).toString());
                    a(jSONObject3, "manufacturer", Build.MANUFACTURER);
                    a(jSONObject3, "os_version", Build.VERSION.RELEASE);
                    Display defaultDisplay = ((WindowManager) f4738a.getSystemService("window")).getDefaultDisplay();
                    int rotation = !(Build.VERSION.RELEASE.startsWith("1.") && !Build.VERSION.RELEASE.startsWith("2.0") && !Build.VERSION.RELEASE.startsWith("2.1")) ? defaultDisplay.getRotation() : defaultDisplay.getOrientation();
                    a(jSONObject3, "orientation", rotation != 0 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : rotation == 1 ? "90" : rotation == 2 ? "180" : rotation == 3 ? "270" : "-1");
                    a(jSONObject3, "locale", h());
                    if (com.revmob.internal.c.c()) {
                        jSONObject3.put(a.b.LOCATION, e());
                    }
                    a(jSONObject3, "android_id", "");
                    a(jSONObject3, "serial", "");
                    a(jSONObject3, "identifier_for_advertising", h);
                    a(jSONObject3, "limit_ad_tracking", j());
                    a(jSONObject3, "is_kid", i());
                    jSONObject.put("device", jSONObject3);
                    JSONObject jSONObject5 = new JSONObject();
                    jSONObject5.put("name", RevMobClient.f4785a);
                    jSONObject5.put("version", RevMobClient.b);
                    jSONObject5.put("bannerMethod", e);
                    e = null;
                    jSONObject.put(ServerProtocol.DIALOG_PARAM_SDK_VERSION, jSONObject5);
                    jSONObject.put("app", g());
                    if (RevMobBanner.isBannerImpression) {
                        jSONObject.put("bannerImpressions", f());
                        RevMobBanner.setBannerImpression(false);
                    }
                    if (c) {
                        if (r != null) {
                            jSONObject.put("campaigns", r);
                        }
                        if (q != null) {
                            jSONObject.put("sessions", q);
                        }
                        JSONObject jSONObject6 = new JSONObject();
                        jSONObject6.put("date", (int) (k / 1000.0d));
                        jSONObject6.put(VastIconXmlManager.DURATION, (System.currentTimeMillis() - k) / 1000.0d);
                        jSONObject6.put("ads", d);
                        jSONObject.put("time", jSONObject6);
                        d = new JSONArray();
                    }
                    c = false;
                    return jSONObject;
                }
            }
            z = false;
            l = z;
            jSONObject.put("social", jSONObject2);
            JSONObject jSONObject32 = new JSONObject();
            JSONObject jSONObject42 = new JSONObject();
            jSONObject42.put("width", g.widthPixels);
            jSONObject42.put("height", g.heightPixels);
            jSONObject42.put("scale", g.density);
            jSONObject42.put("density_dpi", g.densityDpi);
            jSONObject32.put("screen", jSONObject42);
            a(jSONObject32, PubMaticConstants.MODEL_PARAM, Build.MODEL);
            a(jSONObject32, PhoenixConstants.APP_API_PARAM, new StringBuilder().append(Build.VERSION.SDK_INT).toString());
            a(jSONObject32, "manufacturer", Build.MANUFACTURER);
            a(jSONObject32, "os_version", Build.VERSION.RELEASE);
            Display defaultDisplay2 = ((WindowManager) f4738a.getSystemService("window")).getDefaultDisplay();
            if (!(Build.VERSION.RELEASE.startsWith("1.") && !Build.VERSION.RELEASE.startsWith("2.0") && !Build.VERSION.RELEASE.startsWith("2.1"))) {
            }
            a(jSONObject32, "orientation", rotation != 0 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : rotation == 1 ? "90" : rotation == 2 ? "180" : rotation == 3 ? "270" : "-1");
            a(jSONObject32, "locale", h());
            if (com.revmob.internal.c.c()) {
            }
            a(jSONObject32, "android_id", "");
            a(jSONObject32, "serial", "");
            a(jSONObject32, "identifier_for_advertising", h);
            a(jSONObject32, "limit_ad_tracking", j());
            a(jSONObject32, "is_kid", i());
            jSONObject.put("device", jSONObject32);
            JSONObject jSONObject52 = new JSONObject();
            jSONObject52.put("name", RevMobClient.f4785a);
            jSONObject52.put("version", RevMobClient.b);
            jSONObject52.put("bannerMethod", e);
            e = null;
            jSONObject.put(ServerProtocol.DIALOG_PARAM_SDK_VERSION, jSONObject52);
            jSONObject.put("app", g());
            if (RevMobBanner.isBannerImpression) {
            }
            if (c) {
            }
            c = false;
            return jSONObject;
        } catch (JSONException e2) {
            u.a(e2, null, w.c, null, "revmobJSON");
            return null;
        }
    }

    private static JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        try {
            LocationManager locationManager = (LocationManager) f4738a.getSystemService(a.b.LOCATION);
            if (locationManager != null && (f4738a.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 || f4738a.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0)) {
                Location lastKnownLocation = locationManager.getLastKnownLocation("gps");
                Location lastKnownLocation2 = locationManager.getLastKnownLocation("network");
                if (lastKnownLocation == null || lastKnownLocation2 == null) {
                    if (lastKnownLocation != null) {
                        jSONObject.put("latitude", lastKnownLocation.getLatitude());
                        jSONObject.put("longitude", lastKnownLocation.getLongitude());
                        jSONObject.put("accuracy", lastKnownLocation.getAccuracy());
                    } else if (lastKnownLocation2 != null) {
                        jSONObject.put("latitude", lastKnownLocation2.getLatitude());
                        jSONObject.put("longitude", lastKnownLocation2.getLongitude());
                        jSONObject.put("accuracy", lastKnownLocation2.getAccuracy());
                    }
                } else if (lastKnownLocation.getTime() > lastKnownLocation2.getTime()) {
                    jSONObject.put("latitude", lastKnownLocation.getLatitude());
                    jSONObject.put("longitude", lastKnownLocation.getLongitude());
                    jSONObject.put("accuracy", lastKnownLocation.getAccuracy());
                } else {
                    jSONObject.put("latitude", lastKnownLocation2.getLatitude());
                    jSONObject.put("longitude", lastKnownLocation2.getLongitude());
                    jSONObject.put("accuracy", lastKnownLocation2.getAccuracy());
                }
            }
        } catch (Exception e2) {
            u.a(e2, null, w.c, null, "getUserLocation");
            e2.printStackTrace();
        }
        return jSONObject;
    }

    private static JSONObject f() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("bannerCount", RevMobBanner.bannerCount);
        JSONObject jSONObject2 = new JSONObject();
        for (int i2 = 0; i2 < RevMobBanner.usedCampaigns.size(); i2++) {
            jSONObject2.put(String.valueOf(i2 + 1), RevMobBanner.usedCampaigns.get(i2));
        }
        jSONObject.put("campaigns", jSONObject2);
        return jSONObject;
    }

    private static JSONObject g() {
        JSONObject jSONObject = new JSONObject();
        a(jSONObject, "bundle_identifier", f4738a.getPackageName());
        try {
            Resources resources = f4738a.getResources();
            a(jSONObject, NativeProtocol.BRIDGE_ARG_APP_NAME_STRING, resources.getText(resources.getIdentifier(NativeProtocol.BRIDGE_ARG_APP_NAME_STRING, "string", f4738a.getPackageName())).toString());
        } catch (Exception e2) {
            u.a(e2, null, w.c, null, "getAppJSON1");
        }
        try {
            PackageInfo packageInfo = f4738a.getPackageManager().getPackageInfo(f4738a.getPackageName(), 0);
            a(jSONObject, "app_version", String.valueOf(packageInfo.versionCode));
            a(jSONObject, "app_version_name", packageInfo.versionName);
        } catch (Exception e3) {
            u.a(e3, null, w.c, null, "getAppJSON2");
        }
        if (!new g(f4738a).b()) {
            a(jSONObject, "install_not_registered", "true");
        }
        return jSONObject;
    }

    private static String h() {
        return Locale.getDefault().toString().replace('_', '-');
    }

    private static String i() {
        return l ? "true" : Consts.False;
    }

    private static String j() {
        return m ? "true" : Consts.False;
    }
}
