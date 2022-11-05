package com.loopme;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Build;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.loopme.VideoController;
import com.loopme.View360Controller;
import com.loopme.ViewController;
import com.loopme.adview.AdView;
import com.loopme.adview.Bridge;
import com.loopme.common.Logging;
import com.loopme.common.LoopMeError;
import com.loopme.common.MinimizedMode;
import com.loopme.common.StaticParams;
import com.loopme.common.SwipeListener;
import com.loopme.common.Utils;
import com.loopme.common.VideoLoader;
import com.loopme.constants.StretchOption;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2.dex */
public class AdController {
    private static final String EXTRA_URL = "url";
    private static final String LOG_TAG = AdController.class.getSimpleName();
    private BaseAd mAd;
    private AdView mAdView;
    private String mFileRest;
    private boolean mHorizontalScrollOrientation;
    private boolean mIsBackFromExpand;
    private boolean mIsVideoPresented;
    private MinimizedMode mMinimizedMode;
    private LoopMeBannerView mMinimizedView;
    private View.OnTouchListener mOnTouchListener;
    private boolean mPostponePlay;
    private int mPostponePlayPosition;
    private VideoController mVideoController;
    private VideoLoader mVideoLoader;
    private IViewController mViewController;
    private int mDisplayMode = 100;
    private int mPrevDisplayMode = 100;
    private boolean mIsFirstFullScreenCommand = true;
    private volatile Bridge.Listener mBridgeListener = initBridgeListener();

    public AdController(BaseAd baseAd) {
        this.mAd = baseAd;
        this.mAdView = new AdView(this.mAd.getContext());
        this.mAdView.addBridgeListener(this.mBridgeListener);
        this.mOnTouchListener = initOnTouchListener();
        this.mAdView.setOnTouchListener(this.mOnTouchListener);
    }

    private View.OnTouchListener initOnTouchListener() {
        return new View.OnTouchListener() { // from class: com.loopme.AdController.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                AdController.this.mViewController.handleTouchEvent(motionEvent);
                return false;
            }
        };
    }

    public void initVideoController() {
        this.mVideoController = new VideoController(this.mAdView, initVideoControllerCallback(), this.mAd.getAppKey(), this.mAd.getAdFormat());
    }

    public void pauseVideo() {
        if (this.mVideoController != null) {
            this.mVideoController.pauseVideo();
        }
    }

    public void initViewController() {
        if (!this.mAd.getAdParams().isVideo360()) {
            this.mViewController = new ViewController(initViewControllerCallback());
        } else {
            this.mViewController = new View360Controller(initView360ControllerCallback());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IViewController getViewController() {
        return this.mViewController;
    }

    public void initControllers() {
        initVideoController();
        initViewController();
    }

    private View360Controller.Callback initView360ControllerCallback() {
        return new View360Controller.Callback() { // from class: com.loopme.AdController.2
            @Override // com.loopme.View360Controller.Callback
            public void onSurfaceReady(Surface surface) {
                Logging.out(AdController.LOG_TAG, "onSurfaceReady ####");
                AdController.this.mVideoController.setSurface(surface);
            }

            @Override // com.loopme.View360Controller.Callback
            public void onEvent(String str) {
                if (AdController.this.mAdView != null) {
                    AdController.this.mAdView.send360Event(str);
                }
            }
        };
    }

    private ViewController.Callback initViewControllerCallback() {
        return new ViewController.Callback() { // from class: com.loopme.AdController.3
            @Override // com.loopme.ViewController.Callback
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture) {
                AdController.this.surfaceTextureAvailable(surfaceTexture);
            }

            @Override // com.loopme.ViewController.Callback
            public void onSurfaceTextureDestroyed() {
                AdController.this.surfaceTextureDestroyed();
            }
        };
    }

    private VideoController.Callback initVideoControllerCallback() {
        return new VideoController.Callback() { // from class: com.loopme.AdController.4
            @Override // com.loopme.VideoController.Callback
            public void onVideoReachEnd() {
                AdController.this.mAd.onAdVideoDidReachEnd();
            }

            @Override // com.loopme.VideoController.Callback
            public void onFail(LoopMeError loopMeError) {
                AdController.this.mAd.onAdLoadFail(loopMeError);
            }

            @Override // com.loopme.VideoController.Callback
            public void onVideoSizeChanged(int i, int i2) {
                AdController.this.mViewController.setVideoSize(i, i2);
            }

            @Override // com.loopme.VideoController.Callback
            public void postponePlay(int i) {
                AdController.this.mPostponePlay = true;
                AdController.this.mPostponePlayPosition = i;
            }

            @Override // com.loopme.VideoController.Callback
            public void playbackFinishedWithError() {
                if (AdController.this.mAd.getAdFormat() == 1000) {
                    ((LoopMeBanner) AdController.this.mAd).playbackFinishedWithError();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resetFullScreenCommandCounter() {
        this.mIsFirstFullScreenCommand = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroy() {
        this.mBridgeListener = null;
        if (this.mVideoController != null) {
            this.mVideoController.destroy();
        }
        if (this.mVideoLoader != null) {
            this.mVideoLoader.stop();
        }
        if (this.mAdView != null) {
            this.mAdView.stopLoading();
            this.mAdView.clearCache(true);
            this.mAdView = null;
        }
        this.mMinimizedMode = null;
    }

    public void setWebViewState(int i) {
        if (this.mAdView != null) {
            this.mAdView.setWebViewState(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAdShake() {
        if (this.mAdView != null) {
            this.mAdView.shake();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCurrentVideoState() {
        if (this.mAdView != null) {
            return this.mAdView.getCurrentVideoState();
        }
        return -1;
    }

    public int getCurrentDisplayMode() {
        return this.mDisplayMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void buildStaticAdView(ViewGroup viewGroup) {
        if (viewGroup != null && this.mAdView != null) {
            this.mAdView.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
            viewGroup.addView(this.mAdView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ensureAdIsVisible(View view) {
        if (this.mAdView != null && view != null) {
            Rect rect = new Rect();
            boolean globalVisibleRect = view.getGlobalVisibleRect(rect);
            int width = this.mHorizontalScrollOrientation ? view.getWidth() / 2 : view.getHeight() / 2;
            int width2 = this.mHorizontalScrollOrientation ? rect.width() : rect.height();
            if (globalVisibleRect) {
                if (width2 < width) {
                    setWebViewState(2);
                    this.mIsBackFromExpand = false;
                    return;
                } else if (width2 >= width) {
                    setWebViewState(1);
                    return;
                } else {
                    return;
                }
            }
            setWebViewState(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void buildVideoAdView(ViewGroup viewGroup) {
        if (this.mViewController != null) {
            this.mViewController.buildVideoAdView(this.mAd.getContext(), viewGroup, this.mAdView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void rebuildView(ViewGroup viewGroup) {
        if (this.mViewController != null) {
            this.mViewController.rebuildView(viewGroup, this.mAdView);
        }
    }

    private void storePreviousMode(int i) {
        if (i == 102) {
            this.mPrevDisplayMode = 102;
        } else if (i == 101) {
            this.mPrevDisplayMode = 101;
        } else {
            this.mPrevDisplayMode = 100;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isBackFromExpand() {
        return this.mIsBackFromExpand;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void switchToMinimizedMode() {
        if (this.mDisplayMode == 101) {
            if (getCurrentVideoState() == 3) {
                setWebViewState(1);
                return;
            }
            return;
        }
        Logging.out(LOG_TAG, "switch to minimized mode");
        storePreviousMode(this.mDisplayMode);
        this.mDisplayMode = 101;
        int width = this.mMinimizedMode.getWidth();
        this.mMinimizedView = new LoopMeBannerView(this.mAdView.getContext(), width, this.mMinimizedMode.getHeight());
        this.mViewController.rebuildView(this.mMinimizedView, this.mAdView);
        addBordersToView(this.mMinimizedView);
        this.mViewController.onResume();
        if (this.mAdView.getCurrentWebViewState() == 2) {
            this.mMinimizedView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        this.mMinimizedMode.getRootView().addView(this.mMinimizedView);
        configMinimizedViewLayoutParams(this.mMinimizedView);
        setWebViewState(1);
        this.mAdView.setOnTouchListener(new SwipeListener(width, new SwipeListener.Listener() { // from class: com.loopme.AdController.5
            @Override // com.loopme.common.SwipeListener.Listener
            public void onSwipe(boolean z) {
                AdController.this.mAdView.setWebViewState(2);
                Animation makeOutAnimation = AnimationUtils.makeOutAnimation(AdController.this.mAd.getContext(), z);
                makeOutAnimation.setDuration(200L);
                AdController.this.mMinimizedView.startAnimation(makeOutAnimation);
                AdController.this.switchToNormalMode();
                AdController.this.mMinimizedMode = null;
            }
        }));
    }

    private void configMinimizedViewLayoutParams(LoopMeBannerView loopMeBannerView) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) loopMeBannerView.getLayoutParams();
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        layoutParams.bottomMargin = this.mMinimizedMode.getMarginBottom();
        layoutParams.rightMargin = this.mMinimizedMode.getMarginRight();
        loopMeBannerView.setLayoutParams(layoutParams);
    }

    @SuppressLint({"NewApi"})
    private void addBordersToView(LoopMeBannerView loopMeBannerView) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RectShape());
        shapeDrawable.getPaint().setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        shapeDrawable.getPaint().setStyle(Paint.Style.FILL_AND_STROKE);
        shapeDrawable.getPaint().setAntiAlias(true);
        loopMeBannerView.setPadding(2, 2, 2, 2);
        if (Build.VERSION.SDK_INT < 16) {
            loopMeBannerView.setBackgroundDrawable(shapeDrawable);
        } else {
            loopMeBannerView.setBackground(shapeDrawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void switchToNormalMode() {
        if (this.mDisplayMode != 100) {
            Logging.out(LOG_TAG, "switch to normal mode");
            if (this.mDisplayMode == 102) {
                this.mIsBackFromExpand = true;
            }
            storePreviousMode(this.mDisplayMode);
            this.mDisplayMode = 100;
            LoopMeBannerView bannerView = ((LoopMeBanner) this.mAd).getBannerView();
            bannerView.setVisibility(0);
            this.mViewController.rebuildView(bannerView, this.mAdView);
            if (this.mMinimizedView != null && this.mMinimizedView.getParent() != null) {
                ((ViewGroup) this.mMinimizedView.getParent()).removeView(this.mMinimizedView);
                this.mMinimizedView.removeAllViews();
            }
        }
    }

    public void setMinimizedMode(MinimizedMode minimizedMode) {
        this.mMinimizedMode = minimizedMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isMinimizedModeEnable() {
        return (this.mMinimizedMode == null || this.mMinimizedMode.getRootView() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroyMinimizedView() {
        if (this.mMinimizedView != null) {
            if (this.mMinimizedView.getParent() != null) {
                ((ViewGroup) this.mMinimizedView.getParent()).removeView(this.mMinimizedView);
            }
            this.mMinimizedView.removeAllViews();
            this.mMinimizedView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void preloadHtml(String str) {
        if (this.mAdView != null) {
            Logging.out(LOG_TAG, "loadDataWithBaseURL");
            this.mAdView.loadDataWithBaseURL(null, str, "text/html", "UTF-8", null);
            return;
        }
        this.mAd.onAdLoadFail(new LoopMeError("Html loading error"));
    }

    public boolean isVideoPresented() {
        return this.mIsVideoPresented;
    }

    private Bridge.Listener initBridgeListener() {
        return new Bridge.Listener() { // from class: com.loopme.AdController.6
            @Override // com.loopme.adview.Bridge.Listener
            public void onJsVideoPlay(int i) {
                AdController.this.handleVideoPlay(i);
            }

            @Override // com.loopme.adview.Bridge.Listener
            public void onJsVideoPause(int i) {
                AdController.this.handleVideoPause(i);
            }

            @Override // com.loopme.adview.Bridge.Listener
            public void onJsVideoMute(boolean z) {
                AdController.this.handleVideoMute(z);
            }

            @Override // com.loopme.adview.Bridge.Listener
            public void onJsVideoLoad(String str) {
                AdController.this.handleVideoLoad(str);
            }

            @Override // com.loopme.adview.Bridge.Listener
            public void onJsLoadSuccess() {
                AdController.this.handleLoadSuccess();
            }

            @Override // com.loopme.adview.Bridge.Listener
            public void onJsClose() {
                AdController.this.handleClose();
            }

            @Override // com.loopme.adview.Bridge.Listener
            public void onJsLoadFail(String str) {
                AdController.this.handleLoadFail(str);
            }

            @Override // com.loopme.adview.Bridge.Listener
            public void onJsFullscreenMode(boolean z) {
                AdController.this.handleFullscreenMode(z);
            }

            @Override // com.loopme.adview.Bridge.Listener
            public void onNonLoopMe(String str) {
                AdController.this.handleNonLoopMe(str);
            }

            @Override // com.loopme.adview.Bridge.Listener
            public void onJsVideoStretch(boolean z) {
                AdController.this.handleVideoStretch(z);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLoadSuccess() {
        this.mAd.startExpirationTimer();
        this.mAd.onAdLoadSuccess();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLoadFail(String str) {
        if (this.mAd != null) {
            this.mAd.onAdLoadFail(new LoopMeError("Failed to process ad"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleVideoLoad(String str) {
        Logging.out(LOG_TAG, "JS command: load video " + str);
        this.mIsVideoPresented = true;
        boolean partPreload = this.mAd.getAdParams().getPartPreload();
        this.mVideoController.contain360(this.mAd.getAdParams().isVideo360());
        loadVideoFile(str, this.mAd.getContext(), partPreload);
    }

    private void loadVideoFile(String str, Context context, final boolean z) {
        this.mVideoLoader = new VideoLoader(str, z, context, new VideoLoader.Callback() { // from class: com.loopme.AdController.7
            @Override // com.loopme.common.VideoLoader.Callback
            public void onError(LoopMeError loopMeError) {
                AdController.this.sendLoadFail(loopMeError);
            }

            @Override // com.loopme.common.VideoLoader.Callback
            public void onPreviewLoaded(String str2) {
                Logging.out(AdController.LOG_TAG, "onPreviewLoaded");
                AdController.this.mVideoController.initPlayerFromFile(str2);
            }

            @Override // com.loopme.common.VideoLoader.Callback
            public void onFullVideoLoaded(String str2) {
                Logging.out(AdController.LOG_TAG, "onFullVideoLoaded: " + str2);
                if (z) {
                    if (AdController.this.mAd.isShowing()) {
                        AdController.this.mFileRest = str2;
                        AdController.this.mVideoController.setFileRest(AdController.this.mFileRest);
                        AdController.this.mVideoController.waitForVideo();
                        return;
                    }
                    AdController.this.mVideoController.releasePlayer();
                    AdController.this.mVideoController.initPlayerFromFile(str2);
                    return;
                }
                AdController.this.mVideoController.initPlayerFromFile(str2);
            }
        });
        this.mVideoLoader.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLoadFail(LoopMeError loopMeError) {
        if (this.mAd != null) {
            this.mAd.onAdLoadFail(loopMeError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleVideoMute(boolean z) {
        if (this.mAdView != null) {
            this.mAdView.setVideoMute(z);
        }
        if (this.mVideoController != null) {
            this.mVideoController.muteVideo(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleVideoPlay(int i) {
        this.mVideoController.playVideo(i, this.mAd.getAdParams().isVideo360());
        if (this.mDisplayMode == 101) {
            Utils.animateAppear(this.mMinimizedView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleVideoPause(int i) {
        this.mVideoController.pauseVideo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleClose() {
        this.mAd.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleVideoStretch(boolean z) {
        Logging.out(LOG_TAG, "JS command: stretch video ");
        this.mViewController.setStretchParam(z ? StretchOption.STRECH : StretchOption.NO_STRETCH);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFullscreenMode(boolean z) {
        if (this.mIsFirstFullScreenCommand) {
            this.mIsFirstFullScreenCommand = false;
            this.mAdView.setFullscreenMode(false);
            return;
        }
        if (z) {
            switchToFullScreenMode();
        } else {
            broadcastDestroyIntent();
        }
        this.mAdView.setFullscreenMode(z);
    }

    private void broadcastDestroyIntent() {
        Intent intent = new Intent();
        intent.setAction(StaticParams.DESTROY_INTENT);
        this.mAd.getContext().sendBroadcast(intent);
    }

    private void switchToFullScreenMode() {
        if (this.mDisplayMode != 102) {
            Logging.out(LOG_TAG, "switch to fullscreen mode");
            storePreviousMode(this.mDisplayMode);
            this.mDisplayMode = 102;
            if (this.mPrevDisplayMode == 101 && this.mMinimizedView != null && this.mMinimizedView.getParent() != null) {
                ((ViewGroup) this.mMinimizedView.getParent()).removeView(this.mMinimizedView);
            }
            AdUtils.startAdActivity(this.mAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void switchToPreviousMode() {
        if (this.mPrevDisplayMode == 101) {
            switchToMinimizedMode();
        } else if (this.mPrevDisplayMode == 100) {
            switchToNormalMode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNonLoopMe(String str) {
        Logging.out(LOG_TAG, "Non Js command");
        Context context = this.mAd.getContext();
        if (Utils.isOnline(context)) {
            Intent intent = new Intent(context, AdBrowserActivity.class);
            intent.putExtra("url", str);
            intent.putExtra(StaticParams.APPKEY_TAG, this.mAd.getAppKey());
            intent.putExtra(StaticParams.FORMAT_TAG, this.mAd.getAdFormat());
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            this.mAd.onAdClicked();
            setWebViewState(2);
            broadcastAdClickedIntent();
            context.startActivity(intent);
            return;
        }
        Logging.out(LOG_TAG, "No internet connection");
    }

    private void broadcastAdClickedIntent() {
        Intent intent = new Intent();
        intent.setAction(StaticParams.CLICK_INTENT);
        this.mAd.getContext().sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void surfaceTextureAvailable(SurfaceTexture surfaceTexture) {
        int screenWidth;
        int i = 0;
        Logging.out(LOG_TAG, "onSurfaceTextureAvailable");
        this.mVideoController.setSurfaceTextureAvailable(true);
        if (this.mPostponePlay) {
            this.mVideoController.playVideo(this.mPostponePlayPosition, this.mAd.getAdParams().isVideo360());
            this.mPostponePlay = false;
        }
        switch (this.mDisplayMode) {
            case 100:
                screenWidth = this.mAd.detectWidth();
                i = this.mAd.detectHeight();
                break;
            case 101:
                if (this.mMinimizedMode != null) {
                    screenWidth = this.mMinimizedMode.getWidth();
                    i = this.mMinimizedMode.getHeight();
                    break;
                } else {
                    Logging.out(LOG_TAG, "WARNING: MinimizedMode is null");
                    screenWidth = 0;
                    break;
                }
            case 102:
                screenWidth = Utils.getScreenWidth();
                i = Utils.getScreenHeight();
                break;
            default:
                Logging.out(LOG_TAG, "Unknown display mode");
                screenWidth = 0;
                break;
        }
        this.mVideoController.setSurface(new Surface(surfaceTexture));
        this.mViewController.setViewSize(screenWidth, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean surfaceTextureDestroyed() {
        Logging.out(LOG_TAG, "onSurfaceTextureDestroyed");
        this.mVideoController.setSurfaceTextureAvailable(false);
        try {
            this.mVideoController.setSurface(null);
            return true;
        } catch (IllegalStateException e) {
            return true;
        }
    }
}
