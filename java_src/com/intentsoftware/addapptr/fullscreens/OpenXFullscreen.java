package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import android.location.Location;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import com.openx.core.network.OXAdRequest;
import com.openx.errors.AdError;
import com.openx.model.adParams.AdCallParameters;
import com.openx.view.AdEventsListener;
import com.openx.view.AdInterstitial;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class OpenXFullscreen extends FullscreenAd {
    private AdInterstitial interstitial;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        String[] split = str.split(":");
        if (split.length >= 2) {
            this.interstitial = new AdInterstitial(activity, split[0], split[1]);
        } else {
            this.interstitial = new AdInterstitial(activity, split[0]);
        }
        this.interstitial.setClosePosition(AdInterstitial.ClosePosition.SCREEN_TOP_LEFT);
        this.interstitial.setAdEventsListener(createListener());
        Location location = b.getLocation();
        if (location != null || kVar != null) {
            AdCallParameters adCallParameters = new AdCallParameters();
            if (location != null) {
                adCallParameters.setCoordinates(location.getLatitude(), location.getLongitude());
            }
            if (kVar != null) {
                for (Map.Entry<String, List<String>> entry : kVar.getMap().entrySet()) {
                    adCallParameters.setCustomParameter(entry.getKey(), entry.getValue().get(0));
                }
            }
            OXAdRequest oXAdRequest = new OXAdRequest();
            oXAdRequest.setAdCallParams(adCallParameters);
            this.interstitial.load(oXAdRequest);
            return;
        }
        this.interstitial.load();
    }

    private AdEventsListener createListener() {
        return new AdEventsListener() { // from class: com.intentsoftware.addapptr.fullscreens.OpenXFullscreen.1
            @Override // com.openx.view.AdEventsListener
            public void onAdFailedToLoad(AdError adError) {
                OpenXFullscreen.this.notifyListenerThatAdFailedToLoad(adError.getMessage());
            }

            @Override // com.openx.view.AdEventsListener
            public void onAdDidLoad() {
                OpenXFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.openx.view.AdEventsListener
            public void onAdClosed() {
                OpenXFullscreen.this.fallbackNotifyListenerThatAdWasDismissed();
            }

            @Override // com.openx.view.AdEventsListener
            public void onAdClicked() {
                OpenXFullscreen.this.notifyListenerThatAdWasClicked();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        try {
            this.interstitial.show();
            notifyListenerThatAdIsShown();
            return true;
        } catch (Exception e) {
            if (c.isLoggable(6)) {
                c.e(this, "Exception when trying to show OpenX fullscreen: " + e.getMessage());
            }
            return false;
        }
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        this.interstitial = null;
    }
}
