package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bi implements AppLovinNativeAdLoadListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ List f1611a;
    final /* synthetic */ AppLovinNativeAdLoadListener b;
    final /* synthetic */ List c;
    final /* synthetic */ be d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bi(be beVar, List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, List list2) {
        this.d = beVar;
        this.f1611a = list;
        this.b = appLovinNativeAdLoadListener;
        this.c = list2;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        if (this.b != null) {
            this.b.onNativeAdsFailedToLoad(i);
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        this.d.c(this.f1611a, new bj(this));
    }
}
