package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbek extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    public zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 3);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        String str = (String) ((zzbjb) zzbitVarArr[0]).zzTi();
        com.google.android.gms.common.internal.zzac.zzax(zzbcdVar.has(str));
        zzbit<?> zzbitVar = zzbitVarArr[1];
        com.google.android.gms.common.internal.zzac.zzw(zzbitVar);
        zzbit<?> zzbitVar2 = zzbitVarArr[2];
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar2 instanceof zzbiy);
        List<zzbit<?>> zzTi = ((zzbiy) zzbitVar2).zzTi();
        Iterator<zzbit<?>> zzTh = zzbitVar.zzTh();
        while (zzTh.hasNext()) {
            zzbcdVar.zzb(str, zzTh.next());
            zzbix zza = zzbjc.zza(zzbcdVar, zzTi);
            if (zza == zzbix.zzbMP) {
                return zzbix.zzbMS;
            }
            if (zza.zzTp()) {
                return zza;
            }
        }
        return zzbix.zzbMS;
    }
}
