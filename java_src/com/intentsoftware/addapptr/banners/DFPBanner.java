package com.intentsoftware.addapptr.banners;

import android.app.Activity;
import android.location.Location;
import android.view.View;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import com.openx.view.mraid.JSInterface;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class DFPBanner extends BannerAd {
    private PublisherAdView adView;
    private BannerAd.a customSize;
    private boolean usesMultipleSizes = false;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        String[] split = str.split(":");
        String str2 = split[0];
        ArrayList arrayList = new ArrayList();
        if (split.length > 1) {
            if (bannerSize != BannerSize.MutlipleSizes) {
                if (c.isLoggable(5)) {
                    c.w(this, "Obtained config with multiple banner sizes for fixed-size banner.");
                }
                notifyListenerThatAdFailedToLoad("Obtained config with multiple banner sizes for fixed-size banner.");
                return;
            }
            this.usesMultipleSizes = true;
            for (int i = 1; i < split.length; i++) {
                try {
                    String[] split2 = split[i].split(JSInterface.JSON_X);
                    arrayList.add(new AdSize(Integer.parseInt(split2[0]), Integer.parseInt(split2[1])));
                } catch (Exception e) {
                    if (c.isLoggable(6)) {
                        c.e(this, "Exception when parsing banner sizes for DFP: " + e.getMessage());
                    }
                    notifyListenerThatAdFailedToLoad("Exception when parsing banner sizes");
                    return;
                }
            }
        } else if (bannerSize == BannerSize.MutlipleSizes) {
            if (c.isLoggable(5)) {
                c.w(this, "Obtained config without banner sizes for multi-size banner.");
            }
            notifyListenerThatAdFailedToLoad("Obtained config without banner sizes for multi-size banner.");
            return;
        }
        this.adView = new PublisherAdView(activity);
        this.adView.setAdUnitId(str2);
        if (bannerSize == BannerSize.Banner300x250) {
            this.adView.setAdSizes(AdSize.MEDIUM_RECTANGLE);
        } else if (bannerSize == BannerSize.Banner768x90) {
            this.adView.setAdSizes(AdSize.LEADERBOARD);
        } else if (bannerSize == BannerSize.Banner468x60) {
            this.adView.setAdSizes(AdSize.FULL_BANNER);
        } else if (bannerSize == BannerSize.Banner320x53) {
            this.adView.setAdSizes(AdSize.BANNER);
        } else if (bannerSize == BannerSize.MutlipleSizes) {
            this.adView.setAdSizes((AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
        } else {
            this.adView.setAdSizes(new AdSize(bannerSize.getWidth(), bannerSize.getHeight()));
        }
        this.adView.setAdListener(createAdListener());
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
        return new AdListener() { // from class: com.intentsoftware.addapptr.banners.DFPBanner.1
            @Override // com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                if (DFPBanner.this.usesMultipleSizes) {
                    DFPBanner.this.customSize = new BannerAd.a(DFPBanner.this.adView.getAdSize().getWidth(), DFPBanner.this.adView.getAdSize().getHeight(), false);
                }
                DFPBanner.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int i) {
                DFPBanner.this.notifyListenerThatAdFailedToLoad("error code " + i);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                DFPBanner.this.notifyListenerThatAdWasClicked();
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdClosed() {
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLeftApplication() {
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public BannerAd.a getCustomSize() {
        return this.customSize;
    }
}
