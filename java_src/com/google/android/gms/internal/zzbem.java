package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbem implements zzbcq {
    private static zzbcb zzbJn;

    public zzbem(zzbcb zzbcbVar) {
        zzbJn = zzbcbVar;
    }

    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        return zzbJn.zzhI((String) ((zzbjb) zzbitVarArr[0]).zzTi());
    }
}
