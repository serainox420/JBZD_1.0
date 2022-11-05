package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAdLoadListener;
/* loaded from: classes.dex */
class ae implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f1585a;
    final /* synthetic */ ac b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(ac acVar, int i) {
        this.b = acVar;
        this.f1585a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        appLovinAdLoadListener = this.b.b;
        appLovinAdLoadListener.failedToReceiveAd(this.f1585a);
    }
}
