package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import android.location.Location;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.k;
import java.util.List;
/* loaded from: classes2.dex */
public class AdMobFullscreen extends FullscreenAd {
    private InterstitialAd interstitialAd;

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        this.interstitialAd.show();
        return true;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.interstitialAd = new InterstitialAd(activity);
        this.interstitialAd.setAdUnitId(str);
        this.interstitialAd.setAdListener(createAdListener());
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
        this.interstitialAd.loadAd(addTestDevice.build());
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.interstitialAd != null) {
            this.interstitialAd.setAdListener(null);
        }
        this.interstitialAd = null;
    }

    private AdListener createAdListener() {
        return new AdListener() { // from class: com.intentsoftware.addapptr.fullscreens.AdMobFullscreen.1
            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int i) {
                AdMobFullscreen.this.notifyListenerThatAdFailedToLoad("error code " + i);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                AdMobFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                AdMobFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLeftApplication() {
                AdMobFullscreen.this.notifyListenerThatAdWasClicked();
            }
        };
    }
}
