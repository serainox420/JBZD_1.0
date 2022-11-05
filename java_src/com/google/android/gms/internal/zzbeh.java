package com.google.android.gms.internal;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzbeh extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        ArrayList arrayList = new ArrayList();
        int length = zzbitVarArr.length;
        for (int i = 0; i < length; i++) {
            zzbit<?> zzbitVar = zzbitVarArr[i];
            com.google.android.gms.common.internal.zzac.zzax(!(zzbitVar instanceof zzbix) || zzbitVar == zzbix.zzbMS || zzbitVar == zzbix.zzbMR);
            arrayList.add(zzbitVar);
        }
        return new zzbiy(arrayList);
    }
}
