package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbfi extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length > 0 && zzbitVarArr.length <= 3);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        String str = (String) ((zzbjb) zzbitVarArr[0]).zzTi();
        if (zzbitVarArr.length == 1) {
            return new zzbjb(str);
        }
        String zzd = zzbcr.zzd(zzbitVarArr[1]);
        zzbit<?> zzbitVar = zzbitVarArr.length < 3 ? zzbix.zzbMS : zzbitVarArr[2];
        int indexOf = str.indexOf(zzd);
        if (indexOf == -1) {
            return new zzbjb(str);
        }
        if (zzbitVar instanceof zzbiw) {
            zzbitVar = ((zzbcq) ((zzbiw) zzbitVar).zzTi()).zzb(zzbcdVar, new zzbjb(zzd), new zzbiv(Double.valueOf(indexOf)), new zzbjb(str));
        }
        String zzd2 = zzbcr.zzd(zzbitVar);
        String valueOf = String.valueOf(str.substring(0, indexOf));
        String valueOf2 = String.valueOf(str.substring(zzd.length() + indexOf));
        return new zzbjb(new StringBuilder(String.valueOf(valueOf).length() + String.valueOf(zzd2).length() + String.valueOf(valueOf2).length()).append(valueOf).append(zzd2).append(valueOf2).toString());
    }
}
