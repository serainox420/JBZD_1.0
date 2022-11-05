package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzam {
    private final Set<String> zzbGj;
    private final String zzbGk;

    public zzam(String str, String... strArr) {
        this.zzbGk = str;
        this.zzbGj = new HashSet(strArr.length);
        for (String str2 : strArr) {
            this.zzbGj.add(str2);
        }
    }

    public String zzQL() {
        return this.zzbGk;
    }

    public Set<String> zzQM() {
        return this.zzbGj;
    }

    public abstract boolean zzQb();

    public abstract zzak.zza zzZ(Map<String, zzak.zza> map);

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzf(Set<String> set) {
        return set.containsAll(this.zzbGj);
    }
}
