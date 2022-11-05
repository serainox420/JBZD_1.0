package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.sdk.AppLovinAd;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class bc extends br {
    public bc(AppLovinSdkImpl appLovinSdkImpl) {
        super(appLovinSdkImpl);
    }

    @Override // com.applovin.impl.sdk.br
    bw a(c cVar) {
        cp cpVar = new cp(this.f1620a, 1, this);
        cpVar.a(true);
        return cpVar;
    }

    @Override // com.applovin.impl.sdk.br
    c a(az azVar) {
        return NativeAdImpl.SPEC_NATIVE;
    }

    @Override // com.applovin.impl.sdk.br
    Map a() {
        HashMap hashMap = new HashMap(1);
        hashMap.put(NativeAdImpl.SPEC_NATIVE, new bs(((Integer) this.f1620a.a(bx.aE)).intValue()));
        return hashMap;
    }

    @Override // com.applovin.impl.sdk.x
    public void a(c cVar, int i) {
    }

    @Override // com.applovin.impl.sdk.br
    void a(Object obj, az azVar) {
        ((AppLovinNativeAdLoadListener) obj).onNativeAdsLoaded(Arrays.asList((AppLovinNativeAd) azVar));
    }

    @Override // com.applovin.impl.sdk.br
    void a(Object obj, c cVar, int i) {
        ((AppLovinNativeAdLoadListener) obj).onNativeAdsFailedToLoad(i);
    }

    @Override // com.applovin.impl.sdk.br
    public /* bridge */ /* synthetic */ boolean a(c cVar, Object obj) {
        return super.a(cVar, obj);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
    }

    @Override // com.applovin.impl.sdk.br
    public /* bridge */ /* synthetic */ az b(c cVar) {
        return super.b(cVar);
    }

    @Override // com.applovin.impl.sdk.br
    public /* bridge */ /* synthetic */ void b(c cVar, Object obj) {
        super.b(cVar, obj);
    }

    @Override // com.applovin.impl.sdk.br
    public /* bridge */ /* synthetic */ boolean c(c cVar) {
        return super.c(cVar);
    }

    @Override // com.applovin.impl.sdk.br
    public /* bridge */ /* synthetic */ void d(c cVar) {
        super.d(cVar);
    }

    @Override // com.applovin.impl.sdk.br
    public /* bridge */ /* synthetic */ boolean e(c cVar) {
        return super.e(cVar);
    }

    @Override // com.applovin.impl.sdk.br
    public /* bridge */ /* synthetic */ void f(c cVar) {
        super.f(cVar);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        b(NativeAdImpl.SPEC_NATIVE, i);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        AppLovinNativeAd appLovinNativeAd = (AppLovinNativeAd) list.get(0);
        if (((Boolean) this.f1620a.a(bx.bm)).booleanValue()) {
            this.f1620a.getNativeAdService().precacheResources(appLovinNativeAd, new bd(this));
        } else {
            c((az) appLovinNativeAd);
        }
    }
}
