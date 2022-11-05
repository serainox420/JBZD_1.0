package com.google.android.gms.internal;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzbdl extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length >= 1);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiy);
        zzbiy zzbiyVar = (zzbiy) zzbitVarArr[0];
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < zzbitVarArr.length; i++) {
            arrayList.add(zzbitVarArr[i]);
        }
        zzbiyVar.zzTi().addAll(0, arrayList);
        return new zzbiv(Double.valueOf(zzbiyVar.zzTi().size()));
    }
}
