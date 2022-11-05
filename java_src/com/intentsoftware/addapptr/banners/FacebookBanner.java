package com.intentsoftware.addapptr.banners;

import android.app.Activity;
import android.view.View;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.k;
/* loaded from: classes2.dex */
public class FacebookBanner extends BannerAd {
    private AdView adView;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        if (bannerSize == BannerSize.Banner300x250) {
            this.adView = new AdView(activity, str, AdSize.RECTANGLE_HEIGHT_250);
        } else if (bannerSize == BannerSize.Banner768x90) {
            this.adView = new AdView(activity, str, AdSize.BANNER_HEIGHT_90);
        } else {
            this.adView = new AdView(activity, str, AdSize.BANNER_320_50);
        }
        this.adView.setAdListener(createListener());
        this.adView.loadAd();
    }

    private AdListener createListener() {
        return new AdListener() { // from class: com.intentsoftware.addapptr.banners.FacebookBanner.1
            @Override // com.facebook.ads.AdListener
            public void onError(Ad ad, AdError adError) {
                FacebookBanner.this.notifyListenerThatAdFailedToLoad(adError.getErrorMessage());
            }

            @Override // com.facebook.ads.AdListener
            public void onAdLoaded(Ad ad) {
                FacebookBanner.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.facebook.ads.AdListener
            public void onAdClicked(Ad ad) {
                FacebookBanner.this.notifyListenerThatAdWasClicked();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.adView;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.adView != null) {
            this.adView.destroy();
        }
    }
}
