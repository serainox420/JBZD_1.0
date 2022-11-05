package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinLogger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f1550a;
    final /* synthetic */ AdViewControllerImpl b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(AdViewControllerImpl adViewControllerImpl, int i) {
        this.b = adViewControllerImpl;
        this.f1550a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinLogger appLovinLogger;
        AppLovinAdLoadListener appLovinAdLoadListener;
        AppLovinAdLoadListener appLovinAdLoadListener2;
        try {
            appLovinAdLoadListener = this.b.v;
            if (appLovinAdLoadListener == null) {
                return;
            }
            appLovinAdLoadListener2 = this.b.v;
            appLovinAdLoadListener2.failedToReceiveAd(this.f1550a);
        } catch (Throwable th) {
            appLovinLogger = this.b.d;
            appLovinLogger.userError("AppLovinAdView", "Exception while running app load  callback", th);
        }
    }
}
