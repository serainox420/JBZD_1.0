package com.unity3d.ads.video;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.Build;
import android.widget.VideoView;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.WebViewEventCategory;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public class VideoPlayerView extends VideoView {
    private boolean _infoListenerEnabled;
    private MediaPlayer _mediaPlayer;
    private Timer _prepareTimer;
    private int _progressEventInterval;
    private Timer _videoTimer;
    private String _videoUrl;
    private Float _volume;

    public VideoPlayerView(Context context) {
        super(context);
        this._progressEventInterval = 500;
        this._mediaPlayer = null;
        this._volume = null;
        this._infoListenerEnabled = true;
    }

    private void startVideoProgressTimer() {
        this._videoTimer = new Timer();
        this._videoTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.unity3d.ads.video.VideoPlayerView.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                boolean z;
                try {
                    z = VideoPlayerView.this.isPlaying();
                    try {
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.VIDEOPLAYER, VideoPlayerEvent.PROGRESS, Integer.valueOf(VideoPlayerView.this.getCurrentPosition()));
                    } catch (IllegalStateException e) {
                        e = e;
                        DeviceLog.exception("Exception while sending current position to webapp", e);
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.VIDEOPLAYER, VideoPlayerEvent.ILLEGAL_STATE, VideoPlayerEvent.PROGRESS, Boolean.valueOf(z));
                    }
                } catch (IllegalStateException e2) {
                    e = e2;
                    z = false;
                }
            }
        }, this._progressEventInterval, this._progressEventInterval);
    }

    public void stopVideoProgressTimer() {
        if (this._videoTimer != null) {
            this._videoTimer.cancel();
            this._videoTimer.purge();
            this._videoTimer = null;
        }
    }

    private void startPrepareTimer(long j) {
        this._prepareTimer = new Timer();
        this._prepareTimer.schedule(new TimerTask() { // from class: com.unity3d.ads.video.VideoPlayerView.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (!VideoPlayerView.this.isPlaying()) {
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.VIDEOPLAYER, VideoPlayerEvent.PREPARE_TIMEOUT, VideoPlayerView.this._videoUrl);
                    DeviceLog.error("Video player prepare timeout: " + VideoPlayerView.this._videoUrl);
                }
            }
        }, j);
    }

    public void stopPrepareTimer() {
        if (this._prepareTimer != null) {
            this._prepareTimer.cancel();
            this._prepareTimer.purge();
            this._prepareTimer = null;
        }
    }

    public boolean prepare(String str, final float f, int i) {
        DeviceLog.entered();
        this._videoUrl = str;
        setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.unity3d.ads.video.VideoPlayerView.3
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                VideoPlayerView.this.stopPrepareTimer();
                if (mediaPlayer != null) {
                    VideoPlayerView.this._mediaPlayer = mediaPlayer;
                }
                VideoPlayerView.this.setVolume(Float.valueOf(f));
                WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.VIDEOPLAYER, VideoPlayerEvent.PREPARED, Integer.valueOf(mediaPlayer.getDuration()), Integer.valueOf(mediaPlayer.getVideoWidth()), Integer.valueOf(mediaPlayer.getVideoHeight()), VideoPlayerView.this._videoUrl);
            }
        });
        setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.unity3d.ads.video.VideoPlayerView.4
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
                VideoPlayerView.this.stopPrepareTimer();
                if (mediaPlayer != null) {
                    VideoPlayerView.this._mediaPlayer = mediaPlayer;
                }
                WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.VIDEOPLAYER, VideoPlayerEvent.GENERIC_ERROR, Integer.valueOf(i2), Integer.valueOf(i3), VideoPlayerView.this._videoUrl);
                VideoPlayerView.this.stopVideoProgressTimer();
                return true;
            }
        });
        setInfoListenerEnabled(this._infoListenerEnabled);
        if (i > 0) {
            startPrepareTimer(i);
        }
        try {
            setVideoPath(this._videoUrl);
            return true;
        } catch (Exception e) {
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.VIDEOPLAYER, VideoPlayerEvent.PREPARE_ERROR, this._videoUrl);
            DeviceLog.exception("Error preparing video: " + this._videoUrl, e);
            return false;
        }
    }

    public void play() {
        DeviceLog.entered();
        setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.unity3d.ads.video.VideoPlayerView.5
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                if (mediaPlayer != null) {
                    VideoPlayerView.this._mediaPlayer = mediaPlayer;
                }
                WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.VIDEOPLAYER, VideoPlayerEvent.COMPLETED, VideoPlayerView.this._videoUrl);
                VideoPlayerView.this.stopVideoProgressTimer();
            }
        });
        start();
        stopVideoProgressTimer();
        startVideoProgressTimer();
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.VIDEOPLAYER, VideoPlayerEvent.PLAY, this._videoUrl);
    }

    public void setInfoListenerEnabled(boolean z) {
        this._infoListenerEnabled = z;
        if (Build.VERSION.SDK_INT > 16) {
            if (this._infoListenerEnabled) {
                setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.unity3d.ads.video.VideoPlayerView.6
                    @Override // android.media.MediaPlayer.OnInfoListener
                    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.VIDEOPLAYER, VideoPlayerEvent.INFO, Integer.valueOf(i), Integer.valueOf(i2), VideoPlayerView.this._videoUrl);
                        return true;
                    }
                });
            } else {
                setOnInfoListener(null);
            }
        }
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void pause() {
        try {
            super.pause();
            stopVideoProgressTimer();
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.VIDEOPLAYER, VideoPlayerEvent.PAUSE, this._videoUrl);
        } catch (Exception e) {
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.VIDEOPLAYER, VideoPlayerEvent.PAUSE_ERROR, this._videoUrl);
            DeviceLog.exception("Error pausing video", e);
        }
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i) {
        try {
            super.seekTo(i);
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.VIDEOPLAYER, VideoPlayerEvent.SEEKTO, this._videoUrl);
        } catch (Exception e) {
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.VIDEOPLAYER, VideoPlayerEvent.SEEKTO_ERROR, this._videoUrl);
            DeviceLog.exception("Error seeking video", e);
        }
    }

    public void stop() {
        stopPlayback();
        stopVideoProgressTimer();
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.VIDEOPLAYER, VideoPlayerEvent.STOP, this._videoUrl);
    }

    public float getVolume() {
        return this._volume.floatValue();
    }

    public void setVolume(Float f) {
        try {
            this._mediaPlayer.setVolume(f.floatValue(), f.floatValue());
            this._volume = f;
        } catch (Exception e) {
            DeviceLog.exception("MediaPlayer generic error", e);
        }
    }

    public void setProgressEventInterval(int i) {
        this._progressEventInterval = i;
        if (this._videoTimer != null) {
            stopVideoProgressTimer();
            startVideoProgressTimer();
        }
    }

    public int getProgressEventInterval() {
        return this._progressEventInterval;
    }
}
