package com.google.android.gms.internal;

import android.os.Build;
/* loaded from: classes2.dex */
public class zzbhg implements zzbcq {
    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        String valueOf = String.valueOf("5.04-");
        return new zzbjb(new StringBuilder(String.valueOf(valueOf).length() + 11).append(valueOf).append(Build.VERSION.SDK_INT).toString());
    }
}
