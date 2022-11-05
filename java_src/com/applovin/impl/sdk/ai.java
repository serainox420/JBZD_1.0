package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
/* loaded from: classes.dex */
class ai implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinAd f1589a;
    final /* synthetic */ af b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(af afVar, AppLovinAd appLovinAd) {
        this.b = afVar;
        this.f1589a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdClickListener appLovinAdClickListener;
        appLovinAdClickListener = this.b.d;
        appLovinAdClickListener.adClicked(this.f1589a);
    }
}
