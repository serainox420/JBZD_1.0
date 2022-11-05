package com.google.android.gms.internal;

import java.util.List;
/* loaded from: classes2.dex */
public class zzbdg extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        if (zzbitVarArr.length != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiy);
        zzbix zzbixVar = zzbix.zzbMS;
        List<zzbit<?>> zzTi = ((zzbiy) zzbitVarArr[0]).zzTi();
        return !zzTi.isEmpty() ? zzTi.remove(0) : zzbixVar;
    }
}
