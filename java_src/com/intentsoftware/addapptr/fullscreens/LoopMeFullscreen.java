package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.k;
import com.loopme.LoopMeInterstitial;
import com.loopme.common.LoopMeError;
/* loaded from: classes2.dex */
public class LoopMeFullscreen extends FullscreenAd {
    private LoopMeInterstitial interstitial;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.interstitial = LoopMeInterstitial.getInstance(str, activity);
        this.interstitial.setListener(createListener());
        this.interstitial.useMobileNetworkForCaching(true);
        if (kVar != null) {
            this.interstitial.setKeywords(kVar.getValuesAsString(","));
        }
        this.interstitial.load();
    }

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        if (this.interstitial.isReady()) {
            this.interstitial.show();
            return true;
        }
        return false;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        this.interstitial = null;
    }

    private LoopMeInterstitial.Listener createListener() {
        return new LoopMeInterstitial.Listener() { // from class: com.intentsoftware.addapptr.fullscreens.LoopMeFullscreen.1
            @Override // com.loopme.LoopMeInterstitial.Listener
            public void onLoopMeInterstitialVideoDidReachEnd(LoopMeInterstitial loopMeInterstitial) {
                LoopMeFullscreen.this.notifyListenerThatUserEarnedIncentive();
            }

            @Override // com.loopme.LoopMeInterstitial.Listener
            public void onLoopMeInterstitialShow(LoopMeInterstitial loopMeInterstitial) {
                LoopMeFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.loopme.LoopMeInterstitial.Listener
            public void onLoopMeInterstitialLoadSuccess(LoopMeInterstitial loopMeInterstitial) {
                LoopMeFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.loopme.LoopMeInterstitial.Listener
            public void onLoopMeInterstitialLoadFail(LoopMeInterstitial loopMeInterstitial, LoopMeError loopMeError) {
                if (loopMeError != null) {
                    LoopMeFullscreen.this.notifyListenerThatAdFailedToLoad(loopMeError.getMessage());
                } else {
                    LoopMeFullscreen.this.notifyListenerThatAdFailedToLoad("unknown error");
                }
            }

            @Override // com.loopme.LoopMeInterstitial.Listener
            public void onLoopMeInterstitialLeaveApp(LoopMeInterstitial loopMeInterstitial) {
            }

            @Override // com.loopme.LoopMeInterstitial.Listener
            public void onLoopMeInterstitialHide(LoopMeInterstitial loopMeInterstitial) {
                if (LoopMeFullscreen.this.interstitial != null) {
                    LoopMeFullscreen.this.interstitial.destroy();
                }
            }

            @Override // com.loopme.LoopMeInterstitial.Listener
            public void onLoopMeInterstitialExpired(LoopMeInterstitial loopMeInterstitial) {
            }

            @Override // com.loopme.LoopMeInterstitial.Listener
            public void onLoopMeInterstitialClicked(LoopMeInterstitial loopMeInterstitial) {
                LoopMeFullscreen.this.notifyListenerThatAdWasClicked();
            }
        };
    }
}
