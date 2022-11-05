package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public final class zzzd {
    private static final zzyz zzanA = new zzyz("RequestTracker");
    public static final Object zzqS = new Object();
    private long zzaxa;
    private zzzc zzaxc;
    private final com.google.android.gms.common.util.zze zzuP;
    private long zzavx = -1;
    private long zzaxb = 0;

    public zzzd(com.google.android.gms.common.util.zze zzeVar, long j) {
        this.zzuP = zzeVar;
        this.zzaxa = j;
    }

    private void zzuO() {
        this.zzavx = -1L;
        this.zzaxc = null;
        this.zzaxb = 0L;
    }

    public void clear() {
        synchronized (zzqS) {
            if (this.zzavx != -1) {
                zzuO();
            }
        }
    }

    public boolean test(long j) {
        boolean z;
        synchronized (zzqS) {
            z = this.zzavx != -1 && this.zzavx == j;
        }
        return z;
    }

    public void zza(long j, zzzc zzzcVar) {
        zzzc zzzcVar2;
        long j2;
        synchronized (zzqS) {
            zzzcVar2 = this.zzaxc;
            j2 = this.zzavx;
            this.zzavx = j;
            this.zzaxc = zzzcVar;
            this.zzaxb = this.zzuP.elapsedRealtime();
        }
        if (zzzcVar2 != null) {
            zzzcVar2.zzD(j2);
        }
    }

    public boolean zzc(long j, int i) {
        return zzc(j, i, null);
    }

    public boolean zzc(long j, int i, Object obj) {
        boolean z = true;
        zzzc zzzcVar = null;
        synchronized (zzqS) {
            if (this.zzavx == -1 || this.zzavx != j) {
                z = false;
            } else {
                zzanA.zzb("request %d completed", Long.valueOf(this.zzavx));
                zzzcVar = this.zzaxc;
                zzuO();
            }
        }
        if (zzzcVar != null) {
            zzzcVar.zza(j, i, obj);
        }
        return z;
    }

    public boolean zzd(long j, int i) {
        zzzc zzzcVar;
        boolean z = true;
        long j2 = 0;
        synchronized (zzqS) {
            if (this.zzavx == -1 || j - this.zzaxb < this.zzaxa) {
                z = false;
                zzzcVar = null;
            } else {
                zzanA.zzb("request %d timed out", Long.valueOf(this.zzavx));
                j2 = this.zzavx;
                zzzcVar = this.zzaxc;
                zzuO();
            }
        }
        if (zzzcVar != null) {
            zzzcVar.zza(j2, i, null);
        }
        return z;
    }

    public boolean zzuP() {
        boolean z;
        synchronized (zzqS) {
            z = this.zzavx != -1;
        }
        return z;
    }
}
