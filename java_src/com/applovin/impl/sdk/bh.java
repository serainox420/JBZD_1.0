package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bh implements AppLovinNativeAdPrecacheListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinNativeAdPrecacheListener f1610a;
    final /* synthetic */ be b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bh(be beVar, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        this.b = beVar;
        this.f1610a = appLovinNativeAdPrecacheListener;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        this.b.a(this.f1610a, appLovinNativeAd, i, true);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd) {
        this.b.a(this.f1610a, appLovinNativeAd, true);
    }
}
