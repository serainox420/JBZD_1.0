package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.flurry.sdk.gj;
import com.flurry.sdk.gz;
import com.millennialmedia.NativeAd;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.File;
import java.util.Collections;
import java.util.Map;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public class gh extends gj {
    private static final String e = gh.class.getSimpleName();
    private static int f = lw.b(20);
    private boolean g;
    private Bitmap h;
    private FrameLayout i;
    private Button j;
    private Button k;
    private ImageButton l;
    private Context m;
    private fn n;
    private RelativeLayout o;
    private RelativeLayout p;
    private r q;
    private ProgressBar r;
    private GestureDetector s;
    private String t;
    private String u;
    private boolean v;
    private boolean w;

    /* JADX INFO: Access modifiers changed from: protected */
    public gh(Context context, r rVar, gz.a aVar, String str) {
        super(context, rVar, aVar);
        this.g = false;
        this.v = false;
        this.w = false;
        gp f2 = getAdController().f();
        if (this.f2732a == null) {
            this.f2732a = new gu(context, gj.a.FULLSCREEN, rVar.l().b.b(), rVar.e(), f2.m);
            this.f2732a.f2749a = this;
        }
        this.q = rVar;
        this.m = context;
        this.g = true;
        this.t = str;
        this.n = new fn();
        setAutoPlay(this.g);
        if (f2.g) {
            this.f2732a.c.hide();
            this.f2732a.c.setVisibility(8);
        } else {
            this.f2732a.f = true;
            this.f2732a.c.setVisibility(0);
        }
        this.u = d("clickToCall");
        if (this.u == null) {
            this.u = d(NativeAd.COMPONENT_ID_CALL_TO_ACTION);
        }
        hi hiVar = new hi();
        hiVar.g();
        this.h = hiVar.e;
    }

    public final void d() {
        if (getAdController().f().m) {
            this.f2732a.g();
        } else {
            this.f2732a.h();
        }
    }

    @Override // com.flurry.sdk.gj
    public final boolean e() {
        return false;
    }

    @Override // com.flurry.sdk.gj
    public final boolean f() {
        return true;
    }

    @Override // com.flurry.sdk.gj
    public final void g() {
        this.f2732a.c.show();
    }

    @Override // com.flurry.sdk.gj
    public final boolean h() {
        return this.g;
    }

    @Override // com.flurry.sdk.gj
    public final boolean i() {
        return false;
    }

    @Override // com.flurry.sdk.gj
    public final void j() {
    }

    @Override // com.flurry.sdk.gj
    public void setVideoUrl(String str) {
        this.t = str;
    }

    @Override // com.flurry.sdk.gj
    public String getVideoUrl() {
        return this.t;
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void b() {
        super.b();
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void k() {
        gp f2 = getAdController().f();
        f2.m = true;
        getAdController().a(f2);
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void l() {
        gp f2 = getAdController().f();
        f2.m = false;
        getAdController().a(f2);
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void a(String str) {
        gp f2 = getAdController().f();
        if (f2.g) {
            if (this.w) {
                C();
            }
        } else {
            int i = f2.f2735a;
            if (this.f2732a != null && this.g && this.p.getVisibility() != 0 && !this.v) {
                a(i);
                E();
            }
        }
        if (getAdController().c() != null && getAdController().a(bc.EV_RENDERED.ag)) {
            a(bc.EV_RENDERED, Collections.emptyMap());
            getAdController().b(bc.EV_RENDERED.ag);
        }
        D();
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void a(String str, float f2, float f3) {
        super.a(str, f2, f3);
        this.w = false;
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void b(String str) {
        km.a(3, e, "Video Completed: " + str);
        gp f2 = getAdController().f();
        if (!f2.g) {
            this.f2732a.b.suspend();
            f2.f2735a = Integer.MIN_VALUE;
            Map<String, String> b = b(-1);
            b.put("doNotRemoveAssets", "true");
            a(bc.EV_VIDEO_COMPLETED, b);
            km.a(3, e, "BeaconTest: Video completed event fired, adObj: " + getAdObject());
        }
        f2.g = true;
        this.w = true;
        if (this.f2732a != null) {
            this.f2732a.k();
        }
        v();
        if (this.p.getVisibility() != 0) {
            C();
        }
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void a(String str, int i, int i2) {
        jy.a().a(new ma() { // from class: com.flurry.sdk.gh.1
            @Override // com.flurry.sdk.ma
            public final void a() {
                if (gh.this.f2732a != null) {
                    gh.this.f2732a.k();
                }
                gh.this.C();
            }
        });
        setOrientation(4);
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gz
    @SuppressLint({"ClickableViewAccessibility"})
    public void initLayout() {
        gp f2 = getAdController().f();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(13);
        this.i = new FrameLayout(this.m);
        this.i.addView(this.f2732a.d, new FrameLayout.LayoutParams(-1, -1, 17));
        FrameLayout frameLayout = this.i;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, 700, 17);
        String d = d("secHqImage");
        this.p = new RelativeLayout(this.m);
        final RelativeLayout relativeLayout = this.p;
        if (d != null && t()) {
            this.n.a(relativeLayout, this.q.e(), d);
        } else {
            ab abVar = i.a().i;
            File c = ab.c(getAdObject(), "previewImageFromVideo");
            if (c != null && c.exists()) {
                final Bitmap decodeFile = BitmapFactory.decodeFile(c.getAbsolutePath());
                jy.a().a(new ma() { // from class: com.flurry.sdk.gh.7
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        if (Build.VERSION.SDK_INT < 16) {
                            relativeLayout.setBackgroundDrawable(new BitmapDrawable(decodeFile));
                        } else {
                            relativeLayout.setBackground(new BitmapDrawable(decodeFile));
                        }
                    }
                });
            }
        }
        this.p.setBackgroundColor(0);
        this.p.setVisibility(8);
        RelativeLayout relativeLayout2 = this.p;
        this.k = new Button(this.m);
        this.k.setPadding(5, 5, 5, 5);
        this.k.setBackgroundColor(0);
        this.k.setText(this.u);
        this.k.setTextColor(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Integer.MIN_VALUE);
        gradientDrawable.setCornerRadius(20.0f);
        gradientDrawable.setStroke(2, -1);
        gradientDrawable.setSize(lw.b(90), lw.b(30));
        if (Build.VERSION.SDK_INT < 16) {
            this.k.setBackgroundDrawable(gradientDrawable);
        } else {
            this.k.setBackground(gradientDrawable);
        }
        this.k.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.gh.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                gh.this.y();
                if (gh.this.q == null || !(gh.this.q instanceof x)) {
                    return;
                }
                ((x) gh.this.q).p.n();
            }
        });
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.setMargins(0, 0, 0, 0);
        layoutParams4.addRule(13);
        this.k.setVisibility(0);
        this.k.setPadding(f, f, f, f);
        relativeLayout2.addView(this.k, layoutParams4);
        frameLayout.addView(this.p, layoutParams3);
        FrameLayout frameLayout2 = this.i;
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2, 51);
        this.o = new RelativeLayout(this.m);
        this.o.setVisibility(0);
        this.o.setPadding(10, 10, 10, 10);
        layoutParams5.setMargins(10, 10, 10, 10);
        RelativeLayout relativeLayout3 = this.o;
        this.j = new Button(this.m);
        this.j.setPadding(5, 5, 5, 5);
        this.j.setText(this.u);
        this.j.setTextColor(-1);
        this.j.setBackgroundColor(0);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(Integer.MIN_VALUE);
        gradientDrawable2.setCornerRadius(20.0f);
        gradientDrawable2.setStroke(2, -1);
        gradientDrawable2.setSize(lw.b(80), lw.b(40));
        if (Build.VERSION.SDK_INT < 16) {
            this.j.setBackgroundDrawable(gradientDrawable2);
        } else {
            this.j.setBackground(gradientDrawable2);
        }
        this.j.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.gh.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                gh.this.y();
                ((x) gh.this.q).p.n();
            }
        });
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.setMargins(5, 5, 5, 5);
        layoutParams6.addRule(5);
        this.j.setVisibility(0);
        relativeLayout3.addView(this.j, layoutParams6);
        RelativeLayout relativeLayout4 = this.o;
        this.l = new ImageButton(this.m);
        this.l.setPadding(0, 0, 0, 0);
        this.l.setBackgroundColor(0);
        this.l.setImageBitmap(this.h);
        this.l.setClickable(true);
        this.l.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.gh.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                gh.this.m();
            }
        });
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.setMargins(0, 0, 15, 0);
        layoutParams7.addRule(11);
        layoutParams7.addRule(1, this.j.getId());
        this.l.setVisibility(0);
        relativeLayout4.addView(this.l, layoutParams7);
        frameLayout2.addView(this.o, layoutParams5);
        this.r = new ProgressBar(getContext());
        if (this.r != null) {
            this.r.setVisibility(0);
        }
        addView(this.i, layoutParams2);
        addView(this.r, layoutParams);
        this.s = new GestureDetector(this.m, new GestureDetector.SimpleOnGestureListener() { // from class: com.flurry.sdk.gh.6
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                if (gh.this.f2732a == null || gh.this.f2732a.b == null || !gh.this.f2732a.b.f || gh.this.p.getVisibility() == 0) {
                    if (gh.this.f2732a != null && gh.this.f2732a.c != null && gh.this.p.getVisibility() != 0) {
                        if (gh.this.f2732a.c.isShowing()) {
                            gh.this.f2732a.c.hide();
                        } else {
                            gh.this.f2732a.c.show();
                        }
                    }
                } else {
                    gh.this.f2732a.b.f = false;
                }
                return false;
            }
        });
        this.i.setOnTouchListener(new View.OnTouchListener() { // from class: com.flurry.sdk.gh.2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (gh.this.s != null) {
                    gh.this.s.onTouchEvent(motionEvent);
                    return true;
                }
                return true;
            }
        });
        if (f2.g) {
            this.f2732a.c.hide();
            C();
        }
        setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        this.w = true;
        this.i.setVisibility(0);
        this.o.setVisibility(0);
        this.p.setVisibility(0);
        this.j.setVisibility(8);
        this.f2732a.d.setVisibility(8);
        this.f2732a.c.setVisibility(8);
        D();
        requestLayout();
    }

    private void D() {
        if (this.r != null) {
            this.r.setVisibility(8);
        }
    }

    public final void m() {
        Log.e("Testing", "Resize clicked switch to stream mode.");
        if (this.q != null && (this.q instanceof x) && ((x) this.q).p.f()) {
            this.v = true;
            gj.a aVar = gj.a.INSTREAM;
            this.f2732a.b();
            a(aVar);
        }
    }

    @Override // com.flurry.sdk.gj
    public final void a(gj.a aVar) {
        if (this.f2732a.b.isPlaying()) {
            w();
        }
        gp f2 = getAdController().f();
        int b = this.f2732a.b();
        if (!f2.g) {
            if (b != Integer.MIN_VALUE) {
                f2.f2735a = b;
            }
            ((x) this.q).z();
        } else {
            ((x) this.q).z();
        }
        this.q.l().b(false);
        x();
    }

    @Override // com.flurry.sdk.gz
    public boolean onBackKey() {
        if (this.q == null || !(this.q instanceof x)) {
            return false;
        }
        m();
        return true;
    }

    @Override // com.flurry.sdk.gj
    public final void n() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.gz, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.gm, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        boolean z = false;
        super.onConfigurationChanged(configuration);
        gp f2 = getAdController().f();
        if (configuration.orientation == 2) {
            this.f2732a.d.setPadding(0, 5, 0, 5);
            this.p.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
            if (!f2.g) {
                this.f2732a.c.b(2);
            }
            this.i.requestLayout();
        } else {
            this.f2732a.d.setPadding(0, 0, 0, 0);
            this.p.setLayoutParams(new FrameLayout.LayoutParams(-1, 700, 17));
            this.i.setPadding(0, 5, 0, 5);
            if (!f2.g) {
                this.f2732a.c.b(1);
            }
            this.i.requestLayout();
        }
        if (!f2.g) {
            gu guVar = this.f2732a;
            if (guVar.b != null) {
                z = guVar.b.d();
            }
            if (!z || this.p.getVisibility() == 0) {
                if (this.f2732a.b.isPlaying()) {
                    E();
                    return;
                }
                return;
            }
            this.f2732a.c.f();
            this.f2732a.c.c();
            this.f2732a.c.requestLayout();
            this.f2732a.c.show();
        }
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gz
    public void onActivityPause() {
        super.onActivityPause();
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gz
    public void onActivityResume() {
        super.onActivityResume();
    }

    private String d(String str) {
        if (this.q != null) {
            for (de deVar : this.q.l().b.b()) {
                if (deVar.f2530a.equals(str)) {
                    return deVar.c;
                }
            }
        }
        return null;
    }

    private void E() {
        this.f2732a.c.d();
        this.f2732a.c.e();
        this.f2732a.c.requestLayout();
        this.f2732a.c.show();
    }
}
