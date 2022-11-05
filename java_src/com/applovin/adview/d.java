package com.applovin.adview;

import com.applovin.sdk.AppLovinLogger;
/* loaded from: classes.dex */
class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f1515a;
    final /* synthetic */ int b;
    final /* synthetic */ c c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar, int i, int i2) {
        this.c = cVar;
        this.f1515a = i;
        this.b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinLogger appLovinLogger;
        appLovinLogger = this.c.f1514a.f1513a.d;
        appLovinLogger.e("AppLovinInterstitialActivity", "Media player error (" + this.f1515a + "," + this.b + ") - showing close button.");
        this.c.f1514a.f1513a.e();
    }
}
