package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdRewardListener;
import java.util.Map;
/* loaded from: classes.dex */
class al implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinAd f1592a;
    final /* synthetic */ Map b;
    final /* synthetic */ af c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(af afVar, AppLovinAd appLovinAd, Map map) {
        this.c = afVar;
        this.f1592a = appLovinAd;
        this.b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdRewardListener appLovinAdRewardListener;
        appLovinAdRewardListener = this.c.f;
        appLovinAdRewardListener.userRewardVerified(this.f1592a, this.b);
    }
}
