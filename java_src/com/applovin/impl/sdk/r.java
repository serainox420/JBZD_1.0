package com.applovin.impl.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.applovin.sdk.AppLovinLogger;
import com.mopub.common.GpsHelper;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r {
    private static List e = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1666a;
    private final Context b;
    private final AppLovinLogger c;
    private final Map d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(AppLovinSdkImpl appLovinSdkImpl) {
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f1666a = appLovinSdkImpl;
        this.c = appLovinSdkImpl.getLogger();
        this.b = appLovinSdkImpl.getApplicationContext();
        this.d = Collections.synchronizedMap(new HashMap());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str, Context context) {
        if (str == null) {
            throw new IllegalArgumentException("No permission name specified");
        }
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v a() {
        TelephonyManager telephonyManager;
        Object obj = this.d.get(v.class);
        if (obj != null) {
            return (v) obj;
        }
        v vVar = new v();
        vVar.h = Locale.getDefault();
        vVar.f1670a = Build.MODEL;
        vVar.b = Build.VERSION.RELEASE;
        vVar.c = Build.MANUFACTURER;
        vVar.e = Build.VERSION.SDK_INT;
        vVar.d = Build.DEVICE;
        if (a("android.permission.READ_PHONE_STATE") && (telephonyManager = (TelephonyManager) this.b.getSystemService("phone")) != null) {
            vVar.f = telephonyManager.getSimCountryIso().toUpperCase(Locale.ENGLISH);
            String networkOperatorName = telephonyManager.getNetworkOperatorName();
            try {
                vVar.g = URLEncoder.encode(networkOperatorName, "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                vVar.g = networkOperatorName;
            }
        }
        try {
            vVar.i = this.b.getPackageManager().getPackageInfo((String) this.f1666a.getSettingsManager().a(bx.bo), 0).versionCode;
        } catch (Throwable th) {
        }
        this.d.put(v.class, vVar);
        return vVar;
    }

    boolean a(String str) {
        return a(str, this.b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u b() {
        Object obj = this.d.get(u.class);
        if (obj != null) {
            return (u) obj;
        }
        ApplicationInfo applicationInfo = this.b.getApplicationInfo();
        long lastModified = new File(applicationInfo.sourceDir).lastModified();
        PackageManager packageManager = this.b.getPackageManager();
        PackageInfo packageInfo = null;
        try {
            packageInfo = packageManager.getPackageInfo(this.b.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e2) {
        }
        u uVar = new u();
        uVar.c = applicationInfo.packageName;
        uVar.d = lastModified;
        uVar.f1669a = String.valueOf(packageManager.getApplicationLabel(applicationInfo));
        uVar.b = packageInfo != null ? packageInfo.versionName : "";
        this.d.put(u.class, uVar);
        return uVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t c() {
        Object invoke;
        try {
            Class<?> cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            if (cls != null && (invoke = cls.getMethod("getAdvertisingIdInfo", Context.class).invoke(null, this.b)) != null) {
                Class<?> cls2 = invoke.getClass();
                Object invoke2 = cls2.getMethod(GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, null).invoke(invoke, null);
                Object invoke3 = cls2.getMethod("getId", null).invoke(invoke, null);
                t tVar = new t();
                String str = (String) invoke3;
                String str2 = str == null ? "" : str;
                tVar.f1668a = ((Boolean) invoke2).booleanValue();
                tVar.b = str2;
                return tVar;
            }
        } catch (ClassNotFoundException e2) {
            this.c.userError("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", e2);
        } catch (Throwable th) {
            this.c.e("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", th);
        }
        t tVar2 = new t();
        tVar2.b = "";
        tVar2.f1668a = false;
        return tVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List d() {
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        List<ResolveInfo> queryIntentActivities = this.b.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities == null || queryIntentActivities.isEmpty()) {
            return Collections.emptyList();
        }
        if (e.size() == queryIntentActivities.size() && e.size() > 0 && ((u) e.get(0)).f1669a.equals(queryIntentActivities.get(0).activityInfo.name)) {
            return new ArrayList(e);
        }
        ArrayList arrayList = new ArrayList(queryIntentActivities.size());
        HashSet hashSet = new HashSet();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            try {
                long lastModified = new File(resolveInfo.activityInfo.applicationInfo.sourceDir).lastModified();
                u uVar = new u();
                uVar.c = di.a(resolveInfo.activityInfo.packageName, this.f1666a);
                uVar.d = lastModified;
                uVar.f1669a = resolveInfo.activityInfo.name;
                if (!hashSet.contains(uVar.c)) {
                    arrayList.add(uVar);
                    hashSet.add(uVar.c);
                }
            } catch (Throwable th) {
                this.c.w("DataCollector", "Unable to read information for app \"" + resolveInfo + "\"", th);
            }
        }
        try {
            Collections.sort(arrayList, new s(this));
        } catch (Throwable th2) {
            this.c.w("DataCollector", "Unable to sort applications", th2);
        }
        e = arrayList;
        return arrayList;
    }
}
