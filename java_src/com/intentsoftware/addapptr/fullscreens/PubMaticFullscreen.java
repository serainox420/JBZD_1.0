package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import com.pubmatic.sdk.banner.PMBannerAdView;
import com.pubmatic.sdk.banner.PMInterstitialAdView;
import com.pubmatic.sdk.banner.mocean.MoceanBannerAdRequest;
import java.util.Map;
/* loaded from: classes2.dex */
public class PubMaticFullscreen extends FullscreenAd {
    private PMInterstitialAdView interstitial;
    private boolean notifiedClick;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.interstitial = new PMInterstitialAdView(activity);
        MoceanBannerAdRequest createMoceanBannerAdRequest = MoceanBannerAdRequest.createMoceanBannerAdRequest(activity, str);
        if (kVar != null) {
            createMoceanBannerAdRequest.setCustomParams(kVar.getMap());
        }
        this.interstitial.setRequestListener(createRequestListener());
        this.interstitial.setActivityListener(createActivityListener());
        this.interstitial.setAndroidIdEnabled(true);
        this.interstitial.execute(createMoceanBannerAdRequest);
    }

    private PMBannerAdView.BannerAdViewDelegate.ActivityListener createActivityListener() {
        return new PMBannerAdView.BannerAdViewDelegate.ActivityListener() { // from class: com.intentsoftware.addapptr.fullscreens.PubMaticFullscreen.1
            @Override // com.pubmatic.sdk.banner.PMBannerAdView.BannerAdViewDelegate.ActivityListener
            public boolean onOpenUrl(PMBannerAdView pMBannerAdView, String str) {
                if (!PubMaticFullscreen.this.notifiedClick) {
                    PubMaticFullscreen.this.notifiedClick = true;
                    PubMaticFullscreen.this.notifyListenerThatAdWasClicked();
                    return false;
                }
                return false;
            }

            @Override // com.pubmatic.sdk.banner.PMBannerAdView.BannerAdViewDelegate.ActivityListener
            public void onLeavingApplication(PMBannerAdView pMBannerAdView) {
                if (!PubMaticFullscreen.this.notifiedClick) {
                    PubMaticFullscreen.this.notifiedClick = true;
                    PubMaticFullscreen.this.notifyListenerThatAdWasClicked();
                }
            }

            @Override // com.pubmatic.sdk.banner.PMBannerAdView.BannerAdViewDelegate.ActivityListener
            public boolean onCloseButtonClick(PMBannerAdView pMBannerAdView) {
                PubMaticFullscreen.this.fallbackNotifyListenerThatAdWasDismissed();
                PubMaticFullscreen.this.notifiedClick = false;
                return false;
            }
        };
    }

    private PMBannerAdView.BannerAdViewDelegate.RequestListener createRequestListener() {
        return new PMBannerAdView.BannerAdViewDelegate.RequestListener() { // from class: com.intentsoftware.addapptr.fullscreens.PubMaticFullscreen.2
            @Override // com.pubmatic.sdk.banner.PMBannerAdView.BannerAdViewDelegate.RequestListener
            public void onReceivedThirdPartyRequest(PMBannerAdView pMBannerAdView, Map<String, String> map, Map<String, String> map2) {
                PubMaticFullscreen.this.notifyListenerThatAdWasLoaded();
                if (c.isLoggable(4)) {
                    c.i(this, "Obtained third party request!");
                }
            }

            @Override // com.pubmatic.sdk.banner.PMBannerAdView.BannerAdViewDelegate.RequestListener
            public void onReceivedAd(PMBannerAdView pMBannerAdView) {
                PubMaticFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.pubmatic.sdk.banner.PMBannerAdView.BannerAdViewDelegate.RequestListener
            public void onFailedToReceiveAd(PMBannerAdView pMBannerAdView, Exception exc) {
                if (exc != null) {
                    PubMaticFullscreen.this.notifyListenerThatAdFailedToLoad(exc.getMessage());
                } else {
                    PubMaticFullscreen.this.notifyListenerThatAdFailedToLoad(null);
                }
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        try {
            this.interstitial.showInterstitial();
            notifyListenerThatAdIsShown();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.interstitial != null) {
            this.interstitial.reset();
            this.interstitial.setActivityListener(null);
            this.interstitial.setRequestListener(null);
            this.interstitial = null;
        }
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        if (this.interstitial != null) {
            this.interstitial.closeInterstitial();
        }
        this.notifiedClick = false;
        super.resume(activity);
    }
}
