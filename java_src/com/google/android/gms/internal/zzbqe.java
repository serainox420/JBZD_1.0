package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public abstract class zzbqe {
    protected final zzbph zzcag;
    protected final zza zzcgK;
    protected final zzbqf zzcgL;

    /* loaded from: classes2.dex */
    public enum zza {
        Overwrite,
        Merge,
        AckUserWrite,
        ListenComplete
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbqe(zza zzaVar, zzbqf zzbqfVar, zzbph zzbphVar) {
        this.zzcgK = zzaVar;
        this.zzcgL = zzbqfVar;
        this.zzcag = zzbphVar;
    }

    public zzbph zzWM() {
        return this.zzcag;
    }

    public zzbqf zzZy() {
        return this.zzcgL;
    }

    public zza zzZz() {
        return this.zzcgK;
    }

    public abstract zzbqe zzc(zzbrq zzbrqVar);
}
