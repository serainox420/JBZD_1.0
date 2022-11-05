package com.google.android.gms.internal;
@zzme
/* loaded from: classes.dex */
public class zzgh {
    public static zzgj zza(zzgl zzglVar, long j) {
        if (zzglVar == null) {
            return null;
        }
        return zzglVar.zzc(j);
    }

    public static boolean zza(zzgl zzglVar, zzgj zzgjVar, long j, String... strArr) {
        if (zzglVar == null || zzgjVar == null) {
            return false;
        }
        return zzglVar.zza(zzgjVar, j, strArr);
    }

    public static boolean zza(zzgl zzglVar, zzgj zzgjVar, String... strArr) {
        if (zzglVar == null || zzgjVar == null) {
            return false;
        }
        return zzglVar.zza(zzgjVar, strArr);
    }

    public static zzgj zzb(zzgl zzglVar) {
        if (zzglVar == null) {
            return null;
        }
        return zzglVar.zzfB();
    }
}
