package com.google.android.gms.internal;

import com.google.android.gms.ads.AdListener;
@zzme
/* loaded from: classes.dex */
public class zzen extends AdListener {
    private final Object lock = new Object();
    private AdListener zzzY;

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClosed() {
        synchronized (this.lock) {
            if (this.zzzY != null) {
                this.zzzY.onAdClosed();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(int i) {
        synchronized (this.lock) {
            if (this.zzzY != null) {
                this.zzzY.onAdFailedToLoad(i);
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLeftApplication() {
        synchronized (this.lock) {
            if (this.zzzY != null) {
                this.zzzY.onAdLeftApplication();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
        synchronized (this.lock) {
            if (this.zzzY != null) {
                this.zzzY.onAdLoaded();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdOpened() {
        synchronized (this.lock) {
            if (this.zzzY != null) {
                this.zzzY.onAdOpened();
            }
        }
    }

    public void zza(AdListener adListener) {
        synchronized (this.lock) {
            this.zzzY = adListener;
        }
    }
}
