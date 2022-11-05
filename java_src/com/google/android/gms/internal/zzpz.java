package com.google.android.gms.internal;
@zzme
/* loaded from: classes.dex */
public class zzpz {
    private long zzYE;
    private long zzYF = Long.MIN_VALUE;
    private Object zzrJ = new Object();

    public zzpz(long j) {
        this.zzYE = j;
    }

    public boolean tryAcquire() {
        boolean z;
        synchronized (this.zzrJ) {
            long elapsedRealtime = com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime();
            if (this.zzYF + this.zzYE > elapsedRealtime) {
                z = false;
            } else {
                this.zzYF = elapsedRealtime;
                z = true;
            }
        }
        return z;
    }
}
