package com.flurry.sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
/* loaded from: classes2.dex */
public final class lv {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3043a = lv.class.getSimpleName();

    private static PackageInfo d(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            km.a(f3043a, "Cannot find package info for package: " + context.getPackageName());
            return null;
        }
    }

    private static ApplicationInfo e(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
            km.a(f3043a, "Cannot find application info for package: " + context.getPackageName());
            return null;
        }
    }

    public static String a(Context context) {
        PackageInfo d = d(context);
        return (d == null || d.packageName == null) ? "" : d.packageName;
    }

    public static String b(Context context) {
        PackageInfo d = d(context);
        return (d == null || d.versionName == null) ? "" : d.versionName;
    }

    public static Bundle c(Context context) {
        ApplicationInfo e = e(context);
        return (e == null || e.metaData == null) ? Bundle.EMPTY : e.metaData;
    }
}
