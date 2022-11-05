package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbdc extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length >= 1);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiy);
        zzbiy zzbiyVar = (zzbiy) zzbitVarArr[0];
        int size = zzbiyVar.zzTi().size();
        zzbiyVar.setSize((zzbitVarArr.length + size) - 1);
        for (int i = 1; i < zzbitVarArr.length; i++) {
            zzbiyVar.zza(size, zzbitVarArr[i]);
            size++;
        }
        return new zzbiv(Double.valueOf(size));
    }
}
