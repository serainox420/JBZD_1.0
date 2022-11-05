package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.internal.zzadg;
/* loaded from: classes2.dex */
public class zzd {
    public static int zzC(Context context, String str) {
        return zzc(zzD(context, str));
    }

    public static PackageInfo zzD(Context context, String str) {
        try {
            return zzadg.zzbi(context).getPackageInfo(str, 128);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static boolean zzE(Context context, String str) {
        "com.google.android.gms".equals(str);
        try {
            return (zzadg.zzbi(context).getApplicationInfo(str, 0).flags & 2097152) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static int zzc(PackageInfo packageInfo) {
        Bundle bundle;
        if (packageInfo == null || packageInfo.applicationInfo == null || (bundle = packageInfo.applicationInfo.metaData) == null) {
            return -1;
        }
        return bundle.getInt("com.google.android.gms.version", -1);
    }
}
