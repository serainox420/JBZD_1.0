package com.loopme;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.loopme.common.Logging;
import com.loopme.common.LoopMeError;
import com.loopme.common.StaticParams;
import com.loopme.common.Utils;
import com.loopme.debugging.ErrorLog;
import com.loopme.debugging.LiveDebug;
/* loaded from: classes2.dex */
public final class LoopMeInterstitial extends BaseAd {
    private static final String LOG_TAG = LoopMeInterstitial.class.getSimpleName();
    public static final String TEST_LAND_INTERSTITIAL = "test_interstitial_l";
    public static final String TEST_PORT_INTERSTITIAL = "test_interstitial_p";
    private Listener mAdListener;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onLoopMeInterstitialClicked(LoopMeInterstitial loopMeInterstitial);

        void onLoopMeInterstitialExpired(LoopMeInterstitial loopMeInterstitial);

        void onLoopMeInterstitialHide(LoopMeInterstitial loopMeInterstitial);

        void onLoopMeInterstitialLeaveApp(LoopMeInterstitial loopMeInterstitial);

        void onLoopMeInterstitialLoadFail(LoopMeInterstitial loopMeInterstitial, LoopMeError loopMeError);

        void onLoopMeInterstitialLoadSuccess(LoopMeInterstitial loopMeInterstitial);

        void onLoopMeInterstitialShow(LoopMeInterstitial loopMeInterstitial);

        void onLoopMeInterstitialVideoDidReachEnd(LoopMeInterstitial loopMeInterstitial);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoopMeInterstitial(Context context, String str) {
        super(context, str);
        Logging.out(LOG_TAG, "Start creating interstitial with app key: " + str);
        this.mAdController = new AdController(this);
        Utils.init(context);
        LiveDebug.init(context);
    }

    public static LoopMeInterstitial getInstance(String str, Context context) {
        if (Build.VERSION.SDK_INT >= 14) {
            return LoopMeAdHolder.getInterstitial(str, context);
        }
        Logging.out(LOG_TAG, "Not supported Android version. Expected Android 4.0+");
        return null;
    }

    @Override // com.loopme.BaseAd
    public void destroy() {
        broadcastDestroyIntent();
        super.destroy();
    }

    @Override // com.loopme.BaseAd
    public void dismiss() {
        if (this.mAdState == 202) {
            Logging.out(LOG_TAG, "Dismiss ad");
            broadcastDestroyIntent();
            stopExpirationTimer();
            if (this.mHandler != null) {
                this.mHandler.removeCallbacksAndMessages(null);
                return;
            }
            return;
        }
        Logging.out(LOG_TAG, "Can't dismiss ad, it's not displaying");
    }

    private void broadcastDestroyIntent() {
        Intent intent = new Intent();
        intent.setAction(StaticParams.DESTROY_INTENT);
        getContext().sendBroadcast(intent);
    }

    public void setListener(Listener listener) {
        this.mAdListener = listener;
    }

    public Listener getListener() {
        return this.mAdListener;
    }

    public void removeListener() {
        this.mAdListener = null;
    }

    public void show() {
        Logging.out(LOG_TAG, "Interstitial will present fullscreen ad. App key: " + getAppKey());
        if (isReady()) {
            if (this.mAdState != 202) {
                this.mAdState = 202;
                stopExpirationTimer();
                AdUtils.startAdActivity(this);
                return;
            }
            Logging.out(LOG_TAG, "Interstitial is already presented on the screen");
            return;
        }
        this.mShowWhenAdNotReadyCounter++;
        Logging.out(LOG_TAG, "Interstitial is not ready (" + this.mShowWhenAdNotReadyCounter + " time(s))");
        ErrorLog.post("Interstitial is not ready");
    }

    @Override // com.loopme.BaseAd
    public int getAdFormat() {
        return 1001;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public AdController getAdController() {
        return this.mAdController;
    }

    public void onLoopMeInterstitialLoadSuccess(LoopMeInterstitial loopMeInterstitial) {
        Logging.out(LOG_TAG, "Ad successfully loaded (" + (System.currentTimeMillis() - this.mAdLoadingTimer) + "ms)");
        this.mIsReady = true;
        this.mAdState = 200;
        stopFetcherTimer();
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeInterstitialLoadSuccess(this);
        } else {
            Logging.out(LOG_TAG, "Warning: empty listener");
        }
    }

    void onLoopMeInterstitialLoadFail(LoopMeInterstitial loopMeInterstitial, LoopMeError loopMeError) {
        Logging.out(LOG_TAG, "Ad fails to load: " + loopMeError.getMessage());
        this.mIsReady = false;
        this.mAdState = 200;
        stopFetcherTimer();
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeInterstitialLoadFail(this, loopMeError);
        } else {
            Logging.out(LOG_TAG, "Warning: empty listener");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onLoopMeInterstitialShow(LoopMeInterstitial loopMeInterstitial) {
        if (this.mAdListener != null) {
            Logging.out(LOG_TAG, "Ad appeared on screen");
            this.mAdListener.onLoopMeInterstitialShow(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onLoopMeInterstitialHide(LoopMeInterstitial loopMeInterstitial) {
        Logging.out(LOG_TAG, "Ad disappeared from screen");
        this.mIsReady = false;
        this.mAdState = 200;
        releaseViewController();
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeInterstitialHide(this);
        }
    }

    void onLoopMeInterstitialClicked(LoopMeInterstitial loopMeInterstitial) {
        Logging.out(LOG_TAG, "Ad received tap event");
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeInterstitialClicked(this);
        }
    }

    void onLoopMeInterstitialLeaveApp(LoopMeInterstitial loopMeInterstitial) {
        Logging.out(LOG_TAG, "Leaving application");
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeInterstitialLeaveApp(this);
        }
    }

    void onLoopMeInterstitialExpired(LoopMeInterstitial loopMeInterstitial) {
        Logging.out(LOG_TAG, "Ads content expired");
        this.mExpirationTimer = null;
        this.mIsReady = false;
        this.mAdState = 200;
        releaseViewController();
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeInterstitialExpired(this);
        }
    }

    void onLoopMeInterstitialVideoDidReachEnd(LoopMeInterstitial loopMeInterstitial) {
        Logging.out(LOG_TAG, "Video reach end");
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeInterstitialVideoDidReachEnd(this);
        }
    }

    @Override // com.loopme.BaseAd
    void onAdExpired() {
        onLoopMeInterstitialExpired(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public void onAdLoadSuccess() {
        onLoopMeInterstitialLoadSuccess(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public void onAdLoadFail(final LoopMeError loopMeError) {
        this.mHandler.post(new Runnable() { // from class: com.loopme.LoopMeInterstitial.1
            @Override // java.lang.Runnable
            public void run() {
                LoopMeInterstitial.this.onLoopMeInterstitialLoadFail(LoopMeInterstitial.this, loopMeError);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public void onAdLeaveApp() {
        onLoopMeInterstitialLeaveApp(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public void onAdClicked() {
        onLoopMeInterstitialClicked(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public void onAdVideoDidReachEnd() {
        onLoopMeInterstitialVideoDidReachEnd(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public int detectWidth() {
        return Utils.getScreenWidth();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public int detectHeight() {
        return Utils.getScreenHeight();
    }

    public void clearCache() {
        if (getContext() != null) {
            Utils.clearCache(getContext());
        }
    }
}
