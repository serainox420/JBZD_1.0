package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzro extends com.google.android.gms.analytics.zzf<zzro> {
    private final Map<String, Object> zzFP = new HashMap();

    private String zzbA(String str) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        if (str != null && str.startsWith("&")) {
            str = str.substring(1);
        }
        com.google.android.gms.common.internal.zzac.zzh(str, "Name can not be empty or \"&\"");
        return str;
    }

    public void set(String str, String str2) {
        this.zzFP.put(zzbA(str), str2);
    }

    public String toString() {
        return zzj(this.zzFP);
    }

    @Override // com.google.android.gms.analytics.zzf
    /* renamed from: zza */
    public void zzb(zzro zzroVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzroVar);
        zzroVar.zzFP.putAll(this.zzFP);
    }

    public Map<String, Object> zznj() {
        return Collections.unmodifiableMap(this.zzFP);
    }
}
