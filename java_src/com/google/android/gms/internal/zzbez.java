package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbez extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2);
        double zzb = zzbcr.zzb(zzbitVarArr[0]);
        double zzb2 = zzbcr.zzb(zzbitVarArr[1]);
        if (Double.isNaN(zzb) || Double.isNaN(zzb2)) {
            return new zzbiv(Double.valueOf(Double.NaN));
        }
        if (Double.isInfinite(zzb) && Double.isInfinite(zzb2)) {
            return new zzbiv(Double.valueOf(Double.NaN));
        }
        boolean z = (((double) Double.compare(zzb, 0.0d)) < 0.0d) ^ (((double) Double.compare(zzb2, 0.0d)) < 0.0d);
        if (Double.isInfinite(zzb) && !Double.isInfinite(zzb2)) {
            return new zzbiv(Double.valueOf(z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY));
        } else if (!Double.isInfinite(zzb) && Double.isInfinite(zzb2)) {
            return new zzbiv(Double.valueOf(z ? -0.0d : 0.0d));
        } else if (zzb == 0.0d) {
            if (zzb2 == 0.0d) {
                return new zzbiv(Double.valueOf(Double.NaN));
            }
            return new zzbiv(Double.valueOf(z ? -0.0d : 0.0d));
        } else if (Double.isInfinite(zzb) || zzb == 0.0d || zzb2 != 0.0d) {
            return new zzbiv(Double.valueOf(zzb / zzb2));
        } else {
            return new zzbiv(Double.valueOf(z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY));
        }
    }
}
