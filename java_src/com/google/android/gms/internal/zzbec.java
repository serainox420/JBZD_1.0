package com.google.android.gms.internal;

import java.util.List;
/* loaded from: classes2.dex */
public class zzbec extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 3);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[1] instanceof zzbjb);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[2] instanceof zzbiy);
        zzbit<?> zzbitVar = zzbitVarArr[0];
        String str = (String) ((zzbjb) zzbitVarArr[1]).zzTi();
        List<zzbit<?>> zzTi = ((zzbiy) zzbitVarArr[2]).zzTi();
        if (zzbitVar.zzic(str)) {
            zzbit<?> zzid = zzbitVar.zzid(str);
            if (!(zzid instanceof zzbiw)) {
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 35).append("Apply TypeError: ").append(str).append(" is not a function").toString());
            }
            return ((zzbcq) ((zzbiw) zzid).zzTi()).zzb(zzbcdVar, (zzbit[]) zzTi.toArray(new zzbit[zzTi.size()]));
        } else if (!zzbitVar.zzie(str)) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 40).append("Apply TypeError: object has no ").append(str).append(" property").toString());
        } else {
            zzbcq zzif = zzbitVar.zzif(str);
            zzTi.add(0, zzbitVar);
            return zzif.zzb(zzbcdVar, (zzbit[]) zzTi.toArray(new zzbit[zzTi.size()]));
        }
    }
}
