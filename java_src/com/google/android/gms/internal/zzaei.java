package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzaei {
    private final zzbwm zzaJe;

    public zzaei(zzbwm zzbwmVar) {
        this.zzaJe = (zzbwm) com.google.android.gms.common.internal.zzac.zzw(zzbwmVar);
    }

    public static zzaei zza(int i, int[] iArr) {
        com.google.android.gms.common.internal.zzac.zzax(iArr != null && iArr.length > 0);
        return new zzaei(zza(i, iArr, 3000L));
    }

    private static zzbwm zza(int i, int[] iArr, long j) {
        zzbwm zzbwmVar = new zzbwm();
        zzbwmVar.zzcsS = i;
        zzbwmVar.zzcsT = j;
        zzbwmVar.zzcsU = iArr;
        return zzbwmVar;
    }

    public static zzaei zzb(int[] iArr) {
        return zza(1, iArr);
    }

    public zzbwm zzzV() {
        return this.zzaJe;
    }
}
