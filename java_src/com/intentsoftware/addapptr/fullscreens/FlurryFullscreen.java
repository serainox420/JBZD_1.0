package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import com.flurry.android.FlurryAgent;
import com.flurry.android.ads.FlurryAdErrorType;
import com.flurry.android.ads.FlurryAdInterstitial;
import com.flurry.android.ads.FlurryAdInterstitialListener;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.k;
/* loaded from: classes2.dex */
public class FlurryFullscreen extends FullscreenAd {
    private FlurryAdInterstitial interstitial;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        String[] split = str.split(":");
        if (split.length > 1) {
            String str2 = split[0];
            String str3 = split[1];
            FlurryAgent.init(activity, str2);
            this.interstitial = new FlurryAdInterstitial(activity, str3);
            this.interstitial.setListener(createListener());
            this.interstitial.fetchAd();
            return;
        }
        notifyListenerThatAdFailedToLoad("Not enough ad id parts for Flurry Fulscreen");
    }

    private FlurryAdInterstitialListener createListener() {
        return new FlurryAdInterstitialListener() { // from class: com.intentsoftware.addapptr.fullscreens.FlurryFullscreen.1
            @Override // com.flurry.android.ads.FlurryAdInterstitialListener
            public void onFetched(FlurryAdInterstitial flurryAdInterstitial) {
                FlurryFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.flurry.android.ads.FlurryAdInterstitialListener
            public void onRendered(FlurryAdInterstitial flurryAdInterstitial) {
            }

            @Override // com.flurry.android.ads.FlurryAdInterstitialListener
            public void onDisplay(FlurryAdInterstitial flurryAdInterstitial) {
                FlurryFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.flurry.android.ads.FlurryAdInterstitialListener
            public void onClose(FlurryAdInterstitial flurryAdInterstitial) {
            }

            @Override // com.flurry.android.ads.FlurryAdInterstitialListener
            public void onAppExit(FlurryAdInterstitial flurryAdInterstitial) {
            }

            @Override // com.flurry.android.ads.FlurryAdInterstitialListener
            public void onClicked(FlurryAdInterstitial flurryAdInterstitial) {
                FlurryFullscreen.this.notifyListenerThatAdWasClicked();
            }

            @Override // com.flurry.android.ads.FlurryAdInterstitialListener
            public void onVideoCompleted(FlurryAdInterstitial flurryAdInterstitial) {
                FlurryFullscreen.this.notifyListenerThatUserEarnedIncentive();
            }

            @Override // com.flurry.android.ads.FlurryAdInterstitialListener
            public void onError(FlurryAdInterstitial flurryAdInterstitial, FlurryAdErrorType flurryAdErrorType, int i) {
                FlurryFullscreen.this.notifyListenerThatAdFailedToLoad("Error code: " + i);
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        if (this.interstitial.isReady()) {
            this.interstitial.displayAd();
            return true;
        }
        return false;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.interstitial != null) {
            this.interstitial.destroy();
        }
    }
}
