package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbfg extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2 || zzbitVarArr.length == 3);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        String str = (String) ((zzbjb) zzbitVarArr[0]).zzTi();
        String zzd = zzbcr.zzd(zzbitVarArr[1]);
        double d = Double.POSITIVE_INFINITY;
        if (zzbitVarArr.length == 3 && !Double.isNaN(zzbcr.zzb(zzbitVarArr[2]))) {
            d = zzbcr.zzc(zzbitVarArr[2]);
        }
        return new zzbiv(Double.valueOf(str.lastIndexOf(zzd, (int) Math.min(Math.max(d, 0.0d), str.length()))));
    }
}
