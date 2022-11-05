package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdRewardListener;
import java.util.Map;
/* loaded from: classes.dex */
class an implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinAd f1594a;
    final /* synthetic */ Map b;
    final /* synthetic */ af c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public an(af afVar, AppLovinAd appLovinAd, Map map) {
        this.c = afVar;
        this.f1594a = appLovinAd;
        this.b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdRewardListener appLovinAdRewardListener;
        appLovinAdRewardListener = this.c.f;
        appLovinAdRewardListener.userRewardRejected(this.f1594a, this.b);
    }
}
