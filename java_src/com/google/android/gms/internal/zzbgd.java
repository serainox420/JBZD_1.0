package com.google.android.gms.internal;

import android.content.Context;
/* loaded from: classes2.dex */
public class zzbgd implements zzbcq {
    private final zzbaz zzbLw;

    public zzbgd(Context context) {
        this(zzbaz.zzcd(context));
    }

    zzbgd(zzbaz zzbazVar) {
        this.zzbLw = zzbazVar;
    }

    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 0);
        if (this.zzbLw.isLimitAdTrackingEnabled()) {
            z = false;
        }
        return new zzbiu(Boolean.valueOf(z));
    }
}
