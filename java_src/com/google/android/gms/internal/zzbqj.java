package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbqj implements zzbqh {
    public final long zzchf;

    public zzbqj(long j) {
        this.zzchf = j;
    }

    @Override // com.google.android.gms.internal.zzbqh
    public float zzZF() {
        return 0.2f;
    }

    @Override // com.google.android.gms.internal.zzbqh
    public long zzZG() {
        return 1000L;
    }

    @Override // com.google.android.gms.internal.zzbqh
    public boolean zzaQ(long j) {
        return j > 1000;
    }

    @Override // com.google.android.gms.internal.zzbqh
    public boolean zzk(long j, long j2) {
        return j > this.zzchf || j2 > 1000;
    }
}
