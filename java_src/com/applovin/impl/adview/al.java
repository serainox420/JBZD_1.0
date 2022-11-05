package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAdLoadListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class al implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f1548a;
    final /* synthetic */ ah b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(ah ahVar, int i) {
        this.b = ahVar;
        this.f1548a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        AppLovinAdLoadListener appLovinAdLoadListener2;
        appLovinAdLoadListener = this.b.g;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener2 = this.b.g;
            appLovinAdLoadListener2.failedToReceiveAd(this.f1548a);
        }
    }
}
