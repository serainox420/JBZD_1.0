package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import com.apprupt.sdk.CvContentManager;
import com.apprupt.sdk.CvPreloaderResponse;
import com.apprupt.sdk.CvSDK;
import com.apprupt.sdk.CvValueExchange;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.k;
/* loaded from: classes2.dex */
public class AppruptFullscreen extends FullscreenAd {
    private int adSpaceId;
    private final CvSDK.CvInterstitialListener cvInterstitialListener = new CvSDK.CvInterstitialListener() { // from class: com.intentsoftware.addapptr.fullscreens.AppruptFullscreen.3
        @Override // com.apprupt.sdk.CvSDK.CvInterstitialListener
        public void cvInterstitialWillDisappear(int i) {
        }

        @Override // com.apprupt.sdk.CvSDK.CvInterstitialListener
        public void cvInterstitialWillAppear(int i) {
        }

        @Override // com.apprupt.sdk.CvSDK.CvInterstitialListener
        public void cvInterstitialDidDisappear(int i) {
        }

        @Override // com.apprupt.sdk.CvSDK.CvInterstitialListener
        public void cvInterstitialDidAppear(int i) {
            AppruptFullscreen.this.notifyListenerThatAdIsShown();
        }

        @Override // com.apprupt.sdk.CvSDK.CvInterstitialListener
        public void cvInterstitialDidFail(int i, String str, int i2) {
        }

        @Override // com.apprupt.sdk.CvSDK.CvInterstitialListener
        public void cvInterstitialFirstTap() {
            AppruptFullscreen.this.notifyListenerThatAdWasClicked();
        }
    };

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        CvSDK.a(getActivity(), this.adSpaceId, this.cvInterstitialListener);
        return true;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        try {
            this.adSpaceId = Integer.parseInt(str);
            CvSDK.a(activity);
            CvSDK.c();
            CvSDK.a(activity, this.adSpaceId, new CvContentManager.PreloaderListener() { // from class: com.intentsoftware.addapptr.fullscreens.AppruptFullscreen.1
                @Override // com.apprupt.sdk.CvContentManager.PreloaderListener
                public void onPreloaderFinish(CvPreloaderResponse cvPreloaderResponse) {
                    if (!cvPreloaderResponse.f1882a) {
                        AppruptFullscreen.this.notifyListenerThatAdWasLoaded();
                    } else {
                        AppruptFullscreen.this.notifyListenerThatAdFailedToLoad("error code " + cvPreloaderResponse.c + ",message: " + cvPreloaderResponse.b);
                    }
                }
            });
            CvSDK.d.a(createValueExchangeListener());
        } catch (NumberFormatException e) {
            notifyListenerThatAdFailedToLoad("number format exception when parsing adId");
        }
    }

    private CvValueExchange.Listener createValueExchangeListener() {
        return new CvValueExchange.Listener() { // from class: com.intentsoftware.addapptr.fullscreens.AppruptFullscreen.2
            @Override // com.apprupt.sdk.CvValueExchange.Listener
            public void onReward(CvValueExchange.Reward reward) {
                AppruptFullscreen.this.notifyListenerThatUserEarnedIncentive();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        CvSDK.b();
        CvSDK.d.a((CvValueExchange.Listener) null);
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void pause() {
        CvSDK.a();
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        super.resume(activity);
        CvSDK.b(activity);
    }
}
