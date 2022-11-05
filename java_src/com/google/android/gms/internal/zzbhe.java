package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbhe extends zzbcs {
    private static final zzbiv zzbLE = new zzbiv(Double.valueOf(0.0d));
    private static final zzbiv zzbLF = new zzbiv(Double.valueOf(2.147483647E9d));

    private boolean zzg(zzbit<?> zzbitVar) {
        return (zzbitVar instanceof zzbiv) && !Double.isNaN(((Double) ((zzbiv) zzbitVar).zzTi()).doubleValue());
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        double d;
        double d2;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        zzbiv zzbivVar = zzbitVarArr.length > 0 ? zzbitVarArr[0] : zzbLE;
        zzbiv zzbivVar2 = zzbitVarArr.length > 1 ? zzbitVarArr[1] : zzbLF;
        if (!zzg(zzbivVar) || !zzg(zzbivVar2) || !zzbcr.zzb(zzbivVar, zzbivVar2)) {
            d = 2.147483647E9d;
            d2 = 0.0d;
        } else {
            d2 = ((Double) zzbivVar.zzTi()).doubleValue();
            d = ((Double) zzbivVar2.zzTi()).doubleValue();
        }
        return new zzbiv(Double.valueOf(Math.round(((d - d2) * Math.random()) + d2)));
    }
}
