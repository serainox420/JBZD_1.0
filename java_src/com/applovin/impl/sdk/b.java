package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class b extends br {
    public b(AppLovinSdkImpl appLovinSdkImpl) {
        super(appLovinSdkImpl);
    }

    private bz a(AppLovinAdType appLovinAdType, AppLovinAdSize appLovinAdSize) {
        return appLovinAdSize.equals(AppLovinAdSize.BANNER) ? bx.W : appLovinAdSize.equals(AppLovinAdSize.MREC) ? bx.X : appLovinAdSize.equals(AppLovinAdSize.INTERSTITIAL) ? bx.Y : appLovinAdSize.equals(AppLovinAdSize.LEADER) ? bx.Z : bx.W;
    }

    @Override // com.applovin.impl.sdk.br
    bw a(c cVar) {
        cn cnVar = new cn(cVar.a(), cVar.b(), this, this.f1620a);
        cnVar.a(true);
        return cnVar;
    }

    @Override // com.applovin.impl.sdk.br
    c a(az azVar) {
        return new c((AppLovinAd) azVar);
    }

    @Override // com.applovin.impl.sdk.br
    Map a() {
        HashMap hashMap = new HashMap(5);
        for (AppLovinAdSize appLovinAdSize : AppLovinAdSize.allSizes()) {
            hashMap.put(new c(appLovinAdSize, AppLovinAdType.REGULAR), new bs(((Integer) this.f1620a.a(a(AppLovinAdType.REGULAR, appLovinAdSize))).intValue()));
        }
        hashMap.put(new c(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED), new bs(((Integer) this.f1620a.a(bx.aa)).intValue()));
        return hashMap;
    }

    @Override // com.applovin.impl.sdk.x
    public void a(c cVar, int i) {
        b(cVar, i);
    }

    @Override // com.applovin.impl.sdk.br
    void a(Object obj, az azVar) {
        ((AppLovinAdLoadListener) obj).adReceived((AppLovinAd) azVar);
    }

    @Override // com.applovin.impl.sdk.br
    void a(Object obj, c cVar, int i) {
        if (obj instanceof x) {
            ((x) obj).a(cVar, i);
        }
        if (obj instanceof AppLovinAdLoadListener) {
            ((AppLovinAdLoadListener) obj).failedToReceiveAd(i);
        }
    }

    @Override // com.applovin.impl.sdk.br
    public /* bridge */ /* synthetic */ boolean a(c cVar, Object obj) {
        return super.a(cVar, obj);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        c((az) appLovinAd);
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
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
    }
}
