package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzs extends Exception {
    private long zzB;
    public final zzj zzai;

    public zzs() {
        this.zzai = null;
    }

    public zzs(zzj zzjVar) {
        this.zzai = zzjVar;
    }

    public zzs(Throwable th) {
        super(th);
        this.zzai = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(long j) {
        this.zzB = j;
    }
}
