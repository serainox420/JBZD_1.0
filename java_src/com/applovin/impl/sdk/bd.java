package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes.dex */
class bd implements AppLovinNativeAdPrecacheListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bc f1606a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bd(bc bcVar) {
        this.f1606a = bcVar;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        this.f1606a.b(NativeAdImpl.SPEC_NATIVE, i);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd) {
        if (!AppLovinSdkUtils.isValidString(appLovinNativeAd.getVideoUrl())) {
            this.f1606a.c((az) appLovinNativeAd);
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        this.f1606a.b.w("NativeAdPreloadManager", "Video failed to cache during native ad preload. " + i);
        this.f1606a.c((az) appLovinNativeAd);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd) {
        this.f1606a.c((az) appLovinNativeAd);
    }
}
