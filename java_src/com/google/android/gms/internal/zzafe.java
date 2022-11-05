package com.google.android.gms.internal;
/* loaded from: classes.dex */
public class zzafe {
    private final zzbxg zzaJB;

    public zzafe(zzbxg zzbxgVar) {
        this.zzaJB = (zzbxg) com.google.android.gms.common.internal.zzac.zzw(zzbxgVar);
    }

    private static zzbxg zza(int i, long j, long j2) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(j2 > j);
        com.google.android.gms.common.internal.zzac.zzax(Math.abs(j) <= 86400000);
        if (Math.abs(j2) > 86400000) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        zzbxg zzbxgVar = new zzbxg();
        zzbxgVar.zzcsS = i;
        zzbxgVar.zzcur = j;
        zzbxgVar.zzcus = j2;
        return zzbxgVar;
    }

    public static zzafe zze(long j, long j2) {
        return new zzafe(zza(1, j, j2));
    }

    public static zzafe zzf(long j, long j2) {
        return new zzafe(zza(2, j, j2));
    }

    public zzbxg zzAe() {
        return this.zzaJB;
    }
}
