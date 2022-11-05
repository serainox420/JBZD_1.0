package com.video.adsdk.internal;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsResult;
import android.widget.RelativeLayout;
import com.video.adsdk.interfaces.JavascriptBridgeListener;
import com.video.adsdk.interfaces.VideoBridge;
import com.video.adsdk.interfaces.VideoBridgeListener;
import com.video.adsdk.utils.ViewGroupUtils;
/* loaded from: classes3.dex */
public class EmbedViewController implements JavascriptBridgeListener, VideoBridgeListener {
    private boolean advertisingIsFinished;
    private View embeddedView = VideoAdSDKControllerUsingActivity.Instance.getEmbeddedView();
    private ViewGroup parentGroup;
    private VideoBridge videoBridge;

    public void displayAdvertising() {
        this.advertisingIsFinished = false;
        this.videoBridge = VideoAdSDKControllerUsingActivity.Instance.getVideoBridge();
        this.videoBridge.addListener(this);
        VideoAdSDKControllerUsingActivity.Instance.getJavascriptBridge().addListener(this);
        VideoAdSDKControllerUsingActivity.Instance.runOnUiThread(new Runnable() { // from class: com.video.adsdk.internal.EmbedViewController.1
            @Override // java.lang.Runnable
            public void run() {
                ((RelativeLayout) EmbedViewController.this.videoBridge).setLayoutParams(EmbedViewController.this.embeddedView.getLayoutParams());
                EmbedViewController.this.parentGroup = ViewGroupUtils.getParent(EmbedViewController.this.embeddedView);
                int indexOfChild = EmbedViewController.this.parentGroup.indexOfChild(EmbedViewController.this.embeddedView);
                EmbedViewController.this.parentGroup.removeView(EmbedViewController.this.embeddedView);
                EmbedViewController.this.parentGroup.addView((ADVideoView) EmbedViewController.this.videoBridge, indexOfChild);
            }
        });
        this.videoBridge.play();
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

    private void finishAdvertising() {
        if (this.videoBridge != null) {
            this.videoBridge.shutdown();
        }
        this.advertisingIsFinished = true;
        this.videoBridge.removeListener(this);
        VideoAdSDKControllerUsingActivity.Instance.getJavascriptBridge().addListener(this);
        try {
            this.videoBridge.pause();
        } catch (Exception e) {
            e.printStackTrace();
        }
        VideoAdSDKControllerUsingActivity.Instance.runOnUiThread(new Runnable() { // from class: com.video.adsdk.internal.EmbedViewController.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    int indexOfChild = EmbedViewController.this.parentGroup.indexOfChild((ADVideoView) EmbedViewController.this.videoBridge);
                    EmbedViewController.this.parentGroup.removeView((ADVideoView) EmbedViewController.this.videoBridge);
                    if (indexOfChild >= 0) {
                        EmbedViewController.this.parentGroup.addView(EmbedViewController.this.embeddedView, indexOfChild);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
        if (this.advertisingIsFinished) {
            VideoAdSDKControllerUsingActivity.Instance.advertisingDidHide();
        }
        if (VideoAdSDKControllerUsingActivity.Instance.wasMovieClicked()) {
            VideoAdSDKControllerUsingActivity.Instance.movieClick();
        }
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPlayMovie(String str) {
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
    public void onShowDialog(String str, final JsResult jsResult) {
        new AlertDialog.Builder(this.embeddedView.getContext()).setTitle("javaScript dialog").setMessage(str).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.video.adsdk.internal.EmbedViewController.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.confirm();
            }
        }).setCancelable(false).create().show();
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onTrack(String str) {
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPageLoaded(String str) {
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPageError(int i, String str, String str2) {
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPageTimeOut(String str, String str2) {
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onSetBackgroundColor(int i) {
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPageStartingLoad(String str) {
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onDisplay() {
    }
}
