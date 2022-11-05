package com.amazon.device.ads;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.ViewGroup;
import com.amazon.device.ads.AdActivity;
import com.amazon.device.ads.SDKEvent;
@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
class InterstitialAdActivityAdapter implements AdActivity.AdActivityAdapter {
    private static final String LOGTAG = InterstitialAdActivityAdapter.class.getSimpleName();
    private AdController adController;
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
    private final AndroidBuildInfo buildInfo = new AndroidBuildInfo();
    private Activity activity = null;

    InterstitialAdActivityAdapter() {
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void preOnCreate() {
        this.activity.requestWindowFeature(1);
        this.activity.getWindow().setFlags(1024, 1024);
        AndroidTargetUtils.hideActionAndStatusBars(this.buildInfo, this.activity);
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onCreate() {
        AndroidTargetUtils.enableHardwareAcceleration(this.buildInfo, this.activity.getWindow());
        this.adController = getAdController();
        if (this.adController == null) {
            this.logger.e("Failed to show interstitial ad due to an error in the Activity.");
            InterstitialAd.resetIsAdShowing();
            this.activity.finish();
            return;
        }
        this.adController.setAdActivity(this.activity);
        this.adController.addSDKEventListener(new InterstitialAdSDKEventListener());
        ViewGroup viewGroup = (ViewGroup) this.adController.getView().getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.adController.getView());
        }
        this.activity.setContentView(this.adController.getView());
        this.adController.adShown();
    }

    AdController getAdController() {
        return AdControllerFactory.getCachedAdController();
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onPause() {
        if (this.adController != null) {
            this.adController.fireViewableEvent();
        }
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onResume() {
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onStop() {
        if (this.activity.isFinishing() && this.adController != null) {
            this.adController.fireViewableEvent();
            this.adController.closeAd();
        }
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onDestroy() {
        if (this.adController != null) {
            this.adController.fireViewableEvent();
            this.adController.closeAd();
        }
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public boolean onBackPressed() {
        if (this.adController != null) {
            return this.adController.onBackButtonPress();
        }
        return false;
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onWindowFocusChanged() {
        if (this.adController != null) {
            this.adController.fireViewableEvent();
        }
    }

    Activity getActivity() {
        return this.activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishActivity() {
        if (!this.activity.isFinishing()) {
            this.adController = null;
            this.activity.finish();
        }
    }

    /* loaded from: classes.dex */
    class InterstitialAdSDKEventListener implements SDKEventListener {
        InterstitialAdSDKEventListener() {
        }

        @Override // com.amazon.device.ads.SDKEventListener
        public void onSDKEvent(SDKEvent sDKEvent, AdControlAccessor adControlAccessor) {
            if (sDKEvent.getEventType().equals(SDKEvent.SDKEventType.CLOSED)) {
                InterstitialAdActivityAdapter.this.finishActivity();
            }
        }
    }
}
