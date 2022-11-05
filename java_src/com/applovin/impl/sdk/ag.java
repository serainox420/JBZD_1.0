package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdRewardListener;
/* loaded from: classes.dex */
class ag implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinAd f1587a;
    final /* synthetic */ int b;
    final /* synthetic */ af c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(af afVar, AppLovinAd appLovinAd, int i) {
        this.c = afVar;
        this.f1587a = appLovinAd;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdRewardListener appLovinAdRewardListener;
        appLovinAdRewardListener = this.c.f;
        appLovinAdRewardListener.validationRequestFailed(this.f1587a, this.b);
    }
}
