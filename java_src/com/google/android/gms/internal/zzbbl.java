package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes2.dex */
class zzbbl {
    private final long zzagi;
    private final long zzbGm;
    private final long zzbGn;
    private String zzbGo;
    private String zzbJG;
    private Map<String, String> zzbJH;
    private String zzbJI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbl(long j, long j2, long j3) {
        this.zzbGm = j;
        this.zzagi = j2;
        this.zzbGn = j3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long zzQN() {
        return this.zzbGm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long zzQO() {
        return this.zzbGn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzQP() {
        return this.zzbGo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzRY() {
        return this.zzbJG;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> zzRZ() {
        return this.zzbJH;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzSa() {
        return this.zzbJI;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzan(Map<String, String> map) {
        this.zzbJH = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzhE(String str) {
        this.zzbJG = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzhF(String str) {
        this.zzbJI = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzhi(String str) {
        if (str == null || TextUtils.isEmpty(str.trim())) {
            return;
        }
        this.zzbGo = str;
    }
}
