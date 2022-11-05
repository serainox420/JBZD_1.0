package com.google.android.gms.tagmanager;
/* loaded from: classes2.dex */
class zzbm implements zzcl {
    private final String zzadb;
    private final long zzagm;
    private final int zzagn;
    private double zzago;
    private long zzagp;
    private final Object zzagq = new Object();
    private final long zzbGH;
    private final com.google.android.gms.common.util.zze zzuP;

    public zzbm(int i, int i2, long j, long j2, String str, com.google.android.gms.common.util.zze zzeVar) {
        this.zzagn = i2;
        this.zzago = Math.min(i, i2);
        this.zzagm = j;
        this.zzbGH = j2;
        this.zzadb = str;
        this.zzuP = zzeVar;
    }

    @Override // com.google.android.gms.tagmanager.zzcl
    public boolean zzpV() {
        boolean z = false;
        synchronized (this.zzagq) {
            long currentTimeMillis = this.zzuP.currentTimeMillis();
            if (currentTimeMillis - this.zzagp < this.zzbGH) {
                String str = this.zzadb;
                zzbo.zzbh(new StringBuilder(String.valueOf(str).length() + 34).append("Excessive ").append(str).append(" detected; call ignored.").toString());
            } else {
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
                    String str2 = this.zzadb;
                    zzbo.zzbh(new StringBuilder(String.valueOf(str2).length() + 34).append("Excessive ").append(str2).append(" detected; call ignored.").toString());
                }
            }
        }
        return z;
    }
}
