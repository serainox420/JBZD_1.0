package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbhj extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2);
        return new zzbiu(Boolean.valueOf(zzbcr.zzd(zzbitVarArr[0]).contains(zzbcr.zzd(zzbitVarArr[1]))));
    }
}
