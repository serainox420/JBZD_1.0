package com.video.adsdk.internal;

import android.net.Uri;
import android.util.Log;
import android.widget.VideoView;
import com.openx.view.mraid.JSInterface;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
/* loaded from: classes3.dex */
public class VideoViewWrapper {
    private final VideoView videoView;

    public VideoViewWrapper(VideoView videoView, ADVideoView aDVideoView) {
        this.videoView = videoView;
        this.videoView.setOnErrorListener(aDVideoView);
        this.videoView.setOnCompletionListener(aDVideoView);
    }

    public boolean canPause() {
        try {
            return this.videoView.canPause();
        } catch (IllegalStateException e) {
            e.printStackTrace();
            logIllegalStateException("canPause");
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public int getCurrentPosition() {
        try {
            return this.videoView.getCurrentPosition();
        } catch (IllegalStateException e) {
            e.printStackTrace();
            logIllegalStateException(JSInterface.ACTION_GET_CURRENT_POSITION);
            return -1;
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public int getDuration() {
        try {
            return this.videoView.getDuration();
        } catch (IllegalStateException e) {
            e.printStackTrace();
            logIllegalStateException("getDuration");
            return -1;
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public boolean isPlaying() {
        try {
            return this.videoView.isPlaying();
        } catch (IllegalStateException e) {
            e.printStackTrace();
            logIllegalStateException("isPlaying");
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public void start() {
        try {
            this.videoView.start();
        } catch (IllegalStateException e) {
            e.printStackTrace();
            logIllegalStateException(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void pause() {
        try {
            this.videoView.pause();
        } catch (IllegalStateException e) {
            e.printStackTrace();
            logIllegalStateException(SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void stopPlayback() {
        try {
            this.videoView.stopPlayback();
        } catch (IllegalStateException e) {
            e.printStackTrace();
            logIllegalStateException("stopPlayback");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setVideoURI(Uri uri) {
        try {
            this.videoView.setVideoURI(uri);
        } catch (IllegalStateException e) {
            e.printStackTrace();
            logIllegalStateException("setVideoURI");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void seekTo(int i) {
        try {
            this.videoView.seekTo(i);
        } catch (IllegalStateException e) {
            e.printStackTrace();
            logIllegalStateException("seekTo");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void logIllegalStateException(String str) {
        Log.e("VIDEOADSDK", "IllegalStateException thrown while calling videoView#" + str);
    }
}
