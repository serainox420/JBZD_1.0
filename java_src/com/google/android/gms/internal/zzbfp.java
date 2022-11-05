package com.google.android.gms.internal;

import java.util.Locale;
/* loaded from: classes2.dex */
public class zzbfp extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        return new zzbjb(((String) ((zzbjb) zzbitVarArr[0]).zzTi()).toLowerCase(Locale.ENGLISH));
    }
}
