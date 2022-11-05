package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbta implements zzbsw {
    private final zzbsw zzckD;
    private long zzckE;

    public zzbta(zzbsw zzbswVar, long j) {
        this.zzckE = 0L;
        this.zzckD = zzbswVar;
        this.zzckE = j;
    }

    public void zzaS(long j) {
        this.zzckE = j;
    }

    @Override // com.google.android.gms.internal.zzbsw
    public long zzabI() {
        return this.zzckD.zzabI() + this.zzckE;
    }
}
