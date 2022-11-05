package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzrn extends com.google.android.gms.analytics.zzf<zzrn> {
    private Map<Integer, Double> zzacW = new HashMap(4);

    public String toString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Integer, Double> entry : this.zzacW.entrySet()) {
            String valueOf = String.valueOf(entry.getKey());
            hashMap.put(new StringBuilder(String.valueOf(valueOf).length() + 6).append("metric").append(valueOf).toString(), entry.getValue());
        }
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzf
    /* renamed from: zza */
    public void zzb(zzrn zzrnVar) {
        zzrnVar.zzacW.putAll(this.zzacW);
    }

    public Map<Integer, Double> zzni() {
        return Collections.unmodifiableMap(this.zzacW);
    }
}
