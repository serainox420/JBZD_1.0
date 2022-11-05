package com.google.android.gms.internal;

import android.util.Log;
@zzme
/* loaded from: classes.dex */
public class zzqf {
    public static void e(String str) {
        if (zzak(6)) {
            Log.e("Ads", str);
        }
    }

    public static void zza(String str, Throwable th) {
        if (zzak(3)) {
            Log.d("Ads", str, th);
        }
    }

    public static boolean zzak(int i) {
        return i >= 5 || Log.isLoggable("Ads", i);
    }

    public static void zzb(String str, Throwable th) {
        if (zzak(6)) {
            Log.e("Ads", str, th);
        }
    }

    public static void zzbf(String str) {
        if (zzak(3)) {
            Log.d("Ads", str);
        }
    }

    public static void zzbg(String str) {
        if (zzak(4)) {
            Log.i("Ads", str);
        }
    }

    public static void zzbh(String str) {
        if (zzak(5)) {
            Log.w("Ads", str);
        }
    }

    public static void zzc(String str, Throwable th) {
        if (zzak(5)) {
            Log.w("Ads", str, th);
        }
    }
}
