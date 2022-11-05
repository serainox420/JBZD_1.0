package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinLogger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinAd f1536a;
    final /* synthetic */ AdViewControllerImpl b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdViewControllerImpl adViewControllerImpl, AppLovinAd appLovinAd) {
        this.b = adViewControllerImpl;
        this.f1536a = appLovinAd;
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
            appLovinAdLoadListener2.adReceived(this.f1536a);
        } catch (Throwable th) {
            appLovinLogger = this.b.d;
            appLovinLogger.userError(AppLovinLogger.SDK_TAG, "Exception while running app load callback: " + th.getMessage());
        }
    }
}
