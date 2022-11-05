package com.google.android.gms.internal;

import java.util.List;
/* loaded from: classes2.dex */
public class zzbex implements zzbcq {
    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        zzbix zza;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 4);
        zzbit zza2 = zzbjc.zza(zzbcdVar, zzbitVarArr[3]);
        com.google.android.gms.common.internal.zzac.zzax(zza2 instanceof zzbiy);
        List<zzbit<?>> zzTi = ((zzbiy) zza2).zzTi();
        zzbit<?> zzbitVar = zzbitVarArr[2];
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar instanceof zzbiu);
        if (((Boolean) ((zzbiu) zzbitVar).zzTi()).booleanValue()) {
            zzbix zza3 = zzbjc.zza(zzbcdVar, zzTi);
            if (zza3 == zzbix.zzbMP) {
                return zzbix.zzbMS;
            }
            if (zza3.zzTp()) {
                return zza3;
            }
        }
        while (zzbcr.zza(zzbjc.zza(zzbcdVar, zzbitVarArr[0])) && (zza = zzbjc.zza(zzbcdVar, zzTi)) != zzbix.zzbMP) {
            if (zza.zzTp()) {
                return zza;
            }
            zzbjc.zza(zzbcdVar, zzbitVarArr[1]);
        }
        return zzbix.zzbMS;
    }
}
