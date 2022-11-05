package com.mdotm.android.vast;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.media.MediaPlayer;
import android.os.Handler;
import android.provider.Settings;
import android.widget.VideoView;
import com.applovin.sdk.AppLovinErrorCodes;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.mdotm.android.listener.InterstitialVideoListener;
import com.mdotm.android.listener.MdotMAdActionListener;
import com.mdotm.android.utils.MdotMLogger;
import com.mdotm.android.utils.MdotMUtils;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public class VastVideoView extends VideoView implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    private MdotMAdActionListener adActionListener;
    private int duration;
    private ImpressionItem impression;
    ArrayList<String> impressionString;
    private boolean isRewarded;
    boolean isVideoReady;
    private LinearAd mAdResponse;
    private Context mContext;
    private boolean mDidImpressionRecoded;
    private Handler mHandler;
    boolean mIsGetIntoError;
    private ProgressDialog mProgressDialog;
    private LinearAdTrackingEvents trackingEvents;
    private InterstitialVideoListener videoListener;
    private Timer videoTimer;
    private VolumnContentObserver volumnListener;

    public VastVideoView(Context context) {
        super(context);
        this.mDidImpressionRecoded = false;
        this.isVideoReady = false;
        this.mIsGetIntoError = false;
        this.isRewarded = false;
    }

    public VastVideoView(Context context, LinearAd linearAd, MdotMAdActionListener mdotMAdActionListener, InterstitialVideoListener interstitialVideoListener, Handler handler, ArrayList<String> arrayList, boolean z) {
        super(context);
        this.mDidImpressionRecoded = false;
        this.isVideoReady = false;
        this.mIsGetIntoError = false;
        this.isRewarded = false;
        this.mContext = context;
        this.mAdResponse = linearAd;
        this.mHandler = handler;
        this.trackingEvents = this.mAdResponse.getTrackingEvents();
        this.adActionListener = mdotMAdActionListener;
        this.videoListener = interstitialVideoListener;
        this.impressionString = arrayList;
        this.isRewarded = z;
        prepareVideo();
    }

    private void prepareVideo() {
        this.isVideoReady = false;
        this.mIsGetIntoError = false;
        this.mDidImpressionRecoded = false;
        this.mProgressDialog = new ProgressDialog(this.mContext);
        this.mProgressDialog.setMessage("Loading...");
        this.mProgressDialog.setCanceledOnTouchOutside(false);
        this.mProgressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mdotm.android.vast.VastVideoView.1
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if (!VastVideoView.this.isPlaying()) {
                    VastVideoView.this.adActionListener.onPlayError();
                }
            }
        });
        this.mProgressDialog.show();
        String url = this.mAdResponse.getAdResource().getUrl();
        MdotMLogger.d(this, "video path :: " + url);
        setZOrderOnTop(true);
        setVideoPath(url);
        requestFocus();
        setOnPreparedListener(this);
        setOnCompletionListener(this);
        setOnErrorListener(this);
        this.impression = new ImpressionItem();
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        MdotMLogger.d(this, "On error playing  video " + i + " extra " + i2);
        this.mIsGetIntoError = true;
        if (this.mProgressDialog != null && this.mProgressDialog.isShowing()) {
            this.mProgressDialog.dismiss();
        }
        this.impression.sendImpression(null);
        this.adActionListener.onPlayError();
        return true;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        MdotMLogger.d(this, "On completion of video");
        this.videoListener.showCloseButton();
        this.impression.isComplete = true;
        if (this.trackingEvents != null) {
            this.impression.sendImpression(this.trackingEvents.complete);
        }
        this.adActionListener.onPlayStop();
        cancelTimer();
    }

    private void cancelTimer() {
        if (this.videoTimer != null) {
            this.videoTimer.cancel();
        }
        if (this.volumnListener != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.volumnListener);
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        String duration = this.mAdResponse.getDuration();
        MdotMLogger.d(this, "responseDuration" + duration);
        this.duration = getDuration() / 1000;
        if (duration != null && this.duration < 0) {
            if (duration.matches("[0-9]{2}:[0-9]{2}:[0-9]{2}")) {
                String[] split = duration.split(":");
                this.duration = Integer.parseInt(split[2]) + (Integer.parseInt(split[0]) * 3600) + (Integer.parseInt(split[1]) * 60);
            } else if (duration.matches("[0-9]+")) {
                this.duration = Integer.parseInt(duration);
            } else {
                this.duration = getDuration() / 1000;
            }
            MdotMLogger.d(this, "responseDuration" + this.duration);
        }
        this.impression.setImpressionTime(this.duration);
        this.isVideoReady = true;
        this.mProgressDialog.dismiss();
        start();
        this.videoListener.setPlayStart();
        this.impression.sendImpression(this.impressionString);
        if (this.trackingEvents != null) {
            MdotMLogger.d(this, "Start playing video");
            this.impression.sendImpression(this.trackingEvents.start);
            this.impression.sendImpression(this.trackingEvents.creativeView);
        }
        if (this.trackingEvents != null) {
            this.volumnListener = new VolumnContentObserver(this.mContext, this.mHandler, this.trackingEvents.mute, this.trackingEvents.unMute);
            this.mContext.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.volumnListener);
        }
    }

    public boolean isReadyToPlay() {
        return this.isVideoReady;
    }

    public void playVideo() {
        if (!isPlaying() && !this.impression.isComplete) {
            start();
            if (this.trackingEvents != null) {
                MdotMLogger.d(this, "Resume impression");
                this.impression.sendImpression(this.trackingEvents.resume);
                return;
            }
            return;
        }
        MdotMLogger.d(this, "Play called after one complete play");
        prepareVideo();
    }

    public void PauseVideo() {
        if (isPlaying()) {
            pause();
            if (this.trackingEvents != null) {
                MdotMLogger.d(this, "Pause impression event");
                this.impression.sendImpression(this.trackingEvents.pause);
            }
        } else if (this.mProgressDialog != null && this.mProgressDialog.isShowing()) {
            this.mProgressDialog.dismiss();
        }
    }

    public void skipVideo() {
        MdotMLogger.d(this, "Skip impression event");
        if (this.trackingEvents == null || this.trackingEvents.skip == null) {
            return;
        }
        this.impression.sendImpression(this.trackingEvents.skip);
    }

    public void stopVideo() {
        MdotMLogger.d(this, "Stop video playback");
        if (isPlaying()) {
            stopPlayback();
        }
        cancelTimer();
        if (!this.mIsGetIntoError && !this.mDidImpressionRecoded) {
            MdotMLogger.d(this, "Call report impression video resource");
            this.mDidImpressionRecoded = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class ImpressionItem {
        public int durationHalf;
        public int durationQuarter;
        public int durationThreeQuarter;
        public int durationTotal;
        public boolean isQuarter = false;
        public boolean isHalf = false;
        public boolean isThreeQuarter = false;
        public boolean isComplete = false;
        public boolean isStart = false;
        public boolean isShowClose = false;

        public ImpressionItem() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setImpressionTime(int i) {
            VastVideoView.this.impression.durationTotal = i;
            MdotMLogger.d(this, "onPrepared Duration = " + VastVideoView.this.impression.durationTotal);
            if (this.durationTotal != 0) {
                this.durationQuarter = this.durationTotal / 4;
                this.durationHalf = this.durationTotal / 2;
                this.durationThreeQuarter = (this.durationTotal * 3) / 4;
                MdotMLogger.d(this, "quarter position = " + this.durationQuarter);
                MdotMLogger.d(this, "half position = " + this.durationHalf);
                MdotMLogger.d(this, "three qurter position = " + this.durationThreeQuarter);
                setTimer();
            }
        }

        private void setTimer() {
            VastVideoView.this.videoTimer = new Timer();
            VastVideoView.this.videoTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.mdotm.android.vast.VastVideoView.ImpressionItem.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    int parseInt;
                    try {
                        int currentPosition = VastVideoView.this.getCurrentPosition();
                        if (VastVideoView.this.isRewarded) {
                            VastVideoView.this.videoListener.decrementCounter((VastVideoView.this.getDuration() - currentPosition) / 1000, VastVideoView.this.getDuration(), VastVideoView.this.mAdResponse.counteroffset, VastVideoView.this.mAdResponse.countersize, VastVideoView.this.mAdResponse.counterstroke);
                        }
                        MdotMLogger.d(this, "position " + currentPosition);
                        if (currentPosition > 0 && !ImpressionItem.this.isStart) {
                            MdotMLogger.d(this, "video play start :: " + currentPosition);
                            ImpressionItem.this.isStart = true;
                        }
                        MdotMLogger.d(this, "mAdResponse.skipOffset" + VastVideoView.this.mAdResponse.skipOffset);
                        if (VastVideoView.this.mAdResponse.skipOffset == null) {
                            if (!VastVideoView.this.isRewarded && currentPosition >= 5000 && !ImpressionItem.this.isShowClose) {
                                ImpressionItem.this.isShowClose = true;
                                MdotMLogger.d(this, "calling show close btn");
                                VastVideoView.this.videoListener.showCloseButton();
                            }
                        } else {
                            MdotMLogger.d(this, "mAdResponse.skipOffset" + VastVideoView.this.mAdResponse.skipOffset);
                            if (VastVideoView.this.mAdResponse.skipOffset.matches("[0-9]{2}:[0-9]{2}:[0-9]{2}[.]*[0-9]*")) {
                                String[] split = VastVideoView.this.mAdResponse.skipOffset.split(":");
                                parseInt = ((int) Double.parseDouble(split[2])) + (Integer.parseInt(split[0]) * 3600) + (Integer.parseInt(split[1]) * 60);
                            } else if (!VastVideoView.this.mAdResponse.skipOffset.matches("[0-9]+%")) {
                                parseInt = VastVideoView.this.mAdResponse.skipOffset.matches("[0-9]+") ? Integer.parseInt(VastVideoView.this.mAdResponse.skipOffset) : 0;
                            } else {
                                parseInt = (Integer.parseInt(VastVideoView.this.mAdResponse.skipOffset.split("%")[0]) * VastVideoView.this.duration) / 100;
                                MdotMLogger.d(this, "showng close btn after sec" + parseInt);
                            }
                            if ((parseInt * 1000) + AppLovinErrorCodes.INCENTIVIZED_SERVER_TIMEOUT <= currentPosition) {
                                ImpressionItem.this.isShowClose = true;
                                MdotMLogger.d(this, "showng close btn after sec" + parseInt);
                                VastVideoView.this.videoListener.showCloseButton();
                            }
                            if (VastVideoView.this.duration <= parseInt) {
                                MdotMLogger.d(this, "duration is smaller than offset" + VastVideoView.this.duration + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + parseInt);
                                int i = VastVideoView.this.duration;
                                if ((VastVideoView.this.duration - 1) * 1000 <= currentPosition) {
                                    ImpressionItem.this.isShowClose = true;
                                    MdotMLogger.d(this, "showng close btn after sec" + i);
                                    VastVideoView.this.videoListener.showCloseButton();
                                }
                            }
                        }
                        MdotMLogger.d(this, "position" + currentPosition);
                        MdotMLogger.d(this, "getDuration" + VastVideoView.this.getDuration());
                        if (currentPosition >= ImpressionItem.this.durationQuarter * 1000 && !ImpressionItem.this.isQuarter) {
                            MdotMLogger.d(this, "quarter position crossed ::" + currentPosition);
                            ImpressionItem.this.isQuarter = true;
                            if (VastVideoView.this.trackingEvents == null) {
                                return;
                            }
                            ImpressionItem.this.sendImpression(VastVideoView.this.trackingEvents.firstQuartile);
                        } else if (currentPosition >= ImpressionItem.this.durationHalf * 1000 && !ImpressionItem.this.isHalf) {
                            MdotMLogger.d(this, "half position crossed :: " + currentPosition);
                            ImpressionItem.this.isHalf = true;
                            if (VastVideoView.this.trackingEvents == null) {
                                return;
                            }
                            ImpressionItem.this.sendImpression(VastVideoView.this.trackingEvents.midPoint);
                        } else if (currentPosition >= ImpressionItem.this.durationThreeQuarter * 1000 && !ImpressionItem.this.isThreeQuarter) {
                            MdotMLogger.d(this, "three qurter position crossed ::" + currentPosition);
                            ImpressionItem.this.isThreeQuarter = true;
                            if (VastVideoView.this.trackingEvents == null) {
                                return;
                            }
                            ImpressionItem.this.sendImpression(VastVideoView.this.trackingEvents.thirdQuartile);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }, 0, 1000);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendImpression(final ArrayList<String> arrayList) {
            VastVideoView.this.mHandler.post(new Runnable() { // from class: com.mdotm.android.vast.VastVideoView.ImpressionItem.2
                @Override // java.lang.Runnable
                public void run() {
                    if (arrayList != null) {
                        int i = 0;
                        while (true) {
                            int i2 = i;
                            if (i2 < arrayList.size()) {
                                MdotMLogger.d(this, "Event URL" + ((String) arrayList.get(i2)));
                                MdotMUtils.getUtilsInstance().reportImpression((String) arrayList.get(i2), VastVideoView.this.mContext);
                                i = i2 + 1;
                            } else {
                                return;
                            }
                        }
                    } else {
                        MdotMLogger.d(this, "Event URL null");
                    }
                }
            });
        }
    }
}
