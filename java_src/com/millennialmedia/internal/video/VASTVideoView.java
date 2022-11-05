package com.millennialmedia.internal.video;

import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.millennialmedia.MMLog;
import com.millennialmedia.R;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.MMWebView;
import com.millennialmedia.internal.SizableStateManager;
import com.millennialmedia.internal.adcontrollers.VASTVideoController;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.IOUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.ViewUtils;
import com.millennialmedia.internal.video.MMVideoView;
import com.millennialmedia.internal.video.VASTParser;
import com.mopub.mobileads.resource.DrawableConstants;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class VASTVideoView extends RelativeLayout implements VASTVideoController.VideoViewActions, MMVideoView.MMVideoViewListener {
    public static final int PROGRESS_UPDATES_DISABLED = -1;

    /* renamed from: a  reason: collision with root package name */
    private static final String f4275a = VASTVideoView.class.getSimpleName();
    private static final List<String> b = new ArrayList();
    private boolean A;
    private boolean B;
    private VASTParser.Creative C;
    private VASTParser.MediaFile D;
    private VASTParser.CompanionAd E;
    private List<VASTParser.TrackingEvent> F;
    private int G;
    private volatile boolean c;
    private volatile int d;
    private volatile String e;
    private VASTVideoViewListener f;
    private FrameLayout g;
    private MMVideoView h;
    private FrameLayout i;
    private RelativeLayout j;
    private ImageView k;
    private ImageView l;
    private ImageView m;
    private TextView n;
    private LinearLayout o;
    private VASTVideoWebView p;
    private VASTVideoWebView q;
    private VASTVideoWebView r;
    private VASTParser.InLineAd s;
    private List<VASTParser.WrapperAd> t;
    private ViewUtils.ViewabilityWatcher u;
    private ViewUtils.ViewabilityWatcher v;
    private ViewUtils.ViewabilityWatcher w;
    private File x;
    private int y;
    private int z;

    /* loaded from: classes3.dex */
    public interface VASTVideoViewListener {
        void close();

        void onClicked();

        void onFailed();

        void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent);

        void onLoaded();
    }

    static {
        b.add("image/bmp");
        b.add("image/gif");
        b.add("image/jpeg");
        b.add("image/png");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class ImageButton extends ImageView implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        Integer f4306a;
        VASTParser.Button b;

        ImageButton(Context context, VASTParser.Button button) {
            super(context);
            this.f4306a = null;
            this.b = null;
            this.b = button;
            if (a() > 0) {
                setVisibility(4);
            }
            b();
            setOnClickListener(this);
        }

        int a() {
            if (this.f4306a == null) {
                this.f4306a = Integer.valueOf(VASTVideoView.this.b(this.b.offset));
            }
            return this.f4306a.intValue();
        }

        boolean a(int i) {
            if (i >= a()) {
                ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.ImageButton.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ImageButton.this.setVisibility(0);
                    }
                });
                return true;
            }
            return false;
        }

        private void b() {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.ImageButton.2
                @Override // java.lang.Runnable
                public void run() {
                    final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(ImageButton.this.b.staticResource.uri);
                    if (bitmapFromGetRequest != null && bitmapFromGetRequest.code == 200) {
                        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.ImageButton.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ImageButton.this.setImageBitmap(bitmapFromGetRequest.bitmap);
                            }
                        });
                    }
                }
            });
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VASTVideoView.this.o();
            final VASTParser.ButtonClicks buttonClicks = this.b.buttonClicks;
            if (buttonClicks != null) {
                if (!Utils.isEmpty(buttonClicks.clickThrough)) {
                    Utils.startActivityFromUrl(buttonClicks.clickThrough);
                }
                if (buttonClicks.clickTrackingUrls != null) {
                    ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.ImageButton.3
                        @Override // java.lang.Runnable
                        public void run() {
                            for (String str : buttonClicks.clickTrackingUrls) {
                                if (!Utils.isEmpty(str)) {
                                    HttpUtils.getContentFromGetRequest(str);
                                }
                            }
                        }
                    });
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class VASTVideoWebView extends MMWebView {
        int d;
        volatile int e;

        VASTVideoWebView(Context context, boolean z, MMWebView.MMWebViewListener mMWebViewListener) {
            super(context, new MMWebView.MMWebViewOptions(true, z, false, false), mMWebViewListener);
            this.d = -1;
            this.e = 0;
        }

        public void play() {
            if (VASTVideoView.this.d != 2) {
                VASTVideoView.this.h.start();
            }
        }

        public void pause() {
            if (VASTVideoView.this.d != 2) {
                VASTVideoView.this.h.pause();
            }
        }

        public void close() {
            VASTVideoView.this.b();
        }

        public void skip() {
            if (VASTVideoView.this.d != 2) {
                VASTVideoView.this.c = true;
                ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.VASTVideoWebView.1
                    @Override // java.lang.Runnable
                    public void run() {
                        VASTVideoView.this.i();
                        VASTVideoView.this.l();
                    }
                });
            }
        }

        public void restart() {
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.VASTVideoWebView.2
                @Override // java.lang.Runnable
                public void run() {
                    VASTVideoView.this.k();
                }
            });
        }

        public void seek(int i) {
            if (VASTVideoView.this.d != 2) {
                VASTVideoView.this.h.seekTo(i);
            }
        }

        public void triggerTimeUpdate() {
            callJavascript("MmJsBridge.vast.setCurrentTime", Integer.valueOf(VASTVideoView.this.h.getCurrentPosition()));
        }

        public void setTimeInterval(int i) {
            this.d = i;
        }

        void a(int i) {
            if (this.d != -1) {
                if (this.e == 0 || this.e + this.d <= i) {
                    this.e = i;
                    callJavascript("MmJsBridge.vast.setCurrentTime", Integer.valueOf(i));
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    static class VASTImpressionViewabilityListener implements ViewUtils.ViewabilityListener {
        VASTImpressionViewabilityListener() {
        }

        @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
        public void onViewableChanged(View view, boolean z) {
            VASTVideoView vASTVideoView = (VASTVideoView) view;
            if (z) {
                vASTVideoView.j();
            }
        }
    }

    /* loaded from: classes3.dex */
    static class VASTVideoViewabilityListener implements ViewUtils.ViewabilityListener {

        /* renamed from: a  reason: collision with root package name */
        boolean f4312a = false;
        WeakReference<VASTVideoView> b;

        VASTVideoViewabilityListener(VASTVideoView vASTVideoView) {
            this.b = new WeakReference<>(vASTVideoView);
        }

        @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
        public void onViewableChanged(View view, boolean z) {
            MMVideoView mMVideoView = (MMVideoView) view;
            VASTVideoView vASTVideoView = this.b.get();
            if (vASTVideoView != null) {
                if (z) {
                    vASTVideoView.b(vASTVideoView.a(VASTParser.TrackableEvent.creativeView));
                    if (vASTVideoView.C != null) {
                        vASTVideoView.b(vASTVideoView.C.linearAd.trackingEvents.get(VASTParser.TrackableEvent.creativeView));
                    }
                }
                if (!z && mMVideoView.isPlaying()) {
                    this.f4312a = true;
                    mMVideoView.pause();
                } else if (this.f4312a) {
                    mMVideoView.start();
                    this.f4312a = false;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    static class VASTEndCardViewabilityListener implements ViewUtils.ViewabilityListener {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<VASTVideoView> f4311a;

        VASTEndCardViewabilityListener(VASTVideoView vASTVideoView) {
            this.f4311a = new WeakReference<>(vASTVideoView);
        }

        @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
        public void onViewableChanged(View view, boolean z) {
            VASTVideoView vASTVideoView = this.f4311a.get();
            if (vASTVideoView != null && z && vASTVideoView.E.trackingEvents != null && !vASTVideoView.E.trackingEvents.isEmpty()) {
                vASTVideoView.b(vASTVideoView.E.trackingEvents.get(VASTParser.TrackableEvent.creativeView));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VASTVideoView(Context context, VASTParser.InLineAd inLineAd, List<VASTParser.WrapperAd> list, VASTVideoViewListener vASTVideoViewListener) {
        super(context);
        RelativeLayout.LayoutParams layoutParams;
        boolean z = false;
        this.c = false;
        this.d = 0;
        this.e = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.z = 0;
        this.A = false;
        this.B = true;
        this.G = 0;
        this.s = inLineAd;
        this.t = list;
        setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        if (n()) {
            this.G = 1;
        } else {
            this.G = 2;
        }
        this.F = new ArrayList();
        this.f = vASTVideoViewListener;
        this.w = new ViewUtils.ViewabilityWatcher(this, new VASTImpressionViewabilityListener());
        FrameLayout frameLayout = new FrameLayout(getContext());
        ViewGroup.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        addView(frameLayout, layoutParams2);
        this.g = new FrameLayout(context);
        this.g.setTag("mmVastVideoView_backgroundFrame");
        this.g.setVisibility(8);
        frameLayout.addView(this.g, new FrameLayout.LayoutParams(-1, -1));
        this.h = new MMVideoView(context, true, false, Handshake.isMoatEnabled() ? getMoatIdentifiers() : null, this);
        this.h.setTag("mmVastVideoView_videoView");
        this.v = new ViewUtils.ViewabilityWatcher(this.h, new VASTVideoViewabilityListener(this));
        if (n()) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(3, R.id.mmadsdk_vast_video_control_buttons);
        } else {
            layoutParams = layoutParams2;
        }
        addView(this.h, layoutParams);
        this.i = new FrameLayout(context);
        this.i.setTag("mmVastVideoView_endCardContainer");
        this.i.setVisibility(8);
        this.u = new ViewUtils.ViewabilityWatcher(this.i, new VASTEndCardViewabilityListener(this));
        this.w.startWatching();
        this.v.startWatching();
        this.u.startWatching();
        frameLayout.addView(this.i, new FrameLayout.LayoutParams(-1, -1));
        this.j = new RelativeLayout(context);
        this.j.setId(R.id.mmadsdk_vast_video_control_buttons);
        this.k = new ImageView(context);
        this.k.setImageDrawable(getResources().getDrawable(R.drawable.mmadsdk_vast_close));
        this.k.setVisibility(8);
        this.k.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VASTVideoView.this.b();
            }
        });
        this.k.setTag("mmVastVideoView_closeButton");
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(R.dimen.mmadsdk_control_button_width), getResources().getDimensionPixelSize(R.dimen.mmadsdk_control_button_height));
        layoutParams3.addRule(10);
        layoutParams3.addRule(11);
        this.j.addView(this.k, layoutParams3);
        this.l = new ImageView(context);
        this.l.setImageDrawable(getResources().getDrawable(R.drawable.mmadsdk_vast_skip));
        this.l.setTag("mmVastVideoView_skipButton");
        this.n = new TextView(context);
        this.n.setBackground(getResources().getDrawable(R.drawable.mmadsdk_vast_opacity));
        this.n.setTextColor(getResources().getColor(17170443));
        this.n.setTypeface(null, 1);
        this.n.setGravity(17);
        this.n.setVisibility(4);
        this.n.setTag("mmVastVideoView_countdown");
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(R.dimen.mmadsdk_control_button_width), getResources().getDimensionPixelSize(R.dimen.mmadsdk_control_button_height));
        layoutParams4.addRule(10);
        layoutParams4.addRule(11);
        this.j.addView(this.l, layoutParams4);
        this.j.addView(this.n, layoutParams4);
        this.m = new ImageView(context);
        this.m.setImageDrawable(getResources().getDrawable(R.drawable.mmadsdk_vast_replay));
        this.m.setVisibility(8);
        this.m.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VASTVideoView.this.o();
                VASTVideoView.this.k();
            }
        });
        this.m.setTag("mmVastVideoView_replayButton");
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(R.dimen.mmadsdk_control_button_width), getResources().getDimensionPixelSize(R.dimen.mmadsdk_control_button_height));
        layoutParams5.addRule(10);
        layoutParams5.addRule(9);
        this.j.addView(this.m, layoutParams5);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams6.addRule(10);
        addView(this.j, layoutParams6);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams7.addRule(12);
        this.o = new LinearLayout(getContext());
        addView(this.o, layoutParams7);
        a(context);
        this.B = (a(this.C) || d(this.t)) ? true : z;
        this.d = 1;
        updateComponentVisibility();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.C != null) {
            b(a(VASTParser.TrackableEvent.closeLinear));
            b(this.C.linearAd.trackingEvents.get(VASTParser.TrackableEvent.closeLinear));
        }
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.3
            @Override // java.lang.Runnable
            public void run() {
                if (VASTVideoView.this.f != null) {
                    VASTVideoView.this.f.close();
                }
            }
        });
    }

    private void c() {
        if (this.d == 1) {
            if (n()) {
                if (this.s != null && this.s.mmExtension != null && this.s.mmExtension.background != null && this.s.mmExtension.background.hideButtons) {
                    this.o.setVisibility(4);
                } else {
                    this.o.setVisibility(0);
                }
            } else if (this.s != null && this.s.mmExtension != null && this.s.mmExtension.overlay != null && this.s.mmExtension.overlay.hideButtons) {
                this.o.setVisibility(4);
            } else {
                this.o.setVisibility(0);
            }
        } else if (this.d == 2) {
            if (this.E != null && this.E.hideButtons) {
                this.o.setVisibility(4);
            } else {
                this.o.setVisibility(0);
            }
        }
    }

    public void updateComponentVisibility() {
        if (this.d == 1) {
            this.g.setVisibility(n() ? 0 : 8);
            this.i.setVisibility(8);
            if (this.p != null) {
                if (n()) {
                    ViewUtils.removeFromParent(this.p);
                } else if (this.p.getParent() == null) {
                    this.h.addView(this.p, new RelativeLayout.LayoutParams(-1, -1));
                }
            }
            this.h.setVisibility(0);
        } else if (this.d == 2) {
            this.h.setVisibility(8);
            this.g.setVisibility(8);
            this.i.setVisibility(0);
            if (this.p != null) {
                ViewUtils.removeFromParent(this.p);
            }
        }
        c();
    }

    @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VideoViewActions
    public void updateLayout() {
        boolean z;
        int i = 1;
        if (n() && this.G != 1) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(3, R.id.mmadsdk_vast_video_control_buttons);
            this.h.setLayoutParams(layoutParams);
            updateComponentVisibility();
            z = true;
        } else if (n() || this.G != 1) {
            z = false;
        } else {
            this.h.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            updateComponentVisibility();
            z = true;
        }
        if (z) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mmadsdk_ad_button_width);
            int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mmadsdk_ad_button_height);
            if (!n()) {
                i = 0;
            }
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize2, i);
            if (!n()) {
                layoutParams2.leftMargin = getResources().getDimensionPixelSize(R.dimen.mmadsdk_ad_button_padding_left);
            } else {
                layoutParams2.leftMargin = 0;
            }
            for (int i2 = 0; i2 < this.o.getChildCount(); i2++) {
                this.o.getChildAt(i2).setLayoutParams(layoutParams2);
            }
        }
        this.o.bringToFront();
        this.G = getResources().getConfiguration().orientation;
    }

    private void a(Context context) {
        File externalFilesDir;
        VASTParser.MediaFile a2;
        if (this.s.creatives != null) {
            Iterator<VASTParser.Creative> it = this.s.creatives.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                VASTParser.Creative next = it.next();
                if (next.linearAd != null && (a2 = a(next.linearAd.mediaFiles)) != null) {
                    this.D = a2;
                    this.C = next;
                    break;
                }
            }
        }
        if (this.D != null) {
            if (context.getExternalFilesDir(null) == null) {
                MMLog.e(f4275a, "Cannot access video cache directory. External storage is not available.");
                if (this.f != null) {
                    this.f.onFailed();
                    return;
                }
                return;
            }
            File file = new File(externalFilesDir.getAbsolutePath() + File.separator + "_mm_video_cache");
            file.mkdirs();
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isFile()) {
                        if (System.currentTimeMillis() - file2.lastModified() > 43200000) {
                            file2.delete();
                        }
                    }
                }
            }
            IOUtils.downloadFile(this.D.url.trim(), null, file, new IOUtils.DownloadListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.4
                @Override // com.millennialmedia.internal.utils.IOUtils.DownloadListener
                public void onDownloadSucceeded(final File file3) {
                    ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            VASTVideoView.this.x = file3;
                            VASTVideoView.this.h.setVideoURI(Uri.parse(file3.getAbsolutePath()));
                            VASTVideoView.this.h();
                        }
                    });
                }

                @Override // com.millennialmedia.internal.utils.IOUtils.DownloadListener
                public void onDownloadFailed(Throwable th) {
                    MMLog.e(VASTVideoView.f4275a, "Error occurred downloading the video file.", th);
                    if (VASTVideoView.this.f != null) {
                        VASTVideoView.this.f.onFailed();
                    }
                }
            });
            g();
            f();
            d();
            e();
            return;
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4275a, "VAST init failed because it did not contain a compatible media file.");
        }
        if (this.f != null) {
            this.f.onFailed();
        }
    }

    private VASTParser.MediaFile a(List<VASTParser.MediaFile> list) {
        int i;
        VASTParser.MediaFile mediaFile = null;
        if (list != null && !list.isEmpty()) {
            String networkConnectionType = EnvironmentUtils.getNetworkConnectionType();
            if ("wifi".equalsIgnoreCase(networkConnectionType)) {
                i = 1200;
            } else {
                i = "lte".equalsIgnoreCase(networkConnectionType) ? 800 : 800;
            }
            if (MMLog.isDebugEnabled()) {
                MMLog.d("TAG", "Using bit rate range 400 to " + i + " inclusive for network connectivity type = " + networkConnectionType);
            }
            for (VASTParser.MediaFile mediaFile2 : list) {
                if (!Utils.isEmpty(mediaFile2.url)) {
                    boolean equalsIgnoreCase = "progressive".equalsIgnoreCase(mediaFile2.delivery);
                    boolean equalsIgnoreCase2 = "video/mp4".equalsIgnoreCase(mediaFile2.contentType);
                    boolean z = mediaFile2.bitrate >= 400 && mediaFile2.bitrate <= i;
                    boolean z2 = mediaFile == null || mediaFile.bitrate < mediaFile2.bitrate;
                    if (equalsIgnoreCase && equalsIgnoreCase2 && z && z2) {
                        mediaFile = mediaFile2;
                    }
                }
                mediaFile2 = mediaFile;
                mediaFile = mediaFile2;
            }
        }
        return mediaFile;
    }

    private void d() {
        if (this.s.mmExtension != null && this.s.mmExtension.overlay != null && !Utils.isEmpty(this.s.mmExtension.overlay.uri)) {
            this.p = new VASTVideoWebView(getContext(), true, new MMWebView.MMWebViewListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.5
                @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                public void onLoaded() {
                }

                @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                public void onReady() {
                    VASTVideoView.this.a(VASTVideoView.this.p);
                }

                @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                public void onFailed() {
                }

                @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                public void onClicked() {
                    VASTVideoView.this.o();
                }

                @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                public void onAdLeftApplication() {
                }

                @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                public boolean expand(SizableStateManager.ExpandParams expandParams) {
                    return false;
                }

                @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                public boolean resize(SizableStateManager.ResizeParams resizeParams) {
                    return false;
                }

                @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                public void close() {
                }

                @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                public void showCloseIndicator(boolean z) {
                }

                @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                public void setOrientation(int i) {
                }
            });
            this.p.setTag("mmVastVideoView_overlayWebView");
            a(this.p, this.s.mmExtension.overlay.uri);
        }
    }

    private void a(final VASTVideoWebView vASTVideoWebView, final String str) {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.6
            @Override // java.lang.Runnable
            public void run() {
                final HttpUtils.Response contentFromGetRequest = HttpUtils.getContentFromGetRequest(str);
                if (contentFromGetRequest.code == 200 && !Utils.isEmpty(contentFromGetRequest.content)) {
                    ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            vASTVideoWebView.setContent(contentFromGetRequest.content);
                        }
                    });
                }
            }
        });
    }

    private void e() {
        if (this.s.creatives != null) {
            for (VASTParser.Creative creative : this.s.creatives) {
                if (creative.companionAds != null && !creative.companionAds.isEmpty()) {
                    for (VASTParser.CompanionAd companionAd : creative.companionAds) {
                        if (companionAd != null && companionAd.width != null && companionAd.width.intValue() >= 300 && companionAd.height != null && companionAd.height.intValue() >= 250 && ((companionAd.staticResource != null && !Utils.isEmpty(companionAd.staticResource.uri) && b.contains(companionAd.staticResource.creativeType)) || ((companionAd.htmlResource != null && !Utils.isEmpty(companionAd.htmlResource.uri)) || (companionAd.iframeResource != null && !Utils.isEmpty(companionAd.iframeResource.uri))))) {
                            this.E = companionAd;
                            break;
                        }
                    }
                }
                if (this.E != null && creative != this.C) {
                    break;
                }
            }
        }
        if (this.E != null) {
            if (this.E.iframeResource != null && !Utils.isEmpty(this.E.iframeResource.uri)) {
                a(this.E.iframeResource.uri);
                this.i.addView(this.q, new FrameLayout.LayoutParams(-1, -1));
                this.i.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.7
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        VASTVideoView.this.p();
                    }
                });
            } else if (this.E.htmlResource != null && !Utils.isEmpty(this.E.htmlResource.uri)) {
                a(this.E.htmlResource.uri);
                this.i.addView(this.q, new FrameLayout.LayoutParams(-1, -1));
                this.i.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.8
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        VASTVideoView.this.p();
                    }
                });
            } else if (this.E.staticResource != null && !Utils.isEmpty(this.E.staticResource.uri)) {
                ThreadUtils.runOnWorkerThread(new AnonymousClass9());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.millennialmedia.internal.video.VASTVideoView$9  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass9 implements Runnable {
        AnonymousClass9() {
        }

        @Override // java.lang.Runnable
        public void run() {
            final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(VASTVideoView.this.E.staticResource.uri);
            if (bitmapFromGetRequest != null && bitmapFromGetRequest.code == 200) {
                ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ImageView imageView = new ImageView(VASTVideoView.this.getContext());
                        imageView.setImageBitmap(bitmapFromGetRequest.bitmap);
                        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.9.1.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                VASTVideoView.this.o();
                                if (!Utils.isEmpty(VASTVideoView.this.E.companionClickThrough)) {
                                    Utils.startActivityFromUrl(VASTVideoView.this.E.companionClickThrough);
                                }
                                VASTVideoView.this.p();
                            }
                        });
                        imageView.setTag("mmVastVideoView_companionImageView");
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                        VASTVideoView.this.i.setBackgroundColor(VASTVideoView.this.a(VASTVideoView.this.E.staticResource));
                        VASTVideoView.this.i.addView(imageView, layoutParams);
                    }
                });
            }
        }
    }

    private void a(String str) {
        this.q = new VASTVideoWebView(getContext(), false, new MMWebView.MMWebViewListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.10
            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onLoaded() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onReady() {
                VASTVideoView.this.a(VASTVideoView.this.q);
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onFailed() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onClicked() {
                VASTVideoView.this.o();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onAdLeftApplication() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean expand(SizableStateManager.ExpandParams expandParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean resize(SizableStateManager.ResizeParams resizeParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void close() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void showCloseIndicator(boolean z) {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void setOrientation(int i) {
            }
        });
        this.q.setTag("mmVastVideoView_companionWebView");
        a(this.q, str);
    }

    private void f() {
        if (this.s.mmExtension != null && this.s.mmExtension.background != null) {
            final VASTParser.Background background = this.s.mmExtension.background;
            if (background.staticResource != null && !Utils.isEmpty(background.staticResource.uri)) {
                final ImageView imageView = new ImageView(getContext());
                imageView.setTag("mmVastVideoView_backgroundImageView");
                this.g.addView(imageView);
                this.g.setBackgroundColor(a(background.staticResource));
                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.11
                    @Override // java.lang.Runnable
                    public void run() {
                        final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(background.staticResource.uri);
                        if (bitmapFromGetRequest.code == 200) {
                            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.11.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    imageView.setImageBitmap(bitmapFromGetRequest.bitmap);
                                }
                            });
                        }
                    }
                });
            } else if (background.webResource != null && !Utils.isEmpty(background.webResource.uri)) {
                this.r = new VASTVideoWebView(getContext(), false, new MMWebView.MMWebViewListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.12
                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onLoaded() {
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onReady() {
                        VASTVideoView.this.a(VASTVideoView.this.r);
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onFailed() {
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onClicked() {
                        VASTVideoView.this.o();
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onAdLeftApplication() {
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public boolean expand(SizableStateManager.ExpandParams expandParams) {
                        return false;
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public boolean resize(SizableStateManager.ResizeParams resizeParams) {
                        return false;
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void close() {
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void showCloseIndicator(boolean z) {
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void setOrientation(int i) {
                    }
                });
                this.r.setTag("mmVastVideoView_backgroundWebView");
                this.g.addView(this.r);
                a(this.r, background.webResource.uri);
            }
        }
    }

    private void g() {
        if (this.s.mmExtension != null && this.s.mmExtension.buttons != null) {
            Collections.sort(this.s.mmExtension.buttons, new Comparator<VASTParser.Button>() { // from class: com.millennialmedia.internal.video.VASTVideoView.13
                @Override // java.util.Comparator
                public int compare(VASTParser.Button button, VASTParser.Button button2) {
                    return button.position - button2.position;
                }
            });
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mmadsdk_ad_button_width);
            int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mmadsdk_ad_button_height);
            int i = 0;
            for (VASTParser.Button button : this.s.mmExtension.buttons) {
                if (i < 3) {
                    if (button.staticResource != null && !Utils.isEmpty(button.staticResource.uri) && !Utils.isEmpty(button.staticResource.creativeType) && button.staticResource.creativeType.trim().equalsIgnoreCase("image/png")) {
                        i++;
                        ImageButton imageButton = new ImageButton(getContext(), button);
                        FrameLayout frameLayout = new FrameLayout(getContext());
                        frameLayout.addView(imageButton, new FrameLayout.LayoutParams(-1, -1));
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize2, n() ? 1 : 0);
                        if (!n()) {
                            layoutParams.leftMargin = getResources().getDimensionPixelSize(R.dimen.mmadsdk_ad_button_padding_left);
                        }
                        this.o.addView(frameLayout, layoutParams);
                    }
                    i = i;
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        final VASTParser.VideoClicks videoClicks = this.C.linearAd.videoClicks;
        final List<VASTParser.VideoClicks> wrapperVideoClicks = getWrapperVideoClicks();
        if (a(videoClicks) || c(getWrapperVideoClicks())) {
            this.h.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.14
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    VASTVideoView.this.o();
                    if (videoClicks == null || Utils.isEmpty(videoClicks.clickThrough)) {
                        VASTVideoView.this.a(videoClicks, true);
                        VASTVideoView.this.a((List<VASTParser.VideoClicks>) wrapperVideoClicks, true);
                        return;
                    }
                    Utils.startActivityFromUrl(videoClicks.clickThrough);
                    VASTVideoView.this.a(videoClicks, false);
                    VASTVideoView.this.a((List<VASTParser.VideoClicks>) wrapperVideoClicks, false);
                }
            });
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onPrepared(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4275a, "onPrepared");
        }
        this.y = Math.max(0, b(this.C.linearAd.skipOffset));
        if (this.f != null) {
            this.f.onLoaded();
        }
        if (this.p != null && this.p.isJSBridgeReady()) {
            this.p.callJavascript("MmJsBridge.vast.setDuration", Integer.valueOf(this.h.getDuration()));
        }
        if (this.r != null && this.r.isJSBridgeReady()) {
            this.r.callJavascript("MmJsBridge.vast.setDuration", Integer.valueOf(this.h.getDuration()));
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onReadyToStart(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4275a, "onReadyToStart");
        }
    }

    private void setVideoState(String str) {
        this.e = str;
        if (this.p != null && this.p.isJSBridgeReady()) {
            this.p.callJavascript("MmJsBridge.vast.setState", this.e);
        }
        if (this.r != null && this.r.isJSBridgeReady()) {
            this.r.callJavascript("MmJsBridge.vast.setState", this.e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MMWebView mMWebView) {
        mMWebView.callJavascript("MmJsBridge.vast.enableWebOverlay", new Object[0]);
        mMWebView.callJavascript("MmJsBridge.vast.setDuration", Integer.valueOf(this.h.getDuration()));
        if (this.e != null) {
            mMWebView.callJavascript("MmJsBridge.vast.setState", this.e);
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public synchronized void onStart(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4275a, "onStart");
        }
        setVideoState("playing");
        if (this.C != null) {
            b(a(VASTParser.TrackableEvent.start));
            b(this.C.linearAd.trackingEvents.get(VASTParser.TrackableEvent.start));
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onStop(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4275a, "onStop");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onPause(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4275a, "onPause");
        }
        setVideoState("paused");
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onComplete(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4275a, "onComplete");
        }
        if (this.C != null) {
            b(a(VASTParser.TrackableEvent.complete));
            b(this.C.linearAd.trackingEvents.get(VASTParser.TrackableEvent.complete));
        }
        setVideoState(SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE);
        if (!this.A) {
            this.A = true;
            if (this.f != null) {
                this.f.onIncentiveEarned(new XIncentivizedEventListener.XIncentiveEvent(XIncentivizedEventListener.XIncentiveEvent.INCENTIVE_VIDEO_COMPLETE, null));
            }
        }
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.15
            @Override // java.lang.Runnable
            public void run() {
                VASTVideoView.this.m();
            }
        });
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public synchronized void onProgress(MMVideoView mMVideoView, int i) {
        if (this.p != null) {
            this.p.a(i);
        }
        if (this.r != null) {
            this.r.a(i);
        }
        if (this.o != null) {
            a(i);
        }
        if (!this.c) {
            a(i, mMVideoView.getDuration());
        }
        if (this.C != null && this.B) {
            b(i, mMVideoView.getDuration());
            b(i);
        }
    }

    private void a(int i) {
        for (int i2 = 0; i2 < this.o.getChildCount(); i2++) {
            View childAt = this.o.getChildAt(i2);
            if (childAt instanceof FrameLayout) {
                View childAt2 = ((FrameLayout) childAt).getChildAt(0);
                if (childAt2.getVisibility() != 0 && (childAt2 instanceof ImageButton)) {
                    ((ImageButton) childAt2).a(i);
                }
            }
        }
    }

    private void a(int i, int i2) {
        int vASTVideoSkipOffsetMax = Handshake.getVASTVideoSkipOffsetMax();
        int vASTVideoSkipOffsetMin = Handshake.getVASTVideoSkipOffsetMin();
        if (vASTVideoSkipOffsetMin > vASTVideoSkipOffsetMax) {
            vASTVideoSkipOffsetMin = vASTVideoSkipOffsetMax;
        }
        final int min = (Math.min(Math.max(Math.min(vASTVideoSkipOffsetMax, this.y), vASTVideoSkipOffsetMin), i2) - i) / 1000;
        if (min > 0) {
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.16
                @Override // java.lang.Runnable
                public void run() {
                    VASTVideoView.this.n.setVisibility(0);
                    VASTVideoView.this.n.setText("" + min);
                }
            });
            return;
        }
        this.c = true;
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.17
            @Override // java.lang.Runnable
            public void run() {
                VASTVideoView.this.i();
            }
        });
    }

    private void b(int i, int i2) {
        int i3 = i2 / 4;
        if (i >= i3 && this.z < 1) {
            this.z = 1;
            b(a(VASTParser.TrackableEvent.firstQuartile));
            b(this.C.linearAd.trackingEvents.get(VASTParser.TrackableEvent.firstQuartile));
        }
        if (i >= i3 * 2 && this.z < 2) {
            this.z = 2;
            b(a(VASTParser.TrackableEvent.midpoint));
            b(this.C.linearAd.trackingEvents.get(VASTParser.TrackableEvent.midpoint));
        }
        if (i >= i3 * 3 && this.z < 3) {
            this.z = 3;
            b(a(VASTParser.TrackableEvent.thirdQuartile));
            b(this.C.linearAd.trackingEvents.get(VASTParser.TrackableEvent.thirdQuartile));
        }
    }

    private void b(int i) {
        ArrayList<VASTParser.TrackingEvent> arrayList = new ArrayList();
        List<VASTParser.TrackingEvent> list = this.C.linearAd.trackingEvents.get(VASTParser.TrackableEvent.progress);
        if (list != null) {
            arrayList.addAll(list);
        }
        List<VASTParser.TrackingEvent> a2 = a(VASTParser.TrackableEvent.progress);
        if (a2 != null) {
            arrayList.addAll(a2);
        }
        for (VASTParser.TrackingEvent trackingEvent : arrayList) {
            VASTParser.ProgressEvent progressEvent = (VASTParser.ProgressEvent) trackingEvent;
            int b2 = b(progressEvent.offset);
            if (b2 != -1) {
                if (!Utils.isEmpty(progressEvent.url)) {
                    if (!this.F.contains(trackingEvent) && i >= b2) {
                        a(progressEvent);
                    }
                } else {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(f4275a, "Progress event could not be fired because the url is empty. offset = " + progressEvent.offset);
                    }
                    this.F.add(progressEvent);
                }
            } else {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4275a, "Progress event could not be fired because the time offset is invalid. url = " + progressEvent.url + ", offset = " + progressEvent.offset);
                }
                this.F.add(progressEvent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.n.setVisibility(8);
        this.l.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VASTVideoView.this.l();
            }
        });
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onSeek(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4275a, "onSeek");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onMuted(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4275a, "onMuted");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onUnmuted(MMVideoView mMVideoView) {
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onError(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4275a, "onError");
        }
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.19
            @Override // java.lang.Runnable
            public void run() {
                if (VASTVideoView.this.s != null && !Utils.isEmpty(VASTVideoView.this.s.error)) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(VASTVideoView.f4275a, "Firing inlineAd error url = " + VASTVideoView.this.s.error);
                    }
                    HttpUtils.getContentFromGetRequest(VASTVideoView.this.s.error);
                }
                if (VASTVideoView.this.t != null) {
                    for (VASTParser.WrapperAd wrapperAd : VASTVideoView.this.t) {
                        if (!Utils.isEmpty(wrapperAd.error)) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(VASTVideoView.f4275a, "Firing wrapperAd error url = " + wrapperAd.error);
                            }
                            HttpUtils.getContentFromGetRequest(wrapperAd.error);
                        }
                    }
                }
            }
        });
        if (this.f != null) {
            this.f.onFailed();
        }
        if (this.p != null) {
            this.p.callJavascript("MmJsBridge.vast.fireErrorEvent", "Video playback error occurred.");
        }
        if (this.r != null) {
            this.r.callJavascript("MmJsBridge.vast.fireErrorEvent", "Video playback error occurred.");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onBufferingUpdate(MMVideoView mMVideoView, int i) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4275a, "onBufferingUpdate");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final List<VASTParser.TrackingEvent> list) {
        if (list != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.20
                @Override // java.lang.Runnable
                public void run() {
                    for (VASTParser.TrackingEvent trackingEvent : list) {
                        if (trackingEvent != null && !Utils.isEmpty(trackingEvent.url) && !VASTVideoView.this.F.contains(trackingEvent)) {
                            VASTVideoView.this.a(trackingEvent);
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(VASTParser.TrackingEvent trackingEvent) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4275a, "Firing tracking url = " + trackingEvent.url);
        }
        this.F.add(trackingEvent);
        HttpUtils.getContentFromGetRequest(trackingEvent.url);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.s != null && this.s.impressions != null) {
            this.w.stopWatching();
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.21
                @Override // java.lang.Runnable
                public void run() {
                    for (String str : VASTVideoView.this.s.impressions) {
                        if (!Utils.isEmpty(str)) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(VASTVideoView.f4275a, "Firing impression url = " + str);
                            }
                            HttpUtils.getContentFromGetRequest(str);
                        }
                    }
                    if (VASTVideoView.this.t != null) {
                        for (VASTParser.WrapperAd wrapperAd : VASTVideoView.this.t) {
                            if (wrapperAd.impressions != null) {
                                for (String str2 : wrapperAd.impressions) {
                                    if (!Utils.isEmpty(str2)) {
                                        if (MMLog.isDebugEnabled()) {
                                            MMLog.d(VASTVideoView.f4275a, "Firing wrapper impression url = " + str2);
                                        }
                                        HttpUtils.getContentFromGetRequest(str2);
                                    }
                                }
                            }
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b(String str) {
        String str2;
        int i;
        if (!Utils.isEmpty(str)) {
            String trim = str.trim();
            try {
                if (trim.contains("%")) {
                    String replace = trim.replace("%", "");
                    if (Utils.isEmpty(replace)) {
                        return -1;
                    }
                    return (int) (this.h.getDuration() * (Float.parseFloat(replace.trim()) / 100.0f));
                }
                String[] split = trim.split("\\.");
                if (split.length <= 2) {
                    if (split.length == 2) {
                        str2 = split[0];
                        try {
                            i = Integer.parseInt(split[1]);
                        } catch (NumberFormatException e) {
                            MMLog.e(f4275a, "VAST time format invalid parse value was: " + str2);
                            return -1;
                        }
                    } else {
                        str2 = trim;
                        i = 0;
                    }
                    String[] split2 = str2.split(":");
                    if (split2.length == 3) {
                        return (Integer.parseInt(split2[2]) * 1000) + (Integer.parseInt(split2[0]) * 3600000) + (Integer.parseInt(split2[1]) * 60000) + i;
                    }
                    MMLog.e(f4275a, "VAST time format invalid parse value was: " + str2);
                    return -1;
                }
                MMLog.e(f4275a, "VAST time format invalid parse value was: " + trim);
                return -1;
            } catch (NumberFormatException e2) {
                str2 = trim;
            }
        } else {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        this.d = 1;
        if (this.p != null) {
            this.p.e = 0;
        }
        if (this.r != null) {
            this.r.e = 0;
        }
        updateComponentVisibility();
        this.m.setVisibility(8);
        this.k.setVisibility(8);
        this.l.setVisibility(0);
        this.h.restart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        if (this.C != null) {
            b(a(VASTParser.TrackableEvent.skip));
            b(this.C.linearAd.trackingEvents.get(VASTParser.TrackableEvent.skip));
        }
        this.h.videoSkipped();
        m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        View childAt;
        this.d = 2;
        this.n.setVisibility(8);
        if (this.E != null && this.i.getChildCount() > 0) {
            this.m.setVisibility(0);
            this.l.setVisibility(8);
            this.k.setVisibility(0);
            for (int i = 0; i < this.o.getChildCount(); i++) {
                View childAt2 = this.o.getChildAt(i);
                if ((childAt2 instanceof FrameLayout) && (childAt = ((FrameLayout) childAt2).getChildAt(0)) != null) {
                    childAt.setVisibility(0);
                }
            }
            updateComponentVisibility();
            return;
        }
        b();
    }

    private boolean n() {
        return getResources().getConfiguration().orientation != 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(VASTParser.StaticResource staticResource) {
        if (staticResource == null || staticResource.backgroundColor == null) {
            return DrawableConstants.CtaButton.BACKGROUND_COLOR;
        }
        try {
            return Color.parseColor(staticResource.backgroundColor);
        } catch (IllegalArgumentException e) {
            MMLog.w(f4275a, "Invalid hex color format specified = " + staticResource.backgroundColor);
            return DrawableConstants.CtaButton.BACKGROUND_COLOR;
        }
    }

    @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VideoViewActions
    public void shutdown() {
        if (this.x != null && !this.x.delete()) {
            MMLog.w(f4275a, "Failed to delete video asset = " + this.x.getAbsolutePath());
        }
        this.h.stop();
        if (this.p != null) {
            this.p.shutdown();
            this.p = null;
        }
        if (this.q != null) {
            this.q.shutdown();
            this.q = null;
        }
        if (this.r != null) {
            this.r.shutdown();
            this.r = null;
        }
    }

    @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VideoViewActions
    public boolean onBackPressed() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.22
            @Override // java.lang.Runnable
            public void run() {
                if (VASTVideoView.this.f != null) {
                    VASTVideoView.this.f.onClicked();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.E != null) {
            final List<VASTParser.CompanionAd> wrapperCompanionAdTracking = getWrapperCompanionAdTracking();
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.23
                @Override // java.lang.Runnable
                public void run() {
                    for (String str : VASTVideoView.this.E.companionClickTracking) {
                        if (!Utils.isEmpty(str)) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(VASTVideoView.f4275a, "Firing tracking url = " + str);
                            }
                            HttpUtils.getContentFromGetRequest(str);
                        }
                    }
                    for (VASTParser.CompanionAd companionAd : wrapperCompanionAdTracking) {
                        for (String str2 : companionAd.companionClickTracking) {
                            if (!Utils.isEmpty(str2)) {
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.d(VASTVideoView.f4275a, "Firing wrapper tracking url = " + str2);
                                }
                                HttpUtils.getContentFromGetRequest(str2);
                            }
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final VASTParser.VideoClicks videoClicks, final boolean z) {
        if (videoClicks != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.24
                @Override // java.lang.Runnable
                public void run() {
                    VASTVideoView.this.a(videoClicks.clickTrackingUrls, "Firing video click tracker url =");
                    if (z) {
                        VASTVideoView.this.a(videoClicks.customClickUrls, "Firing custom click url =");
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final List<VASTParser.VideoClicks> list, final boolean z) {
        if (list != null && !list.isEmpty()) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.25
                @Override // java.lang.Runnable
                public void run() {
                    for (VASTParser.VideoClicks videoClicks : list) {
                        VASTVideoView.this.a(videoClicks.clickTrackingUrls, "Firing wrapper video click tracker url =");
                        if (z) {
                            VASTVideoView.this.a(videoClicks.customClickUrls, "Firing wrapper custom click url =");
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<String> list, String str) {
        if (list != null) {
            for (String str2 : list) {
                if (!Utils.isEmpty(str2)) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(f4275a, str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str2);
                    }
                    HttpUtils.getContentFromGetRequest(str2);
                }
            }
        }
    }

    private List<VASTParser.VideoClicks> getWrapperVideoClicks() {
        ArrayList arrayList = new ArrayList();
        if (this.t != null) {
            for (VASTParser.WrapperAd wrapperAd : this.t) {
                if (wrapperAd.creatives != null) {
                    for (VASTParser.Creative creative : wrapperAd.creatives) {
                        if (creative.linearAd != null && creative.linearAd.videoClicks != null) {
                            arrayList.add(creative.linearAd.videoClicks);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private boolean a(VASTParser.VideoClicks videoClicks) {
        return videoClicks != null && (!Utils.isEmpty(videoClicks.clickThrough) || !videoClicks.customClickUrls.isEmpty());
    }

    private boolean c(List<VASTParser.VideoClicks> list) {
        for (VASTParser.VideoClicks videoClicks : list) {
            if (a(videoClicks)) {
                return true;
            }
        }
        return false;
    }

    private List<VASTParser.CompanionAd> getWrapperCompanionAdTracking() {
        ArrayList arrayList = new ArrayList();
        if (this.t == null) {
            return arrayList;
        }
        for (VASTParser.WrapperAd wrapperAd : this.t) {
            if (wrapperAd.creatives != null) {
                for (VASTParser.Creative creative : wrapperAd.creatives) {
                    if (creative.companionAds != null) {
                        Iterator<VASTParser.CompanionAd> it = creative.companionAds.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                VASTParser.CompanionAd next = it.next();
                                if (next.htmlResource == null && next.iframeResource == null && next.staticResource == null) {
                                    arrayList.add(next);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<VASTParser.TrackingEvent> a(VASTParser.TrackableEvent trackableEvent) {
        List<VASTParser.TrackingEvent> list;
        ArrayList arrayList = new ArrayList();
        if (this.t != null) {
            for (VASTParser.WrapperAd wrapperAd : this.t) {
                if (wrapperAd.creatives != null) {
                    for (VASTParser.Creative creative : wrapperAd.creatives) {
                        if (creative.linearAd != null && (list = creative.linearAd.trackingEvents.get(trackableEvent)) != null) {
                            arrayList.addAll(list);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private boolean a(VASTParser.Creative creative) {
        if (creative == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(creative);
        return e(arrayList);
    }

    private boolean d(List<VASTParser.WrapperAd> list) {
        boolean z = false;
        if (list != null) {
            Iterator<VASTParser.WrapperAd> it = list.iterator();
            while (it.hasNext() && !(z = e(it.next().creatives))) {
            }
        }
        return z;
    }

    private boolean e(List<VASTParser.Creative> list) {
        if (list != null) {
            for (VASTParser.Creative creative : list) {
                if (creative.linearAd != null && !creative.linearAd.trackingEvents.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    private Map<String, String> getMoatIdentifiers() {
        VASTParser.MoatExtension moatExtension;
        VASTParser.MoatExtension moatExtension2 = this.s.moatExtension;
        if (moatExtension2 == null && this.t != null) {
            Iterator<VASTParser.WrapperAd> it = this.t.iterator();
            while (true) {
                moatExtension = moatExtension2;
                if (!it.hasNext()) {
                    break;
                }
                VASTParser.WrapperAd next = it.next();
                moatExtension2 = next.moatExtension != null ? next.moatExtension : moatExtension;
            }
        } else {
            moatExtension = moatExtension2;
        }
        if (moatExtension == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Utils.putIfNotNull(hashMap, "level1", moatExtension.level1);
        Utils.putIfNotNull(hashMap, "level2", moatExtension.level2);
        Utils.putIfNotNull(hashMap, "level3", moatExtension.level3);
        Utils.putIfNotNull(hashMap, "level4", moatExtension.level4);
        Utils.putIfNotNull(hashMap, "slicer1", moatExtension.slicer1);
        Utils.putIfNotNull(hashMap, "slicer2", moatExtension.slicer2);
        return hashMap;
    }
}
