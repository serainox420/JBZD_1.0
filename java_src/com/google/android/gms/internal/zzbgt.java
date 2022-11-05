package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbcb;
/* loaded from: classes2.dex */
public class zzbgt extends zzbcs {
    private final zzbcb.zzc zzbLD;

    public zzbgt(zzbcb.zzc zzcVar) {
        this.zzbLD = zzcVar;
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        return zzbjc.zzZ(this.zzbLD.zzSp().zzRV());
    }
}
