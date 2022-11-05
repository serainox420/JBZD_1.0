package com.video.adsdk.internal;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.video.adsdk.interfaces.FileDownloader;
import com.video.adsdk.interfaces.VideoBridge;
import com.video.adsdk.interfaces.VideoBridgeListener;
import java.io.IOException;
import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes3.dex */
public class ADVideoView extends RelativeLayout implements AudioManager.OnAudioFocusChangeListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, VideoBridge {
    private static final int MAX_SECONDS_BLOCK_BACK_BUTTON = 8;
    VideoBridge.MovieState currentState;
    private FileDownloader fileDownloader;
    Queue<VideoBridgeListener> m_listeners;
    private Timer pulseTimer;
    private int pulseTimerEventCalledInNoSkipState;
    private int savedBackgroundColor;
    private int startPosition;
    private String url;
    private VideoViewWrapper videoView;

    static /* synthetic */ int access$008(ADVideoView aDVideoView) {
        int i = aDVideoView.pulseTimerEventCalledInNoSkipState;
        aDVideoView.pulseTimerEventCalledInNoSkipState = i + 1;
        return i;
    }

    public ADVideoView(Context context) {
        super(context);
        this.url = null;
        this.startPosition = 0;
        this.pulseTimer = null;
        this.savedBackgroundColor = 0;
        this.currentState = VideoBridge.MovieState.MOVIESTATE_INITIALIZED;
        this.m_listeners = new ConcurrentLinkedQueue();
        init();
    }

    AudioManager getAudioMgr() {
        return (AudioManager) getContext().getSystemService("audio");
    }

    public ADVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.url = null;
        this.startPosition = 0;
        this.pulseTimer = null;
        this.savedBackgroundColor = 0;
        this.currentState = VideoBridge.MovieState.MOVIESTATE_INITIALIZED;
        this.m_listeners = new ConcurrentLinkedQueue();
        init();
    }

    public ADVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.url = null;
        this.startPosition = 0;
        this.pulseTimer = null;
        this.savedBackgroundColor = 0;
        this.currentState = VideoBridge.MovieState.MOVIESTATE_INITIALIZED;
        this.m_listeners = new ConcurrentLinkedQueue();
        init();
    }

    @Override // com.video.adsdk.interfaces.VideoBridge
    public void shutdown() {
        this.url = null;
        this.startPosition = 0;
        this.videoView.stopPlayback();
        abandonAudioFocus();
        this.currentState = VideoBridge.MovieState.MOVIESTATE_INITIALIZED;
    }

    @Override // com.video.adsdk.interfaces.VideoBridge
    public void addListener(VideoBridgeListener videoBridgeListener) {
        if (!this.m_listeners.contains(videoBridgeListener)) {
            this.m_listeners.add(videoBridgeListener);
        }
    }

    @Override // com.video.adsdk.interfaces.VideoBridge
    public void removeListener(VideoBridgeListener videoBridgeListener) {
        if (this.m_listeners.contains(videoBridgeListener)) {
            this.m_listeners.remove(videoBridgeListener);
        }
    }

    @Override // com.video.adsdk.interfaces.VideoBridge
    public void setUrl(String str) {
        if (str != null) {
            this.url = str;
            sendOnReadyToPlayEvent();
        }
    }

    @Override // com.video.adsdk.interfaces.VideoBridge
    public int getCurrentSecond() {
        if (this.videoView == null) {
            return -1;
        }
        return this.videoView.getCurrentPosition() / 1000;
    }

    @Override // com.video.adsdk.interfaces.VideoBridge
    public VideoBridge.MovieState getCurrentMovieState() {
        return this.currentState;
    }

    @Override // com.video.adsdk.interfaces.VideoBridge
    public void setWebview(View view) {
        ((ViewGroup) findViewById(Helper.ID_WEBVIEWCONTAINER)).addView(view);
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        if (i != -2 && i != 1 && i == -1) {
            abandonAudioFocus();
        }
    }

    private void requestAudioFocus() {
        if (getAudioMgr().requestAudioFocus(this, 3, 2) != 1) {
        }
    }

    private void abandonAudioFocus() {
        getAudioMgr().abandonAudioFocus(this);
    }

    @Override // com.video.adsdk.interfaces.VideoBridge
    public void play() {
        this.pulseTimerEventCalledInNoSkipState = 0;
        startPulseTimer();
        if (this.startPosition > 0) {
            if (this.currentState == VideoBridge.MovieState.MOVIESTATE_PLAYING_NO_SKIP) {
                findViewById(Helper.ID_BUTTONCLOSE).setVisibility(4);
            }
            this.videoView.seekTo(this.startPosition);
        } else if (this.url != null) {
            this.videoView.setVideoURI(Uri.parse(this.url));
            findViewById(Helper.ID_BUTTONCLOSE).setVisibility(4);
            sendCurrentStateEvent(VideoBridge.MovieState.MOVIESTATE_STARTED);
        }
        requestAudioFocus();
        this.videoView.start();
        if (isClosableByUI()) {
            this.currentState = VideoBridge.MovieState.MOVIESTATE_PLAYING_SKIP;
        } else {
            this.currentState = VideoBridge.MovieState.MOVIESTATE_PLAYING_NO_SKIP;
        }
    }

    @Override // com.video.adsdk.interfaces.VideoBridge
    public void pause() {
        if (this.currentState == VideoBridge.MovieState.MOVIESTATE_PLAYING_SKIP || this.currentState == VideoBridge.MovieState.MOVIESTATE_PLAYING_NO_SKIP) {
            stopPulseTimer();
            if (this.videoView.canPause()) {
                this.startPosition = this.videoView.getCurrentPosition();
                this.videoView.pause();
            }
            this.currentState = VideoBridge.MovieState.MOVIESTATE_PAUSED;
            sendCurrentStateEvent(this.currentState);
            abandonAudioFocus();
        }
    }

    @Override // com.video.adsdk.interfaces.VideoBridge
    public void stop() {
        stopPulseTimer();
        this.videoView.pause();
        shutdown();
    }

    private void init() {
        this.pulseTimer = new Timer();
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        View createAdVideoView = Helper.createAdVideoView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(createAdVideoView, layoutParams);
        createAdVideoView.setLayoutParams(layoutParams);
        this.videoView = new VideoViewWrapper((VideoView) findViewById(Helper.ID_VIDEOVIEW), this);
        findViewById(Helper.ID_BUTTONCLOSE).setVisibility(4);
        findViewById(Helper.ID_BUTTONCLOSE).setOnClickListener(new View.OnClickListener() { // from class: com.video.adsdk.internal.ADVideoView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                for (VideoBridgeListener videoBridgeListener : ADVideoView.this.m_listeners) {
                    videoBridgeListener.onSkipButtonClicked();
                }
            }
        });
        setBackgroundColor(this.savedBackgroundColor);
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.currentState = VideoBridge.MovieState.MOVIESTATE_COMPLETED;
        sendCurrentStateEvent(VideoBridge.MovieState.MOVIESTATE_COMPLETED);
        for (VideoBridgeListener videoBridgeListener : this.m_listeners) {
            videoBridgeListener.onVideoIsComplete();
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        if (!tryToRecover()) {
            sendAdvertisingFailedToLoadEvent(i, i2);
            return true;
        }
        return true;
    }

    private boolean tryToRecover() {
        String str;
        if (this.url != null) {
            try {
                str = this.fileDownloader.copyInternalToExternal(this.url);
            } catch (IOException e) {
                e.printStackTrace();
                str = null;
            }
            if (str != null) {
                this.url = str;
                play();
                return true;
            }
        }
        return false;
    }

    private void sendOnReadyToPlayEvent() {
        for (VideoBridgeListener videoBridgeListener : this.m_listeners) {
            videoBridgeListener.onVideoIsReadyToPlay(getCurrentMovieState(), this.videoView.getDuration());
        }
    }

    @Override // com.video.adsdk.interfaces.VideoBridge
    public boolean isClosableByUI() {
        return findViewById(Helper.ID_BUTTONCLOSE).getVisibility() == 0 || this.pulseTimerEventCalledInNoSkipState > 8;
    }

    @Override // com.video.adsdk.interfaces.VideoBridge
    public void showSkip() {
        findViewById(Helper.ID_BUTTONCLOSE).setVisibility(0);
        this.currentState = VideoBridge.MovieState.MOVIESTATE_PLAYING_SKIP;
    }

    private void stopPulseTimer() {
        this.pulseTimer.cancel();
        this.pulseTimer = new Timer();
    }

    private void startPulseTimer() {
        stopPulseTimer();
        this.pulseTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.video.adsdk.internal.ADVideoView.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                ADVideoView.this.post(new Runnable() { // from class: com.video.adsdk.internal.ADVideoView.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ADVideoView.this.currentState == VideoBridge.MovieState.MOVIESTATE_PLAYING_NO_SKIP) {
                            ADVideoView.access$008(ADVideoView.this);
                        }
                        if (ADVideoView.this.videoView.isPlaying()) {
                            ADVideoView.this.sendCurrentStateEvent(ADVideoView.this.getCurrentMovieState());
                        }
                    }
                });
            }
        }, 1000L, 1000L);
    }

    private void sendAdvertisingFailedToLoadEvent(int i, int i2) {
        for (VideoBridgeListener videoBridgeListener : this.m_listeners) {
            videoBridgeListener.onVideoPlaybackError(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendCurrentStateEvent(VideoBridge.MovieState movieState) {
        for (VideoBridgeListener videoBridgeListener : this.m_listeners) {
            videoBridgeListener.onVideoReportsCurrentState(movieState, getCurrentSecond());
        }
    }

    @Override // android.view.View, com.video.adsdk.interfaces.VideoBridge
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        this.savedBackgroundColor = i;
    }

    @Override // com.video.adsdk.interfaces.VideoBridge
    public void removeWebView() {
        post(new Runnable() { // from class: com.video.adsdk.internal.ADVideoView.3
            @Override // java.lang.Runnable
            public void run() {
                ((ViewGroup) ADVideoView.this.findViewById(Helper.ID_WEBVIEWCONTAINER)).removeAllViews();
            }
        });
    }

    @Override // com.video.adsdk.interfaces.VideoBridge
    public void setFileDownloader(FileDownloader fileDownloader) {
        this.fileDownloader = fileDownloader;
    }
}
