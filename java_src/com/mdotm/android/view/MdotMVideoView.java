package com.mdotm.android.view;

import android.app.ProgressDialog;
import android.content.Context;
import android.media.MediaPlayer;
import android.os.Handler;
import android.widget.VideoView;
import com.mdotm.android.listener.MdotMAdActionListener;
import com.mdotm.android.model.MdotMAdResponse;
import com.mdotm.android.utils.MdotMLogger;
import com.mdotm.android.utils.MdotMUtils;
/* loaded from: classes3.dex */
class MdotMVideoView extends VideoView implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    MdotMAdActionListener adActionListener;
    boolean isVideoReady;
    MdotMAdResponse mAdResponse;
    Context mContext;
    private boolean mDidImpressionRecoded;
    boolean mIsGetIntoError;
    ProgressDialog mProgressDialog;

    public MdotMVideoView(Context context, MdotMAdResponse mdotMAdResponse, MdotMAdActionListener mdotMAdActionListener) {
        super(context);
        this.mDidImpressionRecoded = false;
        this.isVideoReady = false;
        this.mIsGetIntoError = false;
        this.mContext = context;
        this.mAdResponse = mdotMAdResponse;
        this.adActionListener = mdotMAdActionListener;
        this.isVideoReady = false;
        this.mIsGetIntoError = false;
        this.mDidImpressionRecoded = false;
        this.mProgressDialog = new ProgressDialog(context);
        this.mProgressDialog.setMessage("Loading...");
        this.mProgressDialog.setCanceledOnTouchOutside(false);
        this.mProgressDialog.show();
        requestFocus();
        setOnPreparedListener(this);
        setOnCompletionListener(this);
        setOnErrorListener(this);
        setVideoPath(mdotMAdResponse.getImageUrl());
        setFocusable(true);
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        MdotMLogger.i(this, "onPrepared");
        this.isVideoReady = true;
        this.mProgressDialog.dismiss();
        mediaPlayer.start();
    }

    public void PauseVideo() {
        if (isPlaying()) {
            pause();
        }
    }

    public void stopVideo(Handler handler) {
        MdotMLogger.i(this, "Stop video playback");
        if (isPlaying()) {
            stopPlayback();
        }
        if (!this.mIsGetIntoError && !this.mDidImpressionRecoded) {
            MdotMLogger.i(this, "Call report impression video resource");
            handler.post(new Runnable() { // from class: com.mdotm.android.view.MdotMVideoView.1
                @Override // java.lang.Runnable
                public void run() {
                    MdotMLogger.i(this, "Call report impression image");
                    MdotMUtils.getUtilsInstance().reportImpression(MdotMVideoView.this.mAdResponse.getImp_pixel(), MdotMVideoView.this.mContext);
                    MdotMVideoView.this.mDidImpressionRecoded = true;
                }
            });
        }
    }

    public void playVideo() {
        if (!isPlaying()) {
            start();
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        MdotMLogger.i(this, "On completion of video");
        this.adActionListener.onPlayStop();
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        MdotMLogger.i(this, "On error playing  video " + i + " extra " + i2);
        this.mIsGetIntoError = true;
        if (this.mProgressDialog != null && this.mProgressDialog.isShowing()) {
            this.mProgressDialog.dismiss();
        }
        this.adActionListener.onPlayError();
        return true;
    }

    public boolean isReadyToPlay() {
        return this.isVideoReady;
    }
}
