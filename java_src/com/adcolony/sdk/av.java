package com.adcolony.sdk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.facebook.GraphResponse;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.mobileads.resource.DrawableConstants;
import com.openx.view.mraid.JSInterface;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class av extends TextureView implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, TextureView.SurfaceTextureListener {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private String H;
    private String I;
    private FileInputStream J;
    private z K;
    private c L;
    private Surface M;
    private SurfaceTexture N;
    private RectF O;
    private a P;
    private ProgressBar Q;
    private JSONObject R;
    private ExecutorService S;

    /* renamed from: a  reason: collision with root package name */
    int f1082a;
    boolean b;
    boolean c;
    Context d;
    MediaPlayer e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private float m;
    private float n;
    private float o;
    private float p;
    private float q;
    private float r;
    private int s;
    private boolean t;
    private Paint u;
    private Paint v;
    private double w;
    private double x;
    private long y;
    private boolean z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public av(Context context, z zVar, int i, c cVar) {
        super(context);
        this.t = true;
        this.u = new Paint();
        this.v = new Paint(1);
        this.O = new RectF();
        this.R = s.a();
        this.S = Executors.newSingleThreadExecutor();
        this.L = cVar;
        this.K = zVar;
        this.j = i;
        this.d = context;
        setSurfaceTextureListener(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.N != null) {
            this.C = true;
        }
        this.S.shutdown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.I = s.b(this.K.b, "ad_session_id");
        this.f = s.c(this.K.b, JSInterface.JSON_X);
        this.g = s.c(this.K.b, JSInterface.JSON_Y);
        this.h = s.c(this.K.b, "width");
        this.i = s.c(this.K.b, "height");
        this.E = s.d(this.K.b, "enable_timer");
        this.G = s.d(this.K.b, "enable_progress");
        this.H = s.b(this.K.b, "filepath");
        this.k = s.c(this.K.b, "video_width");
        this.l = s.c(this.K.b, "video_height");
        this.r = com.adcolony.sdk.a.m.m.j();
        u.b.b("Original video dimensions = " + this.k + JSInterface.JSON_X + this.l);
        setVisibility(4);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.h, this.i);
        layoutParams.setMargins(this.f, this.g, 0, 0);
        layoutParams.gravity = 0;
        this.L.addView(this, layoutParams);
        if (this.G) {
            this.Q = new ProgressBar(this.d);
            this.L.addView(this.Q, new FrameLayout.LayoutParams((int) (this.r * 100.0f), (int) (this.r * 100.0f), 17));
        }
        this.e = new MediaPlayer();
        this.B = false;
        try {
            if (!this.H.startsWith("http")) {
                this.J = new FileInputStream(this.H);
                this.e.setDataSource(this.J.getFD());
            } else {
                this.D = true;
                this.e.setDataSource(this.H);
            }
            this.e.setOnErrorListener(this);
            this.e.setOnPreparedListener(this);
            this.e.setOnCompletionListener(this);
            this.e.prepareAsync();
        } catch (IOException e) {
            u.g.a("Failed to create/prepare MediaPlayer: ").b(e.toString());
            f();
        }
        this.L.o.add(com.adcolony.sdk.a.a("VideoView.play", new ac() { // from class: com.adcolony.sdk.av.1
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (av.this.a(zVar)) {
                    av.this.d();
                }
            }
        }, true));
        this.L.o.add(com.adcolony.sdk.a.a("VideoView.set_bounds", new ac() { // from class: com.adcolony.sdk.av.2
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (av.this.a(zVar)) {
                    av.this.b(zVar);
                }
            }
        }, true));
        this.L.o.add(com.adcolony.sdk.a.a("VideoView.set_visible", new ac() { // from class: com.adcolony.sdk.av.3
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (av.this.a(zVar)) {
                    av.this.c(zVar);
                }
            }
        }, true));
        this.L.o.add(com.adcolony.sdk.a.a("VideoView.pause", new ac() { // from class: com.adcolony.sdk.av.4
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (av.this.a(zVar)) {
                    av.this.e();
                }
            }
        }, true));
        this.L.o.add(com.adcolony.sdk.a.a("VideoView.seek_to_time", new ac() { // from class: com.adcolony.sdk.av.5
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (av.this.a(zVar)) {
                    av.this.e(zVar);
                }
            }
        }, true));
        this.L.o.add(com.adcolony.sdk.a.a("VideoView.set_volume", new ac() { // from class: com.adcolony.sdk.av.6
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (av.this.a(zVar)) {
                    av.this.d(zVar);
                }
            }
        }, true));
        this.L.p.add("VideoView.play");
        this.L.p.add("VideoView.set_bounds");
        this.L.p.add("VideoView.set_visible");
        this.L.p.add("VideoView.pause");
        this.L.p.add("VideoView.seek_to_time");
        this.L.p.add("VideoView.set_volume");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(z zVar) {
        return s.c(zVar.b, "id") == this.j && s.c(zVar.b, "container_id") == this.L.n && s.b(zVar.b, "ad_session_id").equals(this.L.m);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (surfaceTexture == null) {
            u.g.b("Null texture provided by system's onSurfaceTextureAvailable.");
            return;
        }
        this.M = new Surface(surfaceTexture);
        this.e.setSurface(this.M);
        this.N = surfaceTexture;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.N = surfaceTexture;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.N = surfaceTexture;
        if (!this.C) {
            return false;
        }
        surfaceTexture.release();
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.N = surfaceTexture;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action != 0 && action != 1 && action != 3 && action != 2 && action != 5 && action != 6) {
            return false;
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        JSONObject a2 = s.a();
        s.b(a2, "view_id", this.j);
        s.a(a2, "ad_session_id", this.I);
        s.b(a2, "container_x", this.f + x);
        s.b(a2, "container_y", this.g + y);
        s.b(a2, "view_x", x);
        s.b(a2, "view_y", y);
        s.b(a2, "id", this.L.n);
        switch (action) {
            case 0:
                new z("AdContainer.on_touch_began", this.L.l, a2).b();
                break;
            case 1:
                if (!this.L.q) {
                    com.adcolony.sdk.a.m.r = com.adcolony.sdk.a.m.g.e.get(this.I);
                }
                new z("AdContainer.on_touch_ended", this.L.l, a2).b();
                break;
            case 2:
                new z("AdContainer.on_touch_moved", this.L.l, a2).b();
                break;
            case 3:
                new z("AdContainer.on_touch_cancelled", this.L.l, a2).b();
                break;
            case 5:
                int action2 = (motionEvent.getAction() & 65280) >> 8;
                s.b(a2, "container_x", ((int) motionEvent.getX(action2)) + this.f);
                s.b(a2, "container_y", ((int) motionEvent.getY(action2)) + this.g);
                s.b(a2, "view_x", (int) motionEvent.getX(action2));
                s.b(a2, "view_y", (int) motionEvent.getY(action2));
                new z("AdContainer.on_touch_began", this.L.l, a2).b();
                break;
            case 6:
                int action3 = (motionEvent.getAction() & 65280) >> 8;
                s.b(a2, "container_x", ((int) motionEvent.getX(action3)) + this.f);
                s.b(a2, "container_y", ((int) motionEvent.getY(action3)) + this.g);
                s.b(a2, "view_x", (int) motionEvent.getX(action3));
                s.b(a2, "view_y", (int) motionEvent.getY(action3));
                if (!this.L.q) {
                    com.adcolony.sdk.a.m.r = com.adcolony.sdk.a.m.g.e.get(this.I);
                }
                new z("AdContainer.on_touch_ended", this.L.l, a2).b();
                break;
        }
        return true;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        double d = this.h / this.k;
        double d2 = this.i / this.l;
        if (d <= d2) {
            d2 = d;
        }
        int i3 = (int) (this.k * d2);
        int i4 = (int) (d2 * this.l);
        u.d.a("setMeasuredDimension to ").a(i3).a(" by ").b(i4);
        setMeasuredDimension(i3, i4);
        if (this.D) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
            layoutParams.width = i3;
            layoutParams.height = i4;
            layoutParams.gravity = 17;
            layoutParams.setMargins(0, 0, 0, 0);
            setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        JSONObject a2 = s.a();
        s.a(a2, "id", this.I);
        new z("AdSession.on_error", this.L.l, a2).b();
        this.b = true;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        f();
        u.g.a("MediaPlayer error: ").a(i).a(",").b(i2);
        return true;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.B = true;
        if (this.G) {
            this.L.removeView(this.Q);
        }
        if (this.D) {
            this.k = mediaPlayer.getVideoWidth();
            this.l = mediaPlayer.getVideoHeight();
            onMeasure(this.k, this.l);
            u.d.a("MediaPlayer getVideoWidth = ").b(mediaPlayer.getVideoWidth());
            u.d.a("MediaPlayer getVideoHeight = ").b(mediaPlayer.getVideoHeight());
        }
        JSONObject a2 = s.a();
        s.b(a2, "id", this.j);
        s.b(a2, "container_id", this.L.n);
        s.a(a2, "ad_session_id", this.I);
        u.b.b("ADCVideoView is prepared");
        new z("VideoView.on_ready", this.L.l, a2).b();
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.b = true;
        this.w = this.x;
        s.b(this.R, "id", this.j);
        s.b(this.R, "container_id", this.L.n);
        s.a(this.R, "ad_session_id", this.I);
        s.a(this.R, "elapsed", this.w);
        s.a(this.R, VastIconXmlManager.DURATION, this.x);
        new z("VideoView.on_progress", this.L.l, this.R).b();
    }

    private void g() {
        try {
            this.S.submit(new Runnable() { // from class: com.adcolony.sdk.av.7
                @Override // java.lang.Runnable
                public void run() {
                    av.this.y = 0L;
                    while (!av.this.b && !av.this.A && com.adcolony.sdk.a.l != null) {
                        if (!av.this.b && !av.this.C) {
                            if (av.this.e.isPlaying()) {
                                if (av.this.y == 0 && com.adcolony.sdk.a.o) {
                                    av.this.y = System.currentTimeMillis();
                                }
                                av.this.z = true;
                                av.this.w = av.this.e.getCurrentPosition() / 1000.0d;
                                av.this.x = av.this.e.getDuration() / 1000.0d;
                                if (System.currentTimeMillis() - av.this.y > 1000 && !av.this.F && com.adcolony.sdk.a.o) {
                                    if (av.this.w != 0.0d) {
                                        av.this.F = true;
                                    } else {
                                        u.h.b("getCurrentPosition() not working, firing AdSession.on_error");
                                        av.this.f();
                                    }
                                }
                                if (av.this.E) {
                                    if (av.this.t) {
                                        av.this.q = (float) (360.0d / av.this.x);
                                        av.this.v.setColor(-3355444);
                                        av.this.v.setShadowLayer((int) (av.this.r * 2.0f), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, DrawableConstants.CtaButton.BACKGROUND_COLOR);
                                        av.this.v.setTextAlign(Paint.Align.CENTER);
                                        av.this.v.setLinearText(true);
                                        av.this.v.setTextSize(12.0f * av.this.r);
                                        av.this.u.setStyle(Paint.Style.STROKE);
                                        float f = av.this.r * 2.0f > 6.0f ? 6.0f : av.this.r * 2.0f;
                                        if (f < 4.0f) {
                                            f = 4.0f;
                                        }
                                        av.this.u.setStrokeWidth(f);
                                        av.this.u.setShadowLayer((int) (3.0f * av.this.r), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, DrawableConstants.CtaButton.BACKGROUND_COLOR);
                                        av.this.u.setColor(-3355444);
                                        Rect rect = new Rect();
                                        av.this.v.getTextBounds("0123456789", 0, 9, rect);
                                        av.this.o = rect.height();
                                        if (com.adcolony.sdk.a.l != null) {
                                            com.adcolony.sdk.a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.av.7.1
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    av.this.P = new a(av.this.d);
                                                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (av.this.o * 4.0f), (int) (av.this.o * 4.0f));
                                                    layoutParams.setMargins(0, av.this.L.k - ((int) (av.this.o * 4.0f)), 0, 0);
                                                    layoutParams.gravity = 0;
                                                    av.this.L.addView(av.this.P, layoutParams);
                                                }
                                            });
                                        }
                                        av.this.t = false;
                                    }
                                    av.this.s = (int) (av.this.x - av.this.w);
                                    av.this.m = (int) av.this.o;
                                    av.this.n = (int) (av.this.o * 3.0f);
                                    av.this.O.set(av.this.m - (av.this.o / 2.0f), av.this.n - (av.this.o * 2.0f), av.this.m + (av.this.o * 2.0f), av.this.n + (av.this.o / 2.0f));
                                    av.this.p = (float) (av.this.q * (av.this.x - av.this.w));
                                }
                            }
                            if (av.this.z && !av.this.b && !av.this.A) {
                                s.b(av.this.R, "id", av.this.j);
                                s.b(av.this.R, "container_id", av.this.L.n);
                                s.a(av.this.R, "ad_session_id", av.this.I);
                                s.a(av.this.R, "elapsed", av.this.w);
                                s.a(av.this.R, VastIconXmlManager.DURATION, av.this.x);
                                new z("VideoView.on_progress", av.this.L.l, av.this.R).b();
                            }
                            if (av.this.c || com.adcolony.sdk.a.l.isFinishing()) {
                                av.this.c = false;
                                av.this.c();
                                return;
                            }
                            try {
                                Thread.sleep(50L);
                            } catch (InterruptedException e) {
                                av.this.f();
                                u.g.b("InterruptedException in ADCVideoView's update thread.");
                            }
                        } else {
                            return;
                        }
                    }
                    if (av.this.c) {
                        av.this.c();
                    }
                }
            });
        } catch (RejectedExecutionException e) {
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        u.d.b("MediaPlayer stopped and released.");
        if (!this.b && this.B) {
            this.e.stop();
        }
        if (this.Q != null) {
            this.L.removeView(this.Q);
        }
        this.b = true;
        this.e.release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(z zVar) {
        this.f = s.c(zVar.b, JSInterface.JSON_X);
        this.g = s.c(zVar.b, JSInterface.JSON_Y);
        this.h = s.c(zVar.b, "width");
        this.i = s.c(zVar.b, "height");
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.setMargins(this.f, this.g, 0, 0);
        layoutParams.width = this.h;
        layoutParams.height = this.i;
        setLayoutParams(layoutParams);
        if (this.E && this.P != null) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) (this.o * 4.0f), (int) (this.o * 4.0f));
            layoutParams2.setMargins(0, this.L.k - ((int) (this.o * 4.0f)), 0, 0);
            layoutParams2.gravity = 0;
            this.P.setLayoutParams(layoutParams2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(z zVar) {
        if (s.d(zVar.b, "visible")) {
            setVisibility(0);
            if (this.E && this.P != null) {
                this.P.setVisibility(0);
                return;
            }
            return;
        }
        setVisibility(4);
        if (this.E && this.P != null) {
            this.P.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(z zVar) {
        if (!this.B) {
            return false;
        }
        float e = (float) s.e(zVar.b, "volume");
        this.e.setVolume(e, e);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        if (!this.B) {
            return false;
        }
        if (!this.A && com.adcolony.sdk.a.o) {
            this.e.start();
            g();
            u.b.b("MediaPlayer is prepared - ADCVideoView play() called.");
        } else if (!this.b && com.adcolony.sdk.a.o) {
            this.e.start();
            this.A = false;
            if (!this.S.isShutdown()) {
                g();
            }
            if (this.P != null) {
                this.P.invalidate();
            }
        }
        setWillNotDraw(false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        if (!this.B) {
            u.f.b("ADCVideoView pause() called while MediaPlayer is not prepared.");
            return false;
        } else if (!this.z) {
            u.d.b("Ignoring ADCVideoView pause due to invalid MediaPlayer state.");
            return false;
        } else {
            this.f1082a = this.e.getCurrentPosition();
            this.x = this.e.getDuration();
            this.e.pause();
            this.A = true;
            u.b.b("Video view paused");
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e(z zVar) {
        if (!this.B) {
            return false;
        }
        if (this.b) {
            this.b = false;
        }
        this.e.seekTo(s.c(zVar.b, "time") * 1000);
        JSONObject a2 = s.a();
        s.b(a2, "id", this.j);
        s.a(a2, "ad_session_id", this.I);
        s.a(a2, GraphResponse.SUCCESS_KEY, true);
        zVar.a(a2).b();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends View {
        a(Context context) {
            super(context);
            setWillNotDraw(false);
            try {
                getClass().getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this, 1, null);
            } catch (Exception e) {
            }
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            canvas.drawArc(av.this.O, 270.0f, av.this.p, false, av.this.u);
            canvas.drawText("" + av.this.s, av.this.O.centerX(), (float) (av.this.O.centerY() + (av.this.v.getFontMetrics().bottom * 1.35d)), av.this.v);
            invalidate();
        }
    }
}
