package com.openx.model.video;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.VideoView;
import com.facebook.appevents.AppEventsConstants;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.openx.android_sdk_openx.R;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.model.vast.VASTInterface;
import com.openx.model.vast.VASTParser;
import com.openx.model.vast.VASTPlayer;
import com.openx.model.vast.VideoAdRequestListener;
import com.openx.model.vast.VideoCompletionListener;
import com.openx.model.vast.VideoErrorListener;
import com.openx.model.vast.VideoPreparedListener;
import com.openx.model.video.VideoAdEvent;
import com.openx.view.mraid.OrientationAllowChangeEventListener;
import com.openx.view.mraid.OrientationManager;
import com.openx.view.video.PublisherVideoView;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
@SuppressLint({"NewApi"})
@TargetApi(11)
/* loaded from: classes3.dex */
public class VideoPlayer extends RelativeLayout implements VASTPlayer, VideoAdEventListener, VideoInfoListener {
    public static final String SHOW_BACK_EXTRA = "open_show_back";
    public static final String SHOW_FORWARD_EXTRA = "open_show_forward";
    public static final String SHOW_REFRESH_EXTRA = "open_show_refresh";
    private static final String TAG = "VideoPlayer";
    public static final String URL_EXTRA = "extra_url";
    private static final String skipFormat = "HH:mm:ss.SSS";
    RelativeLayout adBreakHolder;
    private AdBreaks adBreaks;
    LinearLayout bottomBar;
    private boolean canSeek;
    private ImageButton closeButton;
    RelativeLayout container;
    private Context context;
    SeekBar customSeekbar;
    private int duration;
    private int hours;
    private boolean isEndOfVideo;
    private boolean isFullScreen;
    private boolean isPaused;
    private boolean isPreparing;
    private boolean isRunning;
    private boolean isScrubbing;
    private boolean isSkipFromVast;
    private boolean isSkippable;
    private boolean isSkipped;
    private boolean isStopped;
    private Handler mHandler;
    private OrientationManager mOrientationManager;
    private StoppableRunnable mRunnable;
    private MediaPlayer mediaPlayer;
    private int minutes;
    private boolean muted;
    RelativeLayout.LayoutParams overlayParams;
    private TextView playAgain;
    private ImageButton playButton;
    private boolean playFullscreen;
    private String preloadedAdVideoPath;
    LinearLayout progressLine;
    private int properScreenHeight;
    private int properScreenWidth;
    private RelativeLayout root;
    private int screenHeight;
    private int seconds;
    private ImageButton skipButton;
    private int skipCounter;
    private CustomVideoAdProperties skipDetails;
    private RelativeLayout skipHolder;
    private int skipOffset;
    private String skipOffsetString;
    private String skipOffsetStringInit;
    private TextView skipOverlay;
    RelativeLayout.LayoutParams skipParams;
    private TextView skipProgress;
    private ImageButton soundButton;
    private ProgressBar spinner;
    private ImageButton toggleExpand;
    RelativeLayout topBar;
    private View.OnTouchListener touchListenerFalse;
    private View.OnTouchListener touchListenerTrue;
    private long touchTimestamp;
    private VASTInterface vastInterface;
    private VASTParser vastXml;
    private VideoAdManager videoAdManager;
    private VideoCompletionListener videoCompletionListener;
    private VideoErrorListener videoErrorListener;
    private int videoHeight;
    private VideoPlayerCloseListener videoPlayerCloseListener;
    private VideoPreparedListener videoPreparedListener;
    private TextView videoText;
    private PublisherVideoView videoView;
    private int videoWidth;

    /* loaded from: classes3.dex */
    public interface VideoPlayerCloseListener {
        void videoPlayerClosed();
    }

    public void setVideoPlayerClosedListener(VideoPlayerCloseListener videoPlayerCloseListener) {
        this.videoPlayerCloseListener = videoPlayerCloseListener;
    }

    public VideoPlayer(Context context) {
        super(context);
        this.skipCounter = 0;
        this.skipOffset = 0;
        this.isSkipFromVast = false;
        this.isPaused = false;
        this.canSeek = true;
        this.isScrubbing = false;
        this.mHandler = new Handler();
        this.mRunnable = new StoppableRunnable() { // from class: com.openx.model.video.VideoPlayer.3
            @Override // com.openx.model.video.VideoPlayer.StoppableRunnable, java.lang.Runnable
            public void run() {
                super.run();
            }
        };
        this.touchListenerTrue = new View.OnTouchListener() { // from class: com.openx.model.video.VideoPlayer.15
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return VideoPlayer.this.onTouchBubbleUp(view, motionEvent, true);
            }
        };
        this.touchListenerFalse = new View.OnTouchListener() { // from class: com.openx.model.video.VideoPlayer.16
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return VideoPlayer.this.onTouchBubbleUp(view, motionEvent, false);
            }
        };
        this.context = context;
        init();
    }

    public VideoPlayer(Context context, VideoPlayerCloseListener videoPlayerCloseListener, String str, String str2, VASTParser vASTParser, Intent intent, boolean z, String str3, boolean z2, CustomVideoAdProperties customVideoAdProperties, VideoAdManager videoAdManager) {
        super(context);
        this.skipCounter = 0;
        this.skipOffset = 0;
        this.isSkipFromVast = false;
        this.isPaused = false;
        this.canSeek = true;
        this.isScrubbing = false;
        this.mHandler = new Handler();
        this.mRunnable = new StoppableRunnable() { // from class: com.openx.model.video.VideoPlayer.3
            @Override // com.openx.model.video.VideoPlayer.StoppableRunnable, java.lang.Runnable
            public void run() {
                super.run();
            }
        };
        this.touchListenerTrue = new View.OnTouchListener() { // from class: com.openx.model.video.VideoPlayer.15
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return VideoPlayer.this.onTouchBubbleUp(view, motionEvent, true);
            }
        };
        this.touchListenerFalse = new View.OnTouchListener() { // from class: com.openx.model.video.VideoPlayer.16
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return VideoPlayer.this.onTouchBubbleUp(view, motionEvent, false);
            }
        };
        this.context = context;
        this.videoPlayerCloseListener = videoPlayerCloseListener;
        this.preloadedAdVideoPath = str;
        this.skipDetails = customVideoAdProperties;
        this.vastXml = vASTParser;
        this.playFullscreen = z2;
        if (customVideoAdProperties == null || TextUtils.isEmpty(customVideoAdProperties.skipOffset)) {
            this.skipOffsetString = "-1";
        } else {
            this.skipOffsetString = customVideoAdProperties.skipOffset;
        }
        this.skipOffsetStringInit = this.skipOffsetString;
        this.videoAdManager = videoAdManager;
        init();
        createView();
        setVideoViewEventListeners();
        if (z) {
            loadPreloadedVideo();
        }
    }

    private void init() {
        View.inflate(this.context, R.layout.video_interstitial, this);
        this.container = (RelativeLayout) findViewById(R.id.container);
        this.videoView = (PublisherVideoView) findViewById(R.id.emsVideoView);
        this.videoView.setCanOverrideDraw(true);
        setOrientationListener();
    }

    private void setOrientationListener() {
        OXLog.debug(TAG, "newing up OrientationManager in VideoPlayer");
        this.mOrientationManager = new OrientationManager((Activity) this.context);
        this.mOrientationManager.onOrientationPropertiesChanged(true, OrientationManager.ForcedOrientation.none);
        this.mOrientationManager.getOrientationEventListener().setOrientationChangedListener(new OrientationAllowChangeEventListener.OrientationChangedListener() { // from class: com.openx.model.video.VideoPlayer.1
            @Override // com.openx.view.mraid.OrientationAllowChangeEventListener.OrientationChangedListener
            public void onOrientationChanged(int i) {
                VideoPlayer.this.orientationChangedHandler(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void orientationChangedHandler(int i) {
        OXLog.debug(TAG, "onOrientationChanged@@@@@@@@@@ 0");
        if (i == 2) {
            OXLog.debug(TAG, "onOrientationChanged@@@@@@@@@@ 1  LANDSCAPE");
            if (this.videoView.getHeight() > 0) {
                this.vastInterface.orientationChanged(2);
                return;
            }
            return;
        }
        OXLog.debug(TAG, "onOrientationChanged@@@@@@@@@@ 1   PORTRAIT");
        if (this.videoView.getHeight() > 0) {
            this.vastInterface.orientationChanged(1);
        }
    }

    public OrientationManager getOrientationManager() {
        return this.mOrientationManager;
    }

    public VideoView getVideoView() {
        return this.videoView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateView(final String str) {
        if (this.root != null && this.root.getHandler() != null) {
            this.root.getHandler().post(new Runnable() { // from class: com.openx.model.video.VideoPlayer.2
                @Override // java.lang.Runnable
                public void run() {
                    VideoPlayer.this.videoText.setText(str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getDurationText(int i) {
        this.hours = i / 3600;
        this.minutes = (i / 60) - (this.hours * 60);
        this.seconds = (i - (this.hours * 3600)) - (this.minutes * 60);
        return String.format("%d:%02d:%02d", Integer.valueOf(this.hours), Integer.valueOf(this.minutes), Integer.valueOf(this.seconds));
    }

    /* loaded from: classes3.dex */
    public abstract class StoppableRunnable implements Runnable {
        private boolean killMe = false;

        public StoppableRunnable() {
        }

        public void kill() {
            this.killMe = true;
        }

        public void resume() {
            this.killMe = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoPlayer.this.isRunning = true;
            try {
                if (VideoPlayer.this.mediaPlayer != null && !VideoPlayer.this.isPaused && !VideoPlayer.this.isStopped && !VideoPlayer.this.videoAdManager.getIsError() && !VideoPlayer.this.isScrubbing) {
                    VideoPlayer.this.updateView(!VideoPlayer.this.isEndOfVideo ? VideoPlayer.this.getDurationText(VideoPlayer.this.videoView.getCurrentPosition() / 1000) : VideoPlayer.this.getDurationText(VideoPlayer.this.duration));
                    ((Activity) VideoPlayer.this.context).runOnUiThread(new Runnable() { // from class: com.openx.model.video.VideoPlayer.StoppableRunnable.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!VideoPlayer.this.isSkipped && VideoPlayer.this.mediaPlayer.isPlaying()) {
                                VideoPlayer.this.updateSkipHolder();
                            }
                        }
                    });
                    try {
                        int currentPosition = VideoPlayer.this.mediaPlayer.getCurrentPosition();
                        if (currentPosition == 0) {
                            OXLog.debug(VideoPlayer.TAG, "videoplayer  seekbar to 0");
                        }
                        VideoPlayer.this.customSeekbar.setProgress(currentPosition);
                    } catch (IllegalStateException e) {
                        OXLog.debug(VideoPlayer.TAG, "ILLEGALSTATE mRunnable run 2");
                    }
                } else {
                    OXLog.debug(VideoPlayer.TAG, "isPreparing: " + VideoPlayer.this.isPreparing + "isError: " + VideoPlayer.this.videoAdManager.getIsError());
                }
            } catch (IllegalStateException e2) {
                OXLog.debug(VideoPlayer.TAG, "ILLEGALSTATE, mRunnable run 1");
            }
            if (!this.killMe) {
                VideoPlayer.this.mHandler.postDelayed(this, 1000L);
            }
        }
    }

    private void createView() {
        this.spinner = (ProgressBar) findViewById(R.id.spinner);
        this.root = (RelativeLayout) findViewById(R.id.emsVidIntLayout);
        configureToggleExpandButton();
        configureBarItems();
        this.videoText = (TextView) findViewById(R.id.emsVideoText);
    }

    private void configureToggleExpandButton() {
        this.toggleExpand = (ImageButton) findViewById(R.id.toggle_expand);
        this.toggleExpand.setOnTouchListener(this.touchListenerFalse);
        this.toggleExpand.setOnClickListener(new View.OnClickListener() { // from class: com.openx.model.video.VideoPlayer.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OXLog.debug(VideoPlayer.TAG, "toggleExpand.setOnClickListener() 381");
                if (VideoPlayer.this.isFullScreen) {
                    VideoPlayer.this.vastInterface.exitFullScreen();
                } else {
                    VideoPlayer.this.vastInterface.fullScreen();
                }
            }
        });
    }

    public void toggleFullOrCollapsed(boolean z, boolean z2) {
        if (!z) {
            this.toggleExpand.setImageResource(R.drawable.openx_fullscreen_selector);
            this.mOrientationManager.onOrientationPropertiesChanged(true, OrientationManager.ForcedOrientation.portrait);
            this.isFullScreen = false;
        } else if (this.videoAdManager.getAllowFullscreen()) {
            this.toggleExpand.setImageResource(R.drawable.openx_minimize_selector);
            this.mOrientationManager.onOrientationPropertiesChanged(true, OrientationManager.ForcedOrientation.landscape);
            this.isFullScreen = true;
        }
        adjustPlayerSize();
        setLightsOnMode();
        if (this.videoAdManager.getIsContentVideoPlaying()) {
            onContentPreparedRenderAdBreaks();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adjustPlayerSize() {
        boolean z = true;
        if (!Utils.atLeastICS() ? !Utils.atLeastHoneycomb() || this.videoView.getSystemUiVisibility() != 0 : this.videoView.getSystemUiVisibility() != 0) {
            z = false;
        }
        if (this.isFullScreen) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            this.videoView.setLayoutParams(layoutParams);
            if (z) {
                this.properScreenWidth = (this.videoView.getWidth() * getScreenWidth()) / this.videoView.getHeight();
            } else {
                this.properScreenWidth = (this.videoView.getWidth() * this.screenHeight) / this.videoView.getHeight();
            }
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams2.width = -1;
            layoutParams2.addRule(13);
            this.container.setLayoutParams(layoutParams2);
            return;
        }
        if (z) {
            this.properScreenHeight = (getScreenWidth() * this.videoView.getHeight()) / this.videoView.getWidth();
        } else {
            this.properScreenHeight = this.videoView.getMeasuredHeight();
        }
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.width = -1;
        layoutParams3.height = this.properScreenHeight;
        layoutParams3.addRule(13);
        this.container.setLayoutParams(layoutParams3);
    }

    private void animateOutSkipHolder() {
        this.skipHolder.setAnimation(AnimationUtils.loadAnimation(this.context, R.anim.openx_slide_right_out));
        disableSkipButton();
        this.skipHolder.setVisibility(8);
        if (this.skipOffset != -1) {
            this.skipHolder.setVisibility(4);
        }
    }

    private void configureBarItems() {
        this.topBar = (RelativeLayout) findViewById(R.id.top_bar);
        this.bottomBar = (LinearLayout) findViewById(R.id.bottom_bar);
        this.bottomBar.setId(101234);
        this.playButton = (ImageButton) findViewById(R.id.play_button);
        this.soundButton = (ImageButton) findViewById(R.id.sound_button);
        this.closeButton = (ImageButton) findViewById(R.id.close_button);
        this.skipProgress = (TextView) findViewById(R.id.progressSkip);
        this.skipOverlay = (TextView) findViewById(R.id.overlaySkip);
        this.skipButton = (ImageButton) findViewById(R.id.skip_button);
        this.skipHolder = (RelativeLayout) findViewById(R.id.skipHolder);
        this.playAgain = (TextView) findViewById(R.id.playAgain);
        this.overlayParams = (RelativeLayout.LayoutParams) this.skipOverlay.getLayoutParams();
        this.skipParams = (RelativeLayout.LayoutParams) this.skipProgress.getLayoutParams();
        this.topBar.setVisibility(4);
        this.bottomBar.setVisibility(4);
        this.skipButton.setOnTouchListener(this.touchListenerFalse);
        this.skipButton.setOnClickListener(new View.OnClickListener() { // from class: com.openx.model.video.VideoPlayer.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoPlayer.this.skipping();
            }
        });
        this.playAgain.setOnTouchListener(this.touchListenerFalse);
        this.playAgain.setOnClickListener(new View.OnClickListener() { // from class: com.openx.model.video.VideoPlayer.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoPlayer.this.playAgain.setVisibility(4);
                VideoPlayer.this.isScrubbing = false;
                VideoPlayer.this.isEndOfVideo = false;
            }
        });
        this.playButton.setOnTouchListener(this.touchListenerFalse);
        this.playButton.setOnClickListener(new View.OnClickListener() { // from class: com.openx.model.video.VideoPlayer.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoPlayer.this.vastInterface.resume();
            }
        });
        this.soundButton.setOnTouchListener(this.touchListenerFalse);
        this.soundButton.setOnClickListener(new View.OnClickListener() { // from class: com.openx.model.video.VideoPlayer.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (VideoPlayer.this.muted) {
                    VideoPlayer.this.vastInterface.unmute();
                } else {
                    VideoPlayer.this.vastInterface.mute();
                }
            }
        });
        this.closeButton.setEnabled(false);
        this.closeButton.setBackgroundDrawable(getResources().getDrawable(R.drawable.openx_close_disabled));
        this.closeButton.setOnTouchListener(this.touchListenerFalse);
        this.closeButton.setOnClickListener(new View.OnClickListener() { // from class: com.openx.model.video.VideoPlayer.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoPlayer.this.vastInterface.close();
                VideoPlayer.this.vastInterface.closeLinear();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void skipping() {
        this.isSkipped = true;
        this.skipOffset = -1;
        this.skipCounter = 0;
        this.vastInterface.skip();
        adCloseLinearHandler();
    }

    private void close() {
        if (this.videoPlayerCloseListener != null) {
            this.mHandler.removeCallbacks(this.mRunnable);
            this.isRunning = false;
            if (this.videoAdManager.getIsInterstitial()) {
                this.videoAdManager.threadStop();
            }
            if (this.videoPlayerCloseListener != null) {
                this.videoPlayerCloseListener.videoPlayerClosed();
            }
        }
        this.mOrientationManager.disableOrientationListener();
    }

    private void abandonAudioFocus() {
        try {
            ((AudioManager) this.context.getSystemService("audio")).abandonAudioFocus(null);
        } catch (Exception e) {
            OXLog.debug(TAG, "Could not abandon audio manager focus");
        }
    }

    private void deletePreloadedFile() {
        if (!TextUtils.isEmpty(this.preloadedAdVideoPath)) {
            File file = new File(this.context.getFilesDir(), this.preloadedAdVideoPath);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    private void resumeHandler() {
        this.videoView.setCanOverrideDraw(false);
        if (!this.videoAdManager.isAdCompletedPlayBack()) {
            this.isPaused = false;
            this.isStopped = false;
            try {
                this.videoView.start();
            } catch (IllegalStateException e) {
                OXLog.debug(TAG, "ILLEGALSTATE: playHandler 1");
            }
            this.playButton.setImageResource(R.drawable.openx_pause_selector);
            this.playAgain.setVisibility(4);
        }
        if (this.isEndOfVideo) {
            this.isEndOfVideo = false;
            this.isScrubbing = false;
            OXLog.debug(TAG, "playHandler start()");
        }
    }

    private void pauseHandler() {
        this.isPaused = true;
        OXLog.debug(TAG, "WINDOW_FOCUSED_CHANGED: onVisibilityChanged");
        this.isStopped = true;
        if (!this.isEndOfVideo) {
        }
        try {
            this.customSeekbar.setProgress(this.videoView.getCurrentPosition());
        } catch (IllegalStateException e) {
            OXLog.error(TAG, "SeekBar exception while getting the getCurrentPosition from videoView");
        }
        updateView(getDurationText(this.videoView.getCurrentPosition() / 1000));
        this.videoView.pause();
        this.playButton.setImageResource(R.drawable.openx_play_selector);
    }

    public String getPreloadedVideoPath() {
        return this.preloadedAdVideoPath;
    }

    public VASTParser getVASTXml() {
        return this.vastXml;
    }

    private void loadPreloadedVideo() {
        setVideoViewEventListeners();
    }

    private void setVideoViewEventListeners() {
        setCustomSeekbar();
        setErrorListener();
        setPreparedListener();
        setOnCompletionListener();
        setOnVideoAdRequestListener();
        configureOnTouchListener();
    }

    private void setCustomSeekbar() {
        this.customSeekbar = (SeekBar) findViewById(R.id.scrubber);
        this.customSeekbar.setIndeterminate(false);
        this.customSeekbar.setOnTouchListener(this.touchListenerFalse);
        this.customSeekbar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.openx.model.video.VideoPlayer.10
            private int lastPosition;

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                VideoPlayer.this.isScrubbing = false;
                seekBar.setEnabled(true);
                OXLog.debug(VideoPlayer.TAG, "STOP: " + seekBar.getProgress());
                OXLog.debug(VideoPlayer.TAG, "url: lastPosition: " + this.lastPosition + " seekbar is: " + seekBar.getProgress() + " can seek? " + VideoPlayer.this.canSeek);
                if (this.lastPosition > seekBar.getProgress() && VideoPlayer.this.canSeek) {
                    OXLog.debug(VideoPlayer.TAG, "rewinding?  " + this.lastPosition + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + seekBar.getProgress());
                    VideoPlayer.this.vastInterface.rewind();
                    try {
                        OXLog.debug(VideoPlayer.TAG, "seekBar.getProgress(): " + seekBar.getProgress());
                        VideoPlayer.this.mediaPlayer.seekTo(seekBar.getProgress());
                    } catch (IllegalStateException e) {
                        OXLog.debug(VideoPlayer.TAG, "ILLEGALSTATE: onStopTrackingTouch 4");
                    }
                } else {
                    OXLog.debug(VideoPlayer.TAG, "fastforward ");
                    if (VideoPlayer.this.isSkippable || VideoPlayer.this.videoAdManager.getIsContentVideoPlaying()) {
                        OXLog.debug(VideoPlayer.TAG, "fastforward? " + VideoPlayer.this.videoAdManager.getIsContentVideoPlaying() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + VideoPlayer.this.isSkippable);
                        if (!VideoPlayer.this.videoAdManager.getIsContentVideoPlaying() && !VideoPlayer.this.isSkippable) {
                            try {
                                OXLog.debug(VideoPlayer.TAG, "lastPosition 0: " + this.lastPosition);
                                VideoPlayer.this.mediaPlayer.seekTo(this.lastPosition);
                            } catch (IllegalStateException e2) {
                                OXLog.debug(VideoPlayer.TAG, "ILLEGALSTATE: onStopTrackingTouch 1");
                            }
                            OXLog.debug(VideoPlayer.TAG, "fastforward? SOUGHT 0 :::: " + this.lastPosition + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + seekBar.getProgress());
                        } else {
                            try {
                                OXLog.debug(VideoPlayer.TAG, "lastPosition 1");
                                VideoPlayer.this.mediaPlayer.seekTo(seekBar.getProgress());
                            } catch (IllegalStateException e3) {
                                OXLog.debug(VideoPlayer.TAG, "ILLEGALSTATE: onStopTrackingTouch 2");
                            }
                        }
                    }
                }
                if (!VideoPlayer.this.isStopped && !VideoPlayer.this.isPaused) {
                    try {
                        VideoPlayer.this.mediaPlayer.start();
                    } catch (IllegalStateException e4) {
                        OXLog.debug(VideoPlayer.TAG, "ILLEGALSTATE: onStopTrackingTouch 3");
                    }
                    OXLog.debug(VideoPlayer.TAG, "stopTrackingTouch");
                    OXLog.debug(VideoPlayer.TAG, "fastforward? SOUGHT 1 :::: " + this.lastPosition + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + seekBar.getProgress());
                }
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [com.openx.model.video.VideoPlayer$10$2] */
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                VideoPlayer.this.canSeek = false;
                new Handler() { // from class: com.openx.model.video.VideoPlayer.10.2
                }.postDelayed(new Runnable() { // from class: com.openx.model.video.VideoPlayer.10.1
                    @Override // java.lang.Runnable
                    public void run() {
                        VideoPlayer.this.canSeek = true;
                    }
                }, 50L);
                VideoPlayer.this.isScrubbing = true;
                VideoPlayer.this.playAgain.setVisibility(4);
                OXLog.debug(VideoPlayer.TAG, "START: " + seekBar.getProgress());
                this.lastPosition = seekBar.getProgress();
                OXLog.debug(VideoPlayer.TAG, "startTrack? " + this.lastPosition + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + seekBar.getProgress());
                try {
                    if (VideoPlayer.this.mediaPlayer != null) {
                        VideoPlayer.this.mediaPlayer.pause();
                    }
                } catch (IllegalStateException e) {
                    OXLog.debug(VideoPlayer.TAG, "ILLEGALSTATE: onStartTrackingTouch 1");
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z && VideoPlayer.this.isSkippable) {
                    try {
                        if (VideoPlayer.this.mediaPlayer != null) {
                            VideoPlayer.this.mediaPlayer.seekTo(i);
                        }
                        VideoPlayer.this.updateView(VideoPlayer.this.getDurationText(i / 1000));
                    } catch (IllegalStateException e) {
                        OXLog.debug(VideoPlayer.TAG, "ILLEGALSTATE: onProgressChanged 1");
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public void setLightsOutMode() {
        if (this.videoAdManager.getIsInterstitial() || this.isFullScreen) {
            if (Utils.atLeastICS()) {
                this.videoView.setSystemUiVisibility(1);
                this.videoView.setSystemUiVisibility(2);
            } else if (Utils.atLeastHoneycomb()) {
                this.videoView.setSystemUiVisibility(1);
            }
        }
    }

    private void setLightsOnMode() {
        if (Utils.atLeastICS()) {
            this.videoView.setSystemUiVisibility(0);
        } else if (Utils.atLeastHoneycomb()) {
            this.videoView.setSystemUiVisibility(0);
        }
    }

    private void setErrorListener() {
        this.videoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.openx.model.video.VideoPlayer.11
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                VideoPlayer.this.videoErrorListener.onError(mediaPlayer, i, i2);
                return true;
            }
        });
    }

    private void setPreparedListener() {
        this.videoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.openx.model.video.VideoPlayer.12
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                VideoPlayer.this.mediaPlayer = mediaPlayer;
                VideoPlayer.this.videoPreparedListener.onPrepared(VideoPlayer.this.mediaPlayer);
            }
        });
    }

    private void onPreparedHandler() {
        this.videoView.setVisibility(0);
        if (!this.videoAdManager.getIsInterstitial()) {
            this.closeButton.setVisibility(4);
        }
        onPreparedSetDurationText();
        this.isEndOfVideo = false;
        try {
            this.customSeekbar.setMax(this.mediaPlayer.getDuration());
        } catch (IllegalStateException e) {
            OXLog.debug("ILLEGALSTATE", "setPrepared 1");
        }
    }

    private void onPreparedSetDurationText() {
        try {
            this.duration = this.mediaPlayer.getDuration() / 1000;
        } catch (IllegalStateException e) {
            OXLog.debug(TAG, "ILLEGALSTATE: onPrepared 0");
        }
        this.hours = this.duration / 3600;
        this.minutes = (this.duration / 60) - (this.hours * 60);
        this.seconds = (this.duration - (this.hours * 3600)) - (this.minutes * 60);
        ((TextView) findViewById(R.id.txtDuration)).setText(String.format("%d:%02d:%02d", Integer.valueOf(this.hours), Integer.valueOf(this.minutes), Integer.valueOf(this.seconds)));
    }

    private void removeAdBreaks() {
        this.adBreakHolder = (RelativeLayout) findViewById(R.id.adBreakHolder);
        this.adBreakHolder.removeViews(1, this.adBreakHolder.getChildCount() - 1);
    }

    private void onAdPreparedRenderSkip() {
        removeAdBreaks();
        this.isSkippable = false;
        this.isSkipped = false;
        this.skipOffsetString = this.skipOffsetStringInit;
        determineSkipOffset(this.skipOffsetString);
        videoInit();
    }

    private void onContentPreparedRenderAdBreaks() {
        removeAdBreaks();
        determineSkipOffset("-1");
        disableSkipButton();
        int paddingRight = this.customSeekbar.getPaddingRight() + this.customSeekbar.getPaddingLeft() + ((RelativeLayout.LayoutParams) this.customSeekbar.getLayoutParams()).leftMargin + ((RelativeLayout.LayoutParams) this.customSeekbar.getLayoutParams()).rightMargin;
        int width = this.customSeekbar.getWidth() - paddingRight;
        float f = getResources().getDisplayMetrics().density;
        int i = (int) (3.0f * f);
        int i2 = (int) (f * 7.0f);
        try {
            if (this.mediaPlayer.getDuration() > 0) {
                Iterator<Integer> it = this.adBreaks.getAdBreaks().iterator();
                while (it.hasNext()) {
                    View view = new View(this.context);
                    view.setBackgroundColor(Color.argb(127, 255, 255, 255));
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i2);
                    layoutParams.leftMargin = ((int) ((it.next().intValue() / 100.0f) * width)) + (paddingRight / 2);
                    layoutParams.addRule(15);
                    view.setLayoutParams(layoutParams);
                    this.adBreakHolder.addView(view);
                }
            }
        } catch (IllegalStateException e) {
            OXLog.debug(TAG, "ILLEGALSTATE: onPrepared 0.5");
        }
        videoInit();
    }

    private void determineSkipOffset(String str) {
        if (this.isSkipFromVast) {
            str = this.skipOffsetString;
        }
        if (!TextUtils.isEmpty(str)) {
            if (!this.isSkipFromVast && this.skipOffsetString == AppEventsConstants.EVENT_PARAM_VALUE_NO) {
                this.skipOffset = -1;
            } else if (!this.isSkipFromVast && (this.skipOffsetString.equals("00:00:00.000") || this.skipOffsetString.equals("00:00:00"))) {
                this.skipOffset = 5;
            } else if (this.skipOffsetString == "-1" || this.skipOffsetString.contains("-")) {
                this.skipOffset = -1;
            } else if (this.skipOffsetString.contains("%")) {
                this.skipOffsetString = this.skipOffsetString.replace("%", "");
                this.skipOffset = evaluateSkipOffset(this.skipOffsetString);
                if (this.skipOffset > 0 && this.skipOffset < 100) {
                    this.skipOffset = Math.round((this.skipOffset / 100.0f) * this.duration);
                } else if (this.skipOffset >= 100) {
                    this.skipOffset = -1;
                } else {
                    this.skipOffset = 5;
                }
            } else {
                Date date = null;
                try {
                    date = new SimpleDateFormat(skipFormat).parse(str);
                } catch (ParseException e) {
                }
                if (date != null) {
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(date);
                    this.skipOffsetString = Integer.toString((calendar.get(10) * 3600) + (calendar.get(12) * 60) + calendar.get(13) + Math.round(calendar.get(14) / 1000.0f));
                    this.skipOffset = evaluateSkipOffset(this.skipOffsetString);
                } else {
                    this.skipOffset = -1;
                }
            }
        } else {
            this.skipOffset = -1;
        }
        if (!this.isSkipFromVast && this.skipOffset > 0 && this.skipOffset < 5) {
            OXLog.debug(TAG, "final 0: " + Integer.toString(this.skipOffset));
            this.skipOffset = 5;
        }
        if (this.skipOffset > this.duration) {
            OXLog.debug(TAG, "final 1: " + Integer.toString(this.skipOffset));
            this.skipOffset = -1;
        }
    }

    private int evaluateSkipOffset(String str) {
        if (isInteger(str)) {
            return Integer.parseInt(str);
        }
        if (isFloat(str)) {
            return Math.round(Float.parseFloat(str));
        }
        return 0;
    }

    public boolean isInteger(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean isFloat(String str) {
        try {
            Float.parseFloat(str);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private void setOnVideoAdRequestListener() {
        this.videoAdManager.setVideoAdRequestListener(new VideoAdRequestListener() { // from class: com.openx.model.video.VideoPlayer.13
            @Override // com.openx.model.vast.VideoAdRequestListener
            public void onAdRequested() {
            }
        });
    }

    private void setOnCompletionListener() {
        this.videoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.openx.model.video.VideoPlayer.14
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                VideoPlayer.this.videoCompletionListener.onCompletion(mediaPlayer);
            }
        });
    }

    private void configureOnTouchListener() {
        setOnTouchListener(this.touchListenerTrue);
    }

    private void touchDelayHandler() {
        new Handler().postDelayed(new Runnable() { // from class: com.openx.model.video.VideoPlayer.17
            @Override // java.lang.Runnable
            public void run() {
                long timeInMillis = Calendar.getInstance().getTimeInMillis() - VideoPlayer.this.touchTimestamp;
                if (!VideoPlayer.this.isScrubbing && timeInMillis >= 3000) {
                    VideoPlayer.this.fadeOutBar();
                }
            }
        }, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onTouchBubbleUp(View view, MotionEvent motionEvent, boolean z) {
        if (motionEvent.getAction() == 0) {
            this.isScrubbing = true;
        } else if (motionEvent.getAction() == 2) {
            this.isScrubbing = true;
        } else if (motionEvent.getAction() == 1) {
            this.vastInterface.touch();
        }
        return z;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    private void showBar() {
        setLightsOnMode();
        this.topBar.setVisibility(0);
        this.bottomBar.setVisibility(0);
        this.playButton.setVisibility(0);
        this.soundButton.setVisibility(0);
        if (this.videoAdManager.getAllowFullscreen()) {
            this.toggleExpand.setVisibility(0);
        } else {
            this.toggleExpand.setVisibility(8);
        }
        if (this.skipOffset != -1 && !this.isSkipped) {
            OXLog.debug(TAG, "Animating skip down 2");
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(2, this.bottomBar.getId());
            layoutParams.addRule(11);
            this.skipHolder.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fadeOutBar() {
        new Handler().postDelayed(new Runnable() { // from class: com.openx.model.video.VideoPlayer.18
            @Override // java.lang.Runnable
            public void run() {
                if (!VideoPlayer.this.isScrubbing) {
                    Animation loadAnimation = AnimationUtils.loadAnimation(VideoPlayer.this.context, R.anim.openx_slide_up_out);
                    AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                    alphaAnimation.setDuration(1000L);
                    AnimationSet animationSet = new AnimationSet(false);
                    animationSet.addAnimation(loadAnimation);
                    animationSet.addAnimation(alphaAnimation);
                    Animation loadAnimation2 = AnimationUtils.loadAnimation(VideoPlayer.this.context, R.anim.openx_slide_down_out);
                    Animation loadAnimation3 = AnimationUtils.loadAnimation(VideoPlayer.this.context, R.anim.openx_slide_skip_down_out);
                    loadAnimation3.setAnimationListener(new Animation.AnimationListener() { // from class: com.openx.model.video.VideoPlayer.18.1
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                            long timeInMillis = Calendar.getInstance().getTimeInMillis() - VideoPlayer.this.touchTimestamp;
                            if (VideoPlayer.this.skipOffset != -1 && timeInMillis > 500) {
                                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) VideoPlayer.this.skipHolder.getLayoutParams();
                                layoutParams.addRule(12);
                                layoutParams.addRule(11);
                                layoutParams.setMargins(0, 0, 0, 0);
                                VideoPlayer.this.skipHolder.setLayoutParams(layoutParams);
                                VideoPlayer.this.setLightsOutMode();
                            }
                        }
                    });
                    AnimationSet animationSet2 = new AnimationSet(false);
                    animationSet2.addAnimation(loadAnimation2);
                    animationSet2.addAnimation(alphaAnimation);
                    if (!VideoPlayer.this.isEndOfVideo) {
                        VideoPlayer.this.topBar.setAnimation(animationSet);
                        VideoPlayer.this.bottomBar.setAnimation(animationSet2);
                        VideoPlayer.this.playButton.setAnimation(alphaAnimation);
                        if (VideoPlayer.this.skipOffset != -1 && VideoPlayer.this.skipHolder.getVisibility() == 0) {
                            VideoPlayer.this.skipHolder.setAnimation(loadAnimation3);
                        }
                        VideoPlayer.this.hideBars();
                        return;
                    }
                    return;
                }
                VideoPlayer.this.isScrubbing = false;
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideBars() {
        this.topBar.setVisibility(4);
        this.bottomBar.setVisibility(4);
        this.playButton.setVisibility(4);
        this.soundButton.setVisibility(0);
    }

    private int getScreenWidth() {
        int width = ((Activity) this.context).getWindowManager().getDefaultDisplay().getWidth();
        int height = ((Activity) this.context).getWindowManager().getDefaultDisplay().getHeight();
        return width > height ? height : width;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    private void videoInit() {
        if (this.root != null && this.root.getHandler() != null) {
            this.root.getHandler().post(new Runnable() { // from class: com.openx.model.video.VideoPlayer.19
                @Override // java.lang.Runnable
                public void run() {
                    VideoPlayer.this.spinner.setVisibility(8);
                    VideoPlayer.this.mHandler.removeCallbacks(VideoPlayer.this.mRunnable);
                    VideoPlayer.this.isRunning = false;
                    if (!VideoPlayer.this.isRunning) {
                        VideoPlayer.this.mRunnable.run();
                    }
                    VideoPlayer.this.videoView.invalidate();
                    if (VideoPlayer.this.skipOffset != -1 && VideoPlayer.this.skipCounter < VideoPlayer.this.skipOffset) {
                        OXLog.debug(VideoPlayer.TAG, "skipCounter " + VideoPlayer.this.skipCounter + " skipOffset " + VideoPlayer.this.skipOffset);
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                        layoutParams.addRule(2, VideoPlayer.this.bottomBar.getId());
                        layoutParams.addRule(11);
                        VideoPlayer.this.skipHolder.setLayoutParams(layoutParams);
                        if (VideoPlayer.this.skipDetails != null) {
                            VideoPlayer.this.setSkipOverlayText(VideoPlayer.this.skipDetails.skipText, VideoPlayer.this.skipOffset, VideoPlayer.this.skipCounter);
                        }
                    }
                    try {
                        VideoPlayer.this.videoWidth = VideoPlayer.this.mediaPlayer.getVideoWidth();
                        VideoPlayer.this.videoHeight = VideoPlayer.this.mediaPlayer.getVideoHeight();
                    } catch (IllegalStateException e) {
                        OXLog.debug(VideoPlayer.TAG, "ILLEGALSTATE: videoInit 1");
                    }
                    VideoPlayer.this.videoWidth = 0;
                    VideoPlayer.this.videoHeight = 0;
                    if (Utils.atLeastHoneycomb()) {
                        VideoPlayer.this.videoView.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.openx.model.video.VideoPlayer.19.1
                            @Override // android.view.View.OnSystemUiVisibilityChangeListener
                            public void onSystemUiVisibilityChange(int i) {
                                if (i != 2 && i == 0) {
                                    VideoPlayer.this.vastInterface.touch();
                                }
                                VideoPlayer.this.adjustPlayerSize();
                            }
                        });
                    }
                    if (VideoPlayer.this.playFullscreen) {
                        VideoPlayer.this.toggleFullOrCollapsed(true, false);
                        VideoPlayer.this.playFullscreen = false;
                    }
                    if (VideoPlayer.this.isFullScreen) {
                        VideoPlayer.this.toggleFullOrCollapsed(true, false);
                    } else {
                        VideoPlayer.this.toggleFullOrCollapsed(false, false);
                    }
                    VideoPlayer.this.setLightsOutMode();
                    if (VideoPlayer.this.mediaPlayer != null) {
                        try {
                            ((AudioManager) VideoPlayer.this.context.getSystemService("audio")).requestAudioFocus(null, 3, 1);
                        } catch (Exception e2) {
                            OXLog.debug(VideoPlayer.TAG, "Could not request audio manager focus");
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSkipOverlayText(String str, int i, int i2) {
        if (i - i2 > 0) {
            if (TextUtils.isEmpty(str)) {
                this.skipOverlay.setText(this.context.getString(R.string.skip_default_text) + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + (i - i2));
                return;
            } else if (this.skipDetails != null) {
                this.skipOverlay.setText(this.skipDetails.skipText + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + (i - i2) + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                return;
            } else {
                return;
            }
        }
        this.skipOverlay.setText(this.context.getString(R.string.skip_time_over_text));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSkipHolder() {
        if (this.skipCounter <= this.skipOffset && !this.isStopped && !this.isScrubbing) {
            int right = this.skipOverlay.getRight() - this.skipOverlay.getLeft();
            float f = this.skipCounter / this.skipOffset;
            int i = (int) (right * f);
            this.skipParams.width = i;
            OXLog.debug(TAG, right + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.skipCounter + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.skipOffset + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + f + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + i + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.skipParams.width);
            this.skipProgress.setLayoutParams(this.skipParams);
            if (this.skipOffset == -1) {
                this.isSkippable = true;
                this.skipHolder.setVisibility(4);
            } else if (this.skipCounter == this.skipOffset) {
                this.skipHolder.setVisibility(0);
                this.isSkippable = true;
                if (this.skipCounter != 0) {
                    enableSkipButton();
                }
            } else {
                this.skipHolder.setVisibility(0);
                OXLog.debug(TAG, "2328");
                if (this.skipDetails != null) {
                    setSkipOverlayText(this.skipDetails.skipText, this.skipOffset, this.skipCounter);
                }
            }
            this.skipCounter++;
        }
    }

    private void enableSkipButton() {
        this.isSkippable = true;
        this.skipProgress.setClickable(true);
        this.skipOverlay.setVisibility(0);
        if (this.skipDetails != null) {
            setSkipOverlayText(this.skipDetails.skipText, 0, 0);
        }
        this.skipButton.setVisibility(0);
        this.skipHolder.setClickable(true);
        this.skipHolder.setEnabled(true);
        this.skipHolder.setVisibility(0);
        this.skipHolder.setOnClickListener(new View.OnClickListener() { // from class: com.openx.model.video.VideoPlayer.20
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoPlayer.this.skipping();
            }
        });
        this.closeButton.setEnabled(true);
        this.closeButton.setBackgroundDrawable(getResources().getDrawable(R.drawable.openx_close_selector));
        this.skipProgress.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
    }

    private void disableSkipButton() {
        this.skipProgress.setClickable(false);
        this.skipButton.setVisibility(8);
        this.skipHolder.setClickable(false);
        this.skipHolder.setEnabled(false);
        this.skipHolder.setVisibility(8);
        this.skipProgress.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
    }

    @Override // com.openx.model.vast.VASTPlayer
    public void setVASTInterface(VASTInterface vASTInterface) {
        this.vastInterface = vASTInterface;
    }

    @Override // com.openx.model.vast.VASTPlayer
    public void setVideoCompletionListener(VideoCompletionListener videoCompletionListener) {
        this.videoCompletionListener = videoCompletionListener;
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        if (i == 4 || i == 8) {
            this.mHandler.removeCallbacks(this.mRunnable);
            this.isRunning = false;
            OXLog.debug(TAG, "WINDOW_FOCUSED_CHANGED: onVisibilityChanged isstopped = true");
            this.isStopped = true;
        } else {
            this.isStopped = false;
            OXLog.debug(TAG, "onVisibilityChanged: onVisibilityChanged(visible) isstopped = false");
        }
        super.onVisibilityChanged(view, i);
    }

    private void windowFocusHandler() {
        if (!this.isRunning) {
            OXLog.debug(TAG, "onWindowFocusedChanged mRunnable.run()");
            this.mRunnable.resume();
            this.mRunnable.run();
        }
        if (this.mOrientationManager != null) {
            this.mOrientationManager.enableOrientationListener();
        }
        if (this.isStopped && !this.isPreparing) {
            this.isStopped = false;
            OXLog.debug(TAG, "windowFocusHandler() isstopped = false");
        }
    }

    private void windowNoFocusHandler() {
        this.mHandler.removeCallbacks(this.mRunnable);
        this.mRunnable.kill();
        this.isRunning = false;
        if (this.mOrientationManager != null) {
            this.mOrientationManager.disableOrientationListener();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.vastInterface.onWindowFocusChanged(z);
    }

    @Override // com.openx.model.vast.VASTPlayer
    public void setVideoPreparedListener(VideoPreparedListener videoPreparedListener) {
        this.videoPreparedListener = videoPreparedListener;
    }

    @Override // com.openx.model.vast.VASTPlayer
    public void setVideoErrorListener(VideoErrorListener videoErrorListener) {
        this.videoErrorListener = videoErrorListener;
    }

    @Override // com.openx.model.video.VideoAdEventListener
    public void onVideoAdEvent(VideoAdEvent.Event event) {
        switch (event) {
            case AD_PAUSE:
            case CONTENT_PAUSE:
                pauseHandler();
                return;
            case AD_START:
            case AD_RESUME:
                resumeHandler();
                return;
            case AD_PREPARING:
            case CONTENT_PREPARING:
            default:
                return;
            case AD_PREPARED:
                onPreparedHandler();
                onAdPreparedRenderSkip();
                return;
            case CONTENT_PREPARED:
                onPreparedHandler();
                return;
            case CONTENT_START:
            case CONTENT_RESUME:
                resumeHandler();
                return;
            case AD_COMPLETE:
                adCompletionHandler();
                return;
            case CONTENT_COMPLETE:
                contentCompletionHandler();
                return;
            case AD_SKIP:
                adSkippedHandler();
                return;
            case AD_EXPAND:
            case AD_FULLSCREEN:
            case CONTENT_FULLSCREEN:
                toggleFullOrCollapsed(true, true);
                return;
            case AD_COLLAPSE:
            case CONTENT_EXITFULLSCREEN:
                toggleFullOrCollapsed(false, true);
                return;
            case TOUCH:
                touchHandler();
                return;
            case AD_MUTE:
                muteHandler();
                return;
            case CONTENT_MUTE:
                muteHandler();
                return;
            case AD_UNMUTE:
                unMuteHandler();
                return;
            case CONTENT_UNMUTE:
                unMuteHandler();
                return;
            case AD_CLOSELINEAR:
                adCloseLinearHandler();
                return;
            case CONTENT_CLOSE:
                contentCloseHandler();
                return;
            case AD_WINDOW_HAS_FOCUS:
                windowFocusHandler();
                return;
            case AD_WINDOW_HAS_NO_FOCUS:
                windowNoFocusHandler();
                return;
            case CONTENT_WINDOW_HAS_FOCUS:
                windowFocusHandler();
                return;
            case CONTENT_WINDOW_HAS_NO_FOCUS:
                windowNoFocusHandler();
                return;
        }
    }

    @Override // com.openx.model.video.VideoInfoListener
    public void onVideoInfoReceived(VideoInfo<? extends SkipOffset, AdBreaks> videoInfo) {
        if (videoInfo instanceof SkipOffset) {
            skipOffsetReceivedHandler((SkipOffset) videoInfo);
        } else if (videoInfo instanceof AdBreaks) {
            adBreaksReceivedHandler((AdBreaks) videoInfo);
        }
    }

    private void skipOffsetReceivedHandler(SkipOffset skipOffset) {
        this.skipOffsetStringInit = skipOffset.getSkipOffset();
        this.isSkipFromVast = true;
    }

    private void adBreaksReceivedHandler(AdBreaks adBreaks) {
        this.adBreaks = adBreaks;
        onContentPreparedRenderAdBreaks();
    }

    private void contentCloseHandler() {
        close();
    }

    private void adCloseLinearHandler() {
        animateOutSkipHolder();
        abandonAudioFocus();
        deletePreloadedFile();
        close();
    }

    private void unMuteHandler() {
        try {
            this.muted = false;
            this.mediaPlayer.setVolume(1.0f, 1.0f);
            this.soundButton.setImageResource(R.drawable.openx_mute_selector);
        } catch (IllegalStateException e) {
            OXLog.debug(TAG, "ILLEGALSTATE: setPrepared 2");
        }
    }

    private void muteHandler() {
        try {
            this.muted = true;
            this.mediaPlayer.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            this.soundButton.setImageResource(R.drawable.openx_mute_disabled_selector);
            this.isScrubbing = false;
            this.touchTimestamp = Calendar.getInstance().getTimeInMillis();
            showBar();
            touchDelayHandler();
        } catch (IllegalStateException e) {
            OXLog.debug(TAG, "ILLEGALSTATE: setPrepared 2");
        }
    }

    private void touchHandler() {
        this.isScrubbing = false;
        this.touchTimestamp = Calendar.getInstance().getTimeInMillis();
        showBar();
        touchDelayHandler();
    }

    private void adSkippedHandler() {
        if (this.skipHolder.getVisibility() == 0) {
            animateOutSkipHolder();
        }
    }

    private void adCompletionHandler() {
        OXLog.debug(TAG, "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " adCompletionHandler...");
        this.closeButton.setEnabled(true);
        this.closeButton.setBackgroundDrawable(getResources().getDrawable(R.drawable.openx_close_selector));
        this.skipCounter = 0;
        this.skipOffset = -1;
        adSkippedHandler();
        this.isStopped = true;
        this.playButton.setImageResource(R.drawable.openx_play_selector);
        showBar();
    }

    private void contentCompletionHandler() {
        OXLog.debug(TAG, "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " contentCompletionHandler...");
        try {
            ((AudioManager) this.context.getSystemService("audio")).abandonAudioFocus(null);
        } catch (Exception e) {
            OXLog.debug(TAG, "Could not abandon audio manager focus");
        }
        this.closeButton.setEnabled(true);
        this.closeButton.setBackgroundDrawable(getResources().getDrawable(R.drawable.openx_close_selector));
        this.isEndOfVideo = true;
        disableSkipButton();
        this.playButton.setImageResource(R.drawable.openx_play_selector);
    }
}
