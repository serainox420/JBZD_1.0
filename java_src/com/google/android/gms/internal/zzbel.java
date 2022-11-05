package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbel implements zzbcq {
    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        zzbit<?> zzhM = zzbcdVar.zzhM((String) ((zzbjb) zzbitVarArr[0]).zzTi());
        if (zzhM instanceof zzbja) {
            throw new IllegalStateException("Illegal Statement type encountered in Get.");
        }
        if ((zzhM instanceof zzbix) && zzhM != zzbix.zzbMS && zzhM != zzbix.zzbMR) {
            throw new IllegalStateException("Illegal InternalType encountered in Get.");
        }
        return zzhM;
    }
}
