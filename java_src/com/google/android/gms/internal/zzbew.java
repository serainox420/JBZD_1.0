package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbew implements zzbcq {
    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length <= 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        for (zzbit<?> zzbitVar : zzbitVarArr) {
            com.google.android.gms.common.internal.zzac.zzw(zzbitVar);
            com.google.android.gms.common.internal.zzac.zzax(zzbitVar instanceof zzbjb);
            zzbcdVar.zza((String) ((zzbjb) zzbitVar).zzTi(), zzbix.zzbMS);
        }
        return zzbix.zzbMS;
    }
}
