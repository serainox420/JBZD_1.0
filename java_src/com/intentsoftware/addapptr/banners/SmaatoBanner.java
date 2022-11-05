package com.intentsoftware.addapptr.banners;

import android.app.Activity;
import android.location.Location;
import android.view.View;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import com.smaato.soma.AdDimension;
import com.smaato.soma.BannerView;
import com.smaato.soma.bannerutilities.constant.BannerStatus;
import com.smaato.soma.exception.AdReceiveFailed;
import com.smaato.soma.exception.ClosingLandingPageFailed;
import com.smaato.soma.g;
import com.smaato.soma.j;
import com.smaato.soma.p;
/* loaded from: classes2.dex */
public class SmaatoBanner extends BannerAd {
    private BannerView banner;
    private boolean shouldNotifyResume;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        String[] split = str.split(":");
        if (split.length < 2) {
            if (c.isLoggable(5)) {
                c.w(this, "not enough arguments for Smaato config! Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("adId doesn't have two required parts");
            return;
        }
        try {
            long parseLong = Long.parseLong(split[0]);
            long parseLong2 = Long.parseLong(split[1]);
            this.banner = new BannerView(activity);
            this.banner.getAdSettings().a(parseLong2);
            this.banner.getAdSettings().b(parseLong);
            this.banner.setScalingEnabled(false);
            this.banner.setAutoReloadEnabled(false);
            if (bannerSize == BannerSize.Banner300x250) {
                this.banner.getAdSettings().a(AdDimension.MEDIUMRECTANGLE);
            } else if (bannerSize == BannerSize.Banner768x90) {
                this.banner.getAdSettings().a(AdDimension.LEADERBOARD);
            } else {
                this.banner.getAdSettings().a(AdDimension.DEFAULT);
            }
            Location location = b.getLocation();
            if (location != null) {
                this.banner.getUserSettings().a(location.getLatitude());
                this.banner.getUserSettings().b(location.getLongitude());
            }
            if (kVar != null) {
                this.banner.getUserSettings().a(kVar.getValuesAsString(","));
            }
            this.banner.a(createAdListener());
            this.banner.setBannerStateListener(createBannerStateListener());
            this.banner.e();
        } catch (NumberFormatException e) {
            if (c.isLoggable(5)) {
                c.w(this, "cannot parse integers for Smaato config! Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("error parsing adId parts");
        }
    }

    private g createBannerStateListener() {
        return new g() { // from class: com.intentsoftware.addapptr.banners.SmaatoBanner.1
            @Override // com.smaato.soma.g
            public void onWillOpenLandingPage(j jVar) {
                SmaatoBanner.this.shouldNotifyResume = true;
                SmaatoBanner.this.notifyListenerThatAdWasClicked();
            }

            @Override // com.smaato.soma.g
            public void onWillCloseLandingPage(j jVar) throws ClosingLandingPageFailed {
                if (SmaatoBanner.this.shouldNotifyResume) {
                    SmaatoBanner.this.shouldNotifyResume = false;
                    SmaatoBanner.this.fallbackNotifyListenerThatAdWasDismissed();
                }
            }
        };
    }

    private com.smaato.soma.c createAdListener() {
        return new com.smaato.soma.c() { // from class: com.intentsoftware.addapptr.banners.SmaatoBanner.2
            @Override // com.smaato.soma.c
            public void onReceiveAd(com.smaato.soma.b bVar, p pVar) throws AdReceiveFailed {
                if (pVar.a() == BannerStatus.ERROR) {
                    SmaatoBanner.this.notifyListenerThatAdFailedToLoad(pVar.l());
                } else {
                    SmaatoBanner.this.notifyListenerThatAdWasLoaded();
                }
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void pause() {
        this.shouldNotifyResume = false;
        super.pause();
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        this.shouldNotifyResume = false;
        super.resume(activity);
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.banner;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.banner != null) {
            this.banner.d();
        }
    }
}
