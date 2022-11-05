package com.google.android.gms.internal;

import android.content.Context;
/* loaded from: classes2.dex */
public class zzbgw implements zzbcq {
    private Context mContext;

    public zzbgw(Context context) {
        this.mContext = (Context) com.google.android.gms.common.internal.zzac.zzw(context);
    }

    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        String str = null;
        if (zzbitVarArr.length > 0 && zzbitVarArr[0] != zzbix.zzbMS) {
            str = zzbcr.zzd(zzbjc.zza(zzbcdVar, zzbitVarArr[0]));
        }
        String zzO = zzbbt.zzO(this.mContext, str);
        return zzO != null ? new zzbjb(zzO) : zzbix.zzbMS;
    }
}
