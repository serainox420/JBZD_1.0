package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
/* loaded from: classes.dex */
class ad implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinAd f1584a;
    final /* synthetic */ ac b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(ac acVar, AppLovinAd appLovinAd) {
        this.b = acVar;
        this.f1584a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        appLovinAdLoadListener = this.b.b;
        appLovinAdLoadListener.adReceived(this.f1584a);
    }
}
