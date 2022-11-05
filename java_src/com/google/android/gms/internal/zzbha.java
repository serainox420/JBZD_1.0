package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzbcb;
/* loaded from: classes2.dex */
public class zzbha extends zzbcs {
    private final Context mContext;
    private final zzbcb.zzc zzbLx;

    public zzbha(Context context, zzbcb.zzc zzcVar) {
        this.mContext = context;
        this.zzbLx = zzcVar;
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length >= 1);
        Object obj = this.zzbLx.zzSp().zzQI().get(zzbcr.zzd(zzbitVarArr[0]));
        zzbit<?> zzbitVar = obj;
        if (obj == null) {
            zzbitVar = obj;
            if (zzbitVarArr.length > 1) {
                zzbitVar = zzbitVarArr[1];
            }
        }
        return zzbjc.zzZ(zzbitVar);
    }
}
