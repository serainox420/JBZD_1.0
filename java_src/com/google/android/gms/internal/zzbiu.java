package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzbiu extends zzbit<Boolean> {
    private static final Map<String, zzbcq> zzbMM;
    private final Boolean zzbML;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("hasOwnProperty", zzbeo.zzbLu);
        hashMap.put("toString", new zzbfq());
        zzbMM = Collections.unmodifiableMap(hashMap);
    }

    public zzbiu(Boolean bool) {
        com.google.android.gms.common.internal.zzac.zzw(bool);
        this.zzbML = bool;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbiu)) {
            return false;
        }
        return ((Boolean) ((zzbiu) obj).zzTi()) == this.zzbML;
    }

    @Override // com.google.android.gms.internal.zzbit
    public String toString() {
        return this.zzbML.toString();
    }

    @Override // com.google.android.gms.internal.zzbit
    /* renamed from: zzTl */
    public Boolean zzTi() {
        return this.zzbML;
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
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 54).append("Native Method ").append(str).append(" is not defined for type BooleanWrapper.").toString());
    }
}
