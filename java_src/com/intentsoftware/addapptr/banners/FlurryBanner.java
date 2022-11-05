package com.intentsoftware.addapptr.banners;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import com.flurry.android.FlurryAgent;
import com.flurry.android.ads.FlurryAdBanner;
import com.flurry.android.ads.FlurryAdBannerListener;
import com.flurry.android.ads.FlurryAdErrorType;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.k;
/* loaded from: classes2.dex */
public class FlurryBanner extends BannerAd {
    private FlurryAdBanner banner;
    private FrameLayout bannerFrame;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        String[] split = str.split(":");
        if (split.length > 1) {
            String str2 = split[0];
            String str3 = split[1];
            FlurryAgent.init(activity, str2);
            this.bannerFrame = new FrameLayout(activity);
            this.banner = new FlurryAdBanner(activity, this.bannerFrame, str3);
            this.banner.setListener(createListener());
            this.banner.fetchAd();
            return;
        }
        notifyListenerThatAdFailedToLoad("Not enough ad id parts for Flurry Banner");
    }

    private FlurryAdBannerListener createListener() {
        return new FlurryAdBannerListener() { // from class: com.intentsoftware.addapptr.banners.FlurryBanner.1
            @Override // com.flurry.android.ads.FlurryAdBannerListener
            public void onFetched(FlurryAdBanner flurryAdBanner) {
                FlurryBanner.this.banner.displayAd();
                FlurryBanner.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.flurry.android.ads.FlurryAdBannerListener
            public void onRendered(FlurryAdBanner flurryAdBanner) {
            }

            @Override // com.flurry.android.ads.FlurryAdBannerListener
            public void onShowFullscreen(FlurryAdBanner flurryAdBanner) {
            }

            @Override // com.flurry.android.ads.FlurryAdBannerListener
            public void onCloseFullscreen(FlurryAdBanner flurryAdBanner) {
            }

            @Override // com.flurry.android.ads.FlurryAdBannerListener
            public void onAppExit(FlurryAdBanner flurryAdBanner) {
            }

            @Override // com.flurry.android.ads.FlurryAdBannerListener
            public void onClicked(FlurryAdBanner flurryAdBanner) {
                FlurryBanner.this.notifyListenerThatAdWasClicked();
            }

            @Override // com.flurry.android.ads.FlurryAdBannerListener
            public void onVideoCompleted(FlurryAdBanner flurryAdBanner) {
            }

            @Override // com.flurry.android.ads.FlurryAdBannerListener
            public void onError(FlurryAdBanner flurryAdBanner, FlurryAdErrorType flurryAdErrorType, int i) {
                FlurryBanner.this.notifyListenerThatAdFailedToLoad("error code: " + i);
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.bannerFrame != null) {
            this.bannerFrame.removeAllViews();
            this.bannerFrame = null;
        }
        if (this.banner != null) {
            this.banner.destroy();
            this.banner = null;
        }
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.bannerFrame;
    }
}
