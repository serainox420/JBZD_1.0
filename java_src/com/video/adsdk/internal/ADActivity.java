package com.video.adsdk.internal;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager;
import android.webkit.JsResult;
import android.widget.RelativeLayout;
import com.video.adsdk.interfaces.JavascriptBridgeListener;
import com.video.adsdk.interfaces.PrefetcherListener;
import com.video.adsdk.interfaces.VideoBridge;
import com.video.adsdk.interfaces.VideoBridgeListener;
/* loaded from: classes3.dex */
public class ADActivity extends Activity implements JavascriptBridgeListener, PrefetcherListener, VideoBridgeListener {
    public static String PARAM_USE_FAKE = "USE_FAKE" + ADActivity.class;
    private VideoBridge videoBridge;
    private ProgressDialog videoProgressDialog;
    private RelativeLayout view;
    private ProgressDialog webProgressDialog;
    private boolean useFake = false;
    private boolean advertisingIsFinished = false;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            this.useFake = getIntent().getBooleanExtra(PARAM_USE_FAKE, false);
        } catch (Exception e) {
        }
        if (this.useFake) {
            fakeOnCreate(bundle);
            return;
        }
        this.advertisingIsFinished = false;
        this.view = new RelativeLayout(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.view.setLayoutParams(layoutParams);
        this.videoBridge = VideoAdSDKControllerUsingActivity.Instance.getVideoBridge();
        this.videoBridge.addListener(this);
        VideoAdSDKControllerUsingActivity.Instance.getJavascriptBridge().addListener(this);
        VideoAdSDKControllerUsingActivity.Instance.getPrefetcher().addPrefetcherListener(this);
        setContentView(this.view);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (VideoAdSDKControllerUsingActivity.Instance.getJavascriptBridge() != null) {
            VideoAdSDKControllerUsingActivity.Instance.getJavascriptBridge().removeListener(this);
        }
        if (VideoAdSDKControllerUsingActivity.Instance.getVideoBridge() != null) {
            VideoAdSDKControllerUsingActivity.Instance.getVideoBridge().removeListener(this);
        }
        if (VideoAdSDKControllerUsingActivity.Instance.getPrefetcher() != null) {
            VideoAdSDKControllerUsingActivity.Instance.getPrefetcher().removeListener(this);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (this.useFake) {
            fakeOnPause();
            return;
        }
        try {
            this.videoBridge.pause();
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            this.view.removeAllViews();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (this.advertisingIsFinished) {
            VideoAdSDKControllerUsingActivity.Instance.advertisingDidHide();
        }
        if (VideoAdSDKControllerUsingActivity.Instance.wasMovieClicked()) {
            VideoAdSDKControllerUsingActivity.Instance.movieClick();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        if (this.useFake) {
            fakeOnResume();
            return;
        }
        this.view.addView((View) this.videoBridge, new RelativeLayout.LayoutParams(-1, -1));
        this.videoBridge.play();
        super.onResume();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.useFake) {
            fakeOnBackPressed();
        } else if (VideoAdSDKControllerUsingActivity.Instance.isVideoPlaying()) {
            if (VideoAdSDKControllerUsingActivity.Instance.isClosableByUI()) {
                VideoAdSDKControllerUsingActivity.Instance.onSkipButtonClicked();
                finishAdvertising();
            }
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.video.adsdk.interfaces.VideoBridgeListener
    public void onVideoIsReadyToPlay(VideoBridge.MovieState movieState, int i) {
    }

    @Override // com.video.adsdk.interfaces.VideoBridgeListener
    public void onVideoIsComplete() {
        finishAdvertising();
    }

    @Override // com.video.adsdk.interfaces.VideoBridgeListener
    public void onVideoReportsCurrentState(VideoBridge.MovieState movieState, long j) {
    }

    @Override // com.video.adsdk.interfaces.VideoBridgeListener
    public void onSkipButtonClicked() {
        finishAdvertising();
    }

    @Override // com.video.adsdk.interfaces.VideoBridgeListener
    public void onVideoPlaybackError(int i, int i2) {
        finishAdvertising();
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPlayMovie(String str) {
        hideWebLoader();
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onDisplay() {
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPrefetchURL(String str, long j) {
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onOpenURLInBrowser(String str, boolean z) {
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onFinish(int i) {
        finishAdvertising();
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onShowSkip() {
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onTrack(String str) {
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPageLoaded(String str) {
        hideWebLoader();
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPageError(int i, String str, String str2) {
        hideWebLoader();
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPageTimeOut(String str, String str2) {
        hideWebLoader();
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onSetBackgroundColor(int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishAdvertising() {
        if (this.videoBridge != null) {
            this.videoBridge.shutdown();
        }
        this.advertisingIsFinished = true;
        finish();
    }

    public void fakeOnCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.view = Helper.createFakeAdVideoView(getApplicationContext());
        this.view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        setContentView(this.view);
        findViewById(Helper.ID_BUTTONCLOSE).setOnClickListener(new View.OnClickListener() { // from class: com.video.adsdk.internal.ADActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ADActivity.this.fakeOnFinish();
                ADActivity.this.finishAdvertising();
            }
        });
        VideoAdSDKControllerUsingActivity.Instance.raiseFakeVideoPlayEvents(false);
    }

    protected void fakeOnFinish() {
        VideoAdSDKControllerUsingActivity.Instance.raiseFakeVideoPlayEvents(true);
    }

    protected void fakeOnPause() {
        super.onPause();
    }

    protected void fakeOnResume() {
        super.onResume();
    }

    public void fakeOnBackPressed() {
        fakeOnFinish();
        super.onBackPressed();
    }

    private void showWebLoader() {
        if (this.webProgressDialog == null) {
            try {
                this.webProgressDialog = new ProgressDialog(this);
                this.webProgressDialog.show();
            } catch (WindowManager.BadTokenException e) {
            }
            this.webProgressDialog.setCancelable(false);
            this.webProgressDialog.setContentView(getApplicationContext().getResources().getIdentifier("empty_progress_dialog", "layout", getApplicationContext().getPackageName()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showVideoLoader() {
        if (this.videoProgressDialog == null) {
            this.videoProgressDialog = new ProgressDialog(this);
            this.videoProgressDialog.setMessage("Prefetching video");
            this.videoProgressDialog.setProgressStyle(1);
            if (!isFinishing()) {
                this.videoProgressDialog.show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideWebLoader() {
        if (this.webProgressDialog != null && this.webProgressDialog.isShowing()) {
            this.webProgressDialog.dismiss();
        }
        this.webProgressDialog = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideVideoLoader() {
        if (this.videoProgressDialog != null && this.videoProgressDialog.isShowing()) {
            this.videoProgressDialog.dismiss();
        }
        this.videoProgressDialog = null;
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onShowDialog(final String str, final JsResult jsResult) {
        if (!isFinishing()) {
            runOnUiThread(new Runnable() { // from class: com.video.adsdk.internal.ADActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    new AlertDialog.Builder(ADActivity.this).setTitle("javaScript dialog").setMessage(str).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.video.adsdk.internal.ADActivity.2.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            jsResult.confirm();
                        }
                    }).setCancelable(false).create().show();
                }
            });
        }
    }

    @Override // com.video.adsdk.interfaces.PrefetcherListener
    public void onPrefetchingDidComplete() {
        runOnUiThread(new Runnable() { // from class: com.video.adsdk.internal.ADActivity.3
            @Override // java.lang.Runnable
            public void run() {
                ADActivity.this.hideVideoLoader();
            }
        });
    }

    @Override // com.video.adsdk.interfaces.PrefetcherListener
    public void onPrefetchedFile(ADVideoFile aDVideoFile) {
        runOnUiThread(new Runnable() { // from class: com.video.adsdk.internal.ADActivity.4
            @Override // java.lang.Runnable
            public void run() {
                ADActivity.this.hideVideoLoader();
            }
        });
    }

    @Override // com.video.adsdk.interfaces.PrefetcherListener
    public void onProgress(double d) {
        if (d == 100.0d) {
            onPrefetchingDidComplete();
        }
        if (this.videoProgressDialog != null) {
            this.videoProgressDialog.setProgress((int) d);
        }
    }

    @Override // com.video.adsdk.interfaces.PrefetcherListener
    public void onPrefetchingFailed() {
        hideVideoLoader();
    }

    @Override // com.video.adsdk.interfaces.PrefetcherListener
    public void onPrefetchingStarted() {
        runOnUiThread(new Runnable() { // from class: com.video.adsdk.internal.ADActivity.5
            @Override // java.lang.Runnable
            public void run() {
                ADActivity.this.hideWebLoader();
                ADActivity.this.showVideoLoader();
            }
        });
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPageStartingLoad(String str) {
        showWebLoader();
    }
}
