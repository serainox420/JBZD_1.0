package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
/* loaded from: classes.dex */
class c implements AppLovinAdClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f1551a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(AdViewControllerImpl adViewControllerImpl) {
        this.f1551a = adViewControllerImpl;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        AppLovinAdClickListener appLovinAdClickListener;
        AppLovinAdClickListener appLovinAdClickListener2;
        appLovinAdClickListener = this.f1551a.y;
        if (appLovinAdClickListener != null) {
            appLovinAdClickListener2 = this.f1551a.y;
            appLovinAdClickListener2.adClicked(appLovinAd);
        }
    }
}
