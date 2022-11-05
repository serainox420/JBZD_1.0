package com.google.android.gms.tagmanager;

import android.text.TextUtils;
/* loaded from: classes2.dex */
class zzas {
    private final long zzagi;
    private final long zzbGm;
    private final long zzbGn;
    private String zzbGo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzas(long j, long j2, long j3) {
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
    public void zzhi(String str) {
        if (str == null || TextUtils.isEmpty(str.trim())) {
            return;
        }
        this.zzbGo = str;
    }
}
