package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzbcb;
/* loaded from: classes2.dex */
public class zzbgb extends zzbcs {
    private final zzbcb.zzc zzbKn;

    public zzbgb(Context context, zzbcb.zzc zzcVar) {
        this.zzbKn = zzcVar;
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        this.zzbKn.zzSp().zzaU(false);
        return zzbix.zzbMS;
    }
}
