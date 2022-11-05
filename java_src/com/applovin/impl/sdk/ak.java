package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
/* loaded from: classes.dex */
class ak implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinAd f1591a;
    final /* synthetic */ double b;
    final /* synthetic */ boolean c;
    final /* synthetic */ af d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(af afVar, AppLovinAd appLovinAd, double d, boolean z) {
        this.d = afVar;
        this.f1591a = appLovinAd;
        this.b = d;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener;
        appLovinAdVideoPlaybackListener = this.d.e;
        appLovinAdVideoPlaybackListener.videoPlaybackEnded(this.f1591a, this.b, this.c);
    }
}
