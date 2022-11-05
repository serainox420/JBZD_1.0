package com.google.android.gms.internal;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzbdh extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2 || zzbitVarArr.length == 3);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiy);
        zzbiy zzbiyVar = (zzbiy) zzbitVarArr[0];
        int zzc = (int) zzbcr.zzc(zzbitVarArr[1]);
        int max = zzc < 0 ? Math.max(zzbiyVar.zzTi().size() + zzc, 0) : Math.min(zzc, zzbiyVar.zzTi().size());
        int size = zzbiyVar.zzTi().size();
        if (zzbitVarArr.length == 3) {
            int zzc2 = (int) zzbcr.zzc(zzbitVarArr[2]);
            size = zzc2 < 0 ? Math.max(zzbiyVar.zzTi().size() + zzc2, 0) : Math.min(zzc2, zzbiyVar.zzTi().size());
        }
        return new zzbiy(new ArrayList(zzbiyVar.zzTi().subList(max, Math.max(max, size))));
    }
}
