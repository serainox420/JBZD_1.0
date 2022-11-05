package com.google.android.gms.internal;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzbdk extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length >= 3);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiy);
        zzbiy zzbiyVar = (zzbiy) zzbitVarArr[0];
        int zzc = (int) zzbcr.zzc(zzbitVarArr[1]);
        int max = zzc < 0 ? Math.max(zzbiyVar.zzTi().size() + zzc, 0) : Math.min(zzc, zzbiyVar.zzTi().size());
        int min = max + Math.min(Math.max((int) zzbcr.zzc(zzbitVarArr[2]), 0), zzbiyVar.zzTi().size() - max);
        ArrayList arrayList = new ArrayList(zzbiyVar.zzTi().subList(max, min));
        zzbiyVar.zzTi().subList(max, min).clear();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 3; i < zzbitVarArr.length; i++) {
            arrayList2.add(zzbitVarArr[i]);
        }
        zzbiyVar.zzTi().addAll(max, arrayList2);
        return new zzbiy(arrayList);
    }
}
