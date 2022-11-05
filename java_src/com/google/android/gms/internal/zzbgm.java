package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbgm implements zzbcq {
    private com.google.android.gms.common.util.zze zzuP = com.google.android.gms.common.util.zzi.zzzc();

    public void zza(com.google.android.gms.common.util.zze zzeVar) {
        this.zzuP = (com.google.android.gms.common.util.zze) com.google.android.gms.common.internal.zzac.zzw(zzeVar);
    }

    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        return new zzbiv(Double.valueOf(this.zzuP.currentTimeMillis()));
    }
}
