package com.google.android.gms.tagmanager;
/* loaded from: classes2.dex */
class zzda implements zzcl {
    private final long zzagm;
    private final int zzagn;
    private double zzago;
    private final Object zzagq;
    private long zzbHZ;
    private final com.google.android.gms.common.util.zze zzuP;

    public zzda() {
        this(60, 2000L);
    }

    public zzda(int i, long j) {
        this.zzagq = new Object();
        this.zzagn = i;
        this.zzago = this.zzagn;
        this.zzagm = j;
        this.zzuP = com.google.android.gms.common.util.zzi.zzzc();
    }

    @Override // com.google.android.gms.tagmanager.zzcl
    public boolean zzpV() {
        boolean z;
        synchronized (this.zzagq) {
            long currentTimeMillis = this.zzuP.currentTimeMillis();
            if (this.zzago < this.zzagn) {
                double d = (currentTimeMillis - this.zzbHZ) / this.zzagm;
                if (d > 0.0d) {
                    this.zzago = Math.min(this.zzagn, d + this.zzago);
                }
            }
            this.zzbHZ = currentTimeMillis;
            if (this.zzago >= 1.0d) {
                this.zzago -= 1.0d;
                z = true;
            } else {
                zzbo.zzbh("No more tokens available.");
                z = false;
            }
        }
        return z;
    }
}
