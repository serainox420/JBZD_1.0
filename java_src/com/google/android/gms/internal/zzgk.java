package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzgk {
    private final Map<String, zzgj> zzFN = new HashMap();
    private final zzgl zzsn;

    public zzgk(zzgl zzglVar) {
        this.zzsn = zzglVar;
    }

    public void zza(String str, zzgj zzgjVar) {
        this.zzFN.put(str, zzgjVar);
    }

    public void zza(String str, String str2, long j) {
        zzgh.zza(this.zzsn, this.zzFN.get(str2), j, str);
        this.zzFN.put(str, zzgh.zza(this.zzsn, j));
    }

    public zzgl zzfA() {
        return this.zzsn;
    }
}
