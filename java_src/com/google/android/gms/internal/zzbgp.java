package com.google.android.gms.internal;

import android.os.Build;
/* loaded from: classes2.dex */
public class zzbgp implements zzbcq {
    private final String zzaTl = Build.MODEL;

    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        return new zzbjb(this.zzaTl);
    }
}
