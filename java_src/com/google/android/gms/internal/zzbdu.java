package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbdu extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        return new zzbiv(Double.valueOf(zzbcr.zzb(zzbitVarArr[0]) * (-1.0d)));
    }
}
