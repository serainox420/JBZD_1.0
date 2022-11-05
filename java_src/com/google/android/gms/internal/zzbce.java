package com.google.android.gms.internal;
/* loaded from: classes2.dex */
class zzbce implements zzbca {
    private final long zzagm;
    private final int zzagn;
    private double zzago;
    private final Object zzagq;
    private long zzbHZ;

    public zzbce() {
        this(60, 2000L);
    }

    public zzbce(int i, long j) {
        this.zzagq = new Object();
        this.zzagn = i;
        this.zzago = this.zzagn;
        this.zzagm = j;
    }

    @Override // com.google.android.gms.internal.zzbca
    public boolean zzpV() {
        boolean z;
        synchronized (this.zzagq) {
            long currentTimeMillis = System.currentTimeMillis();
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
                zzbbu.zzbh("No more tokens available.");
                z = false;
            }
        }
        return z;
    }
}
