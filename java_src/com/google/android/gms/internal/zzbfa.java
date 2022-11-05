package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbfa extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2);
        double zzb = zzbcr.zzb(zzbitVarArr[0]);
        double zzb2 = zzbcr.zzb(zzbitVarArr[1]);
        return (Double.isNaN(zzb) || Double.isNaN(zzb2)) ? new zzbiv(Double.valueOf(Double.NaN)) : (Double.isInfinite(zzb) || zzb2 == 0.0d) ? new zzbiv(Double.valueOf(Double.NaN)) : (Double.isInfinite(zzb) || !Double.isInfinite(zzb2)) ? (zzb != 0.0d || zzb2 == 0.0d || Double.isInfinite(zzb2)) ? new zzbiv(Double.valueOf(zzb % zzb2)) : new zzbiv(Double.valueOf(zzb)) : new zzbiv(Double.valueOf(zzb));
    }
}
