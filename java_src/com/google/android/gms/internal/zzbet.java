package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbet extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 3);
        zzbit<?> zzbitVar = zzbitVarArr[0];
        zzbit<?> zzbitVar2 = zzbitVarArr[1];
        zzbit<?> zzbitVar3 = zzbitVarArr[2];
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar != zzbix.zzbMR);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar != zzbix.zzbMS);
        com.google.android.gms.common.internal.zzac.zzax(!zzbjc.zzo(zzbitVar));
        com.google.android.gms.common.internal.zzac.zzax(!zzbjc.zzo(zzbitVar2));
        com.google.android.gms.common.internal.zzac.zzax(!zzbjc.zzo(zzbitVar3));
        if (zzbjc.zzn(zzbitVar)) {
            return zzbitVar3;
        }
        String zzd = zzbcr.zzd(zzbitVar2);
        if (zzbitVar instanceof zzbiz) {
            zzbiz zzbizVar = (zzbiz) zzbitVar;
            if (!zzbizVar.isImmutable()) {
                zzbizVar.zzc(zzd, zzbitVar3);
            }
            return zzbitVar3;
        }
        if (zzbitVar instanceof zzbiy) {
            zzbiy zzbiyVar = (zzbiy) zzbitVar;
            if ("length".equals(zzd)) {
                double zzb = zzbcr.zzb(zzbitVar3);
                if (Double.isInfinite(zzb) || zzb != Math.floor(zzb)) {
                    z = false;
                }
                com.google.android.gms.common.internal.zzac.zzax(z);
                zzbiyVar.setSize((int) zzb);
                return zzbitVar3;
            }
            double zzb2 = zzbcr.zzb(zzbitVar2);
            if (!Double.isInfinite(zzb2) && zzb2 >= 0.0d && zzd.equals(Integer.toString((int) zzb2))) {
                zzbiyVar.zza((int) zzb2, zzbitVar3);
                return zzbitVar3;
            }
        }
        zzbitVar.zzc(zzd, zzbitVar3);
        return zzbitVar3;
    }
}
