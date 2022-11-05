package com.google.android.gms.internal;

import java.util.HashMap;
/* loaded from: classes2.dex */
public class zzbei extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        HashMap hashMap = new HashMap();
        for (int i = 0; i < zzbitVarArr.length - 1; i += 2) {
            String zzd = zzbcr.zzd(zzbitVarArr[i]);
            zzbit<?> zzbitVar = zzbitVarArr[i + 1];
            if ((zzbitVar instanceof zzbix) && zzbitVar != zzbix.zzbMR && zzbitVar != zzbix.zzbMS) {
                throw new IllegalStateException("Illegal InternalType found in CreateObject.");
            }
            hashMap.put(zzd, zzbitVar);
        }
        return new zzbiz(hashMap);
    }
}
