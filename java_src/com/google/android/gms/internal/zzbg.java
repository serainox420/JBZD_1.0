package com.google.android.gms.internal;

import java.util.HashMap;
/* loaded from: classes2.dex */
public class zzbg extends zzal<Integer, Long> {
    public Long zzqQ;

    public zzbg() {
    }

    public zzbg(String str) {
        zzk(str);
    }

    @Override // com.google.android.gms.internal.zzal
    protected HashMap<Integer, Long> zzN() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.zzqQ);
        return hashMap;
    }

    @Override // com.google.android.gms.internal.zzal
    protected void zzk(String str) {
        HashMap zzl = zzl(str);
        if (zzl != null) {
            this.zzqQ = (Long) zzl.get(0);
        }
    }
}
