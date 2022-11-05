package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import com.amazon.device.ads.Ad;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdListener;
import com.amazon.device.ads.AdProperties;
import com.amazon.device.ads.AdRegistration;
import com.amazon.device.ads.AdTargetingOptions;
import com.amazon.device.ads.InterstitialAd;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.k;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class AmazonFullscreen extends FullscreenAd {
    private InterstitialAd interstitial;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        AdRegistration.setAppKey(str);
        this.interstitial = new InterstitialAd(activity);
        this.interstitial.setListener(createListener());
        if (kVar != null) {
            AdTargetingOptions adTargetingOptions = new AdTargetingOptions();
            for (Map.Entry<String, List<String>> entry : kVar.getMap().entrySet()) {
                adTargetingOptions.setAdvancedOption(entry.getKey(), entry.getValue().get(0));
            }
            this.interstitial.loadAd(adTargetingOptions);
            return;
        }
        this.interstitial.loadAd();
    }

    private AdListener createListener() {
        return new AdListener() { // from class: com.intentsoftware.addapptr.fullscreens.AmazonFullscreen.1
            @Override // com.amazon.device.ads.AdListener
            public void onAdLoaded(Ad ad, AdProperties adProperties) {
                AmazonFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.amazon.device.ads.AdListener
            public void onAdFailedToLoad(Ad ad, AdError adError) {
                AmazonFullscreen.this.notifyListenerThatAdFailedToLoad(adError.getMessage());
            }

            @Override // com.amazon.device.ads.AdListener
            public void onAdExpanded(Ad ad) {
            }

            @Override // com.amazon.device.ads.AdListener
            public void onAdDismissed(Ad ad) {
            }

            @Override // com.amazon.device.ads.AdListener
            public void onAdCollapsed(Ad ad) {
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        if (this.interstitial.isReady()) {
            notifyListenerThatAdIsShown();
            this.interstitial.showAd();
            return true;
        }
        return false;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.interstitial != null) {
            this.interstitial.setListener(null);
            this.interstitial = null;
        }
    }
}
