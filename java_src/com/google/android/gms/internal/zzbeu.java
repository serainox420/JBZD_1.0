package com.google.android.gms.internal;

import java.util.List;
/* loaded from: classes2.dex */
public class zzbeu extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z;
        boolean z2 = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 3);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[1] instanceof zzbiy);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[2] instanceof zzbiy);
        zzbit<?> zzbitVar = zzbitVarArr[0];
        List<zzbit<?>> zzTi = ((zzbiy) zzbitVarArr[1]).zzTi();
        List<zzbit<?>> zzTi2 = ((zzbiy) zzbitVarArr[2]).zzTi();
        com.google.android.gms.common.internal.zzac.zzax(zzTi2.size() <= zzTi.size() + 1);
        int i = 0;
        boolean z3 = false;
        while (i < zzTi.size()) {
            if (z3 || zzbcr.zzd(zzbitVar, zzbjc.zza(zzbcdVar, zzTi.get(i)))) {
                zzbit<?> zza = zzbjc.zza(zzbcdVar, zzTi2.get(i));
                if (!(zza instanceof zzbix)) {
                    z = true;
                    i++;
                    z3 = z;
                } else if (zza == zzbix.zzbMQ || ((zzbix) zza).zzTp()) {
                    return zza;
                } else {
                    if (zza == zzbix.zzbMP) {
                        return zzbix.zzbMS;
                    }
                }
            }
            z = z3;
            i++;
            z3 = z;
        }
        if (zzTi.size() >= zzTi2.size()) {
            z2 = false;
        }
        if (z2) {
            zzbit<?> zza2 = zzbjc.zza(zzbcdVar, zzTi2.get(zzTi2.size() - 1));
            if ((zza2 instanceof zzbix) && (zza2 == zzbix.zzbMQ || ((zzbix) zza2).zzTp())) {
                return zza2;
            }
        }
        return zzbix.zzbMS;
    }
}
