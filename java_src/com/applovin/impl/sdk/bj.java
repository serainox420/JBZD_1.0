package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
class bj implements AppLovinNativeAdLoadListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bi f1612a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bj(bi biVar) {
        this.f1612a = biVar;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        if (this.f1612a.b != null) {
            this.f1612a.b.onNativeAdsFailedToLoad(i);
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        if (this.f1612a.b != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.f1612a.f1611a);
            arrayList.addAll(this.f1612a.c);
            this.f1612a.b.onNativeAdsLoaded(arrayList);
        }
    }
}
