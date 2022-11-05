package com.google.android.gms.internal;

import java.util.List;
/* loaded from: classes2.dex */
public class zzbcz extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        int i;
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length > 0 && zzbitVarArr.length <= 3);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiy);
        zzbiy zzbiyVar = (zzbiy) zzbitVarArr[0];
        zzbix zzbixVar = zzbitVarArr.length < 2 ? zzbix.zzbMS : zzbitVarArr[1];
        List<zzbit<?>> zzTi = zzbiyVar.zzTi();
        int size = zzTi.size();
        int i2 = size - 1;
        if (zzbitVarArr.length == 3) {
            int zzc = (int) zzbcr.zzc(zzbitVarArr[2]);
            i2 = zzc < 0 ? size - Math.abs(zzc) : Math.min(zzc, size - 1);
        }
        int i3 = i2;
        while (true) {
            if (i3 < 0) {
                i = -1;
                break;
            } else if (zzbiyVar.zznM(i3) && zzbcr.zzd(zzbixVar, zzTi.get(i3))) {
                i = i3;
                break;
            } else {
                i3--;
            }
        }
        return new zzbiv(Double.valueOf(i));
    }
}
