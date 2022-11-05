package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
/* loaded from: classes.dex */
class bg implements AppLovinNativeAdPrecacheListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinNativeAdPrecacheListener f1609a;
    final /* synthetic */ be b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bg(be beVar, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        this.b = beVar;
        this.f1609a = appLovinNativeAdPrecacheListener;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        this.b.a(this.f1609a, appLovinNativeAd, i, false);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd) {
        this.b.a(this.f1609a, appLovinNativeAd, false);
        this.b.a(appLovinNativeAd, this.f1609a);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd) {
    }
}
