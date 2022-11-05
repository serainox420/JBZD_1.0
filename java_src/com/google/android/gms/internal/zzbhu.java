package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.zzbcb;
/* loaded from: classes2.dex */
public class zzbhu extends zzbcs {
    private final zzbcb.zzc zzbKn;
    private final com.google.android.gms.tagmanager.zzbb zzbLI;

    public zzbhu(com.google.android.gms.tagmanager.zzbb zzbbVar, zzbcb.zzc zzcVar) {
        this.zzbLI = zzbbVar;
        this.zzbKn = zzcVar;
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 1 || zzbitVarArr.length == 2);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        zzbix zzbixVar = zzbitVarArr.length > 1 ? zzbitVarArr[1] : zzbix.zzbMS;
        if (zzbixVar != zzbix.zzbMS && !(zzbixVar instanceof zzbiz)) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        zzbbi zzSp = this.zzbKn.zzSp();
        String str = (String) ((zzbjb) zzbitVarArr[0]).zzTi();
        Bundle bundle = null;
        if (zzbixVar != zzbix.zzbMS) {
            bundle = zzbjc.zzas(((zzbiz) zzbixVar).zzTi());
        }
        try {
            this.zzbLI.zza(zzSp.zzRW(), str, bundle, zzSp.currentTimeMillis());
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzbbu.e(valueOf.length() != 0 ? "Error calling measurement proxy:".concat(valueOf) : new String("Error calling measurement proxy:"));
        }
        return zzbix.zzbMS;
    }
}
