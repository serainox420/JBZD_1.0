package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.k;
import com.millennialmedia.InterstitialAd;
import com.millennialmedia.MMSDK;
import com.millennialmedia.UserData;
/* loaded from: classes2.dex */
public class MillenialFullscreen extends FullscreenAd {
    private InterstitialAd interstitial;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        try {
            this.interstitial = InterstitialAd.createInstance(str);
            this.interstitial.setListener(createListener());
            if (kVar != null) {
                UserData userData = new UserData();
                userData.setKeywords(kVar.getValuesAsString(","));
                MMSDK.setUserData(userData);
            }
            this.interstitial.load(activity, null);
        } catch (Exception e) {
            notifyListenerThatAdFailedToLoad(e.getMessage());
        }
    }

    private InterstitialAd.InterstitialListener createListener() {
        return new InterstitialAd.InterstitialListener() { // from class: com.intentsoftware.addapptr.fullscreens.MillenialFullscreen.1
            @Override // com.millennialmedia.InterstitialAd.InterstitialListener
            public void onShown(InterstitialAd interstitialAd) {
                MillenialFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.millennialmedia.InterstitialAd.InterstitialListener
            public void onShowFailed(InterstitialAd interstitialAd, InterstitialAd.InterstitialErrorStatus interstitialErrorStatus) {
            }

            @Override // com.millennialmedia.InterstitialAd.InterstitialListener
            public void onLoaded(InterstitialAd interstitialAd) {
                MillenialFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.millennialmedia.InterstitialAd.InterstitialListener
            public void onLoadFailed(InterstitialAd interstitialAd, InterstitialAd.InterstitialErrorStatus interstitialErrorStatus) {
                MillenialFullscreen.this.notifyListenerThatAdFailedToLoad(interstitialErrorStatus.getDescription());
            }

            @Override // com.millennialmedia.InterstitialAd.InterstitialListener
            public void onExpired(InterstitialAd interstitialAd) {
                if (MillenialFullscreen.this.interstitial != null && MillenialFullscreen.this.getActivity() != null) {
                    MillenialFullscreen.this.interstitial.load(MillenialFullscreen.this.getActivity(), null);
                }
            }

            @Override // com.millennialmedia.InterstitialAd.InterstitialListener
            public void onClosed(InterstitialAd interstitialAd) {
            }

            @Override // com.millennialmedia.InterstitialAd.InterstitialListener
            public void onClicked(InterstitialAd interstitialAd) {
                MillenialFullscreen.this.notifyListenerThatAdWasClicked();
            }

            @Override // com.millennialmedia.InterstitialAd.InterstitialListener
            public void onAdLeftApplication(InterstitialAd interstitialAd) {
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        this.interstitial = null;
    }

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        try {
            if (this.interstitial.hasExpired() || !this.interstitial.isReady()) {
                return false;
            }
            this.interstitial.show(getActivity());
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
