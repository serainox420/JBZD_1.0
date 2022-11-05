package com.google.android.gms.internal;

import com.google.android.gms.internal.zzjv;
import com.google.android.gms.internal.zzkc;
@zzme
/* loaded from: classes.dex */
public final class zzjt extends zzkc.zza {
    private zzjv.zza zzKU;
    private zzjs zzKV;
    private final Object zzrJ = new Object();

    @Override // com.google.android.gms.internal.zzkc
    public void onAdClicked() {
        synchronized (this.zzrJ) {
            if (this.zzKV != null) {
                this.zzKV.zzbP();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzkc
    public void onAdClosed() {
        synchronized (this.zzrJ) {
            if (this.zzKV != null) {
                this.zzKV.zzbQ();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzkc
    public void onAdFailedToLoad(int i) {
        synchronized (this.zzrJ) {
            if (this.zzKU != null) {
                this.zzKU.zzF(i == 3 ? 1 : 2);
                this.zzKU = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzkc
    public void onAdImpression() {
        synchronized (this.zzrJ) {
            if (this.zzKV != null) {
                this.zzKV.zzbU();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzkc
    public void onAdLeftApplication() {
        synchronized (this.zzrJ) {
            if (this.zzKV != null) {
                this.zzKV.zzbR();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzkc
    public void onAdLoaded() {
        synchronized (this.zzrJ) {
            if (this.zzKU != null) {
                this.zzKU.zzF(0);
                this.zzKU = null;
                return;
            }
            if (this.zzKV != null) {
                this.zzKV.zzbT();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzkc
    public void onAdOpened() {
        synchronized (this.zzrJ) {
            if (this.zzKV != null) {
                this.zzKV.zzbS();
            }
        }
    }

    public void zza(zzjs zzjsVar) {
        synchronized (this.zzrJ) {
            this.zzKV = zzjsVar;
        }
    }

    public void zza(zzjv.zza zzaVar) {
        synchronized (this.zzrJ) {
            this.zzKU = zzaVar;
        }
    }

    @Override // com.google.android.gms.internal.zzkc
    public void zza(zzkd zzkdVar) {
        synchronized (this.zzrJ) {
            if (this.zzKU != null) {
                this.zzKU.zza(0, zzkdVar);
                this.zzKU = null;
                return;
            }
            if (this.zzKV != null) {
                this.zzKV.zzbT();
            }
        }
    }
}
