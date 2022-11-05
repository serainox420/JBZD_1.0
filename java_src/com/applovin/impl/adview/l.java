package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdUpdateListener;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements AppLovinAdLoadListener, AppLovinAdUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference f1560a;
    private final AppLovinAdService b;
    private final AppLovinLogger c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(AdViewControllerImpl adViewControllerImpl, AppLovinSdk appLovinSdk) {
        if (adViewControllerImpl == null) {
            throw new IllegalArgumentException("No view specified");
        }
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f1560a = new WeakReference(adViewControllerImpl);
        this.c = appLovinSdk.getLogger();
        this.b = appLovinSdk.getAdService();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        AdViewControllerImpl adViewControllerImpl = (AdViewControllerImpl) this.f1560a.get();
        if (adViewControllerImpl != null) {
            adViewControllerImpl.a(appLovinAd);
        } else {
            this.c.userError("AppLovinAdView", "Ad view has been garbage collected by the time an ad was recieved");
        }
    }

    @Override // com.applovin.sdk.AppLovinAdUpdateListener
    public void adUpdated(AppLovinAd appLovinAd) {
        AdViewControllerImpl adViewControllerImpl = (AdViewControllerImpl) this.f1560a.get();
        if (adViewControllerImpl != null) {
            adViewControllerImpl.a(appLovinAd);
            return;
        }
        this.b.removeAdUpdateListener(this, appLovinAd.getSize());
        this.c.userError("AppLovinAdView", "Ad view has been garbage collected by the time an ad was updated");
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        AdViewControllerImpl adViewControllerImpl = (AdViewControllerImpl) this.f1560a.get();
        if (adViewControllerImpl != null) {
            adViewControllerImpl.a(i);
        }
    }

    public String toString() {
        return "[AdViewController listener: " + hashCode() + "]";
    }
}
