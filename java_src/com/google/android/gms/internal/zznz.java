package com.google.android.gms.internal;

import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.internal.zznw;
@zzme
/* loaded from: classes.dex */
public class zznz extends zznw.zza {
    private final RewardedVideoAdListener zzcJ;

    public zznz(RewardedVideoAdListener rewardedVideoAdListener) {
        this.zzcJ = rewardedVideoAdListener;
    }

    @Override // com.google.android.gms.internal.zznw
    public void onRewardedVideoAdClosed() {
        if (this.zzcJ != null) {
            this.zzcJ.onRewardedVideoAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.zznw
    public void onRewardedVideoAdFailedToLoad(int i) {
        if (this.zzcJ != null) {
            this.zzcJ.onRewardedVideoAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.zznw
    public void onRewardedVideoAdLeftApplication() {
        if (this.zzcJ != null) {
            this.zzcJ.onRewardedVideoAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.internal.zznw
    public void onRewardedVideoAdLoaded() {
        if (this.zzcJ != null) {
            this.zzcJ.onRewardedVideoAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.zznw
    public void onRewardedVideoAdOpened() {
        if (this.zzcJ != null) {
            this.zzcJ.onRewardedVideoAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.zznw
    public void onRewardedVideoStarted() {
        if (this.zzcJ != null) {
            this.zzcJ.onRewardedVideoStarted();
        }
    }

    @Override // com.google.android.gms.internal.zznw
    public void zza(zznt zzntVar) {
        if (this.zzcJ != null) {
            this.zzcJ.onRewarded(new zznx(zzntVar));
        }
    }
}
