package com.google.android.gms.internal;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzbfl extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        int i = 1;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 1 || zzbitVarArr.length == 2);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        ArrayList arrayList = new ArrayList();
        if (zzbitVarArr.length == 1) {
            arrayList.add(zzbitVarArr[0]);
        } else {
            String str = (String) ((zzbjb) zzbitVarArr[0]).zzTi();
            String zzd = zzbcr.zzd(zzbitVarArr[1]);
            boolean equals = zzd.equals("");
            String[] split = str.split(zzd, equals ? 0 : -1);
            if (!(equals && split.length > 0 && split[0].equals(""))) {
                i = 0;
            }
            while (i < split.length) {
                arrayList.add(new zzbjb(split[i]));
                i++;
            }
        }
        return new zzbiy(arrayList);
    }
}
