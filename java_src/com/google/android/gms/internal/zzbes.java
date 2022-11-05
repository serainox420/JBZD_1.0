package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbes extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length <= 1);
        return new zzbix(zzbitVarArr.length < 1 ? zzbix.zzbMS : zzbitVarArr[0]);
    }
}
