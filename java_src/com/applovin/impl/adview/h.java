package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinLogger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f1556a;
    private final AppLovinAd b;

    public h(AdViewControllerImpl adViewControllerImpl, AppLovinAd appLovinAd) {
        this.f1556a = adViewControllerImpl;
        this.b = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdDisplayListener appLovinAdDisplayListener;
        AppLovinLogger appLovinLogger;
        appLovinAdDisplayListener = this.f1556a.w;
        if (appLovinAdDisplayListener == null || this.b == null) {
            return;
        }
        try {
            appLovinAdDisplayListener.adHidden(this.b);
        } catch (Throwable th) {
            appLovinLogger = this.f1556a.d;
            appLovinLogger.userError("AppLovinAdView", "Exception while notifying ad display listener", th);
        }
    }
}
