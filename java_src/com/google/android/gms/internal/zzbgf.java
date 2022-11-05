package com.google.android.gms.internal;

import android.content.Context;
/* loaded from: classes2.dex */
public class zzbgf implements zzbcq {
    private final Context mContext;

    public zzbgf(Context context) {
        this.mContext = context;
    }

    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        return new zzbjb(this.mContext.getPackageName());
    }
}
