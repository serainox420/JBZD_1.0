package com.intentsoftware.addapptr.banners;

import android.app.Activity;
import android.view.View;
import com.applovin.adview.AppLovinAdView;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.k;
/* loaded from: classes2.dex */
public class AppLovinBanner extends BannerAd {
    private AppLovinAdView adView;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        AppLovinSdk appLovinSdk = AppLovinSdk.getInstance(str, new AppLovinSdkSettings(), activity);
        if (bannerSize == BannerSize.Banner300x250) {
            this.adView = new AppLovinAdView(appLovinSdk, AppLovinAdSize.MREC, activity);
        } else if (bannerSize == BannerSize.Banner768x90) {
            this.adView = new AppLovinAdView(appLovinSdk, AppLovinAdSize.LEADER, activity);
        } else if (bannerSize == BannerSize.Banner320x53) {
            this.adView = new AppLovinAdView(appLovinSdk, AppLovinAdSize.BANNER, activity);
        } else {
            notifyListenerThatAdFailedToLoad("unsupported size");
            return;
        }
        this.adView.setAdLoadListener(createAdLoadListener());
        this.adView.setAdClickListener(new AppLovinAdClickListener() { // from class: com.intentsoftware.addapptr.banners.AppLovinBanner.1
            @Override // com.applovin.sdk.AppLovinAdClickListener
            public void adClicked(AppLovinAd appLovinAd) {
                AppLovinBanner.this.notifyListenerThatAdWasClicked();
            }
        });
        this.adView.setAutoDestroy(false);
        this.adView.loadNextAd();
    }

    private AppLovinAdLoadListener createAdLoadListener() {
        return new AppLovinAdLoadListener() { // from class: com.intentsoftware.addapptr.banners.AppLovinBanner.2
            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void failedToReceiveAd(int i) {
                AppLovinBanner.this.notifyListenerThatAdFailedToLoad("error code " + i);
            }

            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void adReceived(AppLovinAd appLovinAd) {
                AppLovinBanner.this.notifyListenerThatAdWasLoaded();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.adView;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void pause() {
        if (this.adView != null) {
            this.adView.pause();
        }
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        super.resume(activity);
        if (this.adView != null) {
            this.adView.resume();
        }
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.adView != null) {
            this.adView.destroy();
        }
        this.adView = null;
    }
}
