package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbff extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2 || zzbitVarArr.length == 3);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        String str = (String) ((zzbjb) zzbitVarArr[0]).zzTi();
        return new zzbiv(Double.valueOf(str.indexOf(zzbcr.zzd(zzbitVarArr[1]), (int) Math.min(Math.max(zzbitVarArr.length < 3 ? 0.0d : zzbcr.zzc(zzbitVarArr[2]), 0.0d), str.length()))));
    }
}
