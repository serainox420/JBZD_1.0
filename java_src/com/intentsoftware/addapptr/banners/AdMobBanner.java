package com.intentsoftware.addapptr.banners;

import android.app.Activity;
import android.location.Location;
import android.view.View;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.k;
import java.util.List;
/* loaded from: classes2.dex */
public class AdMobBanner extends BannerAd {
    private AdView adView;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.adView = new AdView(activity);
        this.adView.setAdUnitId(str);
        if (bannerSize == BannerSize.Banner300x250) {
            this.adView.setAdSize(AdSize.MEDIUM_RECTANGLE);
        } else if (bannerSize == BannerSize.Banner768x90) {
            this.adView.setAdSize(AdSize.LEADERBOARD);
        } else if (bannerSize == BannerSize.Banner468x60) {
            this.adView.setAdSize(AdSize.FULL_BANNER);
        } else {
            this.adView.setAdSize(AdSize.BANNER);
        }
        this.adView.setAdListener(createAdListener());
        AdRequest.Builder addTestDevice = new AdRequest.Builder().addTestDevice(AdRequest.DEVICE_ID_EMULATOR);
        addTestDevice.setRequestAgent("AddApptr");
        Location location = b.getLocation();
        if (location != null) {
            addTestDevice.setLocation(location);
        }
        if (kVar != null) {
            for (List<String> list : kVar.getMap().values()) {
                for (String str2 : list) {
                    addTestDevice.addKeyword(str2);
                }
            }
        }
        this.adView.loadAd(addTestDevice.build());
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.adView != null) {
            this.adView.setAdListener(null);
            this.adView.destroy();
        }
        this.adView = null;
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

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.adView;
    }

    private AdListener createAdListener() {
        return new AdListener() { // from class: com.intentsoftware.addapptr.banners.AdMobBanner.1
            @Override // com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                AdMobBanner.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int i) {
                AdMobBanner.this.notifyListenerThatAdFailedToLoad("error code " + i);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                AdMobBanner.this.notifyListenerThatAdWasClicked();
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdClosed() {
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLeftApplication() {
            }
        };
    }
}
