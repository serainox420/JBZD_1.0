package com.loopme;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.loopme.adview.AdView;
import com.loopme.common.Logging;
import com.loopme.common.LoopMeError;
import com.loopme.common.Utils;
import com.loopme.debugging.ErrorLog;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class VideoController implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    private static final String LOG_TAG = VideoController.class.getSimpleName();
    private AdView mAdView;
    private String mAppKey;
    private CountDownTimer mBufferingTimer;
    private Callback mCallback;
    private Context mContext;
    private String mFileRest;
    private int mFormat;
    private boolean mIs360;
    private boolean mIsSurfaceTextureAvailable;
    private volatile MediaPlayer mPlayer;
    private int mQuarter25;
    private int mQuarter50;
    private int mQuarter75;
    private Runnable mRunnable;
    private Surface mSurface;
    private int mVideoDuration;
    private int mVideoPositionWhenError;
    private boolean mWaitForVideo;
    private boolean mWasError;
    private boolean mMuteState = false;
    private Handler mHandler = new Handler(Looper.getMainLooper());

    /* loaded from: classes2.dex */
    public interface Callback {
        void onFail(LoopMeError loopMeError);

        void onVideoReachEnd();

        void onVideoSizeChanged(int i, int i2);

        void playbackFinishedWithError();

        void postponePlay(int i);
    }

    public VideoController(AdView adView, Callback callback, String str, int i) {
        this.mAdView = adView;
        this.mCallback = callback;
        this.mContext = adView.getContext();
        this.mAppKey = str;
        this.mFormat = i;
        initProgressRunnable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void contain360(boolean z) {
        this.mIs360 = z;
    }

    public void destroy() {
        Logging.out(LOG_TAG, "destroy");
        if (this.mHandler != null) {
            this.mHandler.removeCallbacks(this.mRunnable);
        }
        if (this.mBufferingTimer != null) {
            this.mBufferingTimer.cancel();
        }
        this.mRunnable = null;
        releasePlayer();
        this.mCallback = null;
        this.mSurface = null;
    }

    private void initProgressRunnable() {
        this.mRunnable = new Runnable() { // from class: com.loopme.VideoController.1
            @Override // java.lang.Runnable
            public void run() {
                if (VideoController.this.mAdView != null) {
                    int currentPosition = VideoController.this.getCurrentPosition();
                    VideoController.this.mAdView.setVideoCurrentTime(currentPosition);
                    VideoController.this.updateCurrentVolume();
                    if (currentPosition < VideoController.this.mVideoDuration) {
                        VideoController.this.mHandler.postDelayed(VideoController.this.mRunnable, 100L);
                    }
                }
            }
        };
    }

    public int getCurrentPosition() {
        if (this.mPlayer == null) {
            return 0;
        }
        return this.mPlayer.getCurrentPosition();
    }

    public void releasePlayer() {
        if (this.mPlayer != null) {
            this.mPlayer.reset();
            this.mPlayer.release();
        }
    }

    public void setSurface(Surface surface) throws IllegalStateException {
        Log.d(LOG_TAG, "setSurface " + surface);
        this.mSurface = surface;
        if (this.mPlayer != null) {
            this.mPlayer.setSurface(surface);
        }
    }

    public void waitForVideo() {
        if (this.mWaitForVideo) {
            releasePlayer();
            initPlayer(this.mFileRest);
            this.mPlayer.setSurface(this.mSurface);
            if (this.mAdView.getCurrentWebViewState() == 1) {
                this.mPlayer.start();
            }
            seekTo(this.mVideoPositionWhenError);
            Logging.out(LOG_TAG, "waitForVideo mHandler.postDelayed");
            this.mHandler.postDelayed(this.mRunnable, 200L);
            setVideoState(2);
        }
    }

    public void seekTo(int i) {
        if (this.mPlayer != null) {
            this.mPlayer.seekTo(i);
        }
    }

    public void initPlayerFromFile(String str) {
        this.mPlayer = new MediaPlayer();
        initPlayerListeners();
        this.mPlayer.setOnPreparedListener(this);
        try {
            this.mPlayer.setDataSource(str);
            this.mPlayer.prepareAsync();
        } catch (IOException e) {
            Logging.out(LOG_TAG, e.getMessage());
            setVideoState(5);
        } catch (IllegalStateException e2) {
            Logging.out(LOG_TAG, e2.getMessage());
            setVideoState(5);
        }
    }

    private void initPlayer(String str) {
        this.mPlayer = MediaPlayer.create(this.mContext, Uri.parse(str));
        initPlayerListeners();
    }

    private void initPlayerListeners() {
        this.mPlayer.setLooping(false);
        this.mPlayer.setOnErrorListener(this);
        this.mPlayer.setOnCompletionListener(this);
        this.mPlayer.setAudioStreamType(3);
    }

    public void muteVideo(boolean z) {
        if (z) {
            this.mPlayer.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        } else {
            float systemVolume = Utils.getSystemVolume();
            this.mPlayer.setVolume(systemVolume, systemVolume);
        }
        this.mMuteState = z;
    }

    private void applyMuteSettings() {
        if (this.mPlayer != null) {
            Logging.out(LOG_TAG, "applyMuteSettings " + this.mMuteState);
            muteVideo(this.mMuteState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentVolume() {
        if (!this.mMuteState) {
            float systemVolume = Utils.getSystemVolume();
            this.mPlayer.setVolume(systemVolume, systemVolume);
        }
    }

    public void setSurfaceTextureAvailable(boolean z) {
        this.mIsSurfaceTextureAvailable = z;
    }

    private boolean isPlayerReadyForPlay() {
        return (this.mPlayer == null || this.mAdView == null || this.mWasError) ? false : true;
    }

    public void playVideo(int i, boolean z) {
        if (isPlayerReadyForPlay()) {
            if (!z && !this.mIsSurfaceTextureAvailable) {
                Logging.out(LOG_TAG, "postpone play (surface not available)");
                this.mCallback.postponePlay(i);
                return;
            }
            try {
                if (!this.mPlayer.isPlaying()) {
                    Logging.out(LOG_TAG, "Play video " + i);
                    applyMuteSettings();
                    if (i == 10) {
                        this.mPlayer.seekTo(0);
                    }
                    this.mPlayer.start();
                    this.mAdView.setVideoState(2);
                    this.mHandler.postDelayed(this.mRunnable, 200L);
                }
            } catch (IllegalStateException e) {
                Logging.out(LOG_TAG, "playVideo:" + e.getMessage());
            }
        }
    }

    public void pauseVideo() {
        if (this.mPlayer != null && this.mAdView != null && !this.mWasError) {
            try {
                if (this.mPlayer.isPlaying()) {
                    Logging.out(LOG_TAG, "Pause video");
                    this.mHandler.removeCallbacks(this.mRunnable);
                    this.mPlayer.pause();
                    this.mAdView.setVideoState(3);
                }
            } catch (IllegalStateException e) {
                e.printStackTrace();
                Logging.out(LOG_TAG, e.getMessage());
            }
        }
    }

    public void setFileRest(String str) {
        this.mFileRest = str;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        if (this.mAdView.getCurrentVideoState() != 4) {
            this.mHandler.removeCallbacks(this.mRunnable);
            this.mAdView.setVideoCurrentTime(this.mVideoDuration);
            this.mAdView.setVideoState(4);
            if (this.mCallback != null) {
                this.mCallback.onVideoReachEnd();
            }
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Logging.out(LOG_TAG, "onError: " + i2);
        this.mHandler.removeCallbacks(this.mRunnable);
        if (i2 == -1004) {
            Logging.out(LOG_TAG, "end of preview file");
            this.mPlayer.setOnErrorListener(null);
            this.mPlayer.setOnCompletionListener(null);
            if (!TextUtils.isEmpty(this.mFileRest)) {
                this.mVideoPositionWhenError = mediaPlayer.getCurrentPosition();
                this.mPlayer.reset();
                this.mPlayer.release();
                this.mPlayer = MediaPlayer.create(this.mContext, Uri.parse(this.mFileRest));
                initPlayerListeners();
                this.mPlayer.setSurface(this.mSurface);
                this.mPlayer.start();
                this.mPlayer.seekTo(this.mVideoPositionWhenError);
                Logging.out(LOG_TAG, "mHandler.postDelayed");
                this.mHandler.postDelayed(this.mRunnable, 200L);
            } else {
                this.mWaitForVideo = true;
                this.mVideoPositionWhenError = mediaPlayer.getCurrentPosition();
                setVideoState(6);
                this.mBufferingTimer = new CountDownTimer(2000L, 1000L) { // from class: com.loopme.VideoController.2
                    @Override // android.os.CountDownTimer
                    public void onTick(long j) {
                    }

                    @Override // android.os.CountDownTimer
                    public void onFinish() {
                        ErrorLog.post("Buffering 2 seconds");
                    }
                };
                this.mBufferingTimer.start();
            }
        } else {
            if (this.mPlayer != null) {
                this.mPlayer.setOnErrorListener(null);
                this.mPlayer.setOnCompletionListener(null);
            }
            if (this.mAdView.getCurrentVideoState() == 5 || this.mAdView.getCurrentVideoState() == 0) {
                if (this.mCallback != null) {
                    this.mCallback.onFail(new LoopMeError("Error during video loading"));
                }
            } else {
                this.mAdView.setWebViewState(2);
                this.mAdView.setVideoState(3);
                this.mCallback.playbackFinishedWithError();
                if (this.mPlayer != null) {
                    this.mPlayer.reset();
                }
                this.mWasError = true;
            }
        }
        return true;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        Logging.out(LOG_TAG, "onPrepared");
        setVideoState(1);
        extractVideoInfo(mediaPlayer);
        if (this.mBufferingTimer != null) {
            this.mBufferingTimer.cancel();
        }
    }

    private void setVideoState(int i) {
        if (this.mAdView != null) {
            this.mAdView.setVideoState(i);
        }
    }

    private void extractVideoInfo(MediaPlayer mediaPlayer) {
        if (mediaPlayer != null) {
            int videoWidth = mediaPlayer.getVideoWidth();
            int videoHeight = mediaPlayer.getVideoHeight();
            if (this.mCallback != null) {
                this.mCallback.onVideoSizeChanged(videoWidth, videoHeight);
            }
            this.mVideoDuration = mediaPlayer.getDuration();
            if (this.mAdView != null) {
                this.mAdView.setVideoDuration(this.mVideoDuration);
            }
            this.mQuarter25 = this.mVideoDuration / 4;
            this.mQuarter50 = this.mVideoDuration / 2;
            this.mQuarter75 = this.mQuarter25 + this.mQuarter50;
        }
    }
}
