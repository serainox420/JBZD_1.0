package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bk implements AppLovinNativeAdLoadListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinNativeAdLoadListener f1613a;
    final /* synthetic */ be b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bk(be beVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.b = beVar;
        this.f1613a = appLovinNativeAdLoadListener;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        if (this.f1613a != null) {
            this.f1613a.onNativeAdsFailedToLoad(i);
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        if (this.f1613a != null) {
            this.f1613a.onNativeAdsLoaded(list);
        }
    }
}
