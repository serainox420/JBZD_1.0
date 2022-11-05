package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
/* loaded from: classes.dex */
class ah implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinAd f1588a;
    final /* synthetic */ af b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(af afVar, AppLovinAd appLovinAd) {
        this.b = afVar;
        this.f1588a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdDisplayListener appLovinAdDisplayListener;
        appLovinAdDisplayListener = this.b.c;
        appLovinAdDisplayListener.adHidden(this.f1588a);
    }
}
