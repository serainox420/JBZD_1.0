package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.List;
/* loaded from: classes.dex */
class bf implements AppLovinNativeAdLoadListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinNativeAdLoadListener f1608a;
    final /* synthetic */ be b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bf(be beVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.b = beVar;
        this.f1608a = appLovinNativeAdLoadListener;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        this.b.a(this.f1608a, i);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        this.b.a(list, this.f1608a);
    }
}
