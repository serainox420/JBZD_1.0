package com.google.android.gms.internal;

import android.os.Bundle;
@zzme
/* loaded from: classes.dex */
public class zzph {
    private final String zzWp;
    private int zzXe;
    private int zzXf;
    private final Object zzrJ;
    private final zzpe zzuM;

    zzph(zzpe zzpeVar, String str) {
        this.zzrJ = new Object();
        this.zzuM = zzpeVar;
        this.zzWp = str;
    }

    public zzph(String str) {
        this(com.google.android.gms.ads.internal.zzw.zzcQ(), str);
    }

    public Bundle toBundle() {
        Bundle bundle;
        synchronized (this.zzrJ) {
            bundle = new Bundle();
            bundle.putInt("pmnli", this.zzXe);
            bundle.putInt("pmnll", this.zzXf);
        }
        return bundle;
    }

    public void zzk(int i, int i2) {
        synchronized (this.zzrJ) {
            this.zzXe = i;
            this.zzXf = i2;
            this.zzuM.zza(this.zzWp, this);
        }
    }
}
