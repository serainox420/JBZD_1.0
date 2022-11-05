package com.applovin.impl.adview;

import com.applovin.impl.sdk.AppLovinSdkImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f1559a;

    private k(AdViewControllerImpl adViewControllerImpl) {
        this.f1559a = adViewControllerImpl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ k(AdViewControllerImpl adViewControllerImpl, a aVar) {
        this(adViewControllerImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAd appLovinAd;
        AppLovinLogger appLovinLogger;
        AppLovinAd appLovinAd2;
        String str;
        o oVar;
        AppLovinAd appLovinAd3;
        o oVar2;
        AppLovinAd appLovinAd4;
        String str2;
        AppLovinSdk appLovinSdk;
        appLovinAd = this.f1559a.n;
        if (appLovinAd != null) {
            appLovinLogger = this.f1559a.d;
            StringBuilder append = new StringBuilder().append("Rendering advertisement ad for #");
            appLovinAd2 = this.f1559a.n;
            StringBuilder append2 = append.append(appLovinAd2.getAdIdNumber()).append(" over placement: \"");
            str = this.f1559a.f;
            appLovinLogger.d("AppLovinAdView", append2.append(str).append("\"...").toString());
            oVar = this.f1559a.i;
            appLovinAd3 = this.f1559a.n;
            AdViewControllerImpl.b(oVar, appLovinAd3.getSize());
            oVar2 = this.f1559a.i;
            appLovinAd4 = this.f1559a.n;
            str2 = this.f1559a.f;
            appLovinSdk = this.f1559a.b;
            oVar2.a(appLovinAd4, str2, (AppLovinSdkImpl) appLovinSdk);
        }
    }
}
