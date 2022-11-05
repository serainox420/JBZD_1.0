package com.google.android.gms.internal;

import java.util.HashMap;
/* loaded from: classes2.dex */
public class zzbb extends zzal<Integer, Object> {
    public Long zzqi;
    public Boolean zzqj;
    public Boolean zzqk;

    public zzbb() {
    }

    public zzbb(String str) {
        zzk(str);
    }

    @Override // com.google.android.gms.internal.zzal
    protected HashMap<Integer, Object> zzN() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.zzqi);
        hashMap.put(1, this.zzqj);
        hashMap.put(2, this.zzqk);
        return hashMap;
    }

    @Override // com.google.android.gms.internal.zzal
    protected void zzk(String str) {
        HashMap zzl = zzl(str);
        if (zzl != null) {
            this.zzqi = (Long) zzl.get(0);
            this.zzqj = (Boolean) zzl.get(1);
            this.zzqk = (Boolean) zzl.get(2);
        }
    }
}
