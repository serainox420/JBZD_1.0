package com.google.android.gms.internal;
/* loaded from: classes.dex */
public class zzafg {
    private final zzbxj zzaJD;

    public zzafg(zzbxj zzbxjVar) {
        this.zzaJD = (zzbxj) com.google.android.gms.common.internal.zzac.zzw(zzbxjVar);
    }

    public static zzafg zzp(int i, int i2) {
        boolean z = true;
        if (i != 1 && i != 2 && i != 3) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        return new zzafg(zzq(i, i2));
    }

    private static zzbxj zzq(int i, int i2) {
        zzbxj zzbxjVar = new zzbxj();
        zzbxjVar.zzcsS = i;
        zzbxjVar.zzcuw = i2;
        return zzbxjVar;
    }

    public zzbxj zzAg() {
        return this.zzaJD;
    }
}
