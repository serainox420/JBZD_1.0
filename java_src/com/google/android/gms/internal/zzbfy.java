package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbfy extends zzbcs {
    private final zza zzbLv;

    /* loaded from: classes2.dex */
    public interface zza {
        Object zze(String str, Map<String, Object> map);
    }

    public zzbfy(zza zzaVar) {
        this.zzbLv = zzaVar;
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length >= 1);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        String str = (String) ((zzbjb) zzbitVarArr[0]).zzTi();
        HashMap hashMap = new HashMap();
        if (zzbitVarArr.length >= 2 && zzbitVarArr[1] != zzbix.zzbMS) {
            com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[1] instanceof zzbiz);
            for (Map.Entry<String, zzbit<?>> entry : ((zzbiz) zzbitVarArr[1]).zzTi().entrySet()) {
                com.google.android.gms.common.internal.zzac.zzaw(!(entry.getValue() instanceof zzbja));
                com.google.android.gms.common.internal.zzac.zzaw(!zzbjc.zzo(entry.getValue()));
                hashMap.put(entry.getKey(), entry.getValue().zzTi());
            }
        }
        return zzbjc.zzZ(this.zzbLv.zze(str, hashMap));
    }
}
