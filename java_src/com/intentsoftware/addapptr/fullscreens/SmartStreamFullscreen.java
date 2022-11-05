package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.k;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import com.video.adsdk.VideoAdSDK;
import com.video.adsdk.VideoAdSDKListener;
/* loaded from: classes2.dex */
public class SmartStreamFullscreen extends FullscreenAd {
    private boolean reportedFailure;

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        VideoAdSDK.playAdvertising();
        return true;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.reportedFailure = false;
        VideoAdSDK.registerWithPublisherID(activity.getApplicationContext(), str, createListener());
        VideoAdSDK.startPrefetching();
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        VideoAdSDK.clearCache();
    }

    private VideoAdSDKListener createListener() {
        return new VideoAdSDKListener() { // from class: com.intentsoftware.addapptr.fullscreens.SmartStreamFullscreen.1
            @Override // com.video.adsdk.VideoAdSDKListener
            public void onPrefetcherProgress(double d) {
            }

            @Override // com.video.adsdk.VideoAdSDKListener
            public void onAdvertisingPrefetchingDidComplete() {
                SmartStreamFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.video.adsdk.VideoAdSDKListener
            public void onAdvertisingNotAvailable() {
                if (!SmartStreamFullscreen.this.reportedFailure) {
                    SmartStreamFullscreen.this.notifyListenerThatAdFailedToLoad("ad not available");
                }
                SmartStreamFullscreen.this.reportedFailure = true;
            }

            @Override // com.video.adsdk.VideoAdSDKListener
            public void onAdvertisingIsReadyToPlay() {
                VideoAdSDK.startAdvertising();
            }

            @Override // com.video.adsdk.VideoAdSDKListener
            public void onAdvertisingFailedToLoad(Exception exc) {
                if (!SmartStreamFullscreen.this.reportedFailure) {
                    SmartStreamFullscreen.this.notifyListenerThatAdFailedToLoad(exc.getMessage());
                }
                SmartStreamFullscreen.this.reportedFailure = true;
            }

            @Override // com.video.adsdk.VideoAdSDKListener
            public void onAdvertisingEventTracked(String str) {
                if (str != null && str.equals(SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE)) {
                    SmartStreamFullscreen.this.notifyListenerThatUserEarnedIncentive();
                }
            }

            @Override // com.video.adsdk.VideoAdSDKListener
            public void onAdvertisingClicked() {
                SmartStreamFullscreen.this.notifyListenerThatAdWasClicked();
            }

            @Override // com.video.adsdk.VideoAdSDKListener
            public void onAdvertisingDidHide() {
            }

            @Override // com.video.adsdk.VideoAdSDKListener
            public void onAdvertisingWillShow() {
                SmartStreamFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.video.adsdk.VideoAdSDKListener
            public void onAdvertisingTimedOut() {
                if (!SmartStreamFullscreen.this.reportedFailure) {
                    SmartStreamFullscreen.this.notifyListenerThatAdFailedToLoad("timed out");
                }
                SmartStreamFullscreen.this.reportedFailure = true;
            }
        };
    }
}
