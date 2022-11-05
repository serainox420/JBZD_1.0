package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import com.facebook.appevents.AppEventsConstants;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.k;
import com.mdotm.android.listener.MdotMAdEventListener;
import com.mdotm.android.model.MdotMAdRequest;
import com.mdotm.android.nativeads.MdotMNativeAd;
import com.mdotm.android.view.MdotMInterstitial;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class MdotMFullscreen extends FullscreenAd {
    private MdotMInterstitial interstitial;
    private MdotMAdEventListener listener;
    private MdotMAdRequest request;

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        this.interstitial.showInterstitial(getActivity());
        return true;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.interstitial = new MdotMInterstitial(activity);
        this.request = new MdotMAdRequest();
        this.request.setAppKey(str);
        this.request.setTestMode(AppEventsConstants.EVENT_PARAM_VALUE_NO);
        this.request.setEnableCaching(true);
        this.listener = createListener();
        if (this.request != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.intentsoftware.addapptr.fullscreens.MdotMFullscreen.1
                @Override // java.lang.Runnable
                public void run() {
                    MdotMFullscreen.this.interstitial.loadInterstitial(MdotMFullscreen.this.listener, MdotMFullscreen.this.request);
                }
            });
        } else {
            notifyListenerThatAdFailedToLoad("request is null");
        }
    }

    private MdotMAdEventListener createListener() {
        return new MdotMAdEventListener() { // from class: com.intentsoftware.addapptr.fullscreens.MdotMFullscreen.2
            @Override // com.mdotm.android.listener.MdotMAdEventListener
            public void willShowInterstitial() {
                MdotMFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.mdotm.android.listener.MdotMAdEventListener
            public void onReceiveInterstitialAd() {
                MdotMFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.mdotm.android.listener.MdotMAdEventListener
            public void onLeaveApplicationFromInterstitial() {
            }

            @Override // com.mdotm.android.listener.MdotMAdEventListener
            public void onInterstitialDismiss() {
            }

            @Override // com.mdotm.android.listener.MdotMAdEventListener
            public void onInterstitialAdClick() {
                MdotMFullscreen.this.notifyListenerThatAdWasClicked();
            }

            @Override // com.mdotm.android.listener.MdotMAdEventListener
            public void onFailedToReceiveInterstitialAd() {
                MdotMFullscreen.this.notifyListenerThatAdFailedToLoad(null);
            }

            @Override // com.mdotm.android.listener.MdotMAdEventListener
            public void didShowInterstitial() {
            }

            @Override // com.mdotm.android.listener.MdotMAdEventListener
            public void onDismissScreen() {
            }

            @Override // com.mdotm.android.listener.MdotMAdEventListener
            public void onRewardedVideoComplete(boolean z, String str) {
                if (!z) {
                    MdotMFullscreen.this.notifyListenerThatUserEarnedIncentive();
                }
            }

            @Override // com.mdotm.android.listener.MdotMAdEventListener
            public void onReceiveNativeAd(ArrayList<MdotMNativeAd> arrayList) {
            }

            @Override // com.mdotm.android.listener.MdotMAdEventListener
            public void onFailedToReceiveNativeAd() {
            }

            @Override // com.mdotm.android.listener.MdotMAdEventListener
            public void onNativeAdClick() {
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        this.interstitial = null;
    }
}
