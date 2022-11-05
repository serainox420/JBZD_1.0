package com.google.android.gms.internal;

import android.content.Context;
/* loaded from: classes2.dex */
public class zzbgc implements zzbcq {
    private final zzbaz zzbLw;

    public zzbgc(Context context) {
        this(zzbaz.zzcd(context));
    }

    zzbgc(zzbaz zzbazVar) {
        this.zzbLw = zzbazVar;
    }

    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        String zzPV = this.zzbLw.zzPV();
        return zzPV == null ? zzbix.zzbMS : new zzbjb(zzPV);
    }
}
