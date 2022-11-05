package com.google.android.gms.internal;

import java.util.List;
/* loaded from: classes2.dex */
public class zzbcu extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiy);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[1] instanceof zzbiw);
        zzbiy zzbiyVar = (zzbiy) zzbitVarArr[0];
        zzbiw zzbiwVar = (zzbiw) zzbitVarArr[1];
        List<zzbit<?>> zzTi = zzbiyVar.zzTi();
        int size = zzTi.size();
        boolean z = true;
        int i = 0;
        while (z && i < size && i < zzbiyVar.zzTi().size()) {
            boolean zza = zzbiyVar.zznM(i) ? zzbcr.zza(((zzbcq) zzbiwVar.zzTi()).zzb(zzbcdVar, zzTi.get(i), new zzbiv(Double.valueOf(i)), zzbiyVar)) & z : z;
            i++;
            z = zza;
        }
        return new zzbiu(Boolean.valueOf(z));
    }
}
