package com.intentsoftware.addapptr.banners;

import android.app.Activity;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import com.amazon.device.ads.Ad;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdLayout;
import com.amazon.device.ads.AdListener;
import com.amazon.device.ads.AdProperties;
import com.amazon.device.ads.AdRegistration;
import com.amazon.device.ads.AdSize;
import com.amazon.device.ads.AdTargetingOptions;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.k;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class AmazonBanner extends BannerAd {
    private AdLayout banner;
    private boolean notifiedClick;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        AdRegistration.setAppKey(str);
        if (bannerSize == BannerSize.Banner300x250) {
            this.banner = new AdLayout(activity, AdSize.SIZE_300x250);
        } else if (bannerSize == BannerSize.Banner768x90) {
            this.banner = new AdLayout(activity, AdSize.SIZE_728x90);
        } else {
            this.banner = new AdLayout(activity, AdSize.SIZE_320x50);
        }
        this.notifiedClick = false;
        this.banner.setListener(createListener());
        this.banner.setLayoutParams(new ViewGroup.LayoutParams((int) TypedValue.applyDimension(1, bannerSize.getWidth(), activity.getResources().getDisplayMetrics()), (int) TypedValue.applyDimension(1, bannerSize.getHeight(), activity.getResources().getDisplayMetrics())));
        AdTargetingOptions adTargetingOptions = new AdTargetingOptions();
        if (kVar != null) {
            for (Map.Entry<String, List<String>> entry : kVar.getMap().entrySet()) {
                adTargetingOptions.setAdvancedOption(entry.getKey(), entry.getValue().get(0));
            }
        }
        this.banner.loadAd(adTargetingOptions);
    }

    private AdListener createListener() {
        return new AdListener() { // from class: com.intentsoftware.addapptr.banners.AmazonBanner.1
            @Override // com.amazon.device.ads.AdListener
            public void onAdLoaded(Ad ad, AdProperties adProperties) {
                AmazonBanner.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.amazon.device.ads.AdListener
            public void onAdFailedToLoad(Ad ad, AdError adError) {
                AmazonBanner.this.notifyListenerThatAdFailedToLoad(adError.getMessage());
            }

            @Override // com.amazon.device.ads.AdListener
            public void onAdExpanded(Ad ad) {
                if (!AmazonBanner.this.notifiedClick) {
                    AmazonBanner.this.notifiedClick = true;
                    AmazonBanner.this.notifyListenerThatAdWasClicked();
                }
            }

            @Override // com.amazon.device.ads.AdListener
            public void onAdDismissed(Ad ad) {
            }

            @Override // com.amazon.device.ads.AdListener
            public void onAdCollapsed(Ad ad) {
                if (AmazonBanner.this.notifiedClick) {
                    AmazonBanner.this.notifiedClick = false;
                    AmazonBanner.this.fallbackNotifyListenerThatAdWasDismissed();
                }
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.banner;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.banner != null) {
            this.banner.destroy();
            this.banner = null;
        }
    }
}
