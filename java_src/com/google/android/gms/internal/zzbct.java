package com.google.android.gms.internal;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzbct extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length >= 1);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiy);
        ArrayList arrayList = new ArrayList();
        for (zzbit<?> zzbitVar : ((zzbiy) zzbitVarArr[0]).zzTi()) {
            arrayList.add(zzbitVar);
        }
        for (int i = 1; i < zzbitVarArr.length; i++) {
            if (zzbitVarArr[i] instanceof zzbiy) {
                for (zzbit<?> zzbitVar2 : ((zzbiy) zzbitVarArr[i]).zzTi()) {
                    arrayList.add(zzbitVar2);
                }
            } else {
                arrayList.add(zzbitVarArr[i]);
            }
        }
        return new zzbiy(arrayList);
    }
}
