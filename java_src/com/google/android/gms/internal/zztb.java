package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zztb {
    private final String zzadb;
    private final long zzagm;
    private final int zzagn;
    private double zzago;
    private long zzagp;
    private final Object zzagq;
    private final com.google.android.gms.common.util.zze zzuP;

    public zztb(int i, long j, String str, com.google.android.gms.common.util.zze zzeVar) {
        this.zzagq = new Object();
        this.zzagn = i;
        this.zzago = this.zzagn;
        this.zzagm = j;
        this.zzadb = str;
        this.zzuP = zzeVar;
    }

    public zztb(String str, com.google.android.gms.common.util.zze zzeVar) {
        this(60, 2000L, str, zzeVar);
    }

    public boolean zzpV() {
        boolean z;
        synchronized (this.zzagq) {
            long currentTimeMillis = this.zzuP.currentTimeMillis();
            if (this.zzago < this.zzagn) {
                double d = (currentTimeMillis - this.zzagp) / this.zzagm;
                if (d > 0.0d) {
                    this.zzago = Math.min(this.zzagn, d + this.zzago);
                }
            }
            this.zzagp = currentTimeMillis;
            if (this.zzago >= 1.0d) {
                this.zzago -= 1.0d;
                z = true;
            } else {
                String str = this.zzadb;
                zztc.zzbh(new StringBuilder(String.valueOf(str).length() + 34).append("Excessive ").append(str).append(" detected; call ignored.").toString());
                z = false;
            }
        }
        return z;
    }
}
