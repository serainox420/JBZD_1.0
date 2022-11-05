package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzafc {
    private final zzbwx zzaJA;

    public zzafc(zzbwx zzbwxVar) {
        this.zzaJA = (zzbwx) com.google.android.gms.common.internal.zzac.zzw(zzbwxVar);
    }

    public static zzafc zza(int i, int i2, double d) {
        com.google.android.gms.common.internal.zzac.zzax(d >= 0.0d);
        return new zzafc(zza(2, 1, i, i2, d, d, 3000L, 0L));
    }

    public static zzafc zza(int i, int i2, double d, long j) {
        com.google.android.gms.common.internal.zzac.zzax(d >= 0.0d);
        return new zzafc(zza(1, 1, i, i2, d, d, 0L, j));
    }

    private static zzbwx zza(int i, int i2, int i3, int i4, double d, double d2, long j, long j2) {
        zzbwx zzbwxVar = new zzbwx();
        zzbwxVar.zzcsS = i;
        zzbwxVar.zzcud = i2;
        zzbwxVar.zzcsT = j;
        zzbwxVar.zzcui = j2;
        if (i2 == 1) {
            zzbwxVar.zzcue = i3;
            zzbwxVar.zzcuf = i4;
            zzbwxVar.zzcug = d;
            zzbwxVar.zzcuh = d2;
        }
        return zzbwxVar;
    }

    public static zzafc zzb(int i, int i2, double d) {
        com.google.android.gms.common.internal.zzac.zzax(d >= 0.0d);
        return new zzafc(zza(3, 1, i, i2, d, d, 3000L, 0L));
    }

    public zzbwx zzAd() {
        return this.zzaJA;
    }
}
