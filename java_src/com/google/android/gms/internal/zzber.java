package com.google.android.gms.internal;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzber implements zzbcq {
    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        ArrayList arrayList = new ArrayList(zzbitVarArr.length);
        for (zzbit<?> zzbitVar : zzbitVarArr) {
            arrayList.add(zzbitVar);
        }
        return new zzbiy(arrayList);
    }
}
