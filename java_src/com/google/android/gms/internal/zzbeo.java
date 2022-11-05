package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbeo extends zzbcs {
    public static final zzbeo zzbLu = new zzbeo();

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        int i;
        int i2;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2);
        zzbit<?> zzbitVar = zzbitVarArr[0];
        zzbit<?> zzbitVar2 = zzbitVarArr[1];
        com.google.android.gms.common.internal.zzac.zzax(!zzbjc.zzo(zzbitVar));
        com.google.android.gms.common.internal.zzac.zzax(!zzbjc.zzo(zzbitVar2));
        String zzd = zzbcr.zzd(zzbitVar2);
        if (zzbitVar instanceof zzbiy) {
            if ("length".equals(zzd)) {
                return new zzbiu(true);
            }
            double zzb = zzbcr.zzb(zzbitVar2);
            if (zzb == Math.floor(zzb) && zzd.equals(Integer.toString((int) zzb)) && (i2 = (int) zzb) >= 0 && i2 < ((zzbiy) zzbitVar).zzTi().size()) {
                return new zzbiu(true);
            }
        } else if (zzbitVar instanceof zzbjb) {
            if ("length".equals(zzd)) {
                return new zzbiu(true);
            }
            double zzb2 = zzbcr.zzb(zzbitVar2);
            return (zzb2 != Math.floor(zzb2) || !zzd.equals(Integer.toString((int) zzb2)) || (i = (int) zzb2) < 0 || i >= ((String) ((zzbjb) zzbitVar).zzTi()).length()) ? new zzbiu(false) : new zzbiu(true);
        }
        return new zzbiu(Boolean.valueOf(zzbitVar.zzic(zzd)));
    }
}
