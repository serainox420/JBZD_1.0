package com.google.android.gms.internal;

import com.mopub.volley.DefaultRetryPolicy;
/* loaded from: classes2.dex */
public class zze implements zzp {
    private int zzn;
    private int zzo;
    private final int zzp;
    private final float zzq;

    public zze() {
        this(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    public zze(int i, int i2, float f) {
        this.zzn = i;
        this.zzp = i2;
        this.zzq = f;
    }

    @Override // com.google.android.gms.internal.zzp
    public void zza(zzs zzsVar) throws zzs {
        this.zzo++;
        this.zzn = (int) (this.zzn + (this.zzn * this.zzq));
        if (!zze()) {
            throw zzsVar;
        }
    }

    @Override // com.google.android.gms.internal.zzp
    public int zzc() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.zzp
    public int zzd() {
        return this.zzo;
    }

    protected boolean zze() {
        return this.zzo <= this.zzp;
    }
}
