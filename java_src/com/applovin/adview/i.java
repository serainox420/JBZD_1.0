package com.applovin.adview;

import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements AppLovinAdDisplayListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f1520a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f1520a = appLovinInterstitialActivity;
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        boolean z;
        this.f1520a.g = (AppLovinAdImpl) appLovinAd;
        z = this.f1520a.i;
        if (!z) {
            this.f1520a.a(appLovinAd);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        this.f1520a.b(appLovinAd);
    }
}
