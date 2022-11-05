package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.k;
import com.madsdk.InterstitialAdListener;
import com.madsdk.MadSdkInterstitialAd;
/* loaded from: classes2.dex */
public class PermodoFullscreen extends FullscreenAd {
    private MadSdkInterstitialAd interstitialAd;
    private boolean reportedClick;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.interstitialAd = new MadSdkInterstitialAd();
        this.interstitialAd.load(str, "320", "480", true, null, activity, createListener());
    }

    private InterstitialAdListener createListener() {
        return new InterstitialAdListener() { // from class: com.intentsoftware.addapptr.fullscreens.PermodoFullscreen.1
            @Override // com.madsdk.InterstitialAdListener
            public void onResumeForAd() {
                PermodoFullscreen.this.fallbackNotifyListenerThatAdWasDismissed();
            }

            @Override // com.madsdk.InterstitialAdListener
            public void onPauseForAd() {
                PermodoFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.madsdk.AdListener
            public void onLoad() {
                PermodoFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.madsdk.AdListener
            public void onClick() {
                if (!PermodoFullscreen.this.reportedClick) {
                    PermodoFullscreen.this.reportedClick = true;
                    PermodoFullscreen.this.notifyListenerThatAdWasClicked();
                }
            }

            @Override // com.madsdk.AdListener
            public void onLoadFailed(String str) {
                PermodoFullscreen.this.notifyListenerThatAdFailedToLoad(str);
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        this.interstitialAd.show();
        return true;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        this.interstitialAd = null;
    }
}
