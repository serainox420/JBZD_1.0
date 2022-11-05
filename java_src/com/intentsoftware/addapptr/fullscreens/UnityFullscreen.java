package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import android.os.Handler;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.k;
import com.unity3d.ads.IUnityAdsListener;
import com.unity3d.ads.UnityAds;
/* loaded from: classes2.dex */
public class UnityFullscreen extends FullscreenAd {
    private static final int AVAILABILITY_CHECK_DELAY = 5000;
    private static boolean initialized;
    private Activity currentActivity;
    private String placementId;
    private boolean reportedAvailability;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.currentActivity = activity;
        String[] split = str.split(":");
        String str2 = split[0];
        if (split.length > 1) {
            this.placementId = split[1];
        }
        this.reportedAvailability = false;
        UnityAds.initialize(activity, str2, createListener());
        if (initialized) {
            UnityAds.setListener(createListener());
            if (isUnityAdReady()) {
                if (!this.reportedAvailability) {
                    this.reportedAvailability = true;
                    notifyListenerThatAdWasLoaded();
                }
            } else {
                new Handler().postDelayed(new Runnable() { // from class: com.intentsoftware.addapptr.fullscreens.UnityFullscreen.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (UnityFullscreen.this.isUnityAdReady()) {
                            if (!UnityFullscreen.this.reportedAvailability) {
                                UnityFullscreen.this.reportedAvailability = true;
                                UnityFullscreen.this.notifyListenerThatAdWasLoaded();
                            }
                        } else if (!UnityFullscreen.this.reportedAvailability) {
                            UnityFullscreen.this.reportedAvailability = true;
                            UnityFullscreen.this.notifyListenerThatAdFailedToLoad(null);
                        }
                    }
                }, 5000L);
            }
        }
        initialized = true;
    }

    private IUnityAdsListener createListener() {
        return new IUnityAdsListener() { // from class: com.intentsoftware.addapptr.fullscreens.UnityFullscreen.2
            @Override // com.unity3d.ads.IUnityAdsListener
            public void onUnityAdsReady(String str) {
                if ((UnityFullscreen.this.placementId == null || UnityFullscreen.this.placementId.equals(str)) && !UnityFullscreen.this.reportedAvailability) {
                    UnityFullscreen.this.reportedAvailability = true;
                    UnityFullscreen.this.notifyListenerThatAdWasLoaded();
                }
            }

            @Override // com.unity3d.ads.IUnityAdsListener
            public void onUnityAdsStart(String str) {
                if (UnityFullscreen.this.placementId == null || UnityFullscreen.this.placementId.equals(str)) {
                    UnityFullscreen.this.notifyListenerThatAdIsShown();
                }
            }

            @Override // com.unity3d.ads.IUnityAdsListener
            public void onUnityAdsFinish(String str, UnityAds.FinishState finishState) {
                if ((UnityFullscreen.this.placementId == null || UnityFullscreen.this.placementId.equals(str)) && finishState == UnityAds.FinishState.COMPLETED) {
                    UnityFullscreen.this.notifyListenerThatUserEarnedIncentive();
                }
            }

            @Override // com.unity3d.ads.IUnityAdsListener
            public void onUnityAdsError(UnityAds.UnityAdsError unityAdsError, String str) {
                if (!UnityFullscreen.this.reportedAvailability) {
                    UnityFullscreen.this.reportedAvailability = true;
                    UnityFullscreen.this.notifyListenerThatAdFailedToLoad(str);
                }
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        this.currentActivity = activity;
        super.resume(activity);
    }

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        if (isUnityAdReady()) {
            if (this.placementId == null) {
                UnityAds.show(this.currentActivity);
            } else {
                UnityAds.show(this.currentActivity, this.placementId);
            }
            return true;
        }
        return false;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        this.currentActivity = null;
        this.placementId = null;
        UnityAds.setListener(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUnityAdReady() {
        return this.placementId == null ? UnityAds.isReady() : UnityAds.isReady(this.placementId);
    }
}
