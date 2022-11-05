package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbcy extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 1 || zzbitVarArr.length == 2);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiy);
        List<zzbit<?>> zzTi = ((zzbiy) zzbitVarArr[0]).zzTi();
        zzbit<?> zzbitVar = zzbitVarArr.length < 2 ? zzbix.zzbMS : zzbitVarArr[1];
        String zzd = zzbitVar == zzbix.zzbMS ? "," : zzbcr.zzd(zzbitVar);
        ArrayList arrayList = new ArrayList();
        for (zzbit<?> zzbitVar2 : zzTi) {
            if (zzbitVar2 == zzbix.zzbMR || zzbitVar2 == zzbix.zzbMS) {
                arrayList.add("");
            } else {
                arrayList.add(zzbcr.zzd(zzbitVar2));
            }
        }
        return new zzbjb(TextUtils.join(zzd, arrayList));
    }
}
