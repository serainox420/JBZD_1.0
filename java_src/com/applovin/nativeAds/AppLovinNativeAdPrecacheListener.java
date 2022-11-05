package com.applovin.nativeAds;
/* loaded from: classes.dex */
public interface AppLovinNativeAdPrecacheListener {
    void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i);

    void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd);

    void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i);

    void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd);
}
