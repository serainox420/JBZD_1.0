package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinLogger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f1555a;
    private final AppLovinAd b;

    public g(AdViewControllerImpl adViewControllerImpl, AppLovinAd appLovinAd) {
        this.f1555a = adViewControllerImpl;
        this.b = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdClickListener appLovinAdClickListener;
        AppLovinLogger appLovinLogger;
        appLovinAdClickListener = this.f1555a.y;
        if (appLovinAdClickListener == null || this.b == null) {
            return;
        }
        try {
            appLovinAdClickListener.adClicked(this.b);
        } catch (Throwable th) {
            appLovinLogger = this.f1555a.d;
            appLovinLogger.userError("AppLovinAdView", "Exception while notifying ad click listener", th);
        }
    }
}
