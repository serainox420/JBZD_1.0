package com.intentsoftware.addapptr.banners;

import android.app.Activity;
import android.location.Location;
import android.view.View;
import com.inmobi.commons.InMobi;
import com.inmobi.monetization.IMBanner;
import com.inmobi.monetization.IMBannerListener;
import com.inmobi.monetization.IMErrorCode;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import java.util.Map;
/* loaded from: classes2.dex */
public class InMobiBanner extends BannerAd {
    private IMBanner banner;
    private boolean wasClicked = false;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        String[] split = str.split(":");
        if (split.length < 3 && split.length > 1) {
            if (c.isLoggable(5)) {
                c.w(this, "Wrong number of arguments for InMobi config! Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("wrong number of arguments in adId");
            return;
        }
        String str2 = split[0];
        InMobi.initialize(activity, str2);
        Location location = b.getLocation();
        if (location != null) {
            InMobi.setCurrentLocation(location);
        }
        if (bannerSize == BannerSize.Banner300x250) {
            this.banner = new IMBanner(activity, str2, 10);
        } else if (bannerSize == BannerSize.Banner768x90) {
            this.banner = new IMBanner(activity, str2, 11);
        } else if (bannerSize == BannerSize.Banner468x60) {
            this.banner = new IMBanner(activity, str2, 12);
        } else {
            this.banner = new IMBanner(activity, str2, 15);
        }
        this.banner.setIMBannerListener(createAdListener());
        this.banner.setRefreshInterval(-1);
        this.banner.loadBanner();
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.banner != null) {
            this.banner.setIMBannerListener(null);
        }
        this.banner = null;
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.banner;
    }

    private IMBannerListener createAdListener() {
        return new IMBannerListener() { // from class: com.intentsoftware.addapptr.banners.InMobiBanner.1
            @Override // com.inmobi.monetization.IMBannerListener
            public void onBannerInteraction(IMBanner iMBanner, Map<String, String> map) {
                if (!InMobiBanner.this.wasClicked) {
                    InMobiBanner.this.notifyListenerThatAdWasClicked();
                    InMobiBanner.this.wasClicked = true;
                }
            }

            @Override // com.inmobi.monetization.IMBannerListener
            public void onBannerRequestFailed(IMBanner iMBanner, IMErrorCode iMErrorCode) {
                InMobiBanner.this.notifyListenerThatAdFailedToLoad(iMErrorCode.toString());
            }

            @Override // com.inmobi.monetization.IMBannerListener
            public void onBannerRequestSucceeded(IMBanner iMBanner) {
                InMobiBanner.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.inmobi.monetization.IMBannerListener
            public void onDismissBannerScreen(IMBanner iMBanner) {
            }

            @Override // com.inmobi.monetization.IMBannerListener
            public void onLeaveApplication(IMBanner iMBanner) {
                if (!InMobiBanner.this.wasClicked) {
                    InMobiBanner.this.notifyListenerThatAdWasClicked();
                    InMobiBanner.this.wasClicked = true;
                }
            }

            @Override // com.inmobi.monetization.IMBannerListener
            public void onShowBannerScreen(IMBanner iMBanner) {
            }
        };
    }
}
