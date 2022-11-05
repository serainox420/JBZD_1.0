package com.openx.model.video;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.openx.core.network.OXAdRequest;
import com.openx.model.vast.VASTParser;
import com.openx.model.video.VideoPlayer;
import com.openx.view.AdEventsListener;
@SuppressLint({"NewApi"})
/* loaded from: classes3.dex */
public class AdVideoDialog extends Dialog implements VideoPlayer.VideoPlayerCloseListener {
    AdEventsListener adEventsListener;
    private OXAdRequest adRequest;
    protected RelativeLayout container;
    Context context;
    boolean isPreloadedVideo;
    boolean playFullscreen;
    String preloadedAdVideoPath;
    private CustomVideoAdProperties skipDetailsVideoDialog;
    String vastTag;
    VASTParser vastXml;

    public AdVideoDialog(Context context, View view) {
        super(context, 16973834);
        this.context = context;
        init();
        if (((ViewGroup) view.getParent()) != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        this.container.addView(view, new RelativeLayout.LayoutParams(-1, -1));
    }

    public AdVideoDialog(Context context, AdEventsListener adEventsListener, String str, String str2, VASTParser vASTParser, boolean z, CustomVideoAdProperties customVideoAdProperties, boolean z2, OXAdRequest oXAdRequest) {
        super(context, 16973834);
        this.context = context;
        init();
        this.adEventsListener = adEventsListener;
        this.vastTag = str;
        this.preloadedAdVideoPath = str2;
        this.vastXml = vASTParser;
        this.skipDetailsVideoDialog = customVideoAdProperties;
        this.playFullscreen = z2;
        this.isPreloadedVideo = z;
        this.adRequest = oXAdRequest;
        showVideoAd();
    }

    public void removeView() {
        this.container.removeAllViews();
    }

    private void init() {
        this.container = new RelativeLayout(this.context);
        addContentView(this.container, new RelativeLayout.LayoutParams(-1, -1));
        setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.openx.model.video.AdVideoDialog.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4;
            }
        });
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.openx.model.video.AdVideoDialog.2
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                AdVideoDialog.this.adEventsListener.onAdClosed();
            }
        });
    }

    private void showVideoAd() {
        VideoAdManager videoAdManager = new VideoAdManager(this.context);
        videoAdManager.setCustomVideoAdProperties(this.skipDetailsVideoDialog);
        videoAdManager.setVideoPlayerClosedListener(this);
        videoAdManager.setVASTTag(this.vastTag);
        VideoPlayer videoPlayer = new VideoPlayer((Activity) this.context, this, this.preloadedAdVideoPath, null, this.vastXml, null, this.isPreloadedVideo, this.vastTag, false, this.skipDetailsVideoDialog, videoAdManager);
        videoAdManager.addVideoAdEventListener(videoPlayer);
        videoAdManager.addVideoInfoListener(videoPlayer);
        videoAdManager.setVideoContainer(videoPlayer);
        videoAdManager.setVideoView(videoPlayer.getVideoView());
        if (this.adRequest != null) {
            this.adRequest.setAdCallParams(this.adRequest.adCallParams);
        }
        videoAdManager.start(this.adRequest);
        this.container.addView(videoAdManager.getVideoContainer());
    }

    @Override // com.openx.model.video.VideoPlayer.VideoPlayerCloseListener
    public void videoPlayerClosed() {
        cancel();
    }
}
