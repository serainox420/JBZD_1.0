package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbdx implements zzbcq {
    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2);
        zzbit<?> zza = zzbjc.zza(zzbcdVar, zzbitVarArr[0]);
        return zzbcr.zza(zza) ? zza : zzbjc.zza(zzbcdVar, zzbitVarArr[1]);
    }
}
