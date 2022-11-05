package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.k;
/* loaded from: classes2.dex */
public class AppLovinFullscreen extends FullscreenAd {
    private AppLovinAd ad;
    private AppLovinInterstitialAdDialog adDialog;
    private boolean adWasClicked;
    private boolean reportedResume;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        AppLovinSdk appLovinSdk = AppLovinSdk.getInstance(str, new AppLovinSdkSettings(), activity);
        if (appLovinSdk == null || activity == null) {
            notifyListenerThatAdFailedToLoad("sdk or activity is null");
            return;
        }
        this.adDialog = AppLovinInterstitialAd.create(appLovinSdk, activity);
        this.adDialog.setAdDisplayListener(new AppLovinAdDisplayListener() { // from class: com.intentsoftware.addapptr.fullscreens.AppLovinFullscreen.1
            @Override // com.applovin.sdk.AppLovinAdDisplayListener
            public void adHidden(AppLovinAd appLovinAd) {
                if (!AppLovinFullscreen.this.reportedResume) {
                    AppLovinFullscreen.this.fallbackNotifyListenerThatAdWasDismissed();
                }
            }

            @Override // com.applovin.sdk.AppLovinAdDisplayListener
            public void adDisplayed(AppLovinAd appLovinAd) {
            }
        });
        this.adDialog.setAdClickListener(new AppLovinAdClickListener() { // from class: com.intentsoftware.addapptr.fullscreens.AppLovinFullscreen.2
            @Override // com.applovin.sdk.AppLovinAdClickListener
            public void adClicked(AppLovinAd appLovinAd) {
                if (!AppLovinFullscreen.this.adWasClicked) {
                    AppLovinFullscreen.this.adWasClicked = true;
                    AppLovinFullscreen.this.notifyListenerThatAdWasClicked();
                }
            }
        });
        this.adDialog.setAdVideoPlaybackListener(new AppLovinAdVideoPlaybackListener() { // from class: com.intentsoftware.addapptr.fullscreens.AppLovinFullscreen.3
            @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
            public void videoPlaybackBegan(AppLovinAd appLovinAd) {
            }

            @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
            public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
                if (z) {
                    AppLovinFullscreen.this.notifyListenerThatUserEarnedIncentive();
                }
            }
        });
        appLovinSdk.getAdService().loadNextAd(AppLovinAdSize.INTERSTITIAL, createAdLoadListener());
    }

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        if (this.adDialog.isAdReadyToDisplay()) {
            this.adDialog.showAndRender(this.ad);
            notifyListenerThatAdIsShown();
            return true;
        }
        return false;
    }

    private AppLovinAdLoadListener createAdLoadListener() {
        return new AppLovinAdLoadListener() { // from class: com.intentsoftware.addapptr.fullscreens.AppLovinFullscreen.4
            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void failedToReceiveAd(int i) {
                AppLovinFullscreen.this.notifyListenerThatAdFailedToLoad("error code " + i);
            }

            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void adReceived(AppLovinAd appLovinAd) {
                AppLovinFullscreen.this.ad = appLovinAd;
                AppLovinFullscreen.this.notifyListenerThatAdWasLoaded();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        if (this.adDialog != null && this.adDialog.isShowing()) {
            this.reportedResume = true;
            this.adDialog.dismiss();
        }
        super.resume(activity);
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
    }
}
