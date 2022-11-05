package com.flurry.android;
/* loaded from: classes.dex */
public interface FlurryAdListener {
    void onAdClicked(String str);

    void onAdClosed(String str);

    void onAdOpened(String str);

    void onApplicationExit(String str);

    void onRenderFailed(String str);

    void onRendered(String str);

    void onVideoCompleted(String str);

    boolean shouldDisplayAd(String str, FlurryAdType flurryAdType);

    void spaceDidFailToReceiveAd(String str);

    void spaceDidReceiveAd(String str);
}
