package com.google.android.gms.internal;

import android.content.Context;
/* loaded from: classes2.dex */
class zzbbe {
    public static void zza(String str, Throwable th, Context context) {
        zzbbu.zzb(str, th);
        if (com.google.android.gms.common.util.zzg.zza(context, th)) {
            zzbbu.v("Crash reported successfully.");
        } else {
            zzbbu.v("Failed to report crash");
        }
    }

    public static void zzb(String str, Context context) {
        zzbbu.e(str);
        if (com.google.android.gms.common.util.zzg.zza(context, new RuntimeException(str))) {
            zzbbu.v("Crash reported successfully.");
        } else {
            zzbbu.v("Failed to report crash");
        }
    }

    public static void zzb(String str, Throwable th, Context context) {
        zzbbu.zzc(str, th);
        if (com.google.android.gms.common.util.zzg.zza(context, th)) {
            zzbbu.v("Crash reported successfully.");
        } else {
            zzbbu.v("Failed to report crash");
        }
    }

    public static void zzc(String str, Context context) {
        zzbbu.zzbh(str);
        if (com.google.android.gms.common.util.zzg.zza(context, new RuntimeException(str))) {
            zzbbu.v("Crash reported successfully.");
        } else {
            zzbbu.v("Failed to report crash");
        }
    }
}
