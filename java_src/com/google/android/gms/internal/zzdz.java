package com.google.android.gms.internal;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.internal.zzep;
@zzme
/* loaded from: classes.dex */
public final class zzdz extends zzep.zza {
    private final AdListener zzyS;

    public zzdz(AdListener adListener) {
        this.zzyS = adListener;
    }

    @Override // com.google.android.gms.internal.zzep
    public void onAdClosed() {
        this.zzyS.onAdClosed();
    }

    @Override // com.google.android.gms.internal.zzep
    public void onAdFailedToLoad(int i) {
        this.zzyS.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.zzep
    public void onAdLeftApplication() {
        this.zzyS.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.zzep
    public void onAdLoaded() {
        this.zzyS.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.zzep
    public void onAdOpened() {
        this.zzyS.onAdOpened();
    }
}
