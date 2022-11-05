package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbef extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiy);
        for (zzbit<?> zzbitVar : ((zzbiy) zzbitVarArr[0]).zzTi()) {
            zzbit<?> zza = zzbjc.zza(zzbcdVar, zzbitVar);
            if ((zza instanceof zzbix) && (zza == zzbix.zzbMP || zza == zzbix.zzbMQ || ((zzbix) zza).zzTp())) {
                return zza;
            }
        }
        return zzbix.zzbMS;
    }
}
