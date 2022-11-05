package com.applovin.impl.adview;

import android.app.Activity;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f1557a;

    private i(AdViewControllerImpl adViewControllerImpl) {
        this.f1557a = adViewControllerImpl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ i(AdViewControllerImpl adViewControllerImpl, a aVar) {
        this(adViewControllerImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAd appLovinAd;
        AppLovinLogger appLovinLogger;
        AppLovinAd appLovinAd2;
        String str;
        AppLovinSdk appLovinSdk;
        Activity activity;
        AppLovinAd appLovinAd3;
        String str2;
        appLovinAd = this.f1557a.n;
        if (appLovinAd != null) {
            try {
                appLovinLogger = this.f1557a.d;
                StringBuilder append = new StringBuilder().append("Rendering interstitial ad for #");
                appLovinAd2 = this.f1557a.n;
                StringBuilder append2 = append.append(appLovinAd2.getAdIdNumber()).append(" over placement: \"");
                str = this.f1557a.f;
                appLovinLogger.d("AppLovinAdView", append2.append(str).append("\"...").toString());
                InterstitialAdDialogCreatorImpl interstitialAdDialogCreatorImpl = new InterstitialAdDialogCreatorImpl();
                appLovinSdk = this.f1557a.b;
                activity = this.f1557a.f1533a;
                AppLovinInterstitialAdDialog createInterstitialAdDialog = interstitialAdDialogCreatorImpl.createInterstitialAdDialog(appLovinSdk, activity);
                createInterstitialAdDialog.setAdDisplayListener(new d(this.f1557a));
                createInterstitialAdDialog.setAdVideoPlaybackListener(new e(this.f1557a));
                createInterstitialAdDialog.setAdClickListener(new c(this.f1557a));
                appLovinAd3 = this.f1557a.n;
                str2 = this.f1557a.f;
                createInterstitialAdDialog.showAndRender(appLovinAd3, str2);
            } catch (Throwable th) {
            }
        }
    }
}
