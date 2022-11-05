package com.google.android.gms.internal;

import android.util.Log;
/* loaded from: classes2.dex */
public class zzcf {
    private static boolean zzcU = false;

    public static String zza(String str, String str2, Object obj) {
        if (zzf(6)) {
            String zza = zza(str, str2, obj);
            Log.e("ctxmgr", zza);
            return zza;
        }
        return "";
    }

    public static String zza(String str, String str2, Throwable th) {
        if (zzf(6)) {
            String zza = zza(str, str2, new Object[0]);
            Log.e("ctxmgr", zza, th);
            return zza;
        }
        return "";
    }

    private static String zza(String str, String str2, Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return String.format("[%s]%s", str, str2);
        }
        String valueOf = String.valueOf(String.format("[%s]", str));
        String valueOf2 = String.valueOf(String.format(str2, objArr));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public static String zzd(String str, String str2) {
        if (zzf(6)) {
            String zza = zza(str, str2, new Object[0]);
            Log.e("ctxmgr", zza);
            return zza;
        }
        return "";
    }

    private static boolean zzf(int i) {
        return Log.isLoggable("ctxmgr", i);
    }
}
