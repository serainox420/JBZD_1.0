package com.mdotm.android.vast;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.flurry.android.AdCreative;
import com.google.android.gms.drive.DriveFile;
import com.mdotm.android.constants.MdotMConstants;
import com.mdotm.android.listener.InterstitialActionListener;
import com.mdotm.android.listener.InterstitialVideoListener;
import com.mdotm.android.listener.MdotMAdActionListener;
import com.mdotm.android.utils.MdotMBase64;
import com.mdotm.android.utils.MdotMLogger;
import com.mdotm.android.utils.MdotMUtils;
import com.mdotm.android.view.MdotMDecrementCounterView;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public class VastInterstitialActivity extends Activity implements InterstitialVideoListener, MdotMAdActionListener {
    private static boolean isCompletedPlaying = false;
    private ArrayList<String> adClickTrack;
    private ArrayList<String> adClickUrl;
    private VastAd adResponse;
    private MdotMDecrementCounterView circularView;
    private RelativeLayout closeLayout;
    private Companion companionAd;
    private FrameLayout companionImageLayout;
    private ImageView companionImgView;
    private FrameLayout companionWebLayout;
    private WebView companionWebView;
    private TextView durationTextView;
    private ArrayList<String> iconCreativesList;
    private ImageView iconImage;
    private Timer iconTimer;
    private ArrayList<String> impressionString;
    private InterstitialActionListener interstitialActionListener;
    private long interstitialListenerId;
    private boolean isRewarded;
    private Handler mHandler;
    private VastVideoView mVideoView;
    private String reward;
    private FrameLayout.LayoutParams tempParams;
    private FrameLayout tempRelative;
    private long timeRunning;
    private FrameLayout videoLayout;
    private boolean adClicked = false;
    boolean didDismissCalled = false;
    private boolean isShowingCompanionImage = false;
    private boolean isVideoClickable = true;
    private boolean rewardCallbackCalled = false;
    private boolean isShownIcon = false;
    private int angle = 0;
    private boolean tempRelativeAdded = false;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        MdotMLogger.d(this, "onCreate is called");
        super.onCreate(bundle);
        this.mHandler = new Handler();
        this.adResponse = (VastAd) getIntent().getExtras().getSerializable(MdotMConstants.RESPONSE);
        ArrayList<BaseVastAd> vastAds = this.adResponse.getVastAds();
        this.isRewarded = getIntent().getBooleanExtra(MdotMConstants.IS_REWARDED, false);
        this.reward = getIntent().getStringExtra("reward");
        this.interstitialListenerId = getIntent().getExtras().getLong("InterstitialActionListenerId");
        MdotMLogger.d(this, "listener id " + this.interstitialListenerId);
        this.interstitialActionListener = MdotMUtils.getUtilsInstance().getInterstitialActionListener(this.interstitialListenerId);
        if (vastAds != null && vastAds.size() >= 2) {
            this.companionAd = (Companion) vastAds.get(1);
        }
        if (this.isRewarded) {
            this.isVideoClickable = false;
        }
        if (this.companionAd != null && this.companionAd.companionImageByteArray == null && Companion.htmlResource == null) {
            this.isShowingCompanionImage = true;
        }
        if (this.adResponse != null) {
            if (getIntent().getExtras().getInt("ScreenOrientation") == 1) {
                setRequestedOrientation(7);
            } else if (getIntent().getExtras().getInt("ScreenOrientation") == 2) {
                setRequestedOrientation(6);
            }
            FrameLayout frameLayout = new FrameLayout(this);
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            frameLayout.setBackgroundColor(-12303292);
            this.impressionString = this.adResponse.getImpression();
            MdotMLogger.d(this, "Size =" + vastAds.size());
            int adType = vastAds.get(0).getAdType();
            MdotMLogger.d(this, "Vast ad type :: " + adType);
            switch (adType) {
                case 1:
                    LinearAd linearAd = (LinearAd) vastAds.get(0);
                    this.adClickUrl = linearAd.getVideoClicks();
                    this.adClickTrack = linearAd.getVideoClickTrack();
                    this.mVideoView = new VastVideoView(this, linearAd, this, this, this.mHandler, this.impressionString, this.isRewarded);
                    this.videoLayout = getVideoLayout();
                    frameLayout.addView(this.videoLayout);
                    this.tempRelative = new FrameLayout(getApplicationContext());
                    this.tempParams = new FrameLayout.LayoutParams(-1, -1);
                    this.tempParams.setMargins(getPixels(5), this.videoLayout.getHeight() - getPixels(72), getPixels(0), getPixels(0));
                    this.tempRelative.setLayoutParams(this.tempParams);
                    if (this.adResponse.liniearAndCompanion) {
                        if (this.companionAd.companionImageByteArray != null) {
                            this.companionImageLayout = new FrameLayout(getApplicationContext());
                            this.companionImageLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                            MdotMLogger.d(this, "initialize companion view");
                            this.companionImgView = new ImageView(getApplicationContext());
                            this.companionImgView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                            this.companionImgView.setImageBitmap(BitmapFactory.decodeByteArray(this.companionAd.companionImageByteArray, 0, this.companionAd.companionImageByteArray.length));
                            this.companionImageLayout.addView(this.companionImgView);
                            this.companionImageLayout.addView(getCloseButtonView());
                            this.companionImgView.setOnTouchListener(new View.OnTouchListener() { // from class: com.mdotm.android.vast.VastInterstitialActivity.1
                                @Override // android.view.View.OnTouchListener
                                public boolean onTouch(View view, MotionEvent motionEvent) {
                                    int action = motionEvent.getAction();
                                    MdotMLogger.d(this, "onTouch Companoin:: " + action);
                                    if (action == 0 && !VastInterstitialActivity.this.adClicked) {
                                        VastInterstitialActivity.this.adClicked = true;
                                        VastInterstitialActivity.this.clicked();
                                        return false;
                                    }
                                    return false;
                                }
                            });
                            frameLayout.addView(this.companionImageLayout);
                            this.companionImageLayout.setVisibility(4);
                            frameLayout.addView(getCloseButtonView());
                        } else if (Companion.htmlResource != null) {
                            this.companionWebLayout = new FrameLayout(getApplicationContext());
                            this.companionWebLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                            MdotMLogger.d(this, "initialize companion view");
                            this.companionWebView = new WebView(getApplicationContext());
                            this.companionWebView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                            WebSettings settings = this.companionWebView.getSettings();
                            this.companionWebView.setWebViewClient(new WebViewClient() { // from class: com.mdotm.android.vast.VastInterstitialActivity.2
                                @Override // android.webkit.WebViewClient
                                public void onReceivedError(WebView webView, int i, String str, String str2) {
                                    MdotMLogger.d(this, "inside reciecve error" + i);
                                    VastInterstitialActivity.this.companionWebView.setVisibility(4);
                                    VastInterstitialActivity.this.isShowingCompanionImage = true;
                                }
                            });
                            settings.setJavaScriptEnabled(true);
                            this.companionWebView.loadUrl(Companion.htmlResource);
                            this.companionWebLayout.addView(this.companionWebView);
                            this.companionWebLayout.addView(getCloseButtonView());
                            this.companionWebView.setOnTouchListener(new View.OnTouchListener() { // from class: com.mdotm.android.vast.VastInterstitialActivity.3
                                @Override // android.view.View.OnTouchListener
                                public boolean onTouch(View view, MotionEvent motionEvent) {
                                    int action = motionEvent.getAction();
                                    MdotMLogger.d(this, "onTouch Companoin:: " + action);
                                    if (action == 0 && !VastInterstitialActivity.this.adClicked) {
                                        VastInterstitialActivity.this.adClicked = true;
                                        VastInterstitialActivity.this.clicked();
                                        return false;
                                    }
                                    return false;
                                }
                            });
                            frameLayout.addView(this.companionWebLayout);
                            this.companionWebLayout.setVisibility(4);
                            frameLayout.addView(getCloseButtonView());
                        }
                    }
                    setContentView(frameLayout);
                    break;
                default:
                    MdotMLogger.e(this, "This format is not supported ");
                    onDismissScreen();
                    break;
            }
        } else {
            MdotMLogger.d(this, "Ad response is null");
            onDismissScreen();
        }
        MdotMLogger.d(this, "onCreate finish");
    }

    @Override // android.app.Activity
    protected void onResume() {
        if (this.adClicked) {
            this.adClicked = false;
            onDismissScreen();
        } else if (this.mVideoView != null && this.mVideoView.isReadyToPlay()) {
            this.mVideoView.playVideo();
        }
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onPause() {
        MdotMLogger.d(this, "onPause is called");
        super.onPause();
        if (this.mVideoView != null) {
            this.mVideoView.PauseVideo();
        }
        if (!this.adClicked && !this.didDismissCalled) {
            onDismissScreen();
        }
    }

    @Override // com.mdotm.android.listener.InterstitialVideoListener
    public void showCloseButton() {
        MdotMLogger.d(this, "show close button");
        this.mHandler.post(new Runnable() { // from class: com.mdotm.android.vast.VastInterstitialActivity.4
            @Override // java.lang.Runnable
            public void run() {
                if (VastInterstitialActivity.this.closeLayout != null) {
                    VastInterstitialActivity.this.closeLayout.setVisibility(0);
                }
                VastInterstitialActivity.this.closeLayout.bringToFront();
            }
        });
    }

    @Override // com.mdotm.android.listener.InterstitialVideoListener
    public void decrementCounter(final int i, final int i2, final String str, final String str2, final String str3) {
        MdotMLogger.d(this, "reward ad counter decrement");
        this.mHandler.post(new Runnable() { // from class: com.mdotm.android.vast.VastInterstitialActivity.5
            @Override // java.lang.Runnable
            public void run() {
                VastInterstitialActivity.this.circularView = new MdotMDecrementCounterView(VastInterstitialActivity.this.getApplicationContext(), i, i2, str2, str3);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                layoutParams.gravity = 80;
                MdotMLogger.d(this, "videoLayout.getHeight()-circularView.getHeight()" + VastInterstitialActivity.this.videoLayout.getHeight() + "-" + VastInterstitialActivity.this.circularView.getHeight());
                VastInterstitialActivity.this.circularView.setLayoutParams(layoutParams);
                VastInterstitialActivity.this.tempRelative.addView(VastInterstitialActivity.this.circularView);
                if ((i2 / 1000) - i >= VastInterstitialActivity.this.getCounterOffsetinNumeric(str) && !VastInterstitialActivity.this.tempRelativeAdded) {
                    VastInterstitialActivity.this.tempRelativeAdded = true;
                    if (MdotMDecrementCounterView.getMultipler(str2) < 1.7d) {
                        VastInterstitialActivity.this.tempParams.setMargins(VastInterstitialActivity.this.getPixels(5), VastInterstitialActivity.this.videoLayout.getHeight() - VastInterstitialActivity.this.getPixels((int) (MdotMDecrementCounterView.getMultipler(str2) * 32.0d)), VastInterstitialActivity.this.getPixels(6), VastInterstitialActivity.this.getPixels(6));
                    } else {
                        VastInterstitialActivity.this.tempParams.setMargins(VastInterstitialActivity.this.getPixels(5), VastInterstitialActivity.this.videoLayout.getHeight() - VastInterstitialActivity.this.getPixels((int) ((MdotMDecrementCounterView.getMultipler(str2) * 32.0d) / 1.2d)), VastInterstitialActivity.this.getPixels(6), VastInterstitialActivity.this.getPixels(6));
                    }
                    VastInterstitialActivity.this.tempRelative.setLayoutParams(VastInterstitialActivity.this.tempParams);
                    VastInterstitialActivity.this.videoLayout.addView(VastInterstitialActivity.this.tempRelative);
                }
                if (i <= 0 && VastInterstitialActivity.this.circularView != null) {
                    VastInterstitialActivity.this.tempRelative.setVisibility(8);
                }
            }
        });
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        MdotMUtils.getUtilsInstance().removeInterstitialActionListener(this.interstitialListenerId);
        if (this.mVideoView != null) {
            this.mVideoView.stopVideo();
        }
        if (this.iconTimer != null) {
            this.iconTimer.cancel();
        }
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void adClicked() {
        this.adClicked = true;
        MdotMLogger.d(this, "clicked on ad");
        if (this.interstitialActionListener != null) {
            this.interstitialActionListener.onClick();
        }
        if (this.mVideoView != null) {
            this.mVideoView.stopVideo();
        }
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void leaveApplication() {
        if (this.interstitialActionListener != null) {
            this.interstitialActionListener.onLeave();
        }
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void onDismissScreen() {
        MdotMLogger.d(this, "onDismiss is called");
        this.didDismissCalled = true;
        if (this.interstitialActionListener != null) {
            this.interstitialActionListener.onDismiss();
        } else {
            MdotMLogger.e(this, "InterstitialActionListener is null. So ignoring the interstitial dismiss callback");
        }
        finish();
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void onLoadError() {
        MdotMLogger.e(this, "Error while loading the ad");
        onDismissScreen();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        MdotMLogger.d(this, "Key down " + i);
        if (i == 4) {
            if (!this.isShowingCompanionImage && this.adResponse.liniearAndCompanion && this.closeLayout.getVisibility() == 0) {
                if (this.iconTimer != null) {
                    this.iconTimer.cancel();
                }
                if (this.mVideoView.isPlaying()) {
                    this.mVideoView.stopVideo();
                }
                showCompanionAfterLinear();
                if (!this.isRewarded || isCompletedPlaying || this.closeLayout.getVisibility() != 0) {
                    return true;
                }
                if (this.iconTimer != null) {
                    this.iconTimer.cancel();
                }
                this.interstitialActionListener.onRewardedVideoComplete(true, this.reward);
                this.rewardCallbackCalled = true;
                return true;
            }
            if (this.isRewarded && !isCompletedPlaying && !this.rewardCallbackCalled && this.closeLayout.getVisibility() == 0) {
                if (this.iconTimer != null) {
                    this.iconTimer.cancel();
                }
                this.interstitialActionListener.onRewardedVideoComplete(true, this.reward);
            }
            if (this.closeLayout == null || this.closeLayout.getVisibility() != 0) {
                return true;
            }
            if (this.iconTimer != null) {
                this.iconTimer.cancel();
            }
            onDismissScreen();
        }
        return super.onKeyDown(i, keyEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0111  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private RelativeLayout getCloseButtonView() {
        String str;
        int i;
        RelativeLayout.LayoutParams layoutParams;
        NumberFormatException e;
        ArrayList<BaseVastAd> vastAds = this.adResponse.getVastAds();
        String str2 = null;
        switch (vastAds.get(0).getAdType()) {
            case 1:
                LinearAd linearAd = (LinearAd) vastAds.get(0);
                if (linearAd.closeBtnSize != null) {
                    str2 = linearAd.closeBtnSize;
                }
                str = linearAd.closeBtnLocation;
                break;
            default:
                str = null;
                break;
        }
        this.closeLayout = new RelativeLayout(this);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        this.closeLayout.setId(4);
        this.closeLayout.setLayoutParams(layoutParams2);
        ImageView imageView = new ImageView(this);
        imageView.setImageBitmap(StringToBitMap("iVBORw0KGgoAAAANSUhEUgAAAIcAAACHCAYAAAA850oKAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDE0IDc5LjE1Njc5NywgMjAxNC8wOC8yMC0wOTo1MzowMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6M0M2QTk3ODQ5RjBDMTFFNDk1NEZCNDc0OEYwQTY1QjAiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6M0M2QTk3ODM5RjBDMTFFNDk1NEZCNDc0OEYwQTY1QjAiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo3Mjg4OEFFNTEyRDUxMUUwOEJDRTkxRUFFNEY5M0MxNiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo3Mjg4OEFFNjEyRDUxMUUwOEJDRTkxRUFFNEY5M0MxNiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PtHLAlcAABnxSURBVHja7J17dFNV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"));
        if (str2 != null) {
            String[] split = str2.split("%");
            MdotMLogger.d(this, "CloseBtnArry" + split[0]);
            if (split.length >= 1) {
                try {
                    i = (int) ((Integer.parseInt(split[0]) / 100.0d) * 44);
                    try {
                        MdotMLogger.d(this, "CloseBtnsize" + i);
                    } catch (NumberFormatException e2) {
                        e = e2;
                        MdotMLogger.e(this, "Number format exe" + e);
                        layoutParams = new RelativeLayout.LayoutParams(getPixels(i), getPixels(i));
                        if (str == null) {
                        }
                        if (str == null) {
                        }
                        if (str == null) {
                        }
                        layoutParams.addRule(11);
                        layoutParams.addRule(10);
                        layoutParams.setMargins(getPixels(6), getPixels(6), getPixels(6), getPixels(6));
                        imageView.setLayoutParams(layoutParams);
                        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.mdotm.android.vast.VastInterstitialActivity.6
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                if (VastInterstitialActivity.this.iconTimer != null) {
                                    VastInterstitialActivity.this.iconTimer.cancel();
                                }
                                VastInterstitialActivity.this.mVideoView.skipVideo();
                                if (!VastInterstitialActivity.this.isShowingCompanionImage && VastInterstitialActivity.this.adResponse.liniearAndCompanion) {
                                    if (VastInterstitialActivity.this.mVideoView.isPlaying()) {
                                        VastInterstitialActivity.this.mVideoView.stopVideo();
                                    }
                                    VastInterstitialActivity.this.showCompanionAfterLinear();
                                    if (VastInterstitialActivity.this.isRewarded && !VastInterstitialActivity.isCompletedPlaying) {
                                        VastInterstitialActivity.this.interstitialActionListener.onRewardedVideoComplete(true, VastInterstitialActivity.this.reward);
                                        VastInterstitialActivity.this.rewardCallbackCalled = true;
                                        return;
                                    }
                                    return;
                                }
                                VastInterstitialActivity.this.onDismissScreen();
                                if (VastInterstitialActivity.this.isRewarded && !VastInterstitialActivity.isCompletedPlaying && !VastInterstitialActivity.this.rewardCallbackCalled) {
                                    VastInterstitialActivity.this.interstitialActionListener.onRewardedVideoComplete(true, VastInterstitialActivity.this.reward);
                                }
                                VastInterstitialActivity.isCompletedPlaying = false;
                                VastInterstitialActivity.this.finish();
                            }
                        });
                        this.closeLayout.addView(imageView);
                        this.closeLayout.setVisibility(4);
                        this.closeLayout.bringToFront();
                        return this.closeLayout;
                    }
                } catch (NumberFormatException e3) {
                    e = e3;
                    i = 44;
                }
                layoutParams = new RelativeLayout.LayoutParams(getPixels(i), getPixels(i));
                if (str == null && str.equalsIgnoreCase("topleft")) {
                    layoutParams.addRule(9);
                    layoutParams.addRule(10);
                } else if (str == null && str.equalsIgnoreCase("bottomleft")) {
                    layoutParams.addRule(9);
                    layoutParams.addRule(12);
                    MdotMLogger.d(this, "close btn bottom left");
                } else if (str == null && str.equalsIgnoreCase("bottomright")) {
                    layoutParams.addRule(11);
                    layoutParams.addRule(12);
                } else {
                    layoutParams.addRule(11);
                    layoutParams.addRule(10);
                }
                layoutParams.setMargins(getPixels(6), getPixels(6), getPixels(6), getPixels(6));
                imageView.setLayoutParams(layoutParams);
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.mdotm.android.vast.VastInterstitialActivity.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (VastInterstitialActivity.this.iconTimer != null) {
                            VastInterstitialActivity.this.iconTimer.cancel();
                        }
                        VastInterstitialActivity.this.mVideoView.skipVideo();
                        if (!VastInterstitialActivity.this.isShowingCompanionImage && VastInterstitialActivity.this.adResponse.liniearAndCompanion) {
                            if (VastInterstitialActivity.this.mVideoView.isPlaying()) {
                                VastInterstitialActivity.this.mVideoView.stopVideo();
                            }
                            VastInterstitialActivity.this.showCompanionAfterLinear();
                            if (VastInterstitialActivity.this.isRewarded && !VastInterstitialActivity.isCompletedPlaying) {
                                VastInterstitialActivity.this.interstitialActionListener.onRewardedVideoComplete(true, VastInterstitialActivity.this.reward);
                                VastInterstitialActivity.this.rewardCallbackCalled = true;
                                return;
                            }
                            return;
                        }
                        VastInterstitialActivity.this.onDismissScreen();
                        if (VastInterstitialActivity.this.isRewarded && !VastInterstitialActivity.isCompletedPlaying && !VastInterstitialActivity.this.rewardCallbackCalled) {
                            VastInterstitialActivity.this.interstitialActionListener.onRewardedVideoComplete(true, VastInterstitialActivity.this.reward);
                        }
                        VastInterstitialActivity.isCompletedPlaying = false;
                        VastInterstitialActivity.this.finish();
                    }
                });
                this.closeLayout.addView(imageView);
                this.closeLayout.setVisibility(4);
                this.closeLayout.bringToFront();
                return this.closeLayout;
            }
        }
        i = 44;
        layoutParams = new RelativeLayout.LayoutParams(getPixels(i), getPixels(i));
        if (str == null) {
        }
        if (str == null) {
        }
        if (str == null) {
        }
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        layoutParams.setMargins(getPixels(6), getPixels(6), getPixels(6), getPixels(6));
        imageView.setLayoutParams(layoutParams);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.mdotm.android.vast.VastInterstitialActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (VastInterstitialActivity.this.iconTimer != null) {
                    VastInterstitialActivity.this.iconTimer.cancel();
                }
                VastInterstitialActivity.this.mVideoView.skipVideo();
                if (!VastInterstitialActivity.this.isShowingCompanionImage && VastInterstitialActivity.this.adResponse.liniearAndCompanion) {
                    if (VastInterstitialActivity.this.mVideoView.isPlaying()) {
                        VastInterstitialActivity.this.mVideoView.stopVideo();
                    }
                    VastInterstitialActivity.this.showCompanionAfterLinear();
                    if (VastInterstitialActivity.this.isRewarded && !VastInterstitialActivity.isCompletedPlaying) {
                        VastInterstitialActivity.this.interstitialActionListener.onRewardedVideoComplete(true, VastInterstitialActivity.this.reward);
                        VastInterstitialActivity.this.rewardCallbackCalled = true;
                        return;
                    }
                    return;
                }
                VastInterstitialActivity.this.onDismissScreen();
                if (VastInterstitialActivity.this.isRewarded && !VastInterstitialActivity.isCompletedPlaying && !VastInterstitialActivity.this.rewardCallbackCalled) {
                    VastInterstitialActivity.this.interstitialActionListener.onRewardedVideoComplete(true, VastInterstitialActivity.this.reward);
                }
                VastInterstitialActivity.isCompletedPlaying = false;
                VastInterstitialActivity.this.finish();
            }
        });
        this.closeLayout.addView(imageView);
        this.closeLayout.setVisibility(4);
        this.closeLayout.bringToFront();
        return this.closeLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getPixels(int i) {
        float f = getResources().getDisplayMetrics().density;
        MdotMLogger.d(this, "scale = " + f);
        int i2 = (int) ((f * i) + 0.5f);
        MdotMLogger.d(this, "result px = " + i2);
        return i2;
    }

    @Override // com.mdotm.android.listener.InterstitialVideoListener
    public void setPlayStart() {
    }

    public Bitmap StringToBitMap(String str) {
        try {
            byte[] decode = MdotMBase64.decode(str, 0);
            return BitmapFactory.decodeByteArray(decode, 0, decode.length);
        } catch (Exception e) {
            e.getMessage();
            return null;
        }
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void onPlayStop() {
        if (this.iconTimer != null) {
            this.iconTimer.cancel();
        }
        this.isVideoClickable = true;
        if (this.adResponse.liniearAndCompanion && !this.isShowingCompanionImage) {
            MdotMLogger.d(this, "completed playing video");
            showCompanionAfterLinear();
        }
        if (this.isRewarded && !isCompletedPlaying) {
            isCompletedPlaying = true;
            this.interstitialActionListener.onRewardedVideoComplete(false, this.reward);
            MdotMLogger.d(this, "call playback action listners");
        }
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void onPlayError() {
        MdotMLogger.d(this, "Error while palying video");
        if (this.interstitialActionListener != null) {
            this.interstitialActionListener.onFailed();
        }
        onDismissScreen();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x01b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private FrameLayout getVideoLayout() {
        int i;
        int i2 = 0;
        MdotMLogger.d(this, "getVideoLayout");
        FrameLayout frameLayout = new FrameLayout(this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout.setLayoutParams(layoutParams);
        this.mVideoView.setOnTouchListener(new View.OnTouchListener() { // from class: com.mdotm.android.vast.VastInterstitialActivity.7
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (VastInterstitialActivity.this.isVideoClickable) {
                    int action = motionEvent.getAction();
                    MdotMLogger.d(this, "onTouch :: " + action);
                    if (action == 0 && !VastInterstitialActivity.this.adClicked) {
                        VastInterstitialActivity.this.adClicked = true;
                        VastInterstitialActivity.this.clicked();
                        return false;
                    }
                    return false;
                }
                return false;
            }
        });
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 17;
        if (getResources().getConfiguration().orientation == 2) {
            layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
            layoutParams2.gravity = 17;
            MdotMLogger.d(this, "landscape");
        }
        this.mVideoView.setLayoutParams(layoutParams2);
        this.mVideoView.setZOrderMediaOverlay(true);
        frameLayout.addView(this.mVideoView);
        frameLayout.addView(getCloseButtonView());
        final LinearAd linearAd = (LinearAd) this.adResponse.getVastAds().get(0);
        if (linearAd.icon != null && linearAd.icon.iconImagebyteArray != null) {
            this.iconImage = new ImageView(getApplicationContext());
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(getPixels(linearAd.icon.iconWidth / 2), getPixels(linearAd.icon.iconWidth / 2));
            layoutParams3.setMargins(getPixels(6), getPixels(6), getPixels(6), getPixels(6));
            MdotMLogger.d(this, "ICON POSITION" + linearAd.icon.iconXpos + linearAd.icon.iconYpos);
            if (linearAd.icon.iconXpos != null) {
                if (linearAd.icon.iconXpos.matches("[0-9]*") && linearAd.icon.iconYpos.matches("[0-9]*")) {
                    if (linearAd.icon.iconXpos.matches("[0-9]*")) {
                    }
                    layoutParams3.setMargins(getPixels(Integer.parseInt(linearAd.icon.iconXpos)), getPixels(6), getPixels(6), getPixels(6));
                    if (linearAd.icon.iconYpos.matches("[0-9]*")) {
                        layoutParams3.setMargins(getPixels(6), getPixels(Integer.parseInt(linearAd.icon.iconYpos)), getPixels(6), getPixels(6));
                    }
                } else {
                    if (linearAd.icon.iconXpos.equals(AdCreative.kAlignmentLeft) && linearAd.icon.iconYpos.equals(AdCreative.kAlignmentTop)) {
                        layoutParams3.gravity = 51;
                    }
                    if (linearAd.icon.iconXpos.equals(AdCreative.kAlignmentLeft) && linearAd.icon.iconYpos.equals(AdCreative.kAlignmentBottom)) {
                        layoutParams3.gravity = 83;
                    }
                    if (linearAd.icon.iconXpos.equals(AdCreative.kAlignmentRight) && linearAd.icon.iconYpos.equals(AdCreative.kAlignmentTop)) {
                        layoutParams3.gravity = 53;
                    }
                    if (linearAd.icon.iconXpos.equals(AdCreative.kAlignmentRight) && linearAd.icon.iconYpos.equals(AdCreative.kAlignmentBottom)) {
                        layoutParams3.gravity = 85;
                    }
                }
            } else {
                layoutParams3.gravity = 85;
            }
            this.iconImage.setLayoutParams(layoutParams3);
            if (linearAd.icon != null && linearAd.icon.iconImagebyteArray != null) {
                this.iconImage.setImageBitmap(BitmapFactory.decodeByteArray(linearAd.icon.iconImagebyteArray, 0, linearAd.icon.iconImagebyteArray.length));
            }
            this.iconImage.setOnClickListener(new View.OnClickListener() { // from class: com.mdotm.android.vast.VastInterstitialActivity.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (linearAd.icon.iconClickTracking != null) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3;
                            if (i4 >= linearAd.icon.iconClickTracking.size()) {
                                break;
                            }
                            MdotMUtils.getUtilsInstance().reportImpression(linearAd.icon.iconClickTracking.get(i4), VastInterstitialActivity.this.getApplicationContext());
                            i3 = i4 + 1;
                        }
                    }
                    MdotMLogger.d(this, "Clicked to migrate icon url " + linearAd.icon.iconClickThrough);
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(linearAd.icon.iconClickThrough));
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    try {
                        VastInterstitialActivity.this.startActivity(intent);
                    } catch (Exception e) {
                        MdotMLogger.d(this, "Could not open browser on ad click to " + e);
                    }
                }
            });
            if (linearAd.icon.iconDuration != null) {
                MdotMLogger.d(this, "icon duration" + linearAd.icon.iconDuration);
                if (linearAd.icon.iconDuration.matches("[0-9]{2}:[0-9]{2}:[0-9]{2}[.]*[0-9]*")) {
                    String[] split = linearAd.icon.iconDuration.split(":");
                    i = ((int) Double.parseDouble(split[2])) + (Integer.parseInt(split[0]) * 3600) + (Integer.parseInt(split[1]) * 60);
                    if (linearAd.icon.iconOffset != null) {
                        MdotMLogger.d(this, "icon iconOffset" + linearAd.icon.iconOffset);
                        if (linearAd.icon.iconOffset.matches("[0-9]{2}:[0-9]{2}:[0-9]{2}[.]*[0-9]*")) {
                            String[] split2 = linearAd.icon.iconOffset.split(":");
                            i2 = (Integer.parseInt(split2[0]) * 3600) + (Integer.parseInt(split2[1]) * 60) + ((int) Double.parseDouble(split2[2]));
                        }
                    }
                    this.iconImage.setVisibility(4);
                    this.iconCreativesList = linearAd.icon.iconCreativeView;
                    setTimer(i, i2);
                    frameLayout.addView(this.iconImage, layoutParams3);
                }
            }
            i = 0;
            if (linearAd.icon.iconOffset != null) {
            }
            this.iconImage.setVisibility(4);
            this.iconCreativesList = linearAd.icon.iconCreativeView;
            setTimer(i, i2);
            frameLayout.addView(this.iconImage, layoutParams3);
        }
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mdotm.android.vast.VastInterstitialActivity$9] */
    public void clicked() {
        MdotMLogger.d(this, "  Ad clicked  ");
        if (this.adClickTrack != null && this.adClickTrack.size() > 0 && this.adClickTrack.size() > 0) {
            for (int i = 0; i < this.adClickTrack.size(); i++) {
                MdotMUtils.getUtilsInstance().reportImpression(this.adClickTrack.get(i), this);
            }
        }
        if (this.adClickUrl != null && this.adClickUrl.size() > 0) {
            for (int i2 = 0; i2 < this.adClickUrl.size(); i2++) {
                final String replaceAll = this.adClickUrl.get(i2).replaceAll(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR, "");
                new Thread() { // from class: com.mdotm.android.vast.VastInterstitialActivity.9
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        VastInterstitialActivity.this.adClicked();
                        MdotMLogger.d(this, "Clicked to migrate url " + replaceAll);
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(replaceAll));
                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                        try {
                            VastInterstitialActivity.this.startActivity(intent);
                        } catch (Exception e) {
                            MdotMLogger.d(this, "Could not open browser on ad click to " + e);
                        }
                        if (VastInterstitialActivity.this.interstitialActionListener != null) {
                            VastInterstitialActivity.this.interstitialActionListener.onLeave();
                        }
                    }
                }.start();
            }
            return;
        }
        MdotMLogger.e(this, "selected ads landing url is null");
    }

    public void changeCloseBtnSize() {
    }

    public void resetAdClickAndTrackURLS() {
        this.adClickUrl = null;
        this.adClickUrl = new ArrayList<>();
        this.adClickUrl.add(this.companionAd.companionStaticImageClickThrough);
        this.adClickTrack = this.companionAd.companionStaticImageClickTracking;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCompanionAfterLinear() {
        int i = 0;
        if (this.companionAd.companionImageByteArray != null || Companion.htmlResource != null) {
            this.isShowingCompanionImage = true;
            resetAdClickAndTrackURLS();
            this.videoLayout.setVisibility(4);
            if (this.companionAd.companionImageByteArray != null) {
                this.companionImageLayout.setVisibility(0);
            } else if (Companion.htmlResource != null) {
                this.companionWebLayout.setVisibility(0);
                MdotMLogger.d(this, "Resource is" + Companion.htmlResource);
            }
            while (true) {
                int i2 = i;
                if (i2 < this.companionAd.companionCreativeViewList.size()) {
                    MdotMUtils.getUtilsInstance().reportImpression(this.companionAd.companionCreativeViewList.get(i2), this);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        } else {
            this.isShowingCompanionImage = true;
        }
    }

    private void setTimer(final int i, final int i2) {
        this.iconTimer = new Timer();
        this.iconTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.mdotm.android.vast.VastInterstitialActivity.10
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                try {
                    VastInterstitialActivity.this.timeRunning += 1000;
                    MdotMLogger.d(this, "icon duration offset  time runnig" + i + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + i2 + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + VastInterstitialActivity.this.timeRunning);
                    if (VastInterstitialActivity.this.timeRunning >= i2 * 1000 && !VastInterstitialActivity.this.isShownIcon) {
                        VastInterstitialActivity.this.isShownIcon = true;
                        if (VastInterstitialActivity.this.iconCreativesList != null && VastInterstitialActivity.this.iconCreativesList.size() > 0) {
                            int i3 = 0;
                            while (true) {
                                int i4 = i3;
                                if (i4 >= VastInterstitialActivity.this.iconCreativesList.size()) {
                                    break;
                                }
                                MdotMUtils.getUtilsInstance().reportImpression((String) VastInterstitialActivity.this.iconCreativesList.get(i4), VastInterstitialActivity.this.getApplicationContext());
                                MdotMLogger.d(this, "icon creativeview url" + ((String) VastInterstitialActivity.this.iconCreativesList.get(i4)));
                                i3 = i4 + 1;
                            }
                        }
                        VastInterstitialActivity.this.runOnUiThread(new Runnable() { // from class: com.mdotm.android.vast.VastInterstitialActivity.10.1
                            @Override // java.lang.Runnable
                            public void run() {
                                VastInterstitialActivity.this.iconImage.setVisibility(0);
                            }
                        });
                    }
                    if (VastInterstitialActivity.this.timeRunning >= (i + i2) * 1000) {
                        VastInterstitialActivity.this.runOnUiThread(new Runnable() { // from class: com.mdotm.android.vast.VastInterstitialActivity.10.2
                            @Override // java.lang.Runnable
                            public void run() {
                                VastInterstitialActivity.this.iconImage.setVisibility(4);
                            }
                        });
                        MdotMLogger.d(this, "icon duration is lesser then time");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }, 0, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCounterOffsetinNumeric(String str) {
        if (str != null) {
            MdotMLogger.d(this, "counterOffsetString" + str);
            if (!str.matches("[0-9]{2}:[0-9]{2}:[0-9]{2}[.]*[0-9]*")) {
                return 0;
            }
            String[] split = str.split(":");
            return (Integer.parseInt(split[0]) * 3600) + (Integer.parseInt(split[1]) * 60) + ((int) Double.parseDouble(split[2]));
        }
        return 0;
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void onMraidRewardClick(boolean z) {
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void onUseCustomClose(boolean z) {
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void onOpenUrl(String str) {
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public boolean getViewable() {
        return false;
    }
}
