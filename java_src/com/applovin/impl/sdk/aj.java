package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
/* loaded from: classes.dex */
class aj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinAd f1590a;
    final /* synthetic */ af b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(af afVar, AppLovinAd appLovinAd) {
        this.b = afVar;
        this.f1590a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener;
        appLovinAdVideoPlaybackListener = this.b.e;
        appLovinAdVideoPlaybackListener.videoPlaybackBegan(this.f1590a);
    }
}
