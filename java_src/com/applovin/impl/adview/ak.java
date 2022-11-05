package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ak implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinAd f1547a;
    final /* synthetic */ ah b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(ah ahVar, AppLovinAd appLovinAd) {
        this.b = ahVar;
        this.f1547a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        AppLovinAdLoadListener appLovinAdLoadListener2;
        appLovinAdLoadListener = this.b.g;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener2 = this.b.g;
            appLovinAdLoadListener2.adReceived(this.f1547a);
        }
    }
}
