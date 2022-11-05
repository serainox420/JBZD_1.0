package com.facebook.ads.internal.f;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.facebook.ads.internal.f;
import com.facebook.ads.internal.util.h;
import com.mopub.common.GpsHelper;
/* loaded from: classes.dex */
public class i {
    private static boolean r = false;

    /* renamed from: a  reason: collision with root package name */
    public static final String f2156a = Build.VERSION.RELEASE;
    public static String b = "";
    public static String c = "";
    public static String d = "";
    public static String e = "";
    public static String f = "";
    public static int g = 0;
    public static String h = "";
    public static String i = "";
    public static int j = 0;
    public static String k = "";
    public static int l = 0;
    public static String m = "";
    public static String n = "";
    public static String o = "";
    public static boolean p = false;
    public static String q = "";

    public static synchronized void a(Context context) {
        synchronized (i.class) {
            if (!r) {
                r = true;
                c(context);
            }
            d(context);
        }
    }

    public static void b(Context context) {
        h.a aVar;
        com.facebook.ads.internal.f fVar;
        String str;
        if (!r) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("SDKIDFA", 0);
            if (sharedPreferences.contains("attributionId")) {
                n = sharedPreferences.getString("attributionId", "");
            }
            if (sharedPreferences.contains(GpsHelper.ADVERTISING_ID_KEY)) {
                o = sharedPreferences.getString(GpsHelper.ADVERTISING_ID_KEY, "");
                p = sharedPreferences.getBoolean("limitAdTracking", p);
                q = f.c.SHARED_PREFS.name();
            }
            try {
                aVar = com.facebook.ads.internal.util.h.a(context.getContentResolver());
            } catch (Exception e2) {
                com.facebook.ads.internal.util.d.a(com.facebook.ads.internal.util.c.a(e2, "Error retrieving attribution id from fb4a"));
                aVar = null;
            }
            if (aVar != null && (str = aVar.f2241a) != null) {
                n = str;
            }
            try {
                fVar = com.facebook.ads.internal.f.a(context, aVar);
            } catch (Exception e3) {
                com.facebook.ads.internal.util.d.a(com.facebook.ads.internal.util.c.a(e3, "Error retrieving advertising id from Google Play Services"));
                fVar = null;
            }
            if (fVar != null) {
                String a2 = fVar.a();
                Boolean valueOf = Boolean.valueOf(fVar.b());
                if (a2 != null) {
                    o = a2;
                    p = valueOf.booleanValue();
                    q = fVar.c().name();
                }
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString("attributionId", n);
            edit.putString(GpsHelper.ADVERTISING_ID_KEY, o);
            edit.putBoolean("limitAdTracking", p);
            edit.apply();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private static void c(Context context) {
        String networkOperatorName;
        String installerPackageName;
        PackageManager packageManager = context.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            d = packageInfo.packageName;
            f = packageInfo.versionName;
            g = packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
        }
        try {
            if (d != null && d.length() >= 0 && (installerPackageName = packageManager.getInstallerPackageName(d)) != null && installerPackageName.length() > 0) {
                h = installerPackageName;
            }
        } catch (Exception e3) {
        }
        try {
            CharSequence applicationLabel = packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
            if (applicationLabel != null && applicationLabel.length() > 0) {
                e = applicationLabel.toString();
            }
        } catch (PackageManager.NameNotFoundException e4) {
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null && (networkOperatorName = telephonyManager.getNetworkOperatorName()) != null && networkOperatorName.length() > 0) {
            i = networkOperatorName;
        }
        String str = Build.MANUFACTURER;
        if (str != null && str.length() > 0) {
            b = str;
        }
        String str2 = Build.MODEL;
        if (str2 == null || str2.length() <= 0) {
            return;
        }
        c = Build.MODEL;
    }

    private static void d(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                return;
            }
            j = activeNetworkInfo.getType();
            k = activeNetworkInfo.getTypeName();
            l = activeNetworkInfo.getSubtype();
            m = activeNetworkInfo.getSubtypeName();
        } catch (Exception e2) {
        }
    }
}
