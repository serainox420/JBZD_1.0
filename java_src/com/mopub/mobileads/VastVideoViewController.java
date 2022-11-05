package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.mopub.common.IntentActions;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.BaseVideoViewController;
import com.mopub.mobileads.m;
import com.mopub.mobileads.resource.DrawableConstants;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes3.dex */
public class VastVideoViewController extends BaseVideoViewController {
    public static final int WEBVIEW_PADDING = 16;
    private boolean A;
    private boolean B;
    private int C;
    private boolean D;

    /* renamed from: a  reason: collision with root package name */
    private final VastVideoConfig f4484a;
    private final VastVideoView b;
    private VastVideoGradientStripWidget c;
    private VastVideoGradientStripWidget d;
    private ImageView e;
    private VastVideoProgressBarWidget f;
    private VastVideoRadialCountdownWidget g;
    private VastVideoCtaButtonWidget h;
    private VastVideoCloseButtonWidget i;
    private VastCompanionAdConfig j;
    private final g k;
    private final View l;
    private final View m;
    private final Map<String, VastCompanionAdConfig> n;
    private View o;
    private final View p;
    private final View q;
    private final VastVideoViewProgressRunnable r;
    private final VastVideoViewCountdownRunnable s;
    private final View.OnTouchListener t;
    private int u;
    private boolean v;
    private int w;
    private boolean x;
    private boolean y;
    private boolean z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastVideoViewController(final Activity activity, Bundle bundle, Bundle bundle2, long j, BaseVideoViewController.BaseVideoViewControllerListener baseVideoViewControllerListener) throws IllegalStateException {
        super(activity, Long.valueOf(j), baseVideoViewControllerListener);
        this.u = 5000;
        this.z = false;
        this.A = false;
        this.B = false;
        this.D = false;
        this.w = -1;
        Serializable serializable = bundle2 != null ? bundle2.getSerializable("resumed_vast_config") : null;
        Serializable serializable2 = bundle.getSerializable("vast_video_config");
        if (serializable != null && (serializable instanceof VastVideoConfig)) {
            this.f4484a = (VastVideoConfig) serializable;
            this.w = bundle2.getInt("current_position", -1);
        } else if (serializable2 != null && (serializable2 instanceof VastVideoConfig)) {
            this.f4484a = (VastVideoConfig) serializable2;
        } else {
            throw new IllegalStateException("VastVideoConfig is invalid");
        }
        if (this.f4484a.getDiskMediaFileUrl() == null) {
            throw new IllegalStateException("VastVideoConfig does not have a video disk path");
        }
        this.j = this.f4484a.getVastCompanionAd(activity.getResources().getConfiguration().orientation);
        this.n = this.f4484a.getSocialActionsCompanionAds();
        this.k = this.f4484a.getVastIconConfig();
        this.t = new View.OnTouchListener() { // from class: com.mopub.mobileads.VastVideoViewController.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int j2;
                if (motionEvent.getAction() == 1 && VastVideoViewController.this.q()) {
                    VastVideoViewController.this.D = true;
                    VastVideoViewController.this.a(IntentActions.ACTION_INTERSTITIAL_CLICK);
                    VastVideoConfig vastVideoConfig = VastVideoViewController.this.f4484a;
                    Activity activity2 = activity;
                    if (VastVideoViewController.this.x) {
                        j2 = VastVideoViewController.this.C;
                    } else {
                        j2 = VastVideoViewController.this.j();
                    }
                    vastVideoConfig.handleClickForResult(activity2, j2, 1);
                }
                return true;
            }
        };
        getLayout().setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        e(activity, 4);
        this.b = a(activity, 0);
        this.b.requestFocus();
        this.l = a(activity, this.f4484a.getVastCompanionAd(2), 4);
        this.m = a(activity, this.f4484a.getVastCompanionAd(1), 4);
        a((Context) activity);
        b(activity, 4);
        b(activity);
        c(activity, 4);
        this.q = a(activity, this.k, 4);
        this.q.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.mopub.mobileads.VastVideoViewController.4
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                VastVideoViewController.this.o = VastVideoViewController.this.a(activity);
                VastVideoViewController.this.q.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }
        });
        c(activity);
        this.p = a(activity, this.n.get(VastXmlManagerAggregator.SOCIAL_ACTIONS_AD_SLOT_ID), Dips.dipsToIntPixels(38.0f, activity), 6, this.h, 4, 16);
        d(activity, 8);
        Handler handler = new Handler(Looper.getMainLooper());
        this.r = new VastVideoViewProgressRunnable(this, this.f4484a, handler);
        this.s = new VastVideoViewCountdownRunnable(this, handler);
    }

    @VisibleForTesting
    View a(Activity activity) {
        return a(activity, this.n.get(VastXmlManagerAggregator.ADS_BY_AD_SLOT_ID), this.q.getHeight(), 1, this.q, 0, 6);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected VideoView b() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void a() {
        super.a();
        switch (this.f4484a.getCustomForceOrientation()) {
            case FORCE_PORTRAIT:
                g().onSetRequestedOrientation(1);
                break;
            case FORCE_LANDSCAPE:
                g().onSetRequestedOrientation(0);
                break;
        }
        this.f4484a.handleImpression(h(), j());
        a(IntentActions.ACTION_INTERSTITIAL_SHOW);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void d() {
        r();
        if (this.w > 0) {
            this.b.seekTo(this.w);
        }
        if (!this.x) {
            this.b.start();
        }
        if (this.w != -1) {
            this.f4484a.handleResume(h(), this.w);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void c() {
        s();
        this.w = j();
        this.b.pause();
        if (!this.x && !this.D) {
            this.f4484a.handlePause(h(), this.w);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void e() {
        s();
        a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
        this.b.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void a(Bundle bundle) {
        bundle.putInt("current_position", this.w);
        bundle.putSerializable("resumed_vast_config", this.f4484a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void a(Configuration configuration) {
        int i = h().getResources().getConfiguration().orientation;
        this.j = this.f4484a.getVastCompanionAd(i);
        if (this.l.getVisibility() == 0 || this.m.getVisibility() == 0) {
            if (i == 1) {
                this.l.setVisibility(4);
                this.m.setVisibility(0);
            } else {
                this.m.setVisibility(4);
                this.l.setVisibility(0);
            }
            if (this.j != null) {
                this.j.a(h(), this.C);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void f() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    public boolean backButtonEnabled() {
        return this.v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void a(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            g().onFinish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        int i = i();
        if (this.f4484a.isRewardedVideo()) {
            this.u = i;
            return;
        }
        if (i < 16000) {
            this.u = i;
        }
        Integer skipOffsetMillis = this.f4484a.getSkipOffsetMillis(i);
        if (skipOffsetMillis != null) {
            this.u = skipOffsetMillis.intValue();
            this.z = true;
        }
    }

    private VastVideoView a(final Context context, int i) {
        if (this.f4484a.getDiskMediaFileUrl() == null) {
            throw new IllegalStateException("VastVideoConfig does not have a video disk path");
        }
        final VastVideoView vastVideoView = new VastVideoView(context);
        vastVideoView.setId((int) Utils.generateUniqueId());
        vastVideoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.mopub.mobileads.VastVideoViewController.5
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                VastVideoViewController.this.C = VastVideoViewController.this.b.getDuration();
                VastVideoViewController.this.p();
                if (VastVideoViewController.this.j == null || VastVideoViewController.this.B) {
                    vastVideoView.prepareBlurredLastVideoFrame(VastVideoViewController.this.e, VastVideoViewController.this.f4484a.getDiskMediaFileUrl());
                }
                VastVideoViewController.this.f.calibrateAndMakeVisible(VastVideoViewController.this.i(), VastVideoViewController.this.u);
                VastVideoViewController.this.g.a(VastVideoViewController.this.u);
                VastVideoViewController.this.A = true;
            }
        });
        vastVideoView.setOnTouchListener(this.t);
        vastVideoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.mopub.mobileads.VastVideoViewController.6
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                VastVideoViewController.this.s();
                VastVideoViewController.this.k();
                VastVideoViewController.this.b(false);
                VastVideoViewController.this.x = true;
                if (VastVideoViewController.this.f4484a.isRewardedVideo()) {
                    VastVideoViewController.this.a(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
                }
                if (!VastVideoViewController.this.y && VastVideoViewController.this.f4484a.getRemainingProgressTrackerCount() == 0) {
                    VastVideoViewController.this.f4484a.handleComplete(VastVideoViewController.this.h(), VastVideoViewController.this.j());
                }
                vastVideoView.setVisibility(4);
                VastVideoViewController.this.f.setVisibility(8);
                if (VastVideoViewController.this.B) {
                    if (VastVideoViewController.this.e.getDrawable() != null) {
                        VastVideoViewController.this.e.setScaleType(ImageView.ScaleType.CENTER_CROP);
                        VastVideoViewController.this.e.setVisibility(0);
                    }
                } else {
                    VastVideoViewController.this.q.setVisibility(8);
                }
                VastVideoViewController.this.c.a();
                VastVideoViewController.this.d.a();
                VastVideoViewController.this.h.b();
                if (VastVideoViewController.this.j == null) {
                    if (VastVideoViewController.this.e.getDrawable() != null) {
                        VastVideoViewController.this.e.setVisibility(0);
                        return;
                    }
                    return;
                }
                if (context.getResources().getConfiguration().orientation == 1) {
                    VastVideoViewController.this.m.setVisibility(0);
                } else {
                    VastVideoViewController.this.l.setVisibility(0);
                }
                VastVideoViewController.this.j.a(context, VastVideoViewController.this.C);
            }
        });
        vastVideoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.mopub.mobileads.VastVideoViewController.7
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
                if (vastVideoView.a(mediaPlayer, i2, i3, VastVideoViewController.this.f4484a.getDiskMediaFileUrl())) {
                    return true;
                }
                VastVideoViewController.this.s();
                VastVideoViewController.this.k();
                VastVideoViewController.this.a(false);
                VastVideoViewController.this.y = true;
                VastVideoViewController.this.f4484a.handleError(VastVideoViewController.this.h(), VastErrorCode.GENERAL_LINEAR_AD_ERROR, VastVideoViewController.this.j());
                return false;
            }
        });
        vastVideoView.setVideoPath(this.f4484a.getDiskMediaFileUrl());
        vastVideoView.setVisibility(i);
        return vastVideoView;
    }

    private void a(Context context) {
        this.c = new VastVideoGradientStripWidget(context, GradientDrawable.Orientation.TOP_BOTTOM, this.f4484a.getCustomForceOrientation(), this.j != null, 0, 6, getLayout().getId());
        getLayout().addView(this.c);
    }

    private void b(Context context) {
        this.d = new VastVideoGradientStripWidget(context, GradientDrawable.Orientation.BOTTOM_TOP, this.f4484a.getCustomForceOrientation(), this.j != null, 8, 2, this.f.getId());
        getLayout().addView(this.d);
    }

    private void b(Context context, int i) {
        this.f = new VastVideoProgressBarWidget(context);
        this.f.setAnchorId(this.b.getId());
        this.f.setVisibility(i);
        getLayout().addView(this.f);
    }

    private void c(Context context, int i) {
        this.g = new VastVideoRadialCountdownWidget(context);
        this.g.setVisibility(i);
        getLayout().addView(this.g);
    }

    private void c(Context context) {
        boolean z = true;
        boolean z2 = this.j != null;
        if (TextUtils.isEmpty(this.f4484a.getClickThroughUrl())) {
            z = false;
        }
        this.h = new VastVideoCtaButtonWidget(context, this.b.getId(), z2, z);
        getLayout().addView(this.h);
        this.h.setOnTouchListener(this.t);
        String customCtaText = this.f4484a.getCustomCtaText();
        if (customCtaText != null) {
            this.h.a(customCtaText);
        }
    }

    private void d(Context context, int i) {
        this.i = new VastVideoCloseButtonWidget(context);
        this.i.setVisibility(i);
        getLayout().addView(this.i);
        this.i.setOnTouchListenerToContent(new View.OnTouchListener() { // from class: com.mopub.mobileads.VastVideoViewController.8
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int j;
                if (VastVideoViewController.this.x) {
                    j = VastVideoViewController.this.C;
                } else {
                    j = VastVideoViewController.this.j();
                }
                if (motionEvent.getAction() == 1) {
                    VastVideoViewController.this.D = true;
                    VastVideoViewController.this.f4484a.handleClose(VastVideoViewController.this.h(), j);
                    VastVideoViewController.this.g().onFinish();
                }
                return true;
            }
        });
        String customSkipText = this.f4484a.getCustomSkipText();
        if (customSkipText != null) {
            this.i.a(customSkipText);
        }
        String customCloseIconUrl = this.f4484a.getCustomCloseIconUrl();
        if (customCloseIconUrl != null) {
            this.i.b(customCloseIconUrl);
        }
    }

    private void e(Context context, int i) {
        this.e = new ImageView(context);
        this.e.setVisibility(i);
        getLayout().addView(this.e, new RelativeLayout.LayoutParams(-1, -1));
    }

    @VisibleForTesting
    View a(Context context, VastCompanionAdConfig vastCompanionAdConfig, int i) {
        Preconditions.checkNotNull(context);
        if (vastCompanionAdConfig == null) {
            View view = new View(context);
            view.setVisibility(4);
            return view;
        }
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setGravity(17);
        getLayout().addView(relativeLayout, new RelativeLayout.LayoutParams(-1, -1));
        m a2 = a(context, vastCompanionAdConfig);
        a2.setVisibility(i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(vastCompanionAdConfig.getWidth() + 16, context), Dips.dipsToIntPixels(vastCompanionAdConfig.getHeight() + 16, context));
        layoutParams.addRule(13, -1);
        relativeLayout.addView(a2, layoutParams);
        return a2;
    }

    @VisibleForTesting
    View a(Context context, VastCompanionAdConfig vastCompanionAdConfig, int i, int i2, View view, int i3, int i4) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(view);
        if (vastCompanionAdConfig == null) {
            View view2 = new View(context);
            view2.setVisibility(4);
            return view2;
        }
        this.B = true;
        this.h.setHasSocialActions(this.B);
        m a2 = a(context, vastCompanionAdConfig);
        int dipsToIntPixels = Dips.dipsToIntPixels(vastCompanionAdConfig.getWidth(), context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(vastCompanionAdConfig.getHeight(), context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(i4, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        layoutParams.addRule(i2, view.getId());
        layoutParams.addRule(6, view.getId());
        layoutParams.setMargins(dipsToIntPixels3, (i - dipsToIntPixels2) / 2, 0, 0);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setGravity(16);
        relativeLayout.addView(a2, new RelativeLayout.LayoutParams(-2, -2));
        getLayout().addView(relativeLayout, layoutParams);
        a2.setVisibility(i3);
        return a2;
    }

    @VisibleForTesting
    View a(final Context context, final g gVar, int i) {
        Preconditions.checkNotNull(context);
        if (gVar == null) {
            return new View(context);
        }
        m a2 = m.a(context, gVar.e());
        a2.a(new m.a() { // from class: com.mopub.mobileads.VastVideoViewController.9
            @Override // com.mopub.mobileads.m.a
            public void onVastWebViewClick() {
                TrackingRequest.makeVastTrackingHttpRequest(gVar.f(), null, Integer.valueOf(VastVideoViewController.this.j()), VastVideoViewController.this.o(), context);
                gVar.a(VastVideoViewController.this.h(), (String) null, VastVideoViewController.this.f4484a.getDspCreativeId());
            }
        });
        a2.setWebViewClient(new WebViewClient() { // from class: com.mopub.mobileads.VastVideoViewController.10
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                gVar.a(VastVideoViewController.this.h(), str, VastVideoViewController.this.f4484a.getDspCreativeId());
                return true;
            }
        });
        a2.setVisibility(i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.asIntPixels(gVar.a(), context), Dips.asIntPixels(gVar.b(), context));
        layoutParams.setMargins(Dips.dipsToIntPixels(12.0f, context), Dips.dipsToIntPixels(12.0f, context), 0, 0);
        getLayout().addView(a2, layoutParams);
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i() {
        return this.b.getDuration();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j() {
        return this.b.getCurrentPosition();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        this.v = true;
        this.g.setVisibility(8);
        this.i.setVisibility(0);
        this.h.a();
        this.p.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean l() {
        return !this.v && j() >= this.u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        if (this.A) {
            this.g.a(this.u, j());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        this.f.updateProgress(j());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String o() {
        if (this.f4484a == null) {
            return null;
        }
        return this.f4484a.getNetworkMediaFileUrl();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        if (this.k != null && i >= this.k.c()) {
            this.q.setVisibility(0);
            this.k.a(h(), i, o());
            if (this.k.d() != null && i >= this.k.c() + this.k.d().intValue()) {
                this.q.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean q() {
        return this.v;
    }

    private void r() {
        this.r.startRepeating(50L);
        this.s.startRepeating(250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        this.r.stop();
        this.s.stop();
    }

    private m a(final Context context, final VastCompanionAdConfig vastCompanionAdConfig) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(vastCompanionAdConfig);
        m a2 = m.a(context, vastCompanionAdConfig.getVastResource());
        a2.a(new m.a() { // from class: com.mopub.mobileads.VastVideoViewController.11
            @Override // com.mopub.mobileads.m.a
            public void onVastWebViewClick() {
                VastVideoViewController.this.a(IntentActions.ACTION_INTERSTITIAL_CLICK);
                TrackingRequest.makeVastTrackingHttpRequest(vastCompanionAdConfig.getClickTrackers(), null, Integer.valueOf(VastVideoViewController.this.C), null, context);
                vastCompanionAdConfig.a(context, 1, null, VastVideoViewController.this.f4484a.getDspCreativeId());
            }
        });
        a2.setWebViewClient(new WebViewClient() { // from class: com.mopub.mobileads.VastVideoViewController.2
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                vastCompanionAdConfig.a(context, 1, str, VastVideoViewController.this.f4484a.getDspCreativeId());
                return true;
            }
        });
        return a2;
    }
}
