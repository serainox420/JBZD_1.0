package com.google.android.gms.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzauo {
    private long zzLp;
    private final com.google.android.gms.common.util.zze zzuP;

    public zzauo(com.google.android.gms.common.util.zze zzeVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzeVar);
        this.zzuP = zzeVar;
    }

    public void clear() {
        this.zzLp = 0L;
    }

    public void start() {
        this.zzLp = this.zzuP.elapsedRealtime();
    }

    public boolean zzA(long j) {
        return this.zzLp == 0 || this.zzuP.elapsedRealtime() - this.zzLp >= j;
    }
}
