package com.google.android.gms.internal;

import java.util.Collections;
/* loaded from: classes2.dex */
public class zzbdf extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        if (zzbitVarArr.length != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiy);
        Collections.reverse(((zzbiy) zzbitVarArr[0]).zzTi());
        return zzbitVarArr[0];
    }
}
