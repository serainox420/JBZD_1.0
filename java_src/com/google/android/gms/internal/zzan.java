package com.google.android.gms.internal;

import java.util.HashMap;
/* loaded from: classes2.dex */
public class zzan extends zzal<Integer, Object> {
    public String zzaN;
    public String zzaP;
    public String zzaQ;
    public String zzaR;
    public long zzlE;

    public zzan() {
        this.zzaN = "E";
        this.zzlE = -1L;
        this.zzaP = "E";
        this.zzaQ = "E";
        this.zzaR = "E";
    }

    public zzan(String str) {
        this();
        zzk(str);
    }

    @Override // com.google.android.gms.internal.zzal
    protected HashMap<Integer, Object> zzN() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.zzaN);
        hashMap.put(4, this.zzaR);
        hashMap.put(3, this.zzaQ);
        hashMap.put(2, this.zzaP);
        hashMap.put(1, Long.valueOf(this.zzlE));
        return hashMap;
    }

    @Override // com.google.android.gms.internal.zzal
    protected void zzk(String str) {
        HashMap zzl = zzl(str);
        if (zzl != null) {
            this.zzaN = zzl.get(0) == null ? "E" : (String) zzl.get(0);
            this.zzlE = zzl.get(1) == null ? -1L : ((Long) zzl.get(1)).longValue();
            this.zzaP = zzl.get(2) == null ? "E" : (String) zzl.get(2);
            this.zzaQ = zzl.get(3) == null ? "E" : (String) zzl.get(3);
            this.zzaR = zzl.get(4) == null ? "E" : (String) zzl.get(4);
        }
    }
}
