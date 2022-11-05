package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbea implements zzbcq {
    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 3);
        zzbit<?> zza = zzbcr.zza(zzbjc.zza(zzbcdVar, zzbitVarArr[0])) ? zzbjc.zza(zzbcdVar, zzbitVarArr[1]) : zzbjc.zza(zzbcdVar, zzbitVarArr[2]);
        if (!(zza instanceof zzbix) || zza == zzbix.zzbMS || zza == zzbix.zzbMR) {
            return zza;
        }
        throw new IllegalArgumentException("Illegal InternalType passed to Ternary.");
    }
}
