package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public abstract class zzbcs implements zzbcq {
    protected abstract zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr);

    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbcdVar != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        zzbit<?>[] zzbitVarArr2 = new zzbit[zzbitVarArr.length];
        for (int i = 0; i < zzbitVarArr.length; i++) {
            com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[i] != null);
            com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[i] != zzbix.zzbMP);
            com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[i] != zzbix.zzbMQ);
            zzbitVarArr2[i] = zzbjc.zza(zzbcdVar, zzbitVarArr[i]);
            com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr2[i] != null);
            com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr2[i] != zzbix.zzbMP);
            com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr2[i] != zzbix.zzbMQ);
        }
        zzbit<?> zza = zza(zzbcdVar, zzbitVarArr2);
        if (zza == null) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzaw(z);
        return zza;
    }
}
