package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import android.location.Location;
import com.inmobi.commons.InMobi;
import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.IMIncentivisedListener;
import com.inmobi.monetization.IMInterstitial;
import com.inmobi.monetization.IMInterstitialListener;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import java.util.Map;
/* loaded from: classes2.dex */
public class InMobiFullscreen extends FullscreenAd {
    private IMInterstitial interstitial;
    private boolean wasClicked;

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        if (this.interstitial.getState() == IMInterstitial.State.READY) {
            this.interstitial.show();
            return true;
        }
        return false;
    }

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
        this.interstitial = new IMInterstitial(activity, str2);
        this.interstitial.setIMInterstitialListener(createListener());
        this.interstitial.setIMIncentivisedListener(createIncentivisedListener());
        this.interstitial.loadInterstitial();
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.interstitial != null) {
            this.interstitial.setIMInterstitialListener(null);
        }
        this.interstitial = null;
    }

    private IMInterstitialListener createListener() {
        return new IMInterstitialListener() { // from class: com.intentsoftware.addapptr.fullscreens.InMobiFullscreen.1
            @Override // com.inmobi.monetization.IMInterstitialListener
            public void onLeaveApplication(IMInterstitial iMInterstitial) {
                if (!InMobiFullscreen.this.wasClicked) {
                    InMobiFullscreen.this.notifyListenerThatAdWasClicked();
                    InMobiFullscreen.this.wasClicked = true;
                }
            }

            @Override // com.inmobi.monetization.IMInterstitialListener
            public void onInterstitialFailed(IMInterstitial iMInterstitial, IMErrorCode iMErrorCode) {
                InMobiFullscreen.this.notifyListenerThatAdFailedToLoad(iMErrorCode.toString());
            }

            @Override // com.inmobi.monetization.IMInterstitialListener
            public void onInterstitialInteraction(IMInterstitial iMInterstitial, Map<String, String> map) {
                if (!InMobiFullscreen.this.wasClicked) {
                    InMobiFullscreen.this.notifyListenerThatAdWasClicked();
                    InMobiFullscreen.this.wasClicked = true;
                }
            }

            @Override // com.inmobi.monetization.IMInterstitialListener
            public void onInterstitialLoaded(IMInterstitial iMInterstitial) {
                InMobiFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.inmobi.monetization.IMInterstitialListener
            public void onShowInterstitialScreen(IMInterstitial iMInterstitial) {
                InMobiFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.inmobi.monetization.IMInterstitialListener
            public void onDismissInterstitialScreen(IMInterstitial iMInterstitial) {
            }
        };
    }

    private IMIncentivisedListener createIncentivisedListener() {
        return new IMIncentivisedListener() { // from class: com.intentsoftware.addapptr.fullscreens.InMobiFullscreen.2
            @Override // com.inmobi.monetization.IMIncentivisedListener
            public void onIncentCompleted(IMInterstitial iMInterstitial, Map<Object, Object> map) {
                InMobiFullscreen.this.notifyListenerThatUserEarnedIncentive();
            }
        };
    }
}
