package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
/* loaded from: classes.dex */
class d implements AppLovinAdDisplayListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f1552a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(AdViewControllerImpl adViewControllerImpl) {
        this.f1552a = adViewControllerImpl;
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        AppLovinAdDisplayListener appLovinAdDisplayListener;
        AppLovinAdDisplayListener appLovinAdDisplayListener2;
        appLovinAdDisplayListener = this.f1552a.w;
        if (appLovinAdDisplayListener != null) {
            appLovinAdDisplayListener2 = this.f1552a.w;
            appLovinAdDisplayListener2.adHidden(appLovinAd);
        }
    }
}
