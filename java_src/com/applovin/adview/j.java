package com.applovin.adview;

import com.applovin.impl.adview.ah;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements AppLovinAdClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f1521a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f1521a = appLovinInterstitialActivity;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        ah ahVar;
        ahVar = this.f1521a.b;
        AppLovinAdClickListener e = ahVar.e();
        if (e != null) {
            e.adClicked(appLovinAd);
        }
    }
}
