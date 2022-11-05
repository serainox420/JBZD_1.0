package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzse {
    private final Map<String, String> zzFP;
    private final String zzadh;
    private final long zzaeh;
    private final String zzaei;
    private final boolean zzaej;
    private long zzaek;

    public zzse(long j, String str, String str2, boolean z, long j2, Map<String, String> map) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        this.zzaeh = j;
        this.zzadh = str;
        this.zzaei = str2;
        this.zzaej = z;
        this.zzaek = j2;
        if (map != null) {
            this.zzFP = new HashMap(map);
        } else {
            this.zzFP = Collections.emptyMap();
        }
    }

    public Map<String, String> zzfE() {
        return this.zzFP;
    }

    public String zzmy() {
        return this.zzadh;
    }

    public long zzoj() {
        return this.zzaeh;
    }

    public String zzok() {
        return this.zzaei;
    }

    public boolean zzol() {
        return this.zzaej;
    }

    public long zzom() {
        return this.zzaek;
    }

    public void zzs(long j) {
        this.zzaek = j;
    }
}
