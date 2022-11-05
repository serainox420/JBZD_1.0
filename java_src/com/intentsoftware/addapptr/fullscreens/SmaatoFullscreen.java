package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import android.location.Location;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import com.smaato.soma.interstitial.Interstitial;
/* loaded from: classes2.dex */
public class SmaatoFullscreen extends FullscreenAd {
    private Interstitial interstitial;
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
            this.interstitial = new Interstitial(activity);
            this.interstitial.getAdSettings().a(parseLong2);
            this.interstitial.getAdSettings().b(parseLong);
            Location location = b.getLocation();
            if (location != null) {
                this.interstitial.getUserSettings().a(location.getLatitude());
                this.interstitial.getUserSettings().b(location.getLongitude());
            }
            if (kVar != null) {
                this.interstitial.getUserSettings().a(kVar.getValuesAsString(","));
            }
            this.interstitial.a(createListener());
            this.interstitial.e();
        } catch (NumberFormatException e) {
            if (c.isLoggable(5)) {
                c.w(this, "cannot parse integers for Smaato config! Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("error parsing adId parts");
        }
    }

    private com.smaato.soma.interstitial.a createListener() {
        return new com.smaato.soma.interstitial.a() { // from class: com.intentsoftware.addapptr.fullscreens.SmaatoFullscreen.1
            @Override // com.smaato.soma.interstitial.a
            public void onReadyToShow() {
                SmaatoFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.smaato.soma.interstitial.a
            public void onWillShow() {
                SmaatoFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.smaato.soma.interstitial.a
            public void onWillOpenLandingPage() {
                SmaatoFullscreen.this.notifyListenerThatAdWasClicked();
            }

            @Override // com.smaato.soma.interstitial.a
            public void onWillClose() {
                if (SmaatoFullscreen.this.shouldNotifyResume) {
                    SmaatoFullscreen.this.shouldNotifyResume = false;
                    SmaatoFullscreen.this.fallbackNotifyListenerThatAdWasDismissed();
                }
            }

            @Override // com.smaato.soma.interstitial.a
            public void onFailedToLoadAd() {
                SmaatoFullscreen.this.notifyListenerThatAdFailedToLoad(null);
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

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        if (this.interstitial.f()) {
            this.interstitial.b();
            return true;
        }
        return false;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.interstitial != null) {
            this.interstitial.a();
        }
    }
}
