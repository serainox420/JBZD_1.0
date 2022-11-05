package com.facebook.ads;
/* loaded from: classes.dex */
public interface RewardedVideoAdListener extends AdListener {
    void onLoggingImpression(Ad ad);

    void onRewardedVideoClosed();

    void onRewardedVideoCompleted();
}
