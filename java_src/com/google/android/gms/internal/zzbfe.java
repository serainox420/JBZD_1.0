package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbfe extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length > 0);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        StringBuilder sb = new StringBuilder((String) ((zzbjb) zzbitVarArr[0]).zzTi());
        for (int i = 1; i < zzbitVarArr.length; i++) {
            sb.append(zzbcr.zzd(zzbitVarArr[i]));
        }
        return new zzbjb(sb.toString());
    }
}
