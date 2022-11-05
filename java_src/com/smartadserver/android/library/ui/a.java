package com.smartadserver.android.library.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.openx.view.mraid.JSInterface;
import com.pubmatic.sdk.common.CommonConstants;
import com.smartadserver.android.library.SASInterstitialView;
import com.smartadserver.android.library.exception.SASAdDisplayException;
import com.smartadserver.android.library.model.SASAdElement;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import com.smartadserver.android.library.ui.SASAdView;
import com.smartadserver.android.library.ui.SASNativeVideoControlsLayer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Timer;
import java.util.TimerTask;
/* compiled from: SASNativeVideoLayer.java */
/* loaded from: classes3.dex */
public class a extends RelativeLayout {
    private static final String j = a.class.getSimpleName();
    private static boolean k;
    private static int l;
    private static int m;
    private final Object A;
    private boolean B;
    private boolean C;
    private long D;
    private boolean E;
    private SASNativeVideoAdElement F;
    private boolean G;
    private boolean H;
    private WebView I;
    private boolean J;
    private boolean K;
    private String L;
    private ArrayList<c> M;
    private Timer N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private b R;
    private Object S;
    private SASNativeVideoControlsLayer T;
    private boolean U;
    private ImageView V;
    private ImageView W;

    /* renamed from: a  reason: collision with root package name */
    RenderScript f5540a;
    private ProgressBar aa;
    private int ab;
    private int ac;
    private Handler ad;
    private boolean ae;
    private RelativeLayout af;
    private ImageView ag;
    private ImageView ah;
    private com.smartadserver.android.library.ui.b ai;
    private SASAdView.d aj;
    private boolean ak;
    Allocation b;
    Allocation c;
    ScriptIntrinsicBlur d;
    int e;
    OrientationEventListener f;
    boolean g;
    boolean h;
    int i;
    private SASAdView n;
    private boolean o;
    private SurfaceView p;
    private View q;
    private Bitmap r;
    private Bitmap s;
    private Canvas t;
    private SurfaceTexture u;
    private RelativeLayout v;
    private final AudioManager w;
    private final AudioManager.OnAudioFocusChangeListener x;
    private int y;
    private d z;

    static {
        k = Build.VERSION.SDK_INT >= 16;
        l = 250;
        m = 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASNativeVideoLayer.java */
    /* loaded from: classes3.dex */
    public class c implements Comparable<c> {
        private int b;
        private String c;
        private int d;

        private c(int i, String str, int i2) {
            this.b = i;
            this.c = str;
            this.d = i2;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(c cVar) {
            return this.b - cVar.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASNativeVideoLayer.java */
    /* loaded from: classes3.dex */
    public class d extends MediaPlayer {

        /* renamed from: a  reason: collision with root package name */
        boolean f5606a;
        boolean b;
        boolean c;
        boolean d;
        String e;
        String f;

        private d() {
            this.f5606a = false;
            this.b = false;
            this.c = false;
            this.d = false;
            this.e = "";
            this.f = "";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            super.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            super.pause();
        }

        @Override // android.media.MediaPlayer
        public void setDataSource(Context context, Uri uri) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
            this.d = false;
            this.f = "";
            this.e = "";
            super.setDataSource(context, uri);
        }

        @Override // android.media.MediaPlayer
        public void prepare() throws IOException, IllegalStateException {
            this.b = false;
            super.prepare();
        }

        @Override // android.media.MediaPlayer
        public void prepareAsync() throws IllegalStateException {
            this.b = false;
            super.prepareAsync();
        }

        @Override // android.media.MediaPlayer
        public void stop() throws IllegalStateException {
            c();
            super.stop();
        }

        @Override // android.media.MediaPlayer
        public void pause() throws IllegalStateException {
            c();
            super.pause();
        }

        private void c() {
            a.this.setMonitorProgressEnabled(false);
            a.this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.d.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.c(false);
                }
            });
        }

        @Override // android.media.MediaPlayer
        public void start() throws IllegalStateException {
            if (!super.isPlaying()) {
                this.f5606a = true;
                if (this.c) {
                    seekTo(0);
                    this.c = false;
                }
                a.this.setMonitorProgressEnabled(true);
            }
            super.start();
        }

        @Override // android.media.MediaPlayer
        public void release() {
            super.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASNativeVideoLayer.java */
    /* loaded from: classes3.dex */
    public class b extends TimerTask {

        /* renamed from: a  reason: collision with root package name */
        long f5593a;
        long b;

        private b() {
            this.f5593a = -1L;
            this.b = -1L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.b = -1L;
            this.f5593a = -1L;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            synchronized (a.this.A) {
                if (a.this.z != null) {
                    if (a.k && a.this.B) {
                        if (System.currentTimeMillis() - a.this.D > a.l * 3) {
                            a.this.C = true;
                            a.this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.b.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    synchronized (a.this.A) {
                                        if (a.this.q != null) {
                                            a.this.q.setVisibility(8);
                                            a.this.q.setVisibility(0);
                                        }
                                    }
                                }
                            });
                        } else {
                            a.this.C = false;
                        }
                    }
                    int currentPosition = a.this.z.getCurrentPosition();
                    a.this.T.setCurrentPosition(currentPosition);
                    if (currentPosition == this.f5593a) {
                        long currentTimeMillis = System.currentTimeMillis() - this.b;
                        if (currentTimeMillis > 1000 && !a.this.O) {
                            a.this.O = true;
                            a.this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.b.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    a.this.c(true);
                                }
                            });
                        }
                        if (currentTimeMillis > NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS) {
                            a.this.b();
                            a.this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.b.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    a.this.T.setReplayEnabled(false);
                                    a.this.v();
                                }
                            });
                        }
                    } else {
                        this.b = System.currentTimeMillis();
                        if (a.this.O) {
                            if (a.this.B) {
                                a.this.q();
                            } else {
                                a.this.r();
                            }
                            a.this.O = false;
                            a.this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.b.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    a.this.c(false);
                                }
                            });
                        }
                    }
                    this.f5593a = currentPosition;
                    while (a.this.M.size() > 0 && ((c) a.this.M.get(0)).b < currentPosition) {
                        c cVar = (c) a.this.M.remove(0);
                        a.this.b(cVar.c);
                        if (cVar.d > -1) {
                            a.this.n.b(cVar.d);
                        }
                    }
                }
            }
        }
    }

    /* compiled from: SASNativeVideoLayer.java */
    /* loaded from: classes.dex */
    private class e {
        private HashSet<String> b;
        private boolean c;

        private e() {
            this.b = new HashSet<>();
            this.c = false;
        }

        @JavascriptInterface
        public void dispatchVPAIDEvent(String str, String str2) {
            String str3;
            com.smartadserver.android.library.g.c.a(a.j, "native dispatchVPAIDEvent:" + str + " value:" + str2);
            int i = -1;
            if ("AdLoaded".equals(str)) {
                a.this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.e.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (a.this.I != null) {
                            if (a.this.o) {
                                boolean initialMuteState = a.this.getInitialMuteState();
                                a.this.T.setMuted(initialMuteState);
                                a.this.a(initialMuteState, false);
                            }
                            a.this.a(a.this.F.getMediaDuration());
                            a.this.s();
                            if (a.this.I.getParent() == null) {
                                a.this.v.addView(a.this.I, 0);
                                synchronized (a.this.A) {
                                    a.this.A.notify();
                                }
                            }
                        }
                    }
                });
                a.this.K = true;
                str3 = null;
            } else if ("AdStarted".equals(str)) {
                this.c = false;
                str3 = SASNativeVideoAdElement.TRACKING_EVENT_NAME_START;
                i = 0;
            } else if ("AdVideoFirstQuartile".equals(str)) {
                str3 = SASNativeVideoAdElement.TRACKING_EVENT_NAME_FIRST_QUARTILE;
                i = 4;
            } else if ("AdVideoMidpoint".equals(str)) {
                str3 = SASNativeVideoAdElement.TRACKING_EVENT_NAME_MIDPOINT;
                i = 5;
            } else if ("AdVideoThirdQuartile".equals(str)) {
                str3 = SASNativeVideoAdElement.TRACKING_EVENT_NAME_THIRD_QUARTILE;
                i = 6;
            } else if ("AdPlaying".equals(str)) {
                if (this.c) {
                    a.this.b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_RESUME);
                    a.this.n.b(2);
                    str3 = null;
                }
                str3 = null;
            } else if ("AdPaused".equals(str)) {
                a.this.b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE);
                a.this.n.b(1);
                this.c = true;
                str3 = null;
            } else if ("AdError".equals(str)) {
                a.this.L = str2;
                synchronized (a.this.A) {
                    a.this.A.notify();
                }
                str3 = null;
            } else if ("AdVideoComplete".equals(str)) {
                a.this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.e.2
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.t();
                    }
                });
                str3 = null;
            } else if ("AdSkipped".equals(str) || "AdUserClose".equals(str)) {
                a.this.n.getMRAIDController().close();
                str3 = null;
            } else {
                if ("AdVolumeChange".equals(str)) {
                    if (str2.length() > 0) {
                        a.this.E = Boolean.parseBoolean(str2);
                        a.this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.e.3
                            @Override // java.lang.Runnable
                            public void run() {
                                a.this.T.setMuted(a.this.E);
                            }
                        });
                        str3 = null;
                    }
                } else if ("AdVideoStart".equals(str) && a.this.ak) {
                    a.this.b();
                    a.this.V.setVisibility(0);
                    a.this.ak = false;
                }
                str3 = null;
            }
            if (str3 != null && !this.b.contains(str3)) {
                a.this.b(str3);
                if (i >= 0) {
                    a.this.n.b(i);
                }
                this.b.add(str3);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, SASAdView sASAdView) {
        super(context);
        boolean z = false;
        this.r = null;
        this.s = null;
        this.u = null;
        this.e = 0;
        this.A = new Object();
        this.B = false;
        this.C = false;
        this.D = -1L;
        this.E = true;
        this.J = false;
        this.K = false;
        this.L = null;
        this.M = new ArrayList<>();
        this.O = false;
        this.P = false;
        this.S = new Object();
        this.U = false;
        this.ab = -1;
        this.ac = -1;
        this.g = false;
        this.h = false;
        this.ae = false;
        this.aj = null;
        this.i = -10;
        this.ak = false;
        this.ad = new Handler();
        this.n = sASAdView;
        this.o = this.n instanceof SASInterstitialView;
        if (Build.VERSION.SDK_INT >= 14 && !SASAdView.i()) {
            z = true;
        }
        this.B = z;
        setClickable(true);
        this.n.a(new SASAdView.d() { // from class: com.smartadserver.android.library.ui.a.1
            @Override // com.smartadserver.android.library.ui.SASAdView.d
            public void onStateChanged(SASAdView.i iVar) {
                boolean z2 = !a.this.o;
                if (a.this.n.getCurrentAdElement() instanceof SASNativeVideoAdElement) {
                    switch (iVar.a()) {
                        case 0:
                            a.this.T.setFullscreenMode(true);
                            a.this.k();
                            if (z2) {
                                a.this.a(false, true);
                                a.this.b("fullscreen");
                                a.this.n.b(9);
                                if (((SASNativeVideoAdElement) a.this.n.getCurrentAdElement()).isVideo360Mode()) {
                                    ((com.smartadserver.android.library.ui.a.b) a.this.p).setPanEnabled(true);
                                }
                            }
                            a.this.b(true);
                            return;
                        case 1:
                            if (z2) {
                                a.this.a(true, true);
                                if (a.this.T.b()) {
                                    a.this.b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_EXIT_FULLSCREEN);
                                    a.this.n.b(10);
                                    if (((SASNativeVideoAdElement) a.this.n.getCurrentAdElement()).isVideo360Mode()) {
                                        ((com.smartadserver.android.library.ui.a.b) a.this.p).setPanEnabled(false);
                                    }
                                }
                            }
                            a.this.T.setFullscreenMode(false);
                            a.this.k();
                            a.this.T.a(false);
                            a.this.b(false);
                            return;
                        case 2:
                            if (a.this.o && !a.this.n.q() && !a.this.P) {
                                a.this.b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_SKIP);
                                a.this.n.b(8);
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                }
            }
        });
        this.af = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        this.af.setVisibility(8);
        addView(this.af, layoutParams);
        this.ah = new ImageView(context);
        this.ah.setScaleType(ImageView.ScaleType.CENTER_CROP);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        this.ah.setVisibility(8);
        this.af.addView(this.ah, layoutParams2);
        this.ag = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        this.ag.setVisibility(8);
        this.af.addView(this.ag, layoutParams3);
        this.af.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.a.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.a(true);
            }
        });
        b(context);
        this.v.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.a.22
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.a(false);
            }
        });
        a(context);
        this.v.addView(this.T.getBigPlayButton());
        this.T.setInterstitialMode(this.o);
        this.N = new Timer("SASNativeVideoProgress");
        this.w = (AudioManager) getContext().getSystemService("audio");
        this.x = new AudioManager.OnAudioFocusChangeListener() { // from class: com.smartadserver.android.library.ui.a.23
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int i) {
                if (i == -1) {
                    a.this.b();
                }
            }
        };
        this.f = new OrientationEventListener(getContext()) { // from class: com.smartadserver.android.library.ui.a.24
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                int i2 = -1;
                if (i > 315 || i <= 45) {
                    i2 = 1;
                } else if (i <= 135) {
                    i2 = 8;
                } else if (i > 225 && i <= 315) {
                    i2 = 0;
                }
                if (i2 != a.this.y) {
                    a.this.y = i2;
                    a.this.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.24.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ((Activity) a.this.n.getContext()).setRequestedOrientation(a.this.y);
                        }
                    });
                    com.smartadserver.android.library.g.c.a(a.j, "new  mCurrentScreenOrientation:" + a.this.y);
                }
            }
        };
        y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(String str) {
        com.smartadserver.android.library.a.c a2;
        if (str == null || (a2 = com.smartadserver.android.library.a.c.a((Context) null)) == null) {
            return false;
        }
        a2.a(str, true);
        return true;
    }

    public void a(boolean z) {
        this.o = this.n instanceof SASInterstitialView;
        boolean d2 = this.T.d();
        if (this.o) {
            if (!this.T.f()) {
                if (z && this.F.getBackgroundClickTrackingUrl() != null) {
                    c(this.F.getBackgroundClickTrackingUrl());
                }
                a(this.F.getClickUrlFromBackground(z));
                return;
            }
            return;
        }
        if (!this.n.j()) {
            z();
            if (!this.T.f()) {
                synchronized (this.A) {
                    if (!this.ae && this.F.isRestartWhenEnteringFullscreen()) {
                        this.z.seekTo(0);
                        this.T.setCurrentPosition(0);
                        this.ae = true;
                        b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_REWIND);
                        this.n.b(3);
                    }
                    if (!d2) {
                        l();
                        if (this.B) {
                            a();
                        } else {
                            this.h = true;
                        }
                    }
                }
            }
        }
        this.T.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        int i = 0;
        boolean z = this.T.d() && !this.n.j() && this.aa.getVisibility() != 0;
        ImageView imageView = this.W;
        if (!z) {
            i = 8;
        }
        imageView.setVisibility(i);
    }

    private void a(ViewGroup viewGroup) {
        this.ai = new com.smartadserver.android.library.ui.b(getContext());
        int a2 = com.smartadserver.android.library.g.c.a(40, getResources());
        int a3 = com.smartadserver.android.library.g.c.a(5, getResources());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a2, a2);
        layoutParams.addRule(15);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, 0, a3, 0);
        this.ai.setVisibility(8);
        viewGroup.addView(this.ai, layoutParams);
    }

    private void a(Context context) {
        this.T = new SASNativeVideoControlsLayer(context);
        addView(this.T, new RelativeLayout.LayoutParams(-1, -1));
        setOnSwipeTouchListener(this.v);
        setOnSwipeTouchListener(this);
        x();
        this.T.a(new SASNativeVideoControlsLayer.a() { // from class: com.smartadserver.android.library.ui.a.25
            @Override // com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.a
            public void a(int i, int i2) {
                switch (i) {
                    case 0:
                        a.this.e();
                        return;
                    case 1:
                    case 6:
                        a.this.a(a.this.F.getClickUrl());
                        a.this.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.25.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ((SASNativeVideoAdElement) a.this.n.getCurrentAdElement()).setStickToTopEnabled(false);
                                a.this.n.b(false);
                            }
                        });
                        return;
                    case 2:
                    default:
                        return;
                    case 3:
                        a.this.a();
                        a.this.l();
                        return;
                    case 4:
                        if (a.this.z.isPlaying() && !a.this.o) {
                            a.this.b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE);
                            a.this.n.b(1);
                        }
                        a.this.b();
                        return;
                    case 5:
                        a.this.c();
                        return;
                    case 7:
                        synchronized (a.this.A) {
                            a.this.z.seekTo(i2);
                            synchronized (a.this.S) {
                                if (a.this.R != null) {
                                    a.this.R.a();
                                }
                            }
                        }
                        return;
                    case 8:
                        a.this.a(a.this.T.e(), true);
                        return;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        if (!this.J && this.z.f5606a && !this.o) {
            b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_RESUME);
            this.n.b(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z) {
        this.aa.setVisibility(z ? 0 : 8);
        k();
    }

    public void a() {
        this.ak = false;
        synchronized (this.A) {
            this.T.setPlaying(true);
            m();
            if (!this.J) {
                if (this.z != null) {
                    this.z.start();
                }
            } else if (this.I != null) {
                com.smartadserver.android.library.g.c.a(this.I, "instance.play();", (Runnable) null);
            }
            this.n.a(new Runnable() { // from class: com.smartadserver.android.library.ui.a.26
                @Override // java.lang.Runnable
                public void run() {
                    a.this.V.setVisibility(8);
                    a.this.k();
                }
            });
        }
    }

    private void m() {
        if (this.w != null && !this.J) {
            if (this.T.d() && !this.E) {
                this.e = this.w.requestAudioFocus(this.x, 3, 4);
            } else if (this.e == 1) {
                this.w.abandonAudioFocus(this.x);
                this.e = -1;
            }
        }
    }

    public void b() {
        synchronized (this.A) {
            this.T.setPlaying(false);
            m();
            if (!this.J) {
                if (this.z != null) {
                    this.z.pause();
                    this.U = false;
                }
            } else if (this.I != null) {
                com.smartadserver.android.library.g.c.a(this.I, "instance.pause();", (Runnable) null);
                this.U = false;
            }
            this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.27
                @Override // java.lang.Runnable
                public void run() {
                    a.this.k();
                }
            });
        }
    }

    public void c() {
        synchronized (this.A) {
            if (this.z != null) {
                this.z.seekTo(0);
            }
            this.T.setCurrentPosition(0);
            a();
        }
        if (!this.n.j()) {
            z();
        }
        this.T.setActionLayerVisible(false);
        this.T.a(true);
        b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_REWIND);
        this.n.b(3);
    }

    public void a(String str) {
        b("click");
        b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_TIME_TO_CLICK);
        this.n.a(str);
    }

    public boolean d() {
        return this.E;
    }

    public void a(boolean z, boolean z2) {
        boolean z3 = z2 && z != this.E;
        this.E = z;
        com.smartadserver.android.library.g.c.a(j, "mVideoLayer setMuted:" + z);
        synchronized (this.A) {
            String str = z ? SASNativeVideoAdElement.TRACKING_EVENT_NAME_MUTE : SASNativeVideoAdElement.TRACKING_EVENT_NAME_UNMUTE;
            if (this.z != null) {
                float f = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                try {
                    this.z.setVolume(f, f);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } else if (this.K) {
                com.smartadserver.android.library.g.c.a(this.I, z ? "instance.mute();" : "instance.unmute();", (Runnable) null);
            }
            if (z3) {
                b(str);
            }
            m();
        }
    }

    public void b(String str) {
        String[] eventTrackingURL;
        com.smartadserver.android.library.a.c a2;
        if (this.F != null && (eventTrackingURL = this.F.getEventTrackingURL(str)) != null && (a2 = com.smartadserver.android.library.a.c.a(getContext().getApplicationContext())) != null) {
            String str2 = "-1";
            try {
                if (this.z != null) {
                    str2 = "" + (this.z.getCurrentPosition() / 1000.0f);
                }
            } catch (Exception e2) {
            }
            for (String str3 : eventTrackingURL) {
                if (str3.length() > 0) {
                    a2.a(str3.replace("[eventValue]", str2), true);
                }
            }
        }
    }

    private void b(Context context) {
        this.v = new RelativeLayout(getContext()) { // from class: com.smartadserver.android.library.ui.a.28
            @Override // android.widget.RelativeLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                if (a.this.ab > 0 && a.this.ac > 0) {
                    int size = View.MeasureSpec.getSize(i);
                    int size2 = View.MeasureSpec.getSize(i2);
                    float f = size / a.this.ab;
                    float f2 = size2 / a.this.ac;
                    float f3 = a.this.ab / a.this.ac;
                    if (f > f2) {
                        size = (int) (size2 * f3);
                    } else {
                        size2 = (int) (size / f3);
                    }
                    i = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                    i2 = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
                }
                super.onMeasure(i, i2);
            }
        };
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.v, layoutParams);
        this.aa = new ProgressBar(getContext());
        this.aa.getIndeterminateDrawable().setColorFilter(-1, PorterDuff.Mode.SRC_IN);
        this.aa.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        this.aa.setLayoutParams(layoutParams2);
        this.v.addView(this.aa, layoutParams2);
        a(this.v);
        this.V = new ImageView(getContext());
        this.v.addView(this.V, new RelativeLayout.LayoutParams(-1, -1));
        this.W = new ImageView(context);
        final AnimationDrawable animationDrawable = new AnimationDrawable();
        for (Bitmap bitmap : com.smartadserver.android.library.f.a.y) {
            animationDrawable.addFrame(new BitmapDrawable(getResources(), bitmap), 80);
        }
        animationDrawable.setOneShot(false);
        animationDrawable.setAlpha(128);
        this.W.setImageDrawable(animationDrawable);
        int a2 = com.smartadserver.android.library.g.c.a(15, getResources());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(a2, a2);
        layoutParams3.addRule(12);
        layoutParams3.addRule(11);
        int a3 = com.smartadserver.android.library.g.c.a(7, getResources());
        layoutParams3.setMargins(0, 0, a3, a3);
        this.W.setVisibility(8);
        this.v.addView(this.W, layoutParams3);
        this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.2
            @Override // java.lang.Runnable
            public void run() {
                animationDrawable.start();
            }
        });
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        n();
    }

    private void n() {
        if (this.af.getVisibility() != 8) {
            if (com.smartadserver.android.library.g.c.i(getContext()) == 0) {
                this.af.setVisibility(4);
            } else {
                this.af.setVisibility(0);
            }
        }
    }

    private void setupVPAIDWebView(final String str) {
        this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.3
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.I == null) {
                    a.this.I = new WebView(a.this.getContext());
                    a.this.I.setBackgroundColor(0);
                    WebSettings settings = a.this.I.getSettings();
                    settings.setJavaScriptEnabled(true);
                    if (Build.VERSION.SDK_INT >= 17) {
                        settings.setMediaPlaybackRequiresUserGesture(false);
                    }
                    settings.setDomStorageEnabled(true);
                    settings.setSupportZoom(false);
                    if (Build.VERSION.SDK_INT < 19) {
                        settings.setSupportMultipleWindows(true);
                    }
                    a.this.I.setScrollBarStyle(33554432);
                    a.this.I.setVerticalScrollBarEnabled(false);
                    a.this.I.setHorizontalScrollBarEnabled(false);
                    a.this.I.setFocusable(false);
                    a.this.I.setFocusableInTouchMode(false);
                    a.this.I.setWebViewClient(new WebViewClient() { // from class: com.smartadserver.android.library.ui.a.3.1
                        @Override // android.webkit.WebViewClient
                        public void onPageFinished(WebView webView, String str2) {
                            super.onPageFinished(webView, str2);
                            if ("http://diffdev44.smartadserver.com/diff/templates/js/mobile/sdk/sas-vpaid-resources/outstream-wrapper.1.0.html".equals(str2) || "http://ak-ns.sascdn.com/diff/templates/js/mobile/sdk/sas-vpaid-resources/outstream-wrapper.1.0.html".equals(str2)) {
                                String adParameters = a.this.F.getAdParameters();
                                if (adParameters == null) {
                                    adParameters = "";
                                }
                                com.smartadserver.android.library.g.c.a(a.this.I, "loadPlayer({params:'" + adParameters + "', url:'" + str + "'});", (Runnable) null);
                            }
                        }

                        @Override // android.webkit.WebViewClient
                        public boolean shouldOverrideUrlLoading(WebView webView, String str2) {
                            com.smartadserver.android.library.g.c.a(a.j, "shouldOverrideUrlLoading from VPAID WebView: " + str2);
                            a.this.a(str2);
                            return true;
                        }
                    });
                    a.this.I.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                    a.this.L = "Timeout when loading VPAID creative";
                    a.this.I.addJavascriptInterface(new e(), "androidVPAIDPlayer");
                    a.this.I.loadUrl(com.smartadserver.android.library.g.c.f5436a ? "http://diffdev44.smartadserver.com/diff/templates/js/mobile/sdk/sas-vpaid-resources/outstream-wrapper.1.0.html" : "http://ak-ns.sascdn.com/diff/templates/js/mobile/sdk/sas-vpaid-resources/outstream-wrapper.1.0.html");
                }
            }
        });
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.K) {
            com.smartadserver.android.library.g.c.a(this.I, "updatePlayerSize(" + (Math.round(this.I.getWidth() / this.n.p) + 1) + "," + (Math.round(this.I.getHeight() / this.n.p) + 1) + ");", (Runnable) null);
        }
    }

    @SuppressLint({"NewApi"})
    public void a(SASNativeVideoAdElement sASNativeVideoAdElement, long j2) throws SASAdDisplayException {
        boolean z = true;
        if (Build.VERSION.SDK_INT < 16) {
            throw new SASAdDisplayException("Native video format is not supported on Android versions prior to 4.1 (Jelly Bean)");
        }
        this.F = sASNativeVideoAdElement;
        this.Q = false;
        if (this.F.isVideo360Mode()) {
            if (com.smartadserver.android.library.ui.a.b.a(getContext())) {
                this.B = false;
            } else {
                throw new SASAdDisplayException("360 video format is not supported on this device");
            }
        }
        p();
        String clickUrl = this.F.getClickUrl();
        this.T.setOpenActionEnabled(clickUrl != null && clickUrl.length() > 0);
        this.T.setCurrentPosition(0);
        String videoUrl = sASNativeVideoAdElement.getVideoUrl();
        if (videoUrl != null && videoUrl.length() == 0) {
            videoUrl = null;
        }
        String vPAIDUrl = sASNativeVideoAdElement.getVPAIDUrl();
        if (vPAIDUrl != null && vPAIDUrl.length() == 0) {
            vPAIDUrl = null;
        }
        if (videoUrl == null && vPAIDUrl == null) {
            throw new SASAdDisplayException("No video or VPAID URL available");
        }
        this.J = vPAIDUrl != null;
        synchronized (this.A) {
            this.O = false;
            this.P = false;
            String backgroundImageUrl = this.F.getBackgroundImageUrl();
            this.H = this.o && backgroundImageUrl != null && backgroundImageUrl.length() > 0;
            if (this.J || !this.o || this.F.getBlurRadius() < 0 || sASNativeVideoAdElement.isVideo360Mode()) {
                z = false;
            }
            this.G = z;
            try {
                if (this.J) {
                    this.ab = this.F.getMediaWidth();
                    if (this.ab <= 0 && this.F.getPortraitWidth() > 0) {
                        this.ab = this.F.getPortraitWidth();
                    }
                    this.ac = this.F.getMediaHeight();
                    if (this.ac <= 0 && this.F.getPortraitHeight() > 0) {
                        this.ac = this.F.getPortraitHeight();
                    }
                    setupVPAIDWebView(vPAIDUrl);
                } else {
                    if (this.z == null) {
                        u();
                    } else {
                        this.z.reset();
                    }
                    this.z.setDataSource(getContext(), Uri.parse(videoUrl));
                    this.z.prepareAsync();
                }
                String posterImageUrl = this.F.getPosterImageUrl();
                if (posterImageUrl != null && posterImageUrl.length() > 0) {
                    a(this.V, posterImageUrl, false);
                } else {
                    this.V.setImageDrawable(null);
                }
                if (this.H) {
                    this.ag.setVisibility(0);
                    int backgroundResizeMode = this.F.getBackgroundResizeMode();
                    ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_CENTER;
                    if (backgroundResizeMode == 0) {
                        scaleType = ImageView.ScaleType.CENTER_CROP;
                    } else if (backgroundResizeMode == 2) {
                        scaleType = ImageView.ScaleType.FIT_XY;
                    }
                    this.ag.setScaleType(scaleType);
                    a(this.ag, backgroundImageUrl, true);
                    n();
                }
                if (this.G) {
                    this.ah.setVisibility(0);
                }
                if (this.H || this.G) {
                    this.af.setVisibility(4);
                    n();
                }
                if (j2 <= 0) {
                    j2 = 0;
                }
                try {
                    this.A.wait(j2);
                } catch (InterruptedException e2) {
                }
                if (!this.J) {
                    if (this.z == null) {
                        throw new SASAdDisplayException("MediaPlayer was reset");
                    }
                    if (this.z.d) {
                        throw new SASAdDisplayException("MediaPlayer returned error: " + this.z.e + " (extra:" + this.z.f + ")");
                    }
                    if (!this.z.b) {
                        throw new SASAdDisplayException("Timeout when preparing MediaPlayer");
                    }
                } else if (this.I.getParent() == null) {
                    throw new SASAdDisplayException("Error when loading VPAID ad (" + this.L + ")");
                }
                this.T.a(this.F.getCallToActionType(), this.F.getCallToActionCustomText());
                int videoVerticalPosition = this.F.getVideoVerticalPosition();
                int i = 13;
                if (videoVerticalPosition == 0) {
                    i = 10;
                } else if (videoVerticalPosition == 2) {
                    i = 12;
                }
                final RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(i);
                this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.4
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.setBackgroundColor(a.this.F.getBackgroundColor());
                        a.this.v.setLayoutParams(layoutParams);
                    }
                });
                Runnable runnable = new Runnable() { // from class: com.smartadserver.android.library.ui.a.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (a.this.B) {
                            if (a.this.q == null) {
                                a.this.q = new TextureView(a.this.getContext());
                                a.this.q.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                                ((TextureView) a.this.q).setSurfaceTextureListener(new TextureView.SurfaceTextureListener() { // from class: com.smartadserver.android.library.ui.a.5.1
                                    @Override // android.view.TextureView.SurfaceTextureListener
                                    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                                        a.this.D = System.currentTimeMillis();
                                        a.this.o();
                                    }

                                    @Override // android.view.TextureView.SurfaceTextureListener
                                    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
                                    }

                                    @Override // android.view.TextureView.SurfaceTextureListener
                                    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                                        return false;
                                    }

                                    @Override // android.view.TextureView.SurfaceTextureListener
                                    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
                                        if (a.this.u == null || !a.k || a.this.C) {
                                            if (a.this.C) {
                                                com.smartadserver.android.library.g.c.a(a.j, "Force texture update !!");
                                            }
                                            a.this.u = surfaceTexture;
                                            if (!a.this.O) {
                                                a.this.q();
                                                return;
                                            }
                                            return;
                                        }
                                        ((TextureView) a.this.q).setSurfaceTexture(a.this.u);
                                    }
                                });
                                a.this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.5.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        synchronized (a.this.A) {
                                            if (a.this.q != null) {
                                                a.this.v.addView(a.this.q, 0);
                                            }
                                        }
                                    }
                                });
                            }
                        } else if (a.this.p == null) {
                            if (a.this.F.isVideo360Mode()) {
                                a.this.p = new com.smartadserver.android.library.ui.a.b(a.this.getContext()) { // from class: com.smartadserver.android.library.ui.a.5.3
                                    @Override // com.smartadserver.android.library.ui.a.b
                                    protected void a() {
                                        a.this.r();
                                    }

                                    @Override // com.smartadserver.android.library.ui.a.b
                                    protected boolean b() {
                                        a.this.a(false);
                                        return true;
                                    }
                                };
                                if (!a.this.o) {
                                    ((com.smartadserver.android.library.ui.a.b) a.this.p).setPanEnabled(false);
                                }
                                ((com.smartadserver.android.library.ui.a.b) a.this.p).setResetButton(a.this.ai);
                                a.this.ai.setVisibility(0);
                            } else {
                                a.this.p = new SurfaceView(a.this.getContext());
                            }
                            if (SASAdView.i()) {
                                a.this.p.setZOrderMediaOverlay(true);
                            }
                            a.this.p.getHolder().setType(3);
                            a.this.p.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                            a.this.p.getHolder().addCallback(new SurfaceHolder.Callback() { // from class: com.smartadserver.android.library.ui.a.5.4
                                @Override // android.view.SurfaceHolder.Callback
                                public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                                    synchronized (a.this.A) {
                                        if (a.this.z != null && a.this.z.isPlaying()) {
                                            a.this.g = true;
                                            a.this.z.b();
                                        }
                                    }
                                    com.smartadserver.android.library.g.c.a(a.j, "onSurfaceDestroyed");
                                }

                                @Override // android.view.SurfaceHolder.Callback
                                public void surfaceCreated(SurfaceHolder surfaceHolder) {
                                    com.smartadserver.android.library.g.c.a(a.j, "onSurfaceCreated");
                                    if (!(a.this.p instanceof com.smartadserver.android.library.ui.a.b)) {
                                        a.this.r();
                                    }
                                }

                                @Override // android.view.SurfaceHolder.Callback
                                public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
                                    com.smartadserver.android.library.g.c.a(a.j, "onSurfaceChanged");
                                }
                            });
                            a.this.v.addView(a.this.p, 0);
                        }
                    }
                };
                if (!this.J) {
                    this.ad.post(runnable);
                }
            } catch (Exception e3) {
                throw new SASAdDisplayException(e3.getMessage(), e3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(17)
    public synchronized void o() {
        int i = 1;
        boolean z = false;
        synchronized (this) {
            if (Build.VERSION.SDK_INT >= 17) {
                int blurRadius = this.F.getBlurRadius();
                if (this.G && this.af.getVisibility() == 0) {
                    if (this.r == null) {
                        int videoWidth = this.z.getVideoWidth();
                        int videoHeight = this.z.getVideoHeight();
                        if (Build.VERSION.SDK_INT < 21) {
                            z = true;
                        }
                        if (blurRadius > 0 || z) {
                            i = this.F.getBlurDownScaleFactorHighEnd();
                        }
                        if (blurRadius > 4 || (blurRadius > 0 && z)) {
                            i = this.F.getBlurDownScaleFactorLowEnd();
                        }
                        if (blurRadius > 0) {
                            blurRadius = Math.max(blurRadius / i, 1);
                        }
                        int i2 = videoWidth / i;
                        int i3 = videoHeight / i;
                        this.r = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
                        this.r.getWidth();
                        if (blurRadius > 0) {
                            this.s = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
                        }
                        this.ah.setImageBitmap(this.r);
                        this.t = new Canvas(this.r);
                    }
                    int i4 = blurRadius;
                    ((TextureView) this.q).getBitmap(this.r);
                    if (i4 > 0) {
                        if (this.f5540a == null) {
                            this.f5540a = RenderScript.create(getContext());
                            this.b = Allocation.createFromBitmap(this.f5540a, this.r);
                            this.c = Allocation.createFromBitmap(this.f5540a, this.s);
                            this.d = ScriptIntrinsicBlur.create(this.f5540a, Element.U8_4(this.f5540a));
                            this.d.setRadius(i4);
                            this.d.setInput(this.b);
                        }
                        this.b.syncAll(1);
                        this.d.forEach(this.c);
                        this.c.copyTo(this.r);
                    } else {
                        this.r.setPixel(0, 0, this.r.getPixel(0, 0));
                    }
                    int tintOpacity = this.F.getTintOpacity();
                    if (tintOpacity > 0) {
                        int tintColor = this.F.getTintColor();
                        this.t.drawARGB((int) (tintOpacity * 2.55d), Color.red(tintColor), Color.green(tintColor), Color.blue(tintColor));
                    }
                    this.ah.invalidate();
                }
            }
        }
    }

    private void p() {
        boolean z = true;
        boolean z2 = this.o && this.F.getSkipPolicy() == 0;
        com.smartadserver.android.library.controller.mraid.a mRAIDController = this.n.getMRAIDController();
        if (z2) {
            z = false;
        }
        mRAIDController.setExpandUseCustomCloseProperty(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public void q() {
        this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.6
            @Override // java.lang.Runnable
            public void run() {
                synchronized (a.this.A) {
                    if (a.this.z != null && a.this.u != null) {
                        try {
                            a.this.z.setSurface(new Surface(a.this.u));
                        } catch (IllegalStateException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.7
            @Override // java.lang.Runnable
            public void run() {
                synchronized (a.this.A) {
                    if (a.this.z != null) {
                        try {
                            if (a.this.F.isVideo360Mode()) {
                                a.this.z.setSurface(((com.smartadserver.android.library.ui.a.b) a.this.p).c());
                            } else {
                                a.this.z.setDisplay(a.this.p.getHolder());
                            }
                            if (a.this.g) {
                                a.this.g = false;
                                a.this.z.a();
                            } else if (a.this.h) {
                                a.this.h = false;
                                a.this.a();
                            }
                        } catch (IllegalStateException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        });
    }

    private void a(final ImageView imageView, final String str, final boolean z) {
        new Thread() { // from class: com.smartadserver.android.library.ui.a.8
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    final Bitmap f = com.smartadserver.android.library.g.c.f(str);
                    if (f != null) {
                        a.this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.8.1
                            @Override // java.lang.Runnable
                            public void run() {
                                imageView.setImageBitmap(f);
                            }
                        });
                        if (a.this.F != null && !a.this.Q && z) {
                            String backgroundImpressionUrl = a.this.F.getBackgroundImpressionUrl();
                            a.this.Q = a.this.c(backgroundImpressionUrl);
                        }
                    }
                } catch (Exception e2) {
                    System.out.println("Exc=" + e2);
                }
            }
        }.start();
    }

    public void setViewable(boolean z) {
        boolean z2;
        synchronized (this.A) {
            if (this.z != null) {
                z2 = this.z.b;
            } else if (!this.J) {
                z2 = true;
            } else {
                z2 = this.K;
            }
            if (!z) {
                if (this.p != null && (this.p instanceof com.smartadserver.android.library.ui.a.b)) {
                    ((com.smartadserver.android.library.ui.a.b) this.p).f();
                }
                if (this.T.d()) {
                    this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.9
                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.b();
                            a.this.U = true;
                        }
                    });
                } else {
                    m();
                }
            } else {
                if (this.p != null && (this.p instanceof com.smartadserver.android.library.ui.a.b)) {
                    ((com.smartadserver.android.library.ui.a.b) this.p).e();
                }
                if (this.U && !this.T.d() && z2) {
                    this.ad.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.10
                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.U = false;
                            a.this.a();
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        this.T.setVideoDuration(i);
        String skipOffset = this.F.getSkipOffset();
        boolean z = this.F.getSkipPolicy() == 2;
        if (skipOffset != null && skipOffset.length() > 0 && z) {
            if (i > 0) {
                int a2 = com.smartadserver.android.library.g.c.a(skipOffset, i);
                this.F.setCloseButtonAppearanceDelay(a2);
                this.n.setCloseButtonAppearanceDelay(a2);
            }
            this.F.setSkipPolicy(0);
            p();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        boolean isViewable = this.n.getMRAIDController().isViewable();
        if (this.F.isAutoplay() && isViewable) {
            a();
        } else if (!this.F.isAutoplay()) {
            this.V.setVisibility(0);
            if (this.J) {
                this.ak = true;
            }
        } else {
            this.U = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        boolean z = false;
        if (!this.J) {
            setMonitorProgressEnabled(false);
        }
        if (this.z == null || this.z.f5606a) {
            z = true;
        }
        if (z) {
            if (!this.P) {
                this.P = true;
                b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE);
                this.n.b(7);
                if (this.F.getReward() != null) {
                    this.n.a(this.F.getReward());
                }
            }
            v();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getInitialMuteState() {
        int audioMode = this.F.getAudioMode();
        if (audioMode == 0) {
            return true;
        }
        if (audioMode != 1) {
            return false;
        }
        int ringerMode = this.w.getRingerMode();
        return ringerMode == 0 || ringerMode == 1;
    }

    private void u() {
        this.z = new d();
        this.z.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.smartadserver.android.library.ui.a.11
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                com.smartadserver.android.library.g.c.a(a.j, "mediaPlayer onPrepared:");
                if (mediaPlayer != null) {
                    ((d) mediaPlayer).b = true;
                    synchronized (a.this.A) {
                        if (a.this.z == mediaPlayer) {
                            a.this.A.notify();
                            a.this.w();
                            if (a.this.o) {
                                boolean initialMuteState = a.this.getInitialMuteState();
                                a.this.T.setMuted(initialMuteState);
                                a.this.a(initialMuteState, false);
                            }
                            a.this.ab = a.this.z.getVideoWidth();
                            a.this.ac = a.this.z.getVideoHeight();
                            if (a.this.F.getMediaWidth() < 0) {
                                a.this.F.setMediaWidth(a.this.ab);
                            }
                            if (a.this.F.getMediaHeight() < 0) {
                                a.this.F.setMediaHeight(a.this.ac);
                            }
                            a.this.a(a.this.z.getDuration());
                            a.this.s();
                        }
                    }
                }
            }
        });
        this.z.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.smartadserver.android.library.ui.a.13
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                a.this.t();
            }
        });
        this.z.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.smartadserver.android.library.ui.a.14
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                String str;
                String str2;
                ((d) mediaPlayer).d = true;
                switch (i) {
                    case -1010:
                        str = "MEDIA_ERROR_UNSUPPORTED";
                        break;
                    case CommonConstants.PubError.JSON_ERROR /* -1007 */:
                        str = "MEDIA_ERROR_MALFORMED";
                        break;
                    case CommonConstants.PubError.TIMEOUT_ERROR /* -1004 */:
                        str = "MEDIA_ERROR_IO";
                        break;
                    case -110:
                        str = "MEDIA_ERROR_TIMED_OUT";
                        break;
                    case 100:
                        str = "MEDIA_ERROR_SERVER_DIED";
                        break;
                    case 200:
                        str = "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK";
                        break;
                    default:
                        str = "MEDIA_ERROR_UNKNOWN";
                        break;
                }
                switch (i2) {
                    case -1010:
                        str2 = "MEDIA_ERROR_UNSUPPORTED";
                        break;
                    case CommonConstants.PubError.JSON_ERROR /* -1007 */:
                        str2 = "MEDIA_ERROR_MALFORMED";
                        break;
                    case CommonConstants.PubError.TIMEOUT_ERROR /* -1004 */:
                        str2 = "MEDIA_ERROR_IO";
                        break;
                    case -110:
                        str2 = "MEDIA_ERROR_TIMED_OUT";
                        break;
                    case 100:
                        str2 = "MEDIA_ERROR_SERVER_DIED";
                        break;
                    case 200:
                        str2 = "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK";
                        break;
                    default:
                        str2 = "" + i2;
                        break;
                }
                com.smartadserver.android.library.g.c.a(a.j, "SASMediaPlayer onError: what:" + str + " extra:" + str2);
                ((d) mediaPlayer).e = str;
                ((d) mediaPlayer).f = str2;
                int i3 = 0;
                try {
                    i3 = mediaPlayer.getCurrentPosition();
                } catch (Exception e2) {
                }
                if (i3 == 0) {
                    synchronized (a.this.A) {
                        a.this.A.notify();
                    }
                }
                return true;
            }
        });
        this.z.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.smartadserver.android.library.ui.a.15
            @Override // android.media.MediaPlayer.OnInfoListener
            public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                com.smartadserver.android.library.g.c.a(a.j, "SASMediaPlayer onInfo: (" + i + "," + i2 + ")");
                return false;
            }
        });
        float f = d() ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        this.z.setVolume(f, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        if (!this.T.f()) {
            final SASAdElement htmlLayerAdElement = this.F.getHtmlLayerAdElement();
            if (htmlLayerAdElement == null) {
                this.V.setVisibility(0);
                this.T.setActionLayerVisible(true);
            }
            this.T.setPlaying(false);
            c(false);
            if (this.o && htmlLayerAdElement == null) {
                if (this.F.isAutoclose()) {
                    this.n.getMRAIDController().close();
                } else {
                    this.n.setCloseButtonAppearanceDelay(0);
                    this.n.getMRAIDController().setExpandUseCustomCloseProperty(false);
                }
            }
            ((SASNativeVideoAdElement) this.n.getCurrentAdElement()).setStickToTopEnabled(false);
            this.n.b(true);
            if (htmlLayerAdElement != null) {
                this.n.g.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.16
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.n.h.a(htmlLayerAdElement);
                        a.this.post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.16.1
                            @Override // java.lang.Runnable
                            public void run() {
                                a.this.setVisibility(4);
                                if (a.this.n.k != null) {
                                    a.this.n.k.setVisibility(0);
                                }
                            }
                        });
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (this.M.isEmpty()) {
            int duration = this.z.getDuration();
            int a2 = com.smartadserver.android.library.g.c.a(this.F.getProgressOffset(), duration);
            this.M.add(new c(0, SASNativeVideoAdElement.TRACKING_EVENT_NAME_START, 0));
            this.M.add(new c((int) (duration * 0.25d), SASNativeVideoAdElement.TRACKING_EVENT_NAME_FIRST_QUARTILE, 4));
            this.M.add(new c((int) (duration * 0.5d), SASNativeVideoAdElement.TRACKING_EVENT_NAME_MIDPOINT, 5));
            this.M.add(new c((int) (duration * 0.75d), SASNativeVideoAdElement.TRACKING_EVENT_NAME_THIRD_QUARTILE, 6));
            if (a2 > 0) {
                this.M.add(new c(a2, SASNativeVideoAdElement.TRACKING_EVENT_NAME_PROGRESS, -1));
            }
            Collections.sort(this.M);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMonitorProgressEnabled(boolean z) {
        synchronized (this.S) {
            if (this.R != null && !z) {
                this.R.cancel();
                this.R = null;
            } else if (this.R == null && z) {
                this.R = new b();
                this.D = System.currentTimeMillis();
                this.N.schedule(this.R, l, l);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SASNativeVideoLayer.java */
    /* renamed from: com.smartadserver.android.library.ui.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public abstract class AbstractView$OnTouchListenerC0585a implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        private final GestureDetector f5584a;

        public abstract void a();

        AbstractView$OnTouchListenerC0585a(Context context) {
            this.f5584a = new GestureDetector(context, new C0586a());
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return this.f5584a.onTouchEvent(motionEvent);
        }

        /* compiled from: SASNativeVideoLayer.java */
        /* renamed from: com.smartadserver.android.library.ui.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        private final class C0586a extends GestureDetector.SimpleOnGestureListener {
            private C0586a() {
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                float x = motionEvent2.getX() - motionEvent.getX();
                float y = motionEvent2.getY() - motionEvent.getY();
                if (Math.abs(y) <= Math.abs(x) || Math.abs(y) <= 100.0f) {
                    return false;
                }
                AbstractView$OnTouchListenerC0585a.this.a();
                return true;
            }
        }
    }

    private AbstractView$OnTouchListenerC0585a getOnSwipeTouchListener() {
        return new AbstractView$OnTouchListenerC0585a(getContext()) { // from class: com.smartadserver.android.library.ui.a.17
            @Override // com.smartadserver.android.library.ui.a.AbstractView$OnTouchListenerC0585a
            public void a() {
                if (!a.this.o && a.this.n.j() && a.this.n.getCurrentAdElement().isSwipeToClose() && !a.this.F.isVideo360Mode()) {
                    a.this.e();
                }
            }
        };
    }

    private void setOnSwipeTouchListener(View view) {
        view.setOnTouchListener(getOnSwipeTouchListener());
    }

    private void x() {
        this.T.setSwipeListenerOnActionLayer(getOnSwipeTouchListener());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (i >= 0) {
            layoutParams.width = i;
        }
        if (i2 >= 0) {
            layoutParams.height = i2;
        }
        setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] a(View view, View view2, int i) {
        return view2 == null ? com.smartadserver.android.library.g.c.a(view, i) : com.smartadserver.android.library.g.c.a(view, view2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SASNativeVideoLayer.java */
    /* renamed from: com.smartadserver.android.library.ui.a$18  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass18 implements SASAdView.d {
        AnonymousClass18() {
        }

        @Override // com.smartadserver.android.library.ui.SASAdView.d
        public void onStateChanged(SASAdView.i iVar) {
            if (iVar.a() == 0) {
                int[] a2 = a.this.a(a.this.n, a.this.n.getExpandParentContainer(), a.this.n.getNeededPadding()[1]);
                final float f = a2[0];
                final float f2 = a2[1];
                final int i = a2[2];
                final int i2 = a2[3];
                a.this.T.setVisibility(8);
                a.this.a(i, i2);
                a.this.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.smartadserver.android.library.ui.a.18.1
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        a.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                        int width = a.this.n.getWidth();
                        int height = a.this.n.getHeight();
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(a.this, JSInterface.JSON_X, f, BitmapDescriptorFactory.HUE_RED);
                        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(a.this, JSInterface.JSON_Y, f2, BitmapDescriptorFactory.HUE_RED);
                        ValueAnimator ofInt = ValueAnimator.ofInt(i2, height);
                        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.smartadserver.android.library.ui.a.18.1.1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                                a.this.a(-1, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                            }
                        });
                        ValueAnimator ofInt2 = ValueAnimator.ofInt(i, width);
                        ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.smartadserver.android.library.ui.a.18.1.2
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                                a.this.a(((Integer) valueAnimator.getAnimatedValue()).intValue(), -1);
                            }
                        });
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.play(ofFloat).with(ofFloat2).with(ofInt2).with(ofInt);
                        animatorSet.setDuration(a.this.getExpandCollapseAnimationDuration());
                        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.smartadserver.android.library.ui.a.18.1.3
                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                a.this.T.setVisibility(0);
                                ViewGroup.LayoutParams layoutParams = a.this.getLayoutParams();
                                layoutParams.width = -1;
                                layoutParams.height = -1;
                                a.this.setLayoutParams(layoutParams);
                                a.this.n.b(a.this.aj);
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationRepeat(Animator animator) {
                            }
                        });
                        animatorSet.start();
                    }
                });
            }
        }
    }

    private void y() {
        this.aj = new AnonymousClass18();
    }

    private void z() {
        this.n.a(this.aj);
        this.n.getMRAIDController().expand();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getExpandCollapseAnimationDuration() {
        long j2 = m;
        if (((SASNativeVideoAdElement) this.n.getCurrentAdElement()).isVideo360Mode()) {
            return 0L;
        }
        return j2;
    }

    public void e() {
        this.T.setVisibility(8);
        int[] iArr = {this.n.getLeft(), this.n.getTop() - this.n.getNeededPadding()[1], this.n.getWidth(), this.n.getHeight()};
        int[] a2 = a(this.n.getExpandPlaceholderView(), this.n.getExpandParentContainer(), this.n.getNeededPadding()[1]);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, JSInterface.JSON_X, iArr[0], a2[0]);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, JSInterface.JSON_Y, iArr[1], a2[1]);
        ValueAnimator ofInt = ValueAnimator.ofInt(iArr[2], a2[2]);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.smartadserver.android.library.ui.a.19
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                a.this.a(((Integer) valueAnimator.getAnimatedValue()).intValue(), -1);
            }
        });
        ValueAnimator ofInt2 = ValueAnimator.ofInt(iArr[3], a2[3]);
        ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.smartadserver.android.library.ui.a.20
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                a.this.a(-1, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).with(ofFloat2).with(ofInt).with(ofInt2);
        animatorSet.setDuration(getExpandCollapseAnimationDuration());
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.smartadserver.android.library.ui.a.21
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                com.smartadserver.android.library.g.c.h().post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.21.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.T.setVisibility(0);
                    }
                });
                ViewGroup.LayoutParams layoutParams = a.this.getLayoutParams();
                layoutParams.width = -1;
                layoutParams.height = -1;
                a.this.setLayoutParams(layoutParams);
                a.this.setX(BitmapDescriptorFactory.HUE_RED);
                a.this.setY(BitmapDescriptorFactory.HUE_RED);
                a.this.n.getMRAIDController().close();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        });
        animatorSet.start();
    }

    @TargetApi(11)
    public void f() {
        g();
        this.N.cancel();
        this.T.a();
    }

    public synchronized void g() {
        synchronized (this.A) {
            if (this.z != null) {
                this.z.stop();
                this.z.reset();
                this.z.release();
                this.z = null;
            }
            this.ab = -1;
            this.ac = -1;
            this.A.notify();
            if (this.q != null) {
                this.v.removeView(this.q);
                this.q = null;
                this.u = null;
            }
            if (this.p != null) {
                this.v.removeView(this.p);
                if (this.p instanceof com.smartadserver.android.library.ui.a.b) {
                    ((com.smartadserver.android.library.ui.a.b) this.p).d();
                }
                this.p = null;
            }
        }
        this.J = false;
        this.K = false;
        this.L = null;
        this.ak = false;
        this.U = false;
        this.g = false;
        this.h = false;
        this.ae = false;
        this.B = Build.VERSION.SDK_INT >= 14 && !SASAdView.i();
        if (this.I != null) {
            this.v.removeView(this.I);
            this.I.loadUrl("about:blank");
            this.I = null;
        }
        this.M.clear();
        this.aa.setVisibility(8);
        this.W.setVisibility(8);
        this.V.setVisibility(8);
        this.T.setPlaying(false);
        this.T.setActionLayerVisible(false);
        this.T.setReplayEnabled(true);
        this.w.abandonAudioFocus(this.x);
        this.af.setVisibility(8);
        this.ag.setVisibility(8);
        this.ag.setImageDrawable(null);
        this.ah.setVisibility(8);
        this.ah.setImageDrawable(null);
        if (this.f5540a != null) {
            this.f5540a.destroy();
            this.d.destroy();
            this.b.destroy();
            this.c.destroy();
            this.f5540a = null;
        }
        if (this.r != null) {
            this.r.recycle();
            this.r = null;
        }
        if (this.s != null) {
            this.s.recycle();
            this.s = null;
        }
        this.ai.setVisibility(8);
    }
}
