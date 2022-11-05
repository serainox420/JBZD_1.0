package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbep extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2 || zzbitVarArr.length == 3);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[1] instanceof zzbiy);
        if (zzbitVarArr.length == 3) {
            com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[2] instanceof zzbiy);
        }
        List<zzbit<?>> arrayList = new ArrayList<>();
        if (zzbcr.zza(zzbitVarArr[0])) {
            arrayList = ((zzbiy) zzbitVarArr[1]).zzTi();
        } else if (zzbitVarArr.length > 2) {
            arrayList = ((zzbiy) zzbitVarArr[2]).zzTi();
        }
        zzbix zza = zzbjc.zza(zzbcdVar, arrayList);
        return (!(zza instanceof zzbix) || !zzbjc.zzo(zza)) ? zzbix.zzbMS : zza;
    }
}
