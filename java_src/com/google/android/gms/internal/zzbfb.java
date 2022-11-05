package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbfb extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2);
        double zzb = zzbcr.zzb(zzbitVarArr[0]);
        double zzb2 = zzbcr.zzb(zzbitVarArr[1]);
        if (Double.isNaN(zzb) || Double.isNaN(zzb2)) {
            return new zzbiv(Double.valueOf(Double.NaN));
        }
        if ((Double.isInfinite(zzb) && zzb2 == 0.0d) || (zzb == 0.0d && Double.isInfinite(zzb2))) {
            return new zzbiv(Double.valueOf(Double.NaN));
        }
        if (!Double.isInfinite(zzb) && !Double.isInfinite(zzb2)) {
            return new zzbiv(Double.valueOf(zzb * zzb2));
        }
        boolean z2 = ((double) Double.compare(zzb, 0.0d)) < 0.0d;
        if (Double.compare(zzb2, 0.0d) >= 0.0d) {
            z = false;
        }
        return new zzbiv(Double.valueOf(z2 ^ z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY));
    }
}
