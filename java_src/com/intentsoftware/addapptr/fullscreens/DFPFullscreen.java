package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import android.location.Location;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.k;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class DFPFullscreen extends FullscreenAd {
    private PublisherInterstitialAd interstitialAd;

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        this.interstitialAd.show();
        return true;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.interstitialAd = new PublisherInterstitialAd(activity);
        this.interstitialAd.setAdUnitId(str);
        this.interstitialAd.setAdListener(createAdListener());
        PublisherAdRequest.Builder addTestDevice = new PublisherAdRequest.Builder().addTestDevice(AdRequest.DEVICE_ID_EMULATOR);
        addTestDevice.setRequestAgent("AddApptr");
        if (kVar != null) {
            for (Map.Entry<String, List<String>> entry : kVar.getMap().entrySet()) {
                addTestDevice.addCustomTargeting(entry.getKey(), entry.getValue());
            }
        }
        Location location = b.getLocation();
        if (location != null) {
            addTestDevice.setLocation(location);
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
        return new AdListener() { // from class: com.intentsoftware.addapptr.fullscreens.DFPFullscreen.1
            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int i) {
                DFPFullscreen.this.notifyListenerThatAdFailedToLoad("error code " + i);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                DFPFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                DFPFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLeftApplication() {
                DFPFullscreen.this.notifyListenerThatAdWasClicked();
            }
        };
    }
}
