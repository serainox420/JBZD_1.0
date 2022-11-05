package com.revmob.ads.interstitial;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import com.mopub.mobileads.resource.DrawableConstants;
import com.revmob.FullscreenActivity;
import com.revmob.RevMob;
import com.revmob.client.RevMobClient;
import com.revmob.internal.RMLog;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.util.ArrayList;
import java.util.Iterator;
@TargetApi(10)
/* loaded from: classes3.dex */
public final class a extends RelativeLayout implements com.revmob.ads.interstitial.b.g {
    private static int A;
    private static int B;
    private Runnable C;
    private Runnable D;
    private int E;
    private int F;
    private int G;
    private float H;
    private float I;
    private float J;
    private float K;
    private Button L;
    private Button M;
    private Button N;
    private Button O;
    private ArrayList P;
    private double Q;

    /* renamed from: a  reason: collision with root package name */
    public com.revmob.ads.interstitial.a.b f4760a;
    public VideoView b;
    public TextView c;
    public boolean d;
    public boolean e;
    public boolean f;
    public Handler g;
    protected FullscreenActivity h;
    public MediaPlayer i;
    public Boolean j;
    public Boolean k;
    public Boolean l;
    public double m;
    private ImageView n;
    private ImageView o;
    private ImageView p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private Handler x;
    private Handler y;
    private RelativeLayout z;

    @SuppressLint({"NewApi"})
    @TargetApi(10)
    public a(Activity activity, com.revmob.ads.interstitial.a.b bVar, com.revmob.ads.interstitial.b.a aVar, FullscreenActivity fullscreenActivity) {
        super(activity);
        this.d = false;
        this.e = false;
        this.f = false;
        this.x = new Handler();
        this.j = false;
        this.k = false;
        this.l = false;
        this.m = 0.0d;
        this.f4760a = bVar;
        this.h = fullscreenActivity;
        this.h.g = true;
        if (bVar.E() != null) {
            this.k = true;
        }
        if (bVar.m() > 0.0d) {
            this.Q = bVar.m();
        } else {
            this.Q = 0.0d;
        }
        this.h.getRequestedOrientation();
        if (!this.h.e) {
            if (bVar.P() == 1) {
                this.h.setRequestedOrientation(7);
                this.F = 1;
            } else {
                this.h.setRequestedOrientation(6);
                this.F = 2;
            }
        }
        this.j = this.h.f;
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        B = com.revmob.a.a.a(getContext(), 40);
        A = com.revmob.a.a.a(getContext(), 20);
        FullscreenActivity fullscreenActivity2 = this.h;
        getContext();
        this.K = fullscreenActivity2.getPreferences(0).getFloat("RevMobVideoVolume", 1.0f);
        this.z = new RelativeLayout(getContext());
        this.z.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.z.setVisibility(0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.b = new VideoView(getContext());
        this.b.setLayoutParams(layoutParams);
        this.b.setMediaController(null);
        h();
        addView(this.b);
        this.P = new ArrayList();
        ArrayList arrayList = this.P;
        this.O = new Button(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(B, B);
        layoutParams2.addRule(10);
        layoutParams2.topMargin = A;
        layoutParams2.addRule(9);
        layoutParams2.leftMargin = A;
        this.O.setLayoutParams(layoutParams2);
        if (this.K == 1.0f) {
            this.O.setBackgroundDrawable(new BitmapDrawable(getResources(), this.f4760a.s()));
        } else {
            this.O.setBackgroundDrawable(new BitmapDrawable(getResources(), this.f4760a.t()));
        }
        this.O.setVisibility(4);
        this.O.setOnClickListener(new e(this));
        arrayList.add(this.O);
        ArrayList arrayList2 = this.P;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(com.revmob.a.a.a(getContext(), 30), com.revmob.a.a.a(getContext(), 30));
        layoutParams3.rightMargin = A;
        layoutParams3.bottomMargin = A;
        layoutParams3.addRule(11);
        layoutParams3.addRule(12);
        this.c = new TextView(getContext());
        float a2 = com.revmob.a.a.a(getContext(), 6);
        float a3 = com.revmob.a.a.a(getContext(), 9);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{a2, a3, a2, a3, a2, a3, a2, a3}, null, null));
        Paint paint = shapeDrawable.getPaint();
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(com.revmob.a.a.a(getContext(), 3));
        this.c.setBackgroundDrawable(shapeDrawable);
        this.c.setTextSize(15.0f);
        this.c.setTextColor(-1);
        this.c.setGravity(17);
        this.c.setVisibility(4);
        this.c.setLayoutParams(layoutParams3);
        this.c.setVisibility(4);
        arrayList2.add(this.c);
        if (!this.j.booleanValue() && bVar.S() != null) {
            ArrayList arrayList3 = this.P;
            this.L = new Button(getContext());
            this.L.setBackgroundDrawable(new BitmapDrawable(getResources(), this.f4760a.S()));
            this.L.setOnClickListener(new h(this, new com.revmob.ads.interstitial.b.a(this.h)));
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(com.revmob.a.a.a(getContext(), 104), com.revmob.a.a.a(getContext(), 40));
            layoutParams4.leftMargin = (int) (0.7f * A);
            layoutParams4.bottomMargin = (int) (A * 0.45f);
            layoutParams4.addRule(9);
            layoutParams4.addRule(12);
            this.L.setLayoutParams(layoutParams4);
            this.L.setVisibility(4);
            arrayList3.add(this.L);
        }
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -1);
        this.p = new ImageView(getContext());
        layoutParams5.addRule(13);
        this.p.setLayoutParams(layoutParams5);
        this.p.setVisibility(8);
        this.p.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        addView(this.p);
        RelativeLayout relativeLayout = this.z;
        this.n = new ImageView(getContext());
        this.n.setVisibility(4);
        e();
        this.n.setOnClickListener(new c(this, aVar));
        relativeLayout.addView(this.n, new RelativeLayout.LayoutParams(-1, -1));
        RelativeLayout relativeLayout2 = this.z;
        this.N = new Button(getContext());
        this.N.setBackgroundDrawable(new BitmapDrawable(getResources(), this.f4760a.p()));
        this.N.setVisibility(4);
        this.N.setOnClickListener(new d(this));
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(B, B);
        layoutParams6.leftMargin = A;
        layoutParams6.topMargin = A;
        layoutParams6.addRule(9);
        layoutParams6.addRule(6);
        this.N.setLayoutParams(layoutParams6);
        relativeLayout2.addView(this.N);
        RelativeLayout relativeLayout3 = this.z;
        this.o = new ImageView(getContext());
        this.o.setVisibility(0);
        this.o.setImageBitmap(this.f4760a.q());
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(100, 50);
        layoutParams7.addRule(9);
        layoutParams7.addRule(10);
        layoutParams7.leftMargin = 0;
        layoutParams7.topMargin = 0;
        this.o.setLayoutParams(layoutParams7);
        relativeLayout3.addView(this.o);
        RelativeLayout relativeLayout4 = this.z;
        this.M = new Button(getContext());
        this.M.setVisibility(4);
        this.M.setBackgroundDrawable(com.revmob.ads.a.g.a());
        this.M.setOnClickListener(new b(this));
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(B, B);
        layoutParams8.rightMargin = A;
        layoutParams8.topMargin = A;
        layoutParams8.addRule(11);
        layoutParams8.addRule(6);
        this.M.setLayoutParams(layoutParams8);
        this.M.setVisibility(4);
        relativeLayout4.addView(this.M);
        Iterator it = this.P.iterator();
        while (it.hasNext()) {
            this.z.addView((View) it.next());
        }
        addView(this.z);
        this.q = false;
        this.r = false;
        this.t = false;
        this.u = false;
        this.v = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(a aVar) {
        if (aVar.b != null) {
            aVar.G = aVar.b.getCurrentPosition();
            if (aVar.b.getCurrentPosition() > 100 && !aVar.w) {
                aVar.w = true;
                aVar.p.setVisibility(8);
                aVar.b.setBackgroundColor(0);
                if (aVar.j.booleanValue()) {
                    RevMob.b = false;
                    aVar.h.c.onRevMobRewardedVideoStarted();
                }
                if (!aVar.l.booleanValue()) {
                    RevMobClient.a().a(aVar.f4760a);
                    aVar.b("impressions");
                    aVar.a(SASNativeVideoAdElement.TRACKING_EVENT_NAME_CREATIVE_VIEW);
                }
            }
            aVar.m = aVar.G / aVar.E;
            if ((aVar.m >= aVar.Q || aVar.l.booleanValue()) && ((!aVar.j.booleanValue() || aVar.l.booleanValue()) && !aVar.P.contains(aVar.M))) {
                aVar.P.add(aVar.M);
                aVar.h.g = false;
                aVar.M.setVisibility(0);
                aVar.M.requestFocus();
                aVar.z.requestLayout();
            }
            if (aVar.G >= aVar.H && !aVar.t) {
                aVar.t = true;
                if (!aVar.l.booleanValue()) {
                    aVar.a(SASNativeVideoAdElement.TRACKING_EVENT_NAME_FIRST_QUARTILE);
                }
            }
            if (aVar.G >= aVar.I && !aVar.u) {
                aVar.u = true;
                if (!aVar.l.booleanValue()) {
                    aVar.a(SASNativeVideoAdElement.TRACKING_EVENT_NAME_MIDPOINT);
                }
            }
            if (aVar.G >= aVar.J && !aVar.v) {
                aVar.v = true;
                if (!aVar.l.booleanValue()) {
                    aVar.a(SASNativeVideoAdElement.TRACKING_EVENT_NAME_THIRD_QUARTILE);
                }
            }
            aVar.x.postDelayed(aVar.D, 0L);
            if (aVar.f4760a.n() > aVar.E || aVar.e) {
                if (aVar.G < aVar.E && !aVar.d && !aVar.e) {
                    return;
                }
                aVar.b();
                return;
            }
            if (aVar.G < aVar.f4760a.n() && aVar.f4760a.n() - aVar.G <= 100 && aVar.f4760a.a(2) != null && aVar.f4760a.a(1) != null) {
                aVar.p.setVisibility(0);
                aVar.p.bringToFront();
            }
            if (aVar.G < aVar.f4760a.n()) {
                return;
            }
            aVar.x.removeCallbacks(aVar.D);
            aVar.p.bringToFront();
            aVar.b.stopPlayback();
            aVar.b();
            aVar.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        new f(this, str).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        new g(this, str).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void e(a aVar) {
        aVar.i();
        if (aVar.s) {
            aVar.k();
            return;
        }
        aVar.j();
        aVar.l();
    }

    private void h() {
        this.b.setVideoPath(this.f4760a.r().getAbsolutePath());
        this.b.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.w = false;
        this.b.setVisibility(0);
        this.D = new i(this);
        this.b.setOnPreparedListener(new j(this));
        this.b.setOnTouchListener(new k(this));
        this.b.setOnCompletionListener(new l(this));
    }

    private void i() {
        if (this.y != null) {
            this.y.removeCallbacksAndMessages(null);
            this.y = null;
        }
    }

    private void j() {
        this.s = true;
        Iterator it = this.P.iterator();
        while (it.hasNext()) {
            ((View) it.next()).setVisibility(0);
        }
    }

    private void k() {
        this.s = false;
        Iterator it = this.P.iterator();
        while (it.hasNext()) {
            ((View) it.next()).setVisibility(4);
        }
    }

    private void l() {
        this.y = new Handler(Looper.getMainLooper());
        this.y.postDelayed(new m(this), 1500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (!this.l.booleanValue()) {
            a(SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE);
        }
        if (this.h.c != null) {
            if (!this.j.booleanValue()) {
                this.h.c.onRevMobVideoFinished();
            } else {
                this.h.c.onRevMobRewardedVideoFinished();
            }
        }
        d();
        this.n.setVisibility(0);
        this.M.setVisibility(0);
        this.b.stopPlayback();
        this.c.setVisibility(4);
        this.O.setVisibility(4);
        this.N.setVisibility(0);
        this.o.setVisibility(4);
        this.z.bringToFront();
        if (this.n.getVisibility() == 0) {
            if (this.h.getRequestedOrientation() == 1) {
                n();
            } else {
                o();
            }
        }
    }

    private void n() {
        if (!this.q) {
            this.q = true;
            if (this.l.booleanValue()) {
                return;
            }
            a("fullscreenPortraitView");
        }
    }

    private void o() {
        if (!this.r) {
            this.r = true;
            if (this.l.booleanValue()) {
                return;
            }
            a("fullscreenLandscapeView");
        }
    }

    public final void a() {
        this.h.c();
        i();
        k();
        this.x.removeCallbacks(this.D);
        this.b.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.p.setVisibility(0);
        this.p.bringToFront();
        new Handler().postDelayed(new o(this), 100L);
    }

    public final void b() {
        if (this.x == null || this.D == null) {
            return;
        }
        this.x.removeCallbacks(this.D);
    }

    public final int c() {
        int n;
        this.E = this.b.getDuration();
        if (this.h.g() == 0) {
            n = this.f4760a.n() <= this.E ? this.f4760a.n() : this.E;
            this.H = n / 4.0f;
            this.I = n / 2.0f;
            this.J = (n * 3.0f) / 4.0f;
        } else {
            n = this.f4760a.n() <= this.E ? this.f4760a.n() - this.h.g() : this.E - this.h.g();
            this.b.seekTo(this.h.g());
            this.w = true;
            this.h.h();
        }
        this.g = new Handler();
        this.C = new p(this, n);
        return n;
    }

    public final void d() {
        if (this.g == null || this.C == null) {
            return;
        }
        this.g.removeCallbacks(this.C);
        this.g = null;
        this.C = null;
    }

    @Override // com.revmob.ads.interstitial.b.g
    public final void e() {
        if (this.n != null) {
            int i = this.F;
            this.n.setImageBitmap(this.f4760a.a(i));
            if (i == 1) {
                n();
            } else {
                o();
            }
            if (this.f4760a.h()) {
                this.n.setScaleType(ImageView.ScaleType.FIT_XY);
            } else {
                this.n.setScaleType(ImageView.ScaleType.FIT_CENTER);
            }
        }
    }

    public final void f() {
        RMLog.d("replayVideo");
        this.l = true;
        this.f = false;
        this.N.setVisibility(4);
        this.n.setVisibility(4);
        this.w = false;
        h();
        j();
        l();
    }

    public final void g() {
        d();
        this.c = null;
        this.M = null;
        this.O = null;
        this.b = null;
        this.n = null;
        this.N = null;
        this.o = null;
        this.i = null;
        this.p = null;
        this.z = null;
    }
}
