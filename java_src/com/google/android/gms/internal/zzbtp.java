package com.google.android.gms.internal;

import com.google.firebase.remoteconfig.b;
/* loaded from: classes2.dex */
public class zzbtp {
    private long zzcmk;
    private int zzcml;
    private b zzcmm;

    public b getConfigSettings() {
        return this.zzcmm;
    }

    public long getFetchTimeMillis() {
        return this.zzcmk;
    }

    public int getLastFetchStatus() {
        return this.zzcml;
    }

    public void setConfigSettings(b bVar) {
        this.zzcmm = bVar;
    }

    public void zzaU(long j) {
        this.zzcmk = j;
    }

    public void zzqJ(int i) {
        this.zzcml = i;
    }
}
