package com.google.android.gms.internal;

import java.util.HashMap;
/* loaded from: classes2.dex */
public class zzbe extends zzal<Integer, Long> {
    public Long zzcd;
    public Long zzcf;
    public Long zzcj;
    public Long zzck;
    public Long zzqI;
    public Long zzqJ;
    public Long zzqK;
    public Long zzqL;
    public Long zzqM;
    public Long zzqN;
    public Long zzqO;

    public zzbe() {
    }

    public zzbe(String str) {
        zzk(str);
    }

    @Override // com.google.android.gms.internal.zzal
    protected HashMap<Integer, Long> zzN() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.zzqI);
        hashMap.put(1, this.zzqJ);
        hashMap.put(2, this.zzqK);
        hashMap.put(3, this.zzcf);
        hashMap.put(4, this.zzcd);
        hashMap.put(5, this.zzqL);
        hashMap.put(6, this.zzqM);
        hashMap.put(7, this.zzqN);
        hashMap.put(8, this.zzck);
        hashMap.put(9, this.zzcj);
        hashMap.put(10, this.zzqO);
        return hashMap;
    }

    @Override // com.google.android.gms.internal.zzal
    protected void zzk(String str) {
        HashMap zzl = zzl(str);
        if (zzl != null) {
            this.zzqI = (Long) zzl.get(0);
            this.zzqJ = (Long) zzl.get(1);
            this.zzqK = (Long) zzl.get(2);
            this.zzcf = (Long) zzl.get(3);
            this.zzcd = (Long) zzl.get(4);
            this.zzqL = (Long) zzl.get(5);
            this.zzqM = (Long) zzl.get(6);
            this.zzqN = (Long) zzl.get(7);
            this.zzck = (Long) zzl.get(8);
            this.zzcj = (Long) zzl.get(9);
            this.zzqO = (Long) zzl.get(10);
        }
    }
}
