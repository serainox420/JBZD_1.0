package com.applovin.adview;

import com.applovin.sdk.AppLovinLogger;
/* loaded from: classes.dex */
class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f1524a;
    final /* synthetic */ int b;
    final /* synthetic */ l c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(l lVar, int i, int i2) {
        this.c = lVar;
        this.f1524a = i;
        this.b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinLogger appLovinLogger;
        appLovinLogger = this.c.f1523a.d;
        appLovinLogger.e("AppLovinInterstitialActivity", "Video view error (" + this.f1524a + "," + this.b + ") - showing close button.");
        this.c.f1523a.e();
    }
}
