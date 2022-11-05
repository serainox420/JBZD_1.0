package com.google.android.gms.internal;

import java.util.List;
/* loaded from: classes2.dex */
public class zzbde extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        int i;
        zzbit<?> zzbitVar;
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2 || zzbitVarArr.length == 3);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiy);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[1] instanceof zzbiw);
        zzbiy zzbiyVar = (zzbiy) zzbitVarArr[0];
        zzbiw zzbiwVar = (zzbiw) zzbitVarArr[1];
        List<zzbit<?>> zzTi = zzbiyVar.zzTi();
        int size = zzTi.size();
        if (zzbitVarArr.length == 3) {
            zzbitVar = zzbitVarArr[2];
            i = size - 1;
        } else {
            com.google.android.gms.common.internal.zzac.zzaw(size > 0);
            zzbit<?> zznL = zzbiyVar.zznL(size - 1);
            int i2 = size - 2;
            int i3 = size - 1;
            while (true) {
                if (i3 < 0) {
                    break;
                } else if (zzbiyVar.zznM(i3)) {
                    zznL = zzbiyVar.zznL(i3);
                    i2 = i3 - 1;
                    break;
                } else {
                    i3--;
                }
            }
            com.google.android.gms.common.internal.zzac.zzaw(i3 >= 0);
            i = i2;
            zzbitVar = zznL;
        }
        int i4 = i;
        while (i4 >= 0) {
            zzbit<?> zzb = zzbiyVar.zznM(i4) ? ((zzbcq) zzbiwVar.zzTi()).zzb(zzbcdVar, zzbitVar, zzTi.get(i4), new zzbiv(Double.valueOf(i4)), zzbiyVar) : zzbitVar;
            i4--;
            zzbitVar = zzb;
        }
        return zzbitVar;
    }
}
