package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzrm extends com.google.android.gms.analytics.zzf<zzrm> {
    private Map<Integer, String> zzacV = new HashMap(4);

    public String toString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Integer, String> entry : this.zzacV.entrySet()) {
            String valueOf = String.valueOf(entry.getKey());
            hashMap.put(new StringBuilder(String.valueOf(valueOf).length() + 9).append("dimension").append(valueOf).toString(), entry.getValue());
        }
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzf
    /* renamed from: zza */
    public void zzb(zzrm zzrmVar) {
        zzrmVar.zzacV.putAll(this.zzacV);
    }

    public Map<Integer, String> zznh() {
        return Collections.unmodifiableMap(this.zzacV);
    }
}
