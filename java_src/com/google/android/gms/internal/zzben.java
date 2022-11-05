package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzben extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        zzbit<?> zznL;
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2);
        zzbit<?> zzbitVar = zzbitVarArr[0];
        zzbit<?> zzbitVar2 = zzbitVarArr[1];
        com.google.android.gms.common.internal.zzac.zzax((zzbitVar instanceof zzbjb) || !zzbjc.zzn(zzbitVar));
        com.google.android.gms.common.internal.zzac.zzax(!zzbjc.zzo(zzbitVar));
        if (zzbjc.zzo(zzbitVar2)) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        String zzd = zzbcr.zzd(zzbitVar2);
        if (zzbitVar instanceof zzbiy) {
            zzbiy zzbiyVar = (zzbiy) zzbitVar;
            if ("length".equals(zzd)) {
                return new zzbiv(Double.valueOf(zzbiyVar.zzTi().size()));
            }
            double zzb = zzbcr.zzb(zzbitVar2);
            if (zzb == Math.floor(zzb) && zzd.equals(Integer.toString((int) zzb)) && (zznL = zzbiyVar.zznL((int) zzb)) != zzbix.zzbMS) {
                return zznL;
            }
        } else if (zzbitVar instanceof zzbjb) {
            zzbjb zzbjbVar = (zzbjb) zzbitVar;
            if ("length".equals(zzd)) {
                return new zzbiv(Double.valueOf(((String) zzbjbVar.zzTi()).length()));
            }
            double zzb2 = zzbcr.zzb(zzbitVar2);
            return (zzb2 != Math.floor(zzb2) || !zzd.equals(Integer.toString((int) zzb2))) ? zzbix.zzbMS : zzbjbVar.zznN((int) zzb2);
        }
        return zzbitVar.zzid(zzd);
    }
}
