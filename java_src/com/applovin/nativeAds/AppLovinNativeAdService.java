package com.applovin.nativeAds;
/* loaded from: classes.dex */
public interface AppLovinNativeAdService {
    void loadNativeAds(int i, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener);

    void precacheResources(AppLovinNativeAd appLovinNativeAd, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener);
}
