package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.k;
/* loaded from: classes2.dex */
public class FacebookFullscreen extends FullscreenAd {
    private InterstitialAd interstitial;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.interstitial = new InterstitialAd(activity, str);
        this.interstitial.setAdListener(createListener());
        this.interstitial.loadAd();
    }

    private InterstitialAdListener createListener() {
        return new InterstitialAdListener() { // from class: com.intentsoftware.addapptr.fullscreens.FacebookFullscreen.1
            @Override // com.facebook.ads.AdListener
            public void onError(Ad ad, AdError adError) {
                FacebookFullscreen.this.notifyListenerThatAdFailedToLoad(adError.getErrorMessage());
            }

            @Override // com.facebook.ads.AdListener
            public void onAdLoaded(Ad ad) {
                FacebookFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.facebook.ads.AdListener
            public void onAdClicked(Ad ad) {
                FacebookFullscreen.this.notifyListenerThatAdWasClicked();
            }

            @Override // com.facebook.ads.InterstitialAdListener
            public void onInterstitialDisplayed(Ad ad) {
                FacebookFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.facebook.ads.InterstitialAdListener
            public void onInterstitialDismissed(Ad ad) {
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        return this.interstitial.show();
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.interstitial != null) {
            this.interstitial.destroy();
        }
    }
}
