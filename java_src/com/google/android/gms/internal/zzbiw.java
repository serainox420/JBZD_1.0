package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbiw extends zzbit<zzbcq> {
    private static final Map<String, zzbcq> zzbMM;
    private zzbcq zzbMO;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("hasOwnProperty", zzbeo.zzbLu);
        zzbMM = Collections.unmodifiableMap(hashMap);
    }

    public zzbiw(zzbcq zzbcqVar) {
        this.zzbMO = zzbcqVar;
    }

    @Override // com.google.android.gms.internal.zzbit
    public String toString() {
        return this.zzbMO.toString();
    }

    @Override // com.google.android.gms.internal.zzbit
    public Iterator<zzbit<?>> zzTh() {
        return zzTj();
    }

    @Override // com.google.android.gms.internal.zzbit
    /* renamed from: zzTn */
    public zzbcq zzTi() {
        return this.zzbMO;
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
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 60).append("Native Method ").append(str).append(" is not defined for type InstructionReference.").toString());
    }
}
