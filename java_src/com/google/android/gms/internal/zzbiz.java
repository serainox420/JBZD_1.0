package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzbiz extends zzbit<Map<String, zzbit<?>>> {
    private static final Map<String, zzbcq> zzbMM;
    private boolean zzbNa = false;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("hasOwnProperty", zzbeo.zzbLu);
        zzbMM = Collections.unmodifiableMap(hashMap);
    }

    public zzbiz(Map<String, zzbit<?>> map) {
        this.zzbMJ = (Map) com.google.android.gms.common.internal.zzac.zzw(map);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbiz)) {
            return false;
        }
        return this.zzbMJ.entrySet().equals(((zzbiz) obj).zzTi().entrySet());
    }

    public boolean isImmutable() {
        return this.zzbNa;
    }

    @Override // com.google.android.gms.internal.zzbit
    public String toString() {
        return this.zzbMJ.toString();
    }

    @Override // com.google.android.gms.internal.zzbit
    public Iterator<zzbit<?>> zzTh() {
        return zzTj();
    }

    @Override // com.google.android.gms.internal.zzbit
    /* renamed from: zzTr */
    public Map<String, zzbit<?>> zzTi() {
        return this.zzbMJ;
    }

    public void zzTs() {
        this.zzbNa = true;
    }

    @Override // com.google.android.gms.internal.zzbit
    public zzbit<?> zzid(String str) {
        zzbit<?> zzid = super.zzid(str);
        return zzid == null ? zzbix.zzbMS : zzid;
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
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 51).append("Native Method ").append(str).append(" is not defined for type ListWrapper.").toString());
    }
}
