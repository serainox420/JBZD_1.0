package com.flurry.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.flurry.sdk.lq;
/* loaded from: classes2.dex */
public class ju implements lq.a {

    /* renamed from: a  reason: collision with root package name */
    private static ju f2939a;
    private static final String b = ju.class.getSimpleName();
    private String c;
    private String d;

    public static synchronized ju a() {
        ju juVar;
        synchronized (ju.class) {
            if (f2939a == null) {
                f2939a = new ju();
            }
            juVar = f2939a;
        }
        return juVar;
    }

    private ju() {
        lp a2 = lp.a();
        this.c = (String) a2.a("VersionName");
        a2.a("VersionName", (lq.a) this);
        km.a(4, b, "initSettings, VersionName = " + this.c);
    }

    public static String b() {
        return Build.VERSION.RELEASE;
    }

    public static String c() {
        return Build.DEVICE;
    }

    public static String d() {
        return Build.ID;
    }

    public static String e() {
        return Build.MANUFACTURER;
    }

    public static String f() {
        return Build.MODEL;
    }

    public static String a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return null;
        }
        try {
            return packageManager.getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "unknown";
        }
    }

    public final synchronized String g() {
        String str;
        if (!TextUtils.isEmpty(this.c)) {
            str = this.c;
        } else if (!TextUtils.isEmpty(this.d)) {
            str = this.d;
        } else {
            this.d = h();
            str = this.d;
        }
        return str;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x002e -> B:5:0x0019). Please submit an issue!!! */
    private static String h() {
        PackageInfo packageInfo;
        try {
            Context context = jy.a().f2947a;
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (Throwable th) {
            km.a(6, b, "", th);
        }
        if (packageInfo.versionName != null) {
            return packageInfo.versionName;
        }
        if (packageInfo.versionCode != 0) {
            return Integer.toString(packageInfo.versionCode);
        }
        return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
    }

    @Override // com.flurry.sdk.lq.a
    public final void a(String str, Object obj) {
        if (str.equals("VersionName")) {
            this.c = (String) obj;
            km.a(4, b, "onSettingUpdate, VersionName = " + this.c);
            return;
        }
        km.a(6, b, "onSettingUpdate internal error!");
    }
}
