package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbdw extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2);
        if (zzbcr.zzc(zzbitVarArr[1], zzbitVarArr[0])) {
            z = false;
        }
        return new zzbiu(Boolean.valueOf(z));
    }
}
