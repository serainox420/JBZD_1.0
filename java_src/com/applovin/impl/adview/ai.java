package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ai implements AppLovinAdLoadListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f1545a;
    final /* synthetic */ ah b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(ah ahVar, String str) {
        this.b = ahVar;
        this.f1545a = str;
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        this.b.b(appLovinAd);
        this.b.showAndRender(appLovinAd, this.f1545a);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        this.b.a(i);
    }
}
