package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
/* loaded from: classes2.dex */
final class zzarp {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzbH(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.google.android.gms", 64);
            if (com.google.android.gms.common.zzh.zzaN(context).zza(context.getPackageManager(), packageInfo)) {
                return true;
            }
            String valueOf = String.valueOf(packageInfo.packageName);
            Log.e("InstantAppsApi", valueOf.length() != 0 ? "Incorrect signature for package ".concat(valueOf) : new String("Incorrect signature for package "));
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
