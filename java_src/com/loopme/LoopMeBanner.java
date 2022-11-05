package com.loopme;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewTreeObserver;
import com.loopme.common.Logging;
import com.loopme.common.LoopMeError;
import com.loopme.common.MinimizedMode;
import com.loopme.common.Utils;
import com.loopme.debugging.ErrorLog;
import com.loopme.debugging.LiveDebug;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
/* loaded from: classes2.dex */
public class LoopMeBanner extends BaseAd {
    private static final String LOG_TAG = LoopMeBanner.class.getSimpleName();
    public static final String TEST_MPU_BANNER = "test_mpu";
    private Listener mAdListener;
    private volatile LoopMeBannerView mBannerView;
    private boolean mIsVideoFinished;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onLoopMeBannerClicked(LoopMeBanner loopMeBanner);

        void onLoopMeBannerExpired(LoopMeBanner loopMeBanner);

        void onLoopMeBannerHide(LoopMeBanner loopMeBanner);

        void onLoopMeBannerLeaveApp(LoopMeBanner loopMeBanner);

        void onLoopMeBannerLoadFail(LoopMeBanner loopMeBanner, LoopMeError loopMeError);

        void onLoopMeBannerLoadSuccess(LoopMeBanner loopMeBanner);

        void onLoopMeBannerShow(LoopMeBanner loopMeBanner);

        void onLoopMeBannerVideoDidReachEnd(LoopMeBanner loopMeBanner);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoopMeBanner(Context context, String str) {
        super(context, str);
        this.mAdController = new AdController(this);
        Utils.init(context);
        LiveDebug.init(context);
        Logging.out(LOG_TAG, "Start creating banner with app key: " + str);
    }

    public static LoopMeBanner getInstance(String str, Context context) {
        if (Build.VERSION.SDK_INT >= 14) {
            return LoopMeAdHolder.getBanner(str, context);
        }
        Logging.out(LOG_TAG, "Not supported Android version. Expected Android 4.0+");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ensureAdIsVisible() {
        if (this.mAdController != null) {
            this.mAdController.ensureAdIsVisible(this.mBannerView);
        }
    }

    @Override // com.loopme.BaseAd
    public void destroy() {
        this.mAdListener = null;
        if (this.mBannerView != null) {
            this.mBannerView.setVisibility(8);
            this.mBannerView.removeAllViews();
            this.mBannerView = null;
        }
        if (this.mAdController != null) {
            this.mAdController.destroyMinimizedView();
            if (this.mAdController.getViewController() != null) {
                this.mAdController.getViewController().onPause();
                this.mAdController.getViewController().onDestroy();
            }
        }
        super.destroy();
    }

    public void bindView(LoopMeBannerView loopMeBannerView) {
        if (loopMeBannerView != null) {
            Logging.out(LOG_TAG, "Bind view (" + Utils.getViewVisibility(loopMeBannerView) + ")");
            this.mBannerView = loopMeBannerView;
        }
    }

    public void setMinimizedMode(MinimizedMode minimizedMode) {
        if (this.mAdController != null && minimizedMode != null) {
            Logging.out(LOG_TAG, "Set minimized mode");
            this.mAdController.setMinimizedMode(minimizedMode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoopMeBannerView getBannerView() {
        return this.mBannerView;
    }

    public boolean isViewBinded() {
        return this.mBannerView != null;
    }

    public void pause() {
        if (this.mAdController != null) {
            if (this.mAdController.getViewController() != null) {
                this.mAdController.getViewController().onPause();
            }
            if (this.mAdController.getCurrentDisplayMode() != 102 && this.mAdController.getCurrentVideoState() == 2) {
                Logging.out(LOG_TAG, "pause Ad");
                this.mAdController.setWebViewState(2);
            }
        }
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showNativeVideo() {
        if (this.mAdState != 202) {
            if (isReady() && this.mBannerView != null) {
                Logging.out(LOG_TAG, "Banner did start showing ad (native)");
                this.mAdState = 202;
                stopExpirationTimer();
                this.mAdController.buildVideoAdView(this.mBannerView);
                if (getAdParams().isVideo360()) {
                    IViewController viewController = this.mAdController.getViewController();
                    viewController.initVRLibrary(getContext());
                    viewController.onResume();
                }
                if (this.mBannerView.getVisibility() != 0) {
                    this.mBannerView.setVisibility(0);
                }
                onLoopMeBannerShow();
                return;
            }
            ErrorLog.post("Banner is not ready");
        }
    }

    public void show() {
        Logging.out(LOG_TAG, "Banner did start showing ad");
        if (this.mAdState == 202) {
            Logging.out(LOG_TAG, "Banner already displays on screen");
        } else if (isReady() && this.mBannerView != null) {
            this.mAdState = 202;
            stopExpirationTimer();
            this.mAdController.buildVideoAdView(this.mBannerView);
            if (getAdParams().isVideo360()) {
                IViewController viewController = this.mAdController.getViewController();
                viewController.initVRLibrary(getContext());
                viewController.onResume();
            }
            if (this.mBannerView.getVisibility() != 0) {
                this.mBannerView.setVisibility(0);
            }
            final ViewTreeObserver viewTreeObserver = this.mBannerView.getViewTreeObserver();
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.loopme.LoopMeBanner.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    Logging.out(LoopMeBanner.LOG_TAG, "onGlobalLayout");
                    if (LoopMeBanner.this.mAdController != null && LoopMeBanner.this.mAdController.getCurrentDisplayMode() != 102) {
                        LoopMeBanner.this.ensureAdIsVisible();
                    }
                    if (viewTreeObserver.isAlive()) {
                        if (Build.VERSION.SDK_INT >= 16) {
                            viewTreeObserver.removeOnGlobalLayoutListener(this);
                        } else {
                            viewTreeObserver.removeGlobalOnLayoutListener(this);
                        }
                    }
                }
            });
            onLoopMeBannerShow();
        } else {
            ErrorLog.post("Banner is not ready");
        }
    }

    public void resume() {
        Logging.out(LOG_TAG, SASNativeVideoAdElement.TRACKING_EVENT_NAME_RESUME);
        if (this.mAdController != null && isReady()) {
            ensureAdIsVisible();
            if (this.mAdController.getViewController() != null) {
                this.mAdController.getViewController().onResume();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public AdController getAdController() {
        return this.mAdController;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void switchToMinimizedMode() {
        if (this.mAdState == 202 && this.mAdController != null && !this.mIsVideoFinished && !this.mAdController.isBackFromExpand()) {
            if (this.mAdController.isMinimizedModeEnable()) {
                this.mAdController.switchToMinimizedMode();
            } else {
                pause();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void playbackFinishedWithError() {
        this.mIsVideoFinished = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void switchToNormalMode() {
        if (this.mAdState == 202 && this.mAdController != null) {
            this.mAdController.switchToNormalMode();
        }
    }

    @Override // com.loopme.BaseAd
    public void dismiss() {
        Logging.out(LOG_TAG, "Banner will be dismissed");
        if (this.mAdState == 202) {
            if (this.mBannerView != null) {
                this.mBannerView.setVisibility(8);
                this.mBannerView.removeAllViews();
            }
            if (this.mAdController != null) {
                this.mAdController.destroyMinimizedView();
                this.mAdController.setWebViewState(3);
                if (this.mAdController.getViewController() != null) {
                    this.mAdController.getViewController().onPause();
                }
            }
            onLoopMeBannerHide();
            return;
        }
        Logging.out(LOG_TAG, "Can't dismiss ad, it's not displaying");
    }

    @Override // com.loopme.BaseAd
    public int getAdFormat() {
        return 1000;
    }

    void onLoopMeBannerLoadFail(LoopMeError loopMeError) {
        Logging.out(LOG_TAG, "Ad fails to load: " + loopMeError.getMessage());
        this.mAdState = 200;
        this.mIsReady = false;
        stopFetcherTimer();
        if (this.mAdController != null) {
            this.mAdController.resetFullScreenCommandCounter();
        }
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeBannerLoadFail(this, loopMeError);
        } else {
            Logging.out(LOG_TAG, "Warning: empty listener");
        }
    }

    void onLoopMeBannerSuccessLoad() {
        Logging.out(LOG_TAG, "Ad successfully loaded (" + (System.currentTimeMillis() - this.mAdLoadingTimer) + "ms)");
        this.mIsReady = true;
        this.mAdState = 200;
        stopFetcherTimer();
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeBannerLoadSuccess(this);
        } else {
            Logging.out(LOG_TAG, "Warning: empty listener");
        }
    }

    void onLoopMeBannerShow() {
        Logging.out(LOG_TAG, "Ad appeared on screen");
        this.mIsVideoFinished = false;
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeBannerShow(this);
        }
    }

    void onLoopMeBannerHide() {
        Logging.out(LOG_TAG, "Ad disappeared from screen");
        this.mIsReady = false;
        this.mAdState = 200;
        releaseViewController();
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeBannerHide(this);
        }
    }

    void onLoopMeBannerClicked() {
        Logging.out(LOG_TAG, "Ad received click event");
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeBannerClicked(this);
        }
    }

    void onLoopMeBannerLeaveApp() {
        Logging.out(LOG_TAG, "Leaving application");
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeBannerLeaveApp(this);
        }
    }

    void onLoopMeBannerVideoDidReachEnd() {
        Logging.out(LOG_TAG, "Video did reach end");
        this.mIsVideoFinished = true;
        Runnable runnable = new Runnable() { // from class: com.loopme.LoopMeBanner.2
            @Override // java.lang.Runnable
            public void run() {
                if (LoopMeBanner.this.mAdController != null) {
                    LoopMeBanner.this.mAdController.switchToNormalMode();
                }
            }
        };
        Handler handler = new Handler(Looper.getMainLooper());
        if (this.mAdController.getCurrentDisplayMode() == 101) {
            handler.postDelayed(runnable, 1000L);
        }
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeBannerVideoDidReachEnd(this);
        }
    }

    void onLoopMeBannerExpired() {
        Logging.out(LOG_TAG, "Ad content is expired");
        this.mExpirationTimer = null;
        this.mIsReady = false;
        this.mAdState = 200;
        releaseViewController();
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeBannerExpired(this);
        }
    }

    @Override // com.loopme.BaseAd
    void onAdExpired() {
        onLoopMeBannerExpired();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public void onAdLoadSuccess() {
        onLoopMeBannerSuccessLoad();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public void onAdLoadFail(final LoopMeError loopMeError) {
        this.mHandler.post(new Runnable() { // from class: com.loopme.LoopMeBanner.3
            @Override // java.lang.Runnable
            public void run() {
                LoopMeBanner.this.onLoopMeBannerLoadFail(loopMeError);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public void onAdLeaveApp() {
        onLoopMeBannerLeaveApp();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public void onAdClicked() {
        onLoopMeBannerClicked();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public void onAdVideoDidReachEnd() {
        onLoopMeBannerVideoDidReachEnd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public int detectWidth() {
        if (this.mBannerView == null) {
            return 0;
        }
        return this.mBannerView.getLayoutParams().width;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.loopme.BaseAd
    public int detectHeight() {
        if (this.mBannerView == null) {
            return 0;
        }
        return this.mBannerView.getLayoutParams().height;
    }

    public void clearCache() {
        if (getContext() != null) {
            Utils.clearCache(getContext());
        }
    }
}
