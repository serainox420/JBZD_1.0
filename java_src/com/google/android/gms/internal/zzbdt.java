package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbdt extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        boolean z2 = false;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2);
        zzbjb zzbjbVar = zzbitVarArr[0];
        zzbit<?> zzbitVar = zzbitVarArr[1];
        if ((zzbjbVar instanceof zzbiz) || (zzbjbVar instanceof zzbiy) || (zzbjbVar instanceof zzbiw)) {
            zzbjbVar = new zzbjb(zzbcr.zzd(zzbjbVar));
        }
        zzbit<?> zzbjbVar2 = ((zzbitVar instanceof zzbiz) || (zzbitVar instanceof zzbiy) || (zzbitVar instanceof zzbiw)) ? new zzbjb(zzbcr.zzd(zzbitVar)) : zzbitVar;
        if (((zzbjbVar instanceof zzbjb) && (zzbjbVar2 instanceof zzbjb)) || (!Double.isNaN(zzbcr.zzb(zzbjbVar)) && !Double.isNaN(zzbcr.zzb(zzbjbVar2)))) {
            if (zzbcr.zzb(zzbjbVar2, zzbjbVar)) {
                z = false;
            }
            z2 = z;
        }
        return new zzbiu(Boolean.valueOf(z2));
    }
}
