package com.openx.model.video;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Rect;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.drive.DriveFile;
import com.mopub.mobileads.resource.DrawableConstants;
import com.openx.android_sdk_openx.R;
import com.openx.common.deviceData.listeners.AdTruthListener;
import com.openx.common.deviceData.listeners.SDKInitListener;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.BaseNetworkTask;
import com.openx.core.network.GenerateURLListener;
import com.openx.core.network.GetNetworkTask;
import com.openx.core.network.OXAdRequest;
import com.openx.core.network.PostNetworkTask;
import com.openx.core.network.ResponseHandler;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.core.sdk.OXSettings;
import com.openx.errors.VastParseError;
import com.openx.model.Offset;
import com.openx.model.adParams.AdCallParameters;
import com.openx.model.adParams.URLGenerator;
import com.openx.model.vast.ClickTracking;
import com.openx.model.vast.Impression;
import com.openx.model.vast.VASTInterface;
import com.openx.model.vast.VASTParser;
import com.openx.model.vast.VASTPlayer;
import com.openx.model.vast.VideoAdRequestListener;
import com.openx.model.vast.VideoCompletionListener;
import com.openx.model.vast.VideoErrorListener;
import com.openx.model.vast.VideoPreparedListener;
import com.openx.model.video.VideoAdEvent;
import com.openx.model.video.VideoPlayer;
import com.openx.sdk.browser.AdBrowserActivity;
import com.openx.video.statemachine.StateMachine;
import com.openx.view.video.PublisherVideoView;
import com.openx.view.video.network.VideoThumbnailTask;
import io.fabric.sdk.android.services.common.a;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class VideoAdManager implements SDKInitListener, ResponseHandler {
    private static final int CLOSED = 1;
    private static final String TAG = "VideoAdManager";
    private static Context context;
    public static View tempVideoContainer;
    private int adPlayhead;
    private OXAdRequest adRequest;
    private Uri adURI;
    private AutoPlayConfigs autoPlayConfig;
    private boolean canFillParentParams;
    private boolean canTrackTimeOffsets;
    private boolean checkedCanFillParentParams;
    private ViewGroup container;
    private ContentCompletionListener contentCompletionListener;
    private int contentPlayhead;
    private ArrayList<String> contentPlaylist;
    private RelativeLayout contentVideoContainer;
    private String contentVideoPath;
    private VideoView contentVideoView;
    private AdVideoDialog dialog;
    private TextView errorView;
    private ViewTreeObserver.OnGlobalLayoutListener globalLayoutListener;
    private int initialLayoutHeight;
    private int initialLayoutWidth;
    private Object initialVideoContainerParams;
    private boolean isAdSkipped;
    private boolean isContentVideoPlaying;
    private boolean isCustomVideoView;
    boolean isEndOfPlaylist;
    private boolean isEndOfVideo;
    private boolean isError;
    private boolean isFullScreen;
    private boolean isInFeedVideo;
    private boolean isInterstitial;
    private boolean isPaused;
    private boolean isPreloadedVideo;
    private boolean isThumbnailClicked;
    private int justPlayedAdId;
    private MediaPlayer mediaPlayer;
    private RelativeLayout nonLinearAd;
    private double percentPlayed;
    private boolean playFullscreen;
    private ImageView playLarge;
    private String preloadedAdVideoPath;
    private ProgressBar spinner;
    private StateMachine stateMachine;
    private VideoView swapVideoView;
    private ImageView thumbNailImageView;
    private VideoThumbnailTask thumbnailTask;
    private ArrayList<Integer> timeOffsets;
    private InterstitialThread updateThread;
    private String vastTag;
    private String vastTagBase;
    private VASTParser vastXml;
    private VideoAdRequestListener videoAdRequestListener;
    private RelativeLayout videoContainer;
    private VideoPlayer videoPlayer;
    private VideoPlayer.VideoPlayerCloseListener videoPlayerCloseListener;
    private CustomVideoAdProperties videoProperties;
    private VideoView videoView;
    private View visitAdvertiserLink;
    private double scrubThreshhold = 5.0d;
    private int status = -1;
    private boolean allowFullscreen = true;
    private boolean allowFullscreenTemp = true;
    private boolean allowFullscreenOnOrientationChange = true;
    private boolean hasStarted = false;
    private boolean isMuteOnAutoPlay = false;
    private boolean sendMuteEvents = false;
    boolean makeError = true;
    private boolean q1 = false;
    private boolean q2 = false;
    private boolean q3 = false;
    private boolean q4 = false;
    private int nestingLimit = 5;
    private int responseNum = 0;
    private ArrayList<VideoAdEventListener> videoAdEventListeners = new ArrayList<>();
    private ArrayList<VideoInfoListener> videoInfoListeners = new ArrayList<>();

    /* loaded from: classes3.dex */
    public enum AutoPlayConfigs {
        NoAutoPlay,
        AlwaysAutoPlay,
        WifiOnlyAutoPlay
    }

    /* loaded from: classes3.dex */
    public interface ContentCompletionListener {
        void onContentCompletion(String str, boolean z);
    }

    public VideoAdManager(Context context2) {
        context = context2;
        if (!OXSettings.isSDKInit) {
            OXSettings.initSDK(context2, this);
        }
        OXMManagersResolver.getInstance().prepare(context2);
        initTimeOffsets();
        this.stateMachine = new StateMachine(this);
    }

    protected void playClick() {
        this.stateMachine.playClick();
    }

    public void setPlayFullscreen(boolean z) {
        this.playFullscreen = z;
        if (z) {
            this.allowFullscreen = true;
            this.allowFullscreenTemp = true;
        }
    }

    public void setAllowFullscreen(boolean z) {
        this.allowFullscreen = z;
        this.allowFullscreenTemp = z;
        if (this.playFullscreen) {
            this.allowFullscreen = true;
            this.allowFullscreenTemp = true;
        }
    }

    public boolean getAllowFullscreen() {
        return this.allowFullscreen;
    }

    public void setAllowFullscreenOnOrientationChange(boolean z) {
        this.allowFullscreenOnOrientationChange = z;
    }

    public boolean getAllowFullscreenOnOrientationChange() {
        return this.allowFullscreenOnOrientationChange;
    }

    public boolean getIsFullScreen() {
        return this.isFullScreen;
    }

    @SuppressLint({"NewApi"})
    public void makeFullScreen() {
        if (!this.checkedCanFillParentParams) {
            ViewGroup viewGroup = (ViewGroup) ((ViewGroup) ((Activity) context).getWindow().getDecorView().findViewById(16908290)).getChildAt(0);
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                if (viewGroup.getChildAt(i) == this.videoContainer) {
                    this.canFillParentParams = true;
                }
            }
            this.checkedCanFillParentParams = true;
        }
        if (!this.canFillParentParams) {
            if (this.isContentVideoPlaying) {
                this.contentPlayhead = this.videoView.getCurrentPosition();
            } else {
                this.adPlayhead = this.videoView.getCurrentPosition();
            }
            if (this.allowFullscreen && this.container != null) {
                this.isFullScreen = true;
                if (this.isInFeedVideo && this.globalLayoutListener != null) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        if (this.videoView.getViewTreeObserver().isAlive()) {
                            OXLog.info("VAST", "removing GlobalLayoutListener ");
                            this.videoView.getViewTreeObserver().removeOnGlobalLayoutListener(this.globalLayoutListener);
                        }
                    } else if (this.videoView.getViewTreeObserver().isAlive()) {
                        OXLog.info("VAST", "removing GlobalLayoutListener ");
                        this.videoView.getViewTreeObserver().removeGlobalOnLayoutListener(this.globalLayoutListener);
                    }
                    this.globalLayoutListener = null;
                }
                this.videoContainer.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                if (this.videoView instanceof PublisherVideoView) {
                    ((PublisherVideoView) this.videoView).setCanOverrideDraw(true);
                }
                if (!this.isError) {
                    this.spinner.setVisibility(0);
                }
                this.container.removeView(this.videoContainer);
                this.dialog = null;
                this.dialog = new AdVideoDialog(context, this.videoContainer);
                this.dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.openx.model.video.VideoAdManager.1
                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                        if (i2 == 4) {
                            ((AdVideoDialog) dialogInterface).removeView();
                            VideoAdManager.this.makeCollapsedScreen();
                            return false;
                        }
                        return false;
                    }
                });
                this.dialog.show();
                return;
            }
            this.spinner.setVisibility(8);
            return;
        }
        this.videoContainer.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    }

    public void makeCollapsedScreen() {
        Constructor<?> constructor;
        Object obj;
        Constructor<?> constructor2;
        Object obj2;
        if (!this.checkedCanFillParentParams) {
            ViewGroup viewGroup = (ViewGroup) ((ViewGroup) ((Activity) context).getWindow().getDecorView().findViewById(16908290)).getChildAt(0);
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                if (viewGroup.getChildAt(i) == this.videoContainer) {
                    this.canFillParentParams = true;
                }
            }
            this.checkedCanFillParentParams = true;
        }
        if (!this.canFillParentParams) {
            if (this.isContentVideoPlaying) {
                this.contentPlayhead = this.videoView.getCurrentPosition();
            } else {
                this.adPlayhead = this.videoView.getCurrentPosition();
            }
            if (this.allowFullscreen && this.container != null && this.dialog != null) {
                this.dialog.removeView();
                tempVideoContainer = this.videoContainer;
                if (this.isInFeedVideo && this.globalLayoutListener == null) {
                    setOnScreenListener();
                }
                this.isFullScreen = false;
                if (!this.isError) {
                    this.spinner.setVisibility(0);
                }
                try {
                    constructor2 = this.initialVideoContainerParams.getClass().getConstructor(Integer.TYPE, Integer.TYPE);
                } catch (NoSuchMethodException e) {
                    e.printStackTrace();
                    constructor2 = null;
                }
                try {
                    obj2 = constructor2.newInstance(Integer.valueOf(this.initialLayoutWidth), Integer.valueOf(this.initialLayoutHeight));
                } catch (IllegalAccessException e2) {
                    e2.printStackTrace();
                    obj2 = null;
                } catch (IllegalArgumentException e3) {
                    e3.printStackTrace();
                    obj2 = null;
                } catch (InstantiationException e4) {
                    e4.printStackTrace();
                    obj2 = null;
                } catch (InvocationTargetException e5) {
                    e5.printStackTrace();
                    obj2 = null;
                }
                if (((ViewGroup) this.videoContainer.getParent()) != null) {
                    ((ViewGroup) this.videoContainer.getParent()).removeView(this.videoContainer);
                }
                this.container.addView(this.videoContainer, (ViewGroup.LayoutParams) obj2);
                this.dialog.dismiss();
                this.dialog = null;
                return;
            }
            return;
        }
        try {
            constructor = this.initialVideoContainerParams.getClass().getConstructor(Integer.TYPE, Integer.TYPE);
        } catch (NoSuchMethodException e6) {
            e6.printStackTrace();
            constructor = null;
        }
        try {
            obj = constructor.newInstance(Integer.valueOf(this.initialLayoutWidth), Integer.valueOf(this.initialLayoutHeight));
        } catch (IllegalAccessException e7) {
            e7.printStackTrace();
            obj = null;
        } catch (IllegalArgumentException e8) {
            e8.printStackTrace();
            obj = null;
        } catch (InstantiationException e9) {
            e9.printStackTrace();
            obj = null;
        } catch (InvocationTargetException e10) {
            e10.printStackTrace();
            obj = null;
        }
        this.videoContainer.setLayoutParams((ViewGroup.LayoutParams) obj);
    }

    private int getNavBarHeight() {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", a.ANDROID_CLIENT_TYPE);
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private int getScreenHeight() {
        int width = ((Activity) context).getWindowManager().getDefaultDisplay().getWidth();
        int height = ((Activity) context).getWindowManager().getDefaultDisplay().getHeight();
        return height > width ? height + getNavBarHeight() : width - getNavBarHeight();
    }

    public void setContentCompletionListener(ContentCompletionListener contentCompletionListener) {
        this.contentCompletionListener = contentCompletionListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVideoPlayerClosedListener(VideoPlayer.VideoPlayerCloseListener videoPlayerCloseListener) {
        this.videoPlayerCloseListener = videoPlayerCloseListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setVideoAdRequestListener(VideoAdRequestListener videoAdRequestListener) {
        this.videoAdRequestListener = videoAdRequestListener;
    }

    public void setVideoView(VideoView videoView) {
        this.videoView = videoView;
        if (videoView instanceof VASTPlayer) {
            setVASTInterface((VASTPlayer) videoView);
            ((VASTPlayer) videoView).setVideoCompletionListener(setOnCompletionListener());
            ((VASTPlayer) videoView).setVideoPreparedListener(setOnPreparedListener());
            ((VASTPlayer) videoView).setVideoErrorListener(setOnErrorListener());
        }
        if (videoView instanceof VideoAdEventListener) {
            addVideoAdEventListener((VideoAdEventListener) videoView);
        }
        if (videoView instanceof VideoInfoListener) {
            addVideoInfoListener((VideoInfoListener) videoView);
        }
        if (this.isInFeedVideo) {
            setOnScreenListener();
        }
    }

    public void setIsInFeedVideo(boolean z) {
        this.isInFeedVideo = z;
    }

    public boolean getIsInFeedVideo() {
        return this.isInFeedVideo;
    }

    private int getStatusBarHeight() {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", a.ANDROID_CLIENT_TYPE);
        if (identifier <= 0) {
            return 0;
        }
        return context.getResources().getDimensionPixelSize(identifier);
    }

    private ViewTreeObserver.OnGlobalLayoutListener createOnGLobalLayoutListener() {
        final int statusBarHeight = getStatusBarHeight();
        final int screenHeight = (getScreenHeight() - getNavBarHeight()) - statusBarHeight;
        this.globalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.openx.model.video.VideoAdManager.2
            boolean isOutOfBounds;

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            @SuppressLint({"NewApi"})
            public void onGlobalLayout() {
                Rect rect = new Rect(VideoAdManager.this.videoView.getLeft(), VideoAdManager.this.videoView.getTop(), VideoAdManager.this.videoView.getRight(), VideoAdManager.this.videoView.getBottom());
                VideoAdManager.this.videoView.getGlobalVisibleRect(rect);
                if (rect.top == 0 && VideoAdManager.this.status != 1) {
                    VideoAdManager.this.status = 1;
                    if (Build.VERSION.SDK_INT >= 16) {
                        if (VideoAdManager.this.videoView.getViewTreeObserver().isAlive()) {
                            OXLog.info("VAST", "new removingListener > 16");
                            ((Activity) VideoAdManager.context).runOnUiThread(new Runnable() { // from class: com.openx.model.video.VideoAdManager.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    VideoAdManager.this.videoView.getViewTreeObserver().removeOnGlobalLayoutListener(VideoAdManager.this.globalLayoutListener);
                                }
                            });
                        }
                    } else if (VideoAdManager.this.videoView.getViewTreeObserver().isAlive()) {
                        OXLog.info("VAST", "new removingListener");
                        ((Activity) VideoAdManager.context).runOnUiThread(new Runnable() { // from class: com.openx.model.video.VideoAdManager.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                VideoAdManager.this.videoView.getViewTreeObserver().removeGlobalOnLayoutListener(VideoAdManager.this.globalLayoutListener);
                            }
                        });
                    }
                    OXLog.info("VAST", "onGlobalLayout threadStop");
                    VideoAdManager.this.threadStop();
                    return;
                }
                if (!this.isOutOfBounds && !VideoAdManager.this.isFullScreen && ((rect.top <= statusBarHeight || rect.bottom > screenHeight) && (VideoAdManager.this.canAutoPlay() || VideoAdManager.this.thumbNailImageView.getVisibility() != 0))) {
                    try {
                        if (VideoAdManager.this.allowFullscreenTemp) {
                            VideoAdManager.this.allowFullscreen = false;
                        }
                        VideoAdManager.this.videoView.pause();
                        this.isOutOfBounds = true;
                        VideoAdManager.this.isPaused = false;
                    } catch (IllegalStateException e) {
                    }
                }
                if (this.isOutOfBounds && !VideoAdManager.this.isFullScreen && rect.top > statusBarHeight && rect.bottom < screenHeight && !VideoAdManager.this.isPaused && !VideoAdManager.this.videoView.isPlaying()) {
                    if (VideoAdManager.this.canAutoPlay() || VideoAdManager.this.thumbNailImageView.getVisibility() != 0) {
                        try {
                            if (VideoAdManager.this.allowFullscreenTemp) {
                                VideoAdManager.this.allowFullscreen = true;
                            }
                            this.isOutOfBounds = false;
                            VideoAdManager.this.videoView.start();
                        } catch (IllegalStateException e2) {
                        }
                        VideoAdManager.this.threadResume();
                    }
                }
            }
        };
        return this.globalLayoutListener;
    }

    private void setOnScreenListener() {
        OXLog.info("VAST", "setting OnScreenListener 0");
        if (this.videoView != null) {
            OXLog.info("VAST", "setting OnScreenListener 1");
            ViewTreeObserver viewTreeObserver = this.videoView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                OXLog.info("VAST", "setting OnScreenListener 2");
                viewTreeObserver.addOnGlobalLayoutListener(createOnGLobalLayoutListener());
            }
        }
    }

    public void setContentVideoView(VideoView videoView) {
        this.contentVideoView = videoView;
        if (videoView instanceof VASTPlayer) {
            setVASTInterface((VASTPlayer) videoView);
            ((VASTPlayer) videoView).setVideoCompletionListener(setOnCompletionListener());
            ((VASTPlayer) videoView).setVideoPreparedListener(setOnPreparedListener());
            ((VASTPlayer) videoView).setVideoErrorListener(setOnErrorListener());
        }
        if (videoView instanceof VideoAdEventListener) {
            addVideoAdEventListener((VideoAdEventListener) videoView);
        }
        if (videoView instanceof VideoInfoListener) {
            addVideoInfoListener((VideoInfoListener) videoView);
        }
    }

    public void setContentVideoContainer(RelativeLayout relativeLayout) {
        this.contentVideoContainer = relativeLayout;
        this.initialLayoutWidth = relativeLayout.getLayoutParams().width;
        this.initialLayoutHeight = relativeLayout.getLayoutParams().height;
        this.initialVideoContainerParams = relativeLayout.getLayoutParams();
        this.container = relativeLayout;
        if (relativeLayout instanceof VASTPlayer) {
            setVASTInterface((VASTPlayer) relativeLayout);
            ((VASTPlayer) relativeLayout).setVideoCompletionListener(setOnCompletionListener());
            ((VASTPlayer) relativeLayout).setVideoPreparedListener(setOnPreparedListener());
            ((VASTPlayer) relativeLayout).setVideoErrorListener(setOnErrorListener());
        }
    }

    public void setVideoContainer(RelativeLayout relativeLayout) {
        this.videoContainer = relativeLayout;
        this.videoContainer.setTag("videoContainer");
        if (this.videoView != null && !this.hasStarted) {
            this.isCustomVideoView = true;
        }
        ViewGroup.LayoutParams layoutParams = relativeLayout.getLayoutParams();
        if (layoutParams != null) {
            this.initialLayoutWidth = layoutParams.width;
            this.initialLayoutHeight = layoutParams.height;
            this.initialVideoContainerParams = layoutParams;
            this.container = (ViewGroup) relativeLayout.getParent();
        }
        if (relativeLayout instanceof VASTPlayer) {
            setVASTInterface((VASTPlayer) relativeLayout);
            ((VASTPlayer) relativeLayout).setVideoCompletionListener(setOnCompletionListener());
            ((VASTPlayer) relativeLayout).setVideoPreparedListener(setOnPreparedListener());
            ((VASTPlayer) relativeLayout).setVideoErrorListener(setOnErrorListener());
        }
        createVideoThumbnail();
        createNonLinearAd();
        createSpinner();
        createErrorView();
    }

    private void createVideoThumbnail() {
        this.thumbNailImageView = new ImageView(context);
        this.playLarge = new ImageView(context);
        this.thumbNailImageView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) DrawableConstants.CtaButton.WIDTH_DIPS, (int) DrawableConstants.CtaButton.WIDTH_DIPS);
        layoutParams.addRule(13);
        this.playLarge.setLayoutParams(layoutParams);
        this.playLarge.setImageResource(R.drawable.openx_play_large);
        this.thumbNailImageView.setVisibility(4);
        this.playLarge.setVisibility(4);
        this.thumbNailImageView.setOnClickListener(new View.OnClickListener() { // from class: com.openx.model.video.VideoAdManager.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!VideoAdManager.this.isThumbnailClicked) {
                    VideoAdManager.this.isThumbnailClicked = true;
                    VideoAdManager.this.threadResume();
                    VideoAdManager.this.videoView.start();
                    VideoAdManager.this.thumbNailImageView.setVisibility(8);
                    VideoAdManager.this.playLarge.setVisibility(8);
                    VideoAdManager.this.stateMachine.setStarted();
                    VideoAdManager.this.track(VideoAdEvent.Event.AD_START);
                    VideoAdManager.this.percentPlayed = 0.0d;
                    VideoAdManager.this.q1 = false;
                    VideoAdManager.this.q2 = false;
                    VideoAdManager.this.q3 = false;
                    VideoAdManager.this.q4 = false;
                    VideoAdManager.this.isPaused = false;
                }
            }
        });
        this.videoContainer.addView(this.thumbNailImageView);
        this.videoContainer.addView(this.playLarge);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public RelativeLayout getVideoContainer() {
        return this.videoContainer;
    }

    public void setVideoContentUrl(String str) {
        this.contentVideoPath = str;
        this.stateMachine.setNotPlaylist();
    }

    public void setVideoContentPlaylist(ArrayList<String> arrayList) {
        this.contentPlaylist = arrayList;
        this.stateMachine.setInPlaylist();
    }

    public void setVASTTag(String str) {
        this.vastTagBase = str;
        this.vastTag = str;
    }

    public void setCustomVideoAdProperties(CustomVideoAdProperties customVideoAdProperties) {
        if (customVideoAdProperties != null) {
            this.videoProperties = customVideoAdProperties;
            sendSkipOffsetSettings(customVideoAdProperties.getSkipOffset());
        }
    }

    private void sendSkipOffsetSettings(String str) {
        if (!TextUtils.isEmpty(str)) {
            Iterator<VideoInfoListener> it = this.videoInfoListeners.iterator();
            while (it.hasNext()) {
                VideoInfoListener next = it.next();
                if ((this.videoView instanceof PublisherVideoView) && (next instanceof VideoPlayer)) {
                    next.onVideoInfoReceived(new SkipOffset(str));
                } else if (!(next instanceof VideoPlayer)) {
                    next.onVideoInfoReceived(new SkipOffset(str));
                }
            }
        }
    }

    protected VASTParser getVastXML() {
        return this.vastXml;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getIsInterstitial() {
        return this.isInterstitial;
    }

    public void start(OXAdRequest oXAdRequest) {
        this.adRequest = oXAdRequest;
        if (!OXSettings.isSDKInit) {
            this.hasStarted = true;
            return;
        }
        if (this.isInFeedVideo) {
            setOnScreenListener();
            this.contentVideoPath = null;
            this.timeOffsets.clear();
            this.timeOffsets.add(Integer.valueOf(Offset.start()));
        }
        this.vastTag = generateVideoTagURL();
        OXLog.debug(TAG, "video video: generated url :" + this.vastTag);
        if (this.videoView == null) {
            this.videoPlayer = new VideoPlayer((Activity) context, this.videoPlayerCloseListener, this.preloadedAdVideoPath, null, this.vastXml, null, this.isPreloadedVideo, this.vastTag, this.playFullscreen, this.videoProperties, this);
            addVideoAdEventListener(this.videoPlayer);
            addVideoInfoListener(this.videoPlayer);
            if (this.contentVideoContainer != null) {
                setVideoContainer(this.videoPlayer);
            } else {
                this.videoPlayer.setVideoCompletionListener(setOnCompletionListener());
                this.videoPlayer.setVideoPreparedListener(setOnPreparedListener());
                this.videoPlayer.setVideoErrorListener(setOnErrorListener());
            }
            setVASTInterface(this.videoPlayer);
            if (this.contentVideoContainer != null) {
                this.contentVideoContainer.addView(this.videoPlayer);
            } else if (this.videoContainer != null) {
                this.videoContainer.addView(this.videoPlayer, 0);
            }
            setVideoView(this.videoPlayer.getVideoView());
        }
        if (TextUtils.isEmpty(this.contentVideoPath) && this.contentPlaylist != null) {
            this.contentVideoPath = this.contentPlaylist.get(0);
        }
        createVisitAdvertiserLink();
        this.isPreloadedVideo = (this.videoContainer instanceof VideoPlayer) && !TextUtils.isEmpty(((VideoPlayer) this.videoContainer).getPreloadedVideoPath());
        setOnCompletionListener();
        if (this.timeOffsets.contains(Integer.valueOf(Offset.start()))) {
            OXLog.debug("STATE_MACHINE", " loadVASTTag for start ad");
            loadVastTag();
        } else if (!this.isPreloadedVideo) {
            if (!TextUtils.isEmpty(this.contentVideoPath)) {
                startContentVideo();
            } else {
                this.isInterstitial = true;
                OXLog.debug("STATE_MACHINE", " loadVASTTag");
                loadVastTag();
            }
        } else {
            this.isInterstitial = true;
            this.vastXml = ((VideoPlayer) this.videoContainer).getVASTXml();
            Uri parse = Uri.parse(context.getFilesDir() + ((VideoPlayer) this.videoContainer).getPreloadedVideoPath());
            this.stateMachine.setAdPlaying();
            this.videoView.setVideoURI(parse);
        }
        if (this.updateThread == null) {
            startUp();
        } else {
            threadResume();
        }
    }

    private String generateVideoTagURL() {
        AdCallParameters adCallParameters = null;
        URLGenerator uRLGenerator = new URLGenerator(new GenerateURLCallback(), null);
        if (this.adRequest != null) {
            adCallParameters = this.adRequest.adCallParams;
        }
        String uRLParams = uRLGenerator.setURLParams(adCallParameters);
        Hashtable<String, String> parameters = uRLGenerator.getAdCallParams().getParameters();
        parameters.put("mimetype", "video/mp4");
        parameters.put("dr", "true");
        this.vastTag = uRLGenerator.getURL(uRLParams, parameters);
        return this.vastTag;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class GenerateURLCallback implements GenerateURLListener {
        private GenerateURLCallback() {
        }

        @Override // com.openx.core.network.GenerateURLListener
        public String customURLParams(String str, AdCallParameters adCallParameters, AdTruthListener adTruthListener) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(VideoAdManager.this.vastTag);
            adTruthListener.setDomain(sb.toString());
            return sb.toString();
        }
    }

    private void createSpinner() {
        this.spinner = new ProgressBar(context);
        this.spinner.setIndeterminate(true);
        this.spinner.setVisibility(0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(320, 50);
        layoutParams.addRule(13);
        this.spinner.setLayoutParams(layoutParams);
        this.videoContainer.addView(this.spinner);
    }

    private void createNonLinearAd() {
        this.nonLinearAd = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(320, 50);
        layoutParams.addRule(12);
        layoutParams.addRule(14);
        this.nonLinearAd.setLayoutParams(layoutParams);
        this.nonLinearAd.setBackgroundColor(-65536);
        this.nonLinearAd.setVisibility(4);
    }

    public void setVisitAdvertiserLink(View view) {
        this.visitAdvertiserLink = view;
        this.visitAdvertiserLink.setOnClickListener(new View.OnClickListener() { // from class: com.openx.model.video.VideoAdManager.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                VideoAdManager.this.visitAdvertiser();
            }
        });
        this.videoContainer.addView(this.visitAdvertiserLink);
    }

    public View getVisitAdvertiserLink() {
        return this.visitAdvertiserLink;
    }

    private void setErrorViewLink(TextView textView) {
        this.errorView = textView;
        this.errorView.setVisibility(4);
        this.errorView.setOnClickListener(new View.OnClickListener() { // from class: com.openx.model.video.VideoAdManager.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoAdManager.this.isError = false;
                VideoAdManager.this.errorView.setVisibility(4);
                VideoAdManager.this.spinner.setVisibility(0);
                if (VideoAdManager.this.isInterstitial) {
                    VideoAdManager.this.videoPlayerCloseListener.videoPlayerClosed();
                    return;
                }
                if (!VideoAdManager.this.isContentVideoPlaying) {
                    VideoAdManager.this.initializeAdVariables();
                } else if (VideoAdManager.this.contentPlaylist != null && VideoAdManager.this.contentPlaylist.indexOf(VideoAdManager.this.contentVideoPath) + 1 < VideoAdManager.this.contentPlaylist.size()) {
                    VideoAdManager.this.contentPlayhead = 0;
                    VideoAdManager.this.adPlayhead = 0;
                    VideoAdManager.this.contentVideoPath = (String) VideoAdManager.this.contentPlaylist.get(VideoAdManager.this.contentPlaylist.indexOf(VideoAdManager.this.contentVideoPath) + 1);
                }
                VideoAdManager.this.threadResume();
                if (!TextUtils.isEmpty(VideoAdManager.this.contentVideoPath)) {
                    VideoAdManager.this.startContentVideo();
                } else if (TextUtils.isEmpty(VideoAdManager.this.contentVideoPath) && VideoAdManager.this.isInFeedVideo) {
                    VideoAdManager.this.loadVastTag();
                    OXLog.debug(VideoAdManager.TAG, "native video: try loading the ad again, in case of error");
                }
            }
        });
        this.videoContainer.addView(this.errorView);
    }

    private void createVisitAdvertiserLink() {
        TextView textView = new TextView(context);
        if (getVisitAdvertiserLink() != null) {
            setVisitAdvertiserLinkText(textView, ((TextView) this.visitAdvertiserLink).getText().toString() != null ? ((TextView) this.visitAdvertiserLink).getText().toString() : "");
        } else {
            setVisitAdvertiserLinkText(textView, this.videoProperties != null ? this.videoProperties.visitAdvertiserText : null);
        }
        textView.setTextColor(-1);
        textView.setShadowLayer(1.0f, 1.0f, 1.0f, DrawableConstants.CtaButton.BACKGROUND_COLOR);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(14);
        textView.setLayoutParams(layoutParams);
        textView.setVisibility(4);
        setVisitAdvertiserLink(textView);
    }

    private void setVisitAdvertiserLinkText(TextView textView, String str) {
        if (str != null) {
            textView.setText(str);
        } else {
            textView.setText(context.getString(R.string.visit_advertiser_default));
        }
    }

    private void createErrorView() {
        this.errorView = new TextView(context);
        this.errorView.setBackgroundColor(Color.argb(50, 255, 255, 255));
        this.errorView.setPadding(20, 20, 20, 20);
        this.errorView.setText("Video Loading Error. Retry.");
        this.errorView.setTextColor(-1);
        this.errorView.setShadowLayer(1.0f, 1.0f, 1.0f, DrawableConstants.CtaButton.BACKGROUND_COLOR);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        this.errorView.setLayoutParams(layoutParams);
        setErrorViewLink(this.errorView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void visitAdvertiser() {
        try {
            this.videoView.pause();
            this.isPaused = true;
        } catch (IllegalStateException e) {
        }
        Iterator<ClickTracking> it = this.vastXml.getClickTrackings().iterator();
        while (it.hasNext()) {
            getTrackRequest(it.next().value, null);
        }
        String clickThroughUrl = this.vastXml.getClickThroughUrl(this.vastXml, 0);
        if (!TextUtils.isEmpty(clickThroughUrl)) {
            Intent intent = new Intent(context, AdBrowserActivity.class);
            intent.putExtra(AdBrowserActivity.EXTRA_URL, clickThroughUrl);
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            context.startActivity(intent);
        }
    }

    private void postVideoRequest(String str, ResponseHandler responseHandler) {
        PostNetworkTask postNetworkTask = new PostNetworkTask(responseHandler);
        BaseNetworkTask.GetUrlParams getUrlParams = new BaseNetworkTask.GetUrlParams();
        getUrlParams.userAgent = OXSettings.userAgent;
        if (str != null) {
            String[] split = str.split("\\?");
            if (split.length >= 2) {
                getUrlParams.url = split[0];
                getUrlParams.queryParams = split[1];
            }
        }
        postNetworkTask.execute(new BaseNetworkTask.GetUrlParams[]{getUrlParams});
    }

    private void sendGetVideoRequest(String str, ResponseHandler responseHandler) {
        GetNetworkTask getNetworkTask = new GetNetworkTask(responseHandler);
        BaseNetworkTask.GetUrlParams getUrlParams = new BaseNetworkTask.GetUrlParams();
        getUrlParams.url = str;
        getUrlParams.userAgent = OXSettings.userAgent;
        getNetworkTask.execute(new BaseNetworkTask.GetUrlParams[]{getUrlParams});
    }

    private void getTrackRequest(String str, ResponseHandler responseHandler) {
        GetNetworkTask getNetworkTask = new GetNetworkTask(responseHandler);
        BaseNetworkTask.GetUrlParams getUrlParams = new BaseNetworkTask.GetUrlParams();
        getUrlParams.url = str;
        getUrlParams.userAgent = OXSettings.userAgent;
        getNetworkTask.execute(new BaseNetworkTask.GetUrlParams[]{getUrlParams});
    }

    private void initTimeOffsets() {
        this.timeOffsets = new ArrayList<>();
    }

    public ArrayList<Integer> addTimeOffset(int i) {
        if (!this.timeOffsets.contains(Integer.valueOf(i))) {
            this.timeOffsets.add(Integer.valueOf(i));
        }
        return this.timeOffsets;
    }

    protected ArrayList<Integer> getTimeOffsets(int i) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        if (this.timeOffsets.contains(Integer.valueOf(Offset.start()))) {
            arrayList.add(0);
        }
        if (this.timeOffsets.contains(Integer.valueOf(Offset.firstQuartile()))) {
            arrayList.add(25);
        }
        if (this.timeOffsets.contains(Integer.valueOf(Offset.midpoint()))) {
            arrayList.add(50);
        }
        if (this.timeOffsets.contains(Integer.valueOf(Offset.thirdQuartile()))) {
            arrayList.add(75);
        }
        if (this.timeOffsets.contains(Integer.valueOf(Offset.end()))) {
            arrayList.add(100);
        }
        Iterator<Integer> it = this.timeOffsets.iterator();
        while (it.hasNext()) {
            Integer next = it.next();
            if (next.intValue() > -100 && next.intValue() < 0) {
                arrayList.add(Integer.valueOf(next.intValue() * (-1)));
            }
            if (next.intValue() > 0 && next.intValue() <= i) {
                arrayList.add(Integer.valueOf(Math.round((next.intValue() / i) * 100.0f)));
            } else if (next.intValue() > i && !arrayList.contains(100) && !this.timeOffsets.contains(Integer.valueOf(Offset.end()))) {
                this.timeOffsets.add(Integer.valueOf(Offset.end()));
                arrayList.add(100);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class InterstitialThread extends Thread {
        private static volatile boolean PAUSED = false;
        private static volatile boolean SHOW = true;
        private static volatile boolean finished;

        public InterstitialThread(Runnable runnable, String str) {
            super(runnable, str);
        }

        public void beforeStart() {
            unpause();
            SHOW = true;
        }

        public void beforeStop() {
            SHOW = false;
        }

        public void pause() {
            PAUSED = true;
        }

        public synchronized void unpause() {
            PAUSED = false;
            notify();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadVastTag() {
        if (this.videoAdRequestListener != null) {
            this.videoAdRequestListener.onAdRequested();
        }
        postVideoRequest(this.vastTag, this);
    }

    private void startUp() {
        if (this.status < 0) {
            this.updateThread = new InterstitialThread(new Runnable() { // from class: com.openx.model.video.VideoAdManager.6
                private void trackEvent() {
                    if (!VideoAdManager.this.isAdSkipped) {
                        if (VideoAdManager.this.percentPlayed >= 25.0d && !VideoAdManager.this.q1) {
                            VideoAdManager.this.q1 = true;
                            VideoAdManager.this.track(VideoAdEvent.Event.AD_FIRSTQUARTILE);
                        }
                        if (VideoAdManager.this.percentPlayed >= 50.0d && !VideoAdManager.this.q2) {
                            VideoAdManager.this.q2 = true;
                            VideoAdManager.this.track(VideoAdEvent.Event.AD_MIDPOINT);
                        }
                        if (VideoAdManager.this.percentPlayed >= 75.0d && !VideoAdManager.this.q3) {
                            VideoAdManager.this.track(VideoAdEvent.Event.AD_THIRDQUARTILE);
                            VideoAdManager.this.q3 = true;
                        }
                    }
                }

                @Override // java.lang.Runnable
                public void run() {
                    int currentPosition;
                    int currentPosition2;
                    while (VideoAdManager.this.status != 1) {
                        OXLog.info("VAST", "VideoAdManager running 0 " + VideoAdManager.this.status);
                        if (VideoAdManager.this.updateThread != null) {
                            synchronized (VideoAdManager.this.updateThread) {
                                while (InterstitialThread.PAUSED) {
                                    try {
                                        OXLog.info("THREADS", "VideoAdManager running 0.5");
                                        VideoAdManager.this.updateThread.wait();
                                    } catch (InterruptedException e) {
                                        e.printStackTrace();
                                    }
                                }
                            }
                        }
                        if (!InterstitialThread.PAUSED) {
                            try {
                                if (VideoAdManager.this.isContentVideoPlaying) {
                                    if (VideoAdManager.this.videoView != null && VideoAdManager.this.videoView.isPlaying() && (currentPosition2 = VideoAdManager.this.videoView.getCurrentPosition()) > 0) {
                                        VideoAdManager.this.contentPlayhead = currentPosition2;
                                    }
                                    double currentPosition3 = (VideoAdManager.this.videoView.getCurrentPosition() / VideoAdManager.this.videoView.getDuration()) * 100.0d;
                                    if (currentPosition3 >= VideoAdManager.this.percentPlayed || currentPosition3 <= 0.0d || VideoAdManager.this.percentPlayed > 0.0d) {
                                    }
                                    VideoAdManager.this.percentPlayed = currentPosition3;
                                } else if (VideoAdManager.this.videoView != null) {
                                    if (VideoAdManager.this.videoView.isPlaying() && (currentPosition = VideoAdManager.this.videoView.getCurrentPosition()) > 0) {
                                        VideoAdManager.this.adPlayhead = currentPosition;
                                    }
                                    double currentPosition4 = (VideoAdManager.this.videoView.getCurrentPosition() / VideoAdManager.this.videoView.getDuration()) * 100.0d;
                                    OXLog.debug("DIF", "quartiles: " + currentPosition4 + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + VideoAdManager.this.percentPlayed);
                                    if (currentPosition4 >= 25.0d && currentPosition4 - VideoAdManager.this.percentPlayed > VideoAdManager.this.scrubThreshhold && !VideoAdManager.this.q1) {
                                        OXLog.debug("DIF", "q1 true");
                                        VideoAdManager.this.q1 = true;
                                    }
                                    if (currentPosition4 >= 50.0d && currentPosition4 - VideoAdManager.this.percentPlayed > VideoAdManager.this.scrubThreshhold && !VideoAdManager.this.q2) {
                                        OXLog.debug("DIF", "q2 true");
                                        VideoAdManager.this.q2 = true;
                                    }
                                    if (currentPosition4 < 75.0d || currentPosition4 - VideoAdManager.this.percentPlayed <= VideoAdManager.this.scrubThreshhold || VideoAdManager.this.q3) {
                                        VideoAdManager.this.percentPlayed = currentPosition4;
                                    } else {
                                        OXLog.debug("DIF", "q3 true");
                                        VideoAdManager.this.q3 = true;
                                    }
                                }
                            } catch (IllegalStateException e2) {
                            }
                            if (!VideoAdManager.this.isContentVideoPlaying && VideoAdManager.this.vastXml != null) {
                                trackEvent();
                            }
                            OXLog.debug("TRACKTIME", "isContentVideoPlaying: " + VideoAdManager.this.isContentVideoPlaying + " canTrackTimeOffsets: " + VideoAdManager.this.canTrackTimeOffsets + "  isContentPaused(): " + VideoAdManager.this.isContentPaused());
                            if (VideoAdManager.this.isContentVideoPlaying && VideoAdManager.this.canTrackTimeOffsets && !VideoAdManager.this.isContentPaused()) {
                                VideoAdManager.this.trackTimeOffsets();
                            }
                        }
                        try {
                            Thread.sleep(1000L);
                        } catch (InterruptedException e3) {
                        }
                    }
                    OXLog.info("VAST", "Terminating control thread.");
                    VideoAdManager.this.status = 1;
                    VideoAdManager.this.updateThread = null;
                }
            }, "VideoAdManager -[ " + this.vastTag + "]");
            this.updateThread.beforeStart();
            this.updateThread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trackTimeOffsets() {
        int i;
        OXLog.debug(TAG, "percentPlayed: " + this.percentPlayed);
        try {
            i = this.videoView.getCurrentPosition();
        } catch (IllegalStateException e) {
            i = 0;
        }
        if (this.timeOffsets.contains(Integer.valueOf(Offset.firstQuartile())) && this.percentPlayed >= 25.0d && this.percentPlayed < 26.0d && this.justPlayedAdId != Offset.firstQuartile()) {
            this.justPlayedAdId = Offset.firstQuartile();
            OXLog.debug(TAG, "adBreak: of first quartile is called " + this.justPlayedAdId);
            adBreak();
        } else if (this.timeOffsets.contains(Integer.valueOf(Offset.midpoint())) && this.percentPlayed >= 50.0d && this.percentPlayed < 51.0d && this.justPlayedAdId != Offset.midpoint()) {
            this.justPlayedAdId = Offset.midpoint();
            OXLog.debug(TAG, "adBreak: of midpoint is called " + this.justPlayedAdId);
            adBreak();
        } else if (this.timeOffsets.contains(Integer.valueOf(Offset.thirdQuartile())) && this.percentPlayed >= 75.0d && this.percentPlayed < 76.0d && this.justPlayedAdId != Offset.thirdQuartile()) {
            this.justPlayedAdId = Offset.thirdQuartile();
            OXLog.debug(TAG, "adBreak: of 3rd quartile is called " + this.justPlayedAdId);
            adBreak();
        } else {
            Iterator<Integer> it = this.timeOffsets.iterator();
            while (it.hasNext()) {
                Integer next = it.next();
                if (next.intValue() > -100 && next.intValue() < 0) {
                    if (Math.abs((next.intValue() * (-1)) - this.percentPlayed) <= 0.5d && this.justPlayedAdId != next.intValue()) {
                        this.justPlayedAdId = next.intValue();
                        OXLog.debug(TAG, "adBreak: of 5% is called " + this.justPlayedAdId);
                        adBreak();
                        return;
                    }
                } else if (i >= next.intValue() && i < next.intValue() + 1000 && this.justPlayedAdId != next.intValue()) {
                    this.justPlayedAdId = next.intValue();
                    OXLog.debug(TAG, "adBreak: final one is called " + this.justPlayedAdId);
                    adBreak();
                    return;
                }
            }
        }
    }

    private void adBreak() {
        try {
            this.contentPlayhead = this.videoView.getCurrentPosition() + 100;
        } catch (IllegalStateException e) {
        }
        ((Activity) context).runOnUiThread(new Runnable() { // from class: com.openx.model.video.VideoAdManager.7
            @Override // java.lang.Runnable
            public void run() {
                VideoAdManager.this.spinner.setVisibility(0);
            }
        });
        this.videoView.stopPlayback();
        initializeAdVariables();
        this.canTrackTimeOffsets = false;
        OXLog.debug("STATE_MACHINE", " loadVASTTag at an adbreak ");
        loadVastTag();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializeAdVariables() {
        this.isAdSkipped = false;
        this.vastXml = null;
        this.percentPlayed = 0.0d;
        this.q1 = false;
        this.q2 = false;
        this.q3 = false;
        this.q4 = false;
    }

    public boolean getIsContentVideoPlaying() {
        return this.isContentVideoPlaying;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startContentVideo() {
        if (!TextUtils.isEmpty(this.contentVideoPath)) {
            this.spinner.setVisibility(0);
            this.isContentVideoPlaying = true;
            this.canTrackTimeOffsets = true;
            this.isEndOfVideo = false;
            final Uri parse = Uri.parse(this.contentVideoPath);
            ((Activity) context).runOnUiThread(new Runnable() { // from class: com.openx.model.video.VideoAdManager.8
                @Override // java.lang.Runnable
                public void run() {
                    if (VideoAdManager.this.videoView != null && parse != null) {
                        if (VideoAdManager.this.contentVideoView != null) {
                            OXLog.debug("STATE_MACHINE", " make ad view invisible ");
                            VideoAdManager.this.videoContainer.setVisibility(4);
                            VideoAdManager.this.videoView.setVisibility(4);
                            VideoAdManager.this.contentVideoView.setVisibility(0);
                            VideoAdManager.this.swapVideoView = VideoAdManager.this.videoView;
                            VideoAdManager.this.videoView = VideoAdManager.this.contentVideoView;
                        }
                        VideoAdManager.this.isContentVideoPlaying = true;
                        VideoAdManager.this.stateMachine.setContentPlaying();
                        VideoAdManager.this.stateMachine.setPreparing();
                        VideoAdManager.this.videoView.stopPlayback();
                        OXLog.debug("STATE_MACHINE", " startContentVideo 2353");
                        VideoAdManager.this.videoView.setVideoURI(parse);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getIsError() {
        return this.isError;
    }

    public void threadStop() {
        if (this.updateThread != null && this.updateThread.isAlive()) {
            OXLog.info("VAST", "ThreadKill 1: adPlayhead : " + this.adPlayhead);
            this.status = 1;
            if (this.thumbnailTask != null) {
                this.thumbnailTask.cancel(true);
            }
            if (this.videoContainer instanceof VideoPlayer) {
                ((VideoPlayer) this.videoContainer).getOrientationManager().disableOrientationListener();
                ((VideoPlayer) this.videoContainer).getOrientationManager();
            }
        }
    }

    public void threadResume() {
        if (this.updateThread != null && this.updateThread.isAlive()) {
            this.updateThread.beforeStart();
            if (this.videoView != null && this.isCustomVideoView) {
                this.videoView.start();
                return;
            }
            return;
        }
        this.status = -1;
        startUp();
        if (this.updateThread != null && this.updateThread.isAlive()) {
            this.updateThread.beforeStart();
            if (this.videoView == null || !this.isCustomVideoView) {
                return;
            }
            this.videoView.start();
        }
    }

    private VideoPreparedListener setOnPreparedListener() {
        return new VideoPreparedListener() { // from class: com.openx.model.video.VideoAdManager.9
            @Override // com.openx.model.vast.VideoPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                VideoAdManager.this.mediaPlayer = mediaPlayer;
                VideoAdManager.this.stateMachine.setPrepared();
            }
        };
    }

    private void contentPreparedHandler() {
        if (this.visitAdvertiserLink != null) {
            this.visitAdvertiserLink.setVisibility(4);
        }
        try {
            ArrayList<Integer> timeOffsets = getTimeOffsets(this.mediaPlayer.getDuration());
            Iterator<VideoInfoListener> it = this.videoInfoListeners.iterator();
            while (it.hasNext()) {
                VideoInfoListener next = it.next();
                if ((this.videoView instanceof PublisherVideoView) && (next instanceof VideoPlayer)) {
                    next.onVideoInfoReceived(new AdBreaks(timeOffsets));
                } else if (!(next instanceof VideoPlayer)) {
                    next.onVideoInfoReceived(new AdBreaks(timeOffsets));
                }
            }
        } catch (IllegalStateException e) {
        }
        OXLog.debug("STATE_MACHINE", " onPrepared 2650");
        this.videoView.seekTo(this.contentPlayhead);
        if (!canAutoPlay() && this.thumbNailImageView.getVisibility() == 0) {
            this.videoView.pause();
            return;
        }
        if (!this.isPaused) {
            this.videoView.start();
        }
        this.stateMachine.setStarted();
    }

    private void endContentPreparedEndOfPlayListHandler() {
        this.videoView.seekTo(0);
        this.videoView.pause();
        this.stateMachine.setPaused();
        this.isEndOfPlaylist = false;
        this.isEndOfVideo = false;
        this.canTrackTimeOffsets = true;
    }

    private void preparedHandler() {
        tempVideoContainer = null;
        this.isError = false;
        this.spinner.setVisibility(8);
        this.adPlayhead = 0;
        if (this.videoView instanceof PublisherVideoView) {
            ((PublisherVideoView) this.videoView).setCanOverrideDraw(false);
        }
        if (canAutoPlay() && this.stateMachine.isMuted()) {
            this.stateMachine.setMuted();
        }
    }

    private void adPreparedHandler() {
        if (this.visitAdvertiserLink != null) {
            this.visitAdvertiserLink.setVisibility(0);
        }
        if (!canAutoPlay() && this.thumbNailImageView.getVisibility() == 0) {
            this.videoView.pause();
            this.stateMachine.setPaused();
            return;
        }
        if (!this.isPaused) {
            this.videoView.start();
        }
        if (this.adPlayhead > 0) {
            this.videoView.seekTo(this.adPlayhead);
            this.adPlayhead = 0;
        } else {
            if (!this.stateMachine.getIsOrientationChanged()) {
                track(VideoAdEvent.Event.AD_START);
            }
            if (canAutoPlay() && !this.stateMachine.getIsOrientationChanged()) {
                setTrackingImpression();
                this.percentPlayed = 0.0d;
                this.q1 = false;
                this.q2 = false;
                this.q3 = false;
                this.q4 = false;
            }
        }
        this.stateMachine.setStarted();
    }

    private VideoErrorListener setOnErrorListener() {
        return new VideoErrorListener() { // from class: com.openx.model.video.VideoAdManager.10
            @Override // com.openx.model.vast.VideoErrorListener
            public void onError(MediaPlayer mediaPlayer, int i, int i2) {
                VideoAdManager.this.isError = true;
                VideoAdManager.this.errorView.setVisibility(0);
                VideoAdManager.this.spinner.setVisibility(4);
                mediaPlayer.reset();
            }
        };
    }

    private VideoCompletionListener setOnCompletionListener() {
        return new VideoCompletionListener() { // from class: com.openx.model.video.VideoAdManager.11
            @Override // com.openx.model.vast.VideoCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                VideoAdManager.this.stateMachine.setCompleted();
            }
        };
    }

    private void onComplete() {
        if (this.isContentVideoPlaying) {
            this.isEndOfVideo = true;
        } else {
            this.isEndOfVideo = false;
        }
        if (this.contentPlaylist != null && this.contentPlaylist.indexOf(this.contentVideoPath) + 1 < this.contentPlaylist.size()) {
            if (!this.isInterstitial) {
            }
            this.contentPlayhead = 0;
            this.adPlayhead = 0;
            initializeAdVariables();
            this.isEndOfVideo = false;
            if (this.contentCompletionListener != null) {
                this.contentCompletionListener.onContentCompletion(this.contentVideoPath, false);
            }
            this.contentVideoPath = this.contentPlaylist.get(this.contentPlaylist.indexOf(this.contentVideoPath) + 1);
            start(this.adRequest);
            return;
        }
        if (this.contentCompletionListener != null) {
            this.contentCompletionListener.onContentCompletion(this.contentVideoPath, true);
        }
        this.isContentVideoPlaying = true;
        startContentVideo();
        this.isEndOfVideo = true;
        this.stateMachine.setEndOfPlaylist();
        this.isEndOfPlaylist = true;
        OXLog.debug("STATE_MACHINE", " justPlayedAdId = 0 ");
        this.justPlayedAdId = 0;
        callbackEvent(VideoAdEvent.Event.CONTENT_PLAYLIST_COMPLETE);
    }

    private void setTrackingImpression() {
        if (this.vastXml != null) {
            Iterator<Impression> it = this.vastXml.getImpressions().iterator();
            while (it.hasNext()) {
                getTrackRequest(it.next().value, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void track(VideoAdEvent.Event event) {
        List<String> trackingByType;
        if (!this.isContentVideoPlaying && !this.isAdSkipped && this.vastXml != null && (trackingByType = this.vastXml.getTrackingByType(event)) != null && trackingByType.size() > 0) {
            String[] strArr = new String[trackingByType.size()];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < ((String[]) trackingByType.toArray(strArr)).length) {
                    getTrackRequest(((String[]) trackingByType.toArray(strArr))[i2], null);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.openx.core.network.ResponseHandler
    public void processResponse(BaseNetworkTask.GetUrlResult getUrlResult) {
        if (!getUrlResult.response.contains("VAST version")) {
            processError("VAST Error: ");
            return;
        }
        OXLog.debug("STATE_MACHINE", " processResponse() 3025");
        this.responseNum++;
        VASTParser vASTParser = null;
        if (this.vastXml == null) {
            try {
                this.vastXml = new VASTParser(context, getUrlResult.response);
            } catch (VastParseError e) {
                processError("VAST Error: ");
            }
        } else {
            try {
                vASTParser = new VASTParser(context, getUrlResult.response);
            } catch (VastParseError e2) {
                processError("VAST Error: ");
            }
        }
        VASTParser vASTParser2 = this.vastXml;
        while (vASTParser2.getWrappedVASTXml() != null) {
            vASTParser2 = vASTParser2.getWrappedVASTXml();
        }
        if (vASTParser != null) {
            vASTParser2.setWrapper(vASTParser);
        }
        String vASTAdTagURI = vASTParser2.getVASTAdTagURI(vASTParser != null ? vASTParser : vASTParser2);
        if (!TextUtils.isEmpty(vASTAdTagURI)) {
            if (this.responseNum < this.nestingLimit) {
                sendGetVideoRequest(vASTAdTagURI, this);
                return;
            }
            Utils.log(this, "VAST Wrapper limit reached: " + this.nestingLimit);
            processError("VAST Wrapper limit reached: " + this.nestingLimit);
            this.responseNum = 0;
            return;
        }
        String mediaFileUrl = vASTParser != null ? vASTParser.getMediaFileUrl(vASTParser, 0) : this.vastXml.getMediaFileUrl(this.vastXml, 0);
        this.vastXml.getAllTrackings(this.vastXml, 0);
        this.vastXml.getImpressions(this.vastXml, 0);
        this.vastXml.getClickTrackings(this.vastXml, 0);
        sendSkipOffsetSettings(this.vastXml.getSkipOffset(this.vastXml, 0));
        if (!TextUtils.isEmpty(mediaFileUrl) && !mediaFileUrl.equals("invalid media file")) {
            OXLog.info("NESTED", "*******--->" + mediaFileUrl);
            this.adURI = Uri.parse(mediaFileUrl);
            if (!canAutoPlay()) {
                this.thumbnailTask = new VideoThumbnailTask(context, this.thumbNailImageView, new VideoThumbnailTask.ThumbnailCreatedListener() { // from class: com.openx.model.video.VideoAdManager.12
                    @Override // com.openx.view.video.network.VideoThumbnailTask.ThumbnailCreatedListener
                    public void thumbnailCreated(File file) {
                        OXLog.debug("STATE_MACHINE", " calling prepareVideo() ");
                        VideoAdManager.this.prepareVideo();
                        VideoAdManager.this.thumbNailImageView.setVisibility(0);
                        VideoAdManager.this.playLarge.setVisibility(0);
                        VideoAdManager.this.spinner.setVisibility(8);
                    }

                    @Override // com.openx.core.network.ResponseHandler
                    public void processResponse(BaseNetworkTask.GetUrlResult getUrlResult2) {
                    }

                    @Override // com.openx.core.network.ResponseHandler
                    public void processError(String str) {
                    }

                    @Override // com.openx.core.network.ResponseHandler
                    public void processError(String str, Throwable th) {
                    }
                });
                BaseNetworkTask.GetUrlParams getUrlParams = new BaseNetworkTask.GetUrlParams();
                getUrlParams.url = mediaFileUrl;
                getUrlParams.userAgent = OXSettings.userAgent;
                this.thumbnailTask.execute(new BaseNetworkTask.GetUrlParams[]{getUrlParams});
                return;
            }
            OXLog.debug("STATE_MACHINE", " calling prepareVideo()");
            prepareVideo();
            return;
        }
        processError("invalid path or media file type");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareVideo() {
        if (this.swapVideoView != null) {
            this.videoContainer.setVisibility(0);
            this.swapVideoView.setVisibility(0);
            this.contentVideoView.setVisibility(4);
            this.videoView = this.swapVideoView;
        }
        this.isContentVideoPlaying = false;
        OXLog.debug("STATE_MACHINE", "prepareVideo() setAdState(true)");
        this.stateMachine.setAdPlaying();
        try {
            this.videoView.stopPlayback();
            this.stateMachine.setPreparing();
            this.videoView.setVideoURI(this.adURI);
        } catch (Exception e) {
        }
    }

    public void setAutoPlayConfigs(AutoPlayConfigs autoPlayConfigs) {
        this.autoPlayConfig = autoPlayConfigs;
    }

    public void setMuteOnAutoPlay(boolean z) {
        this.isMuteOnAutoPlay = z;
        this.sendMuteEvents = false;
        if (z) {
            this.stateMachine.setMuted();
        } else {
            this.stateMachine.setUnMuted();
        }
    }

    public boolean getIsMuteOnAutoPlay() {
        return this.isMuteOnAutoPlay;
    }

    public boolean canAutoPlay() {
        if (this.autoPlayConfig != null) {
            switch (this.autoPlayConfig) {
                case NoAutoPlay:
                    return false;
                case AlwaysAutoPlay:
                    return true;
                case WifiOnlyAutoPlay:
                    return ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1).isConnected();
                default:
                    return false;
            }
        }
        return true;
    }

    public boolean isAdCompletedPlayBack() {
        return this.thumbNailImageView.getVisibility() == 0;
    }

    @Override // com.openx.core.network.ResponseHandler
    public void processError(String str) {
        this.isError = true;
        this.errorView.setVisibility(0);
        this.spinner.setVisibility(4);
        threadStop();
    }

    @Override // com.openx.core.network.ResponseHandler
    public void processError(String str, Throwable th) {
        this.isError = true;
        this.errorView.setVisibility(0);
        this.spinner.setVisibility(4);
        threadStop();
    }

    public void addVideoAdEventListener(VideoAdEventListener videoAdEventListener) {
        this.videoAdEventListeners.add(videoAdEventListener);
    }

    public void addVideoInfoListener(VideoInfoListener videoInfoListener) {
        this.videoInfoListeners.add(videoInfoListener);
    }

    public void callbackEvent(VideoAdEvent.Event event) {
        Iterator<VideoAdEventListener> it = this.videoAdEventListeners.iterator();
        while (it.hasNext()) {
            VideoAdEventListener next = it.next();
            if (!(next instanceof VideoAdManager)) {
                if ((this.videoView instanceof PublisherVideoView) && (next instanceof VideoPlayer)) {
                    next.onVideoAdEvent(event);
                } else if (!(next instanceof VideoPlayer)) {
                    next.onVideoAdEvent(event);
                }
            }
        }
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + event);
        switch (event) {
            case AD_PAUSE:
                adPauseHandler();
                return;
            case CONTENT_PAUSE:
                contentPauseHandler();
                return;
            case AD_START:
                adStartHandler();
                return;
            case AD_RESUME:
                adResumeHandler();
                return;
            case CONTENT_START:
                contentStartHandler();
                return;
            case CONTENT_RESUME:
                contentResumeHandler();
                return;
            case AD_PREPARING:
            case CONTENT_PREPARING:
            case TOUCH:
            case CONTENT_MUTE:
            case CONTENT_UNMUTE:
            default:
                return;
            case CONTENT_PREPARED:
                OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " contentPreparedHandler ");
                contentPreparedHandler();
                preparedHandler();
                return;
            case AD_PREPARED:
                OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " adPreparedHandler ");
                adPreparedHandler();
                preparedHandler();
                return;
            case AD_COMPLETE:
                OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " adCompleteHandler ");
                adCompleteHandler();
                OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " completeHandler ");
                completeHandler();
                return;
            case CONTENT_COMPLETE:
                OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " contentCompleteHandler ");
                contentCompleteHandler();
                OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " completeHandler ");
                completeHandler();
                return;
            case AD_SKIP:
                OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " adSkippedHandler ");
                adSkippedHandler();
                OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " adCompleteHandler ");
                adCompleteHandler();
                OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " completeHandler ");
                completeHandler();
                return;
            case CONTENT_PLAYLIST_COMPLETE:
                OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " endContentPreparedEndOfPlayListHandler ");
                endContentPreparedEndOfPlayListHandler();
                return;
            case AD_EXPAND:
            case AD_FULLSCREEN:
                adFullscreenHandler();
                return;
            case CONTENT_FULLSCREEN:
                contentFullscreenHandler();
                return;
            case AD_COLLAPSE:
            case AD_EXITFULLSCREEN:
                adExitFullscreenHandler();
                return;
            case CONTENT_EXITFULLSCREEN:
                contentExitFullscreenHandler();
                return;
            case AD_MUTE:
                adMuteHandler();
                return;
            case AD_UNMUTE:
                adUnmuteHandler();
                return;
            case AD_CLOSELINEAR:
                adCloseLinearHandler();
                return;
            case AD_CLOSE:
                adCloseHandler();
                return;
            case CONTENT_CLOSE:
                contentCloseHandler();
                return;
            case AD_WINDOW_HAS_FOCUS:
                adWindowFocusHandler();
                return;
            case AD_WINDOW_HAS_NO_FOCUS:
                adWindowNoFocusHandler();
                return;
            case CONTENT_WINDOW_HAS_FOCUS:
                contentWindowFocusHandler();
                return;
            case CONTENT_WINDOW_HAS_NO_FOCUS:
                contentWindowNoFocusHandler();
                return;
        }
    }

    private void adWindowFocusHandler() {
        bubbleUpWindowFocusedEventDirectlyToView(VideoAdEvent.Event.AD_RESUME);
        this.isPaused = false;
        threadResume();
    }

    private void adWindowNoFocusHandler() {
        bubbleUpWindowFocusedEventDirectlyToView(VideoAdEvent.Event.AD_PAUSE);
        threadStop();
    }

    private void contentWindowFocusHandler() {
        bubbleUpWindowFocusedEventDirectlyToView(VideoAdEvent.Event.CONTENT_RESUME);
        threadResume();
    }

    private void contentWindowNoFocusHandler() {
        bubbleUpWindowFocusedEventDirectlyToView(VideoAdEvent.Event.CONTENT_PAUSE);
        threadStop();
    }

    private void bubbleUpWindowFocusedEventDirectlyToView(VideoAdEvent.Event event) {
        Iterator<VideoAdEventListener> it = this.videoAdEventListeners.iterator();
        while (it.hasNext()) {
            VideoAdEventListener next = it.next();
            if (!(next instanceof VideoAdManager)) {
                if ((this.videoView instanceof PublisherVideoView) && (next instanceof VideoPlayer)) {
                    next.onVideoAdEvent(event);
                } else if (!(next instanceof VideoPlayer)) {
                    next.onVideoAdEvent(event);
                }
            }
        }
    }

    private void adFullscreenHandler() {
        makeFullScreen();
        if (!isAdCompletedPlayBack()) {
            track(VideoAdEvent.Event.AD_FULLSCREEN);
            track(VideoAdEvent.Event.AD_EXPAND);
        }
    }

    private void contentFullscreenHandler() {
        makeFullScreen();
    }

    private void adExitFullscreenHandler() {
        makeCollapsedScreen();
        if (!isAdCompletedPlayBack()) {
            track(VideoAdEvent.Event.AD_EXITFULLSCREEN);
            track(VideoAdEvent.Event.AD_COLLAPSE);
        }
    }

    private void contentExitFullscreenHandler() {
        makeCollapsedScreen();
    }

    private void completeHandler() {
        try {
            ((AudioManager) context.getSystemService("audio")).abandonAudioFocus(null);
        } catch (Exception e) {
        }
    }

    private void contentCompleteHandler() {
        OXLog.debug(TAG, "video ad manager: contentPlayhead to 0, on contentcompletion");
        this.contentPlayhead = 0;
        if (!this.isEndOfVideo) {
            this.isEndOfVideo = true;
            initializeAdVariables();
            if (this.timeOffsets.contains(Integer.valueOf(Offset.end()))) {
                this.spinner.setVisibility(0);
                OXLog.debug("STATE_MACHINE", " loadVASTTag to get the Post roll ad on content completion");
                loadVastTag();
                return;
            }
            onComplete();
            return;
        }
        onComplete();
    }

    private void adCompleteHandler() {
        double currentPosition = (this.videoView.getCurrentPosition() / this.videoView.getDuration()) * 100.0d;
        OXLog.debug("DIF", "adComplete: " + currentPosition + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.percentPlayed);
        if (currentPosition > 75.0d && currentPosition - this.percentPlayed <= this.scrubThreshhold && !this.isAdSkipped && !this.q4) {
            OXLog.debug("DIF", " COMPLETE");
            this.q4 = true;
            track(VideoAdEvent.Event.AD_COMPLETE);
        }
        this.adPlayhead = 0;
        if (!this.isEndOfVideo) {
            this.adPlayhead = 0;
            this.isEndOfVideo = false;
            if ((this.isInterstitial || this.isInFeedVideo) && !this.isThumbnailClicked && !isAdCompletedPlayBack()) {
                this.thumbnailTask = new VideoThumbnailTask(context, this.thumbNailImageView, new VideoThumbnailTask.ThumbnailCreatedListener() { // from class: com.openx.model.video.VideoAdManager.13
                    @Override // com.openx.view.video.network.VideoThumbnailTask.ThumbnailCreatedListener
                    public void thumbnailCreated(File file) {
                        VideoAdManager.this.isThumbnailClicked = false;
                        VideoAdManager.this.thumbNailImageView.setVisibility(0);
                        VideoAdManager.this.playLarge.setVisibility(0);
                        VideoAdManager.this.spinner.setVisibility(8);
                    }

                    @Override // com.openx.core.network.ResponseHandler
                    public void processResponse(BaseNetworkTask.GetUrlResult getUrlResult) {
                    }

                    @Override // com.openx.core.network.ResponseHandler
                    public void processError(String str) {
                    }

                    @Override // com.openx.core.network.ResponseHandler
                    public void processError(String str, Throwable th) {
                    }
                });
                BaseNetworkTask.GetUrlParams getUrlParams = new BaseNetworkTask.GetUrlParams();
                if (this.adURI != null) {
                    getUrlParams.url = this.adURI.toString();
                } else if (this.videoContainer instanceof VideoPlayer) {
                    getUrlParams.url = context.getFilesDir() + ((VideoPlayer) this.videoContainer).getPreloadedVideoPath();
                }
                getUrlParams.userAgent = OXSettings.userAgent;
                this.thumbnailTask.execute(new BaseNetworkTask.GetUrlParams[]{getUrlParams});
            } else if ((this.isInterstitial || this.isInFeedVideo) && this.isThumbnailClicked) {
                this.isThumbnailClicked = false;
                this.thumbNailImageView.setVisibility(0);
                this.playLarge.setVisibility(0);
                this.spinner.setVisibility(8);
            }
            if (!TextUtils.isEmpty(this.contentVideoPath) || (this.contentPlaylist != null && !this.contentPlaylist.isEmpty())) {
                if (this.videoView instanceof PublisherVideoView) {
                    ((PublisherVideoView) this.videoView).setCanOverrideDraw(true);
                }
                startContentVideo();
                return;
            }
            return;
        }
        onComplete();
    }

    private void adSkippedHandler() {
    }

    private void contentStartHandler() {
        this.isPaused = false;
    }

    private void contentResumeHandler() {
        this.isPaused = false;
    }

    private void adStartHandler() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]]  making visitAdvertiserLink VISIBLE");
        if (this.visitAdvertiserLink != null) {
            this.visitAdvertiserLink.setVisibility(0);
        }
        this.isPaused = false;
    }

    private void adResumeHandler() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]]  making visitAdvertiserLink VISIBLE");
        if (this.visitAdvertiserLink != null) {
            this.visitAdvertiserLink.setVisibility(0);
        }
        this.isPaused = false;
        track(VideoAdEvent.Event.AD_RESUME);
    }

    private void adPauseHandler() {
        this.isPaused = true;
        track(VideoAdEvent.Event.AD_PAUSE);
    }

    private void contentPauseHandler() {
        this.isPaused = true;
    }

    private void adMuteHandler() {
        if (this.sendMuteEvents) {
            track(VideoAdEvent.Event.AD_MUTE);
            this.sendMuteEvents = false;
            return;
        }
        this.stateMachine.setIsOrientationChanged(false);
        this.sendMuteEvents = false;
    }

    private void adUnmuteHandler() {
        track(VideoAdEvent.Event.AD_UNMUTE);
    }

    private void adCloseLinearHandler() {
        track(VideoAdEvent.Event.AD_CLOSELINEAR);
        close();
    }

    private void adCloseHandler() {
        track(VideoAdEvent.Event.AD_CLOSE);
        close();
    }

    private void contentCloseHandler() {
        close();
    }

    private void close() {
        threadStop();
    }

    private void setVASTInterface(VASTPlayer vASTPlayer) {
        vASTPlayer.setVASTInterface(new VASTInterface() { // from class: com.openx.model.video.VideoAdManager.14
            @Override // com.openx.model.vast.VASTInterface
            public void start() {
                VideoAdManager.this.percentPlayed = 0.0d;
                VideoAdManager.this.q1 = false;
                VideoAdManager.this.q2 = false;
                VideoAdManager.this.q3 = false;
                VideoAdManager.this.q4 = false;
                VideoAdManager.this.isPaused = false;
            }

            @Override // com.openx.model.vast.VASTInterface
            public void resume() {
                VideoAdManager.this.playClick();
            }

            @Override // com.openx.model.vast.VASTInterface
            public void pause() {
                OXLog.info("VAST", "vastPause()");
                VideoAdManager.this.playClick();
            }

            @Override // com.openx.model.vast.VASTInterface
            public void expand() {
                fullScreen();
            }

            @Override // com.openx.model.vast.VASTInterface
            public void fullScreen() {
                VideoAdManager.this.stateMachine.setExpanded();
            }

            @Override // com.openx.model.vast.VASTInterface
            public void collapse() {
                exitFullScreen();
            }

            @Override // com.openx.model.vast.VASTInterface
            public void exitFullScreen() {
                VideoAdManager.this.stateMachine.setCollapsed();
            }

            @Override // com.openx.model.vast.VASTInterface
            public void mute() {
                VideoAdManager.this.sendMuteEvents = true;
                VideoAdManager.this.stateMachine.setMuted();
            }

            @Override // com.openx.model.vast.VASTInterface
            public void unmute() {
                VideoAdManager.this.sendMuteEvents = true;
                VideoAdManager.this.stateMachine.setUnMuted();
            }

            @Override // com.openx.model.vast.VASTInterface
            public void close() {
                VideoAdManager.this.stateMachine.close();
            }

            @Override // com.openx.model.vast.VASTInterface
            public void closeLinear() {
                VideoAdManager.this.stateMachine.closeLinear();
            }

            @Override // com.openx.model.vast.VASTInterface
            public void skip() {
                VideoAdManager.this.isAdSkipped = true;
                VideoAdManager.this.track(VideoAdEvent.Event.AD_SKIP);
                VideoAdManager.this.stateMachine.setSkipped();
                VideoAdManager.this.stateMachine.setCompleted();
            }

            @Override // com.openx.model.vast.VASTInterface
            public void rewind() {
                if (VideoAdManager.this.isContentVideoPlaying) {
                    VideoAdManager.this.callbackEvent(VideoAdEvent.Event.CONTENT_REWIND);
                }
                VideoAdManager.this.track(VideoAdEvent.Event.AD_REWIND);
            }

            @Override // com.openx.model.vast.VASTInterface
            public void touch() {
                VideoAdManager.this.stateMachine.touch();
            }

            @Override // com.openx.model.vast.VASTInterface
            public void orientationChanged(int i) {
                VideoAdManager.this.stateMachine.orientationChanged(i);
            }

            @Override // com.openx.model.vast.VASTInterface
            public void onWindowFocusChanged(boolean z) {
                VideoAdManager.this.stateMachine.onWindowFocusChanged(z);
            }
        });
    }

    @Override // com.openx.common.deviceData.listeners.SDKInitListener
    public void onSDKInit() {
        if (this.hasStarted) {
            start(this.adRequest);
            this.hasStarted = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isContentPaused() {
        return this.isPaused;
    }

    public void destroy() {
        this.isContentVideoPlaying = false;
        this.status = 1;
        threadStop();
        this.videoView.stopPlayback();
        if (this.updateThread != null && this.updateThread.isAlive()) {
            this.updateThread.beforeStop();
        }
        if (this.mediaPlayer != null) {
            try {
                this.mediaPlayer.pause();
                this.mediaPlayer.stop();
            } catch (IllegalStateException e) {
            }
            this.mediaPlayer = null;
        }
        try {
            finalize();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
