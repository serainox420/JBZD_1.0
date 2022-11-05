package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbgk implements zzbcq {
    private final zzbit<?> zzbLy;

    public zzbgk(zzbit<?> zzbitVar) {
        this.zzbLy = (zzbit) com.google.android.gms.common.internal.zzac.zzw(zzbitVar);
    }

    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        return this.zzbLy;
    }
}
