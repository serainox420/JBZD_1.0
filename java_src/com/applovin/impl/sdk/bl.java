package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bl implements AppLovinNativeAdLoadListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinNativeAdLoadListener f1614a;
    final /* synthetic */ be b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bl(be beVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.b = beVar;
        this.f1614a = appLovinNativeAdLoadListener;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        this.b.a(this.f1614a, i);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        this.b.a(this.f1614a, list);
    }
}
