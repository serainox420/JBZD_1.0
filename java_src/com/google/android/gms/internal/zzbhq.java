package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public abstract class zzbhq extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 2) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        try {
            double zzb = zzbcr.zzb(zzbitVarArr[0]);
            double zzb2 = zzbcr.zzb(zzbitVarArr[1]);
            return (Double.isNaN(zzb) || Double.isNaN(zzb2)) ? new zzbiu(false) : new zzbiu(Boolean.valueOf(zzf(zzb, zzb2)));
        } catch (IllegalArgumentException e) {
            return new zzbiu(false);
        }
    }

    protected abstract boolean zzf(double d, double d2);
}
