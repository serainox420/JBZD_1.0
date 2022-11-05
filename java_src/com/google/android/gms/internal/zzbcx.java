package com.google.android.gms.internal;

import java.util.List;
/* loaded from: classes2.dex */
public class zzbcx extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        int i;
        int i2 = 0;
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length > 0 && zzbitVarArr.length <= 3);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiy);
        zzbiy zzbiyVar = (zzbiy) zzbitVarArr[0];
        zzbix zzbixVar = zzbitVarArr.length < 2 ? zzbix.zzbMS : zzbitVarArr[1];
        zzbix zzbixVar2 = zzbitVarArr.length < 3 ? zzbix.zzbMS : zzbitVarArr[2];
        List<zzbit<?>> zzTi = zzbiyVar.zzTi();
        int size = zzTi.size();
        if (zzbixVar2 != zzbix.zzbMS) {
            int zzc = (int) zzbcr.zzc(zzbixVar2);
            i2 = zzc < 0 ? Math.max(size - Math.abs(zzc), 0) : zzc;
        }
        int i3 = i2;
        while (true) {
            if (i3 >= size) {
                i = -1;
                break;
            } else if (zzbiyVar.zznM(i3) && zzbcr.zzd(zzbixVar, zzTi.get(i3))) {
                i = i3;
                break;
            } else {
                i3++;
            }
        }
        return new zzbiv(Double.valueOf(i));
    }
}
