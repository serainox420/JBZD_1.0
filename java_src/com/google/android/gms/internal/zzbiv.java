package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzbiv extends zzbit<Double> {
    private static final Map<String, zzbcq> zzbMM;
    private Double zzbMN;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("hasOwnProperty", zzbeo.zzbLu);
        hashMap.put("toString", new zzbfq());
        zzbMM = Collections.unmodifiableMap(hashMap);
    }

    public zzbiv(Double d) {
        com.google.android.gms.common.internal.zzac.zzw(d);
        this.zzbMN = d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbiv)) {
            return false;
        }
        return this.zzbMN.equals((Double) ((zzbiv) obj).zzTi());
    }

    @Override // com.google.android.gms.internal.zzbit
    public String toString() {
        return this.zzbMN.toString();
    }

    @Override // com.google.android.gms.internal.zzbit
    /* renamed from: zzTm */
    public Double zzTi() {
        return this.zzbMN;
    }

    @Override // com.google.android.gms.internal.zzbit
    public boolean zzie(String str) {
        return zzbMM.containsKey(str);
    }

    @Override // com.google.android.gms.internal.zzbit
    public zzbcq zzif(String str) {
        if (zzie(str)) {
            return zzbMM.get(str);
        }
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 53).append("Native Method ").append(str).append(" is not defined for type DoubleWrapper.").toString());
    }
}
