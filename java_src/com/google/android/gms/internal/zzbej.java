package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbej extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length <= 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        return zzbitVarArr[zzbitVarArr.length - 1];
    }
}
