package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.flurry.android.FlurryFullscreenTakeoverActivity;
import com.flurry.sdk.gj;
import com.flurry.sdk.gz;
import com.flurry.sdk.jr;
import com.millennialmedia.NativeAd;
import java.io.File;
import java.util.Collections;
import java.util.Map;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public class gk extends gj {
    private static final String e = gk.class.getSimpleName();
    private boolean A;
    private boolean B;
    private boolean C;
    private Boolean D;
    private Boolean E;
    private gz.a F;
    private boolean f;
    private Bitmap g;
    private FrameLayout h;
    private ImageButton i;
    private Button j;
    private ImageView k;
    private Context l;
    private RelativeLayout m;
    private ProgressBar n;
    private r o;
    private fn p;
    private String q;
    private jr r;
    private String s;
    private String t;
    private int u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    public gk(Context context, r rVar) {
        super(context, rVar, null);
        this.f = false;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = false;
        this.z = false;
        this.A = false;
        this.B = false;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = new gz.a() { // from class: com.flurry.sdk.gk.5
            @Override // com.flurry.sdk.gz.a
            public final void a() {
            }

            @Override // com.flurry.sdk.gz.a
            public final void b() {
            }

            @Override // com.flurry.sdk.gz.a
            public final void c() {
            }
        };
        if (this.f2732a == null) {
            this.f2732a = new gu(context, gj.a.INSTREAM, rVar.l().b.b(), rVar.e(), true);
            this.f2732a.f2749a = this;
        }
        this.p = new fn();
        this.r = jr.a();
        this.o = rVar;
        this.l = context;
        getServerParamInfo();
        E();
        this.s = d("clickToCall");
        if (this.s == null) {
            this.s = d(NativeAd.COMPONENT_ID_CALL_TO_ACTION);
        }
        hi hiVar = new hi();
        hiVar.g();
        this.g = hiVar.d;
        initLayout();
    }

    @Override // com.flurry.sdk.gj
    public void setVideoUrl(String str) {
        this.q = str;
    }

    @Override // com.flurry.sdk.gj
    public String getVideoUrl() {
        return this.q;
    }

    @Override // com.flurry.sdk.gj
    public final boolean f() {
        return this.w;
    }

    @Override // com.flurry.sdk.gj
    public final boolean e() {
        return this.v;
    }

    @Override // com.flurry.sdk.gj
    public final void p() {
        this.v = true;
    }

    @Override // com.flurry.sdk.gj
    public final boolean i() {
        return this.A;
    }

    @Override // com.flurry.sdk.gj
    public final void g() {
        if (this.w) {
            Log.i("Testing", "Showing controller now...");
        } else {
            this.f2732a.c.show();
        }
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void b() {
        super.b();
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void k() {
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void l() {
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void a(String str) {
        E();
        D();
        if (this.f) {
            this.k.setVisibility(8);
        }
        requestLayout();
        int i = getAdController().f().f2735a;
        if (this.f2732a != null && this.f && !this.A) {
            if (!(this.x || this.B)) {
                a(i);
            }
        }
        if ((this.x || this.B) && (!this.y || !q())) {
            if (this.f2732a != null) {
                d();
                this.x = false;
                this.B = false;
            }
        } else if (this.v && !q()) {
            this.v = false;
            if (!this.f2732a.b.isPlaying()) {
                a(i);
                if (this.k.getVisibility() == 0) {
                    this.k.setVisibility(8);
                }
            }
        } else if (this.z && this.f2732a.b.isPlaying()) {
            w();
        } else if (this.C) {
            a(i);
            this.C = false;
        } else if (this.A) {
            if (this.f2732a.b.isPlaying()) {
                this.f2732a.b.f();
            }
            if (this.m.getVisibility() != 0) {
                F();
            }
            this.y = true;
        } else if (this.f2732a.e == 8 && !this.y && !this.v && !this.x) {
            if (!this.f) {
                int videoPosition = getVideoPosition();
                w();
                a(videoPosition);
                w();
                this.k.setVisibility(8);
                this.f2732a.d.setVisibility(0);
                this.h.setVisibility(0);
                m();
            } else {
                o();
            }
            this.f2732a.e = -1;
            requestLayout();
        }
        if (getAdController().c() != null && getAdController().a(bc.EV_RENDERED.ag)) {
            a(bc.EV_RENDERED, Collections.emptyMap());
            getAdController().b(bc.EV_RENDERED.ag);
        }
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void a(String str, float f, float f2) {
        super.a(str, f, f2);
        this.y = false;
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void b(String str) {
        km.a(3, e, "Video Completed: " + str);
        gp f = getAdController().f();
        if (!f.g) {
            Map<String, String> b = b(-1);
            b.put("doNotRemoveAssets", "true");
            a(bc.EV_VIDEO_COMPLETED, b);
            km.a(5, e, "BeaconTest: Video completed event fired, adObj: " + getAdObject());
        }
        f.g = true;
        f.f2735a = Integer.MIN_VALUE;
        getAdController().a(f);
        this.y = true;
        v();
        if (this.f2732a != null) {
            this.f2732a.k();
        }
        F();
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void a(String str, int i, int i2) {
        jy.a().a(new ma() { // from class: com.flurry.sdk.gk.1
            @Override // com.flurry.sdk.ma
            public final void a() {
                if (gk.this.f2732a != null) {
                    gk.this.f2732a.k();
                }
                gk.this.F();
            }
        });
        setOrientation(4);
    }

    public final void c(int i) {
        gu guVar = this.f2732a;
        if (guVar.b == null) {
            return;
        }
        gw gwVar = guVar.b;
        if (i <= 3) {
            i = 0;
        }
        gwVar.seekTo(i);
        gwVar.start();
    }

    @Override // com.flurry.sdk.gj
    public final void a(gj.a aVar) {
        if (aVar.equals(gj.a.FULLSCREEN)) {
            w();
            this.w = true;
            if (this.f2732a.b() != Integer.MIN_VALUE) {
                this.u = this.f2732a.b();
            }
            Intent intent = new Intent(this.l, FlurryFullscreenTakeoverActivity.class);
            intent.putExtra("ad_object_legacy", this.o instanceof v);
            intent.putExtra("ad_object_id", this.o.e());
            intent.putExtra("url", this.q);
            intent.putExtra("close_ad", false);
            a(this.l, intent);
        } else if (aVar.equals(gj.a.INSTREAM)) {
            C();
            this.v = true;
            this.w = false;
            this.f2732a.f();
            this.f2732a.f = false;
            gp f = getAdController().f();
            if (!f.g) {
                a(f.f2735a);
                return;
            }
            if (this.f2732a.b.isPlaying() || this.f2732a.b.d()) {
                this.f2732a.b.suspend();
            }
            d();
        }
    }

    private void d() {
        this.y = true;
        F();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        D();
        this.i.setVisibility(0);
    }

    @Override // com.flurry.sdk.gj
    public final void o() {
        this.i.setVisibility(8);
    }

    private void C() {
        if (this.n != null) {
            this.n.setVisibility(0);
        }
    }

    private void D() {
        if (this.n != null) {
            this.n.setVisibility(8);
        }
    }

    @Override // com.flurry.sdk.gj
    public final void n() {
        this.w = false;
        this.x = true;
        this.f2732a.e = -1;
        if (this.f2732a != null) {
            if (this.f2732a.b.isPlaying()) {
                this.f2732a.b.f();
            }
            d();
            this.x = false;
            this.B = false;
        }
        this.o.l().b(true);
    }

    @Override // com.flurry.sdk.gj
    public final boolean r() {
        return this.i.getVisibility() == 0;
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gz
    public void initLayout() {
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        this.h = new FrameLayout(this.l);
        this.h.addView(this.f2732a.d, new RelativeLayout.LayoutParams(-1, -1));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1, 17);
        this.k = new ImageView(this.l);
        this.k.setOnClickListener(null);
        this.k.setOnTouchListener(null);
        this.t = d("secHqImage");
        if (this.t != null && t()) {
            this.p.a(this.k, this.o.e(), this.t);
        } else {
            ab abVar = i.a().i;
            File c = ab.c(getAdObject(), "previewImageFromVideo");
            if (c != null && c.exists()) {
                this.k.setImageBitmap(BitmapFactory.decodeFile(c.getAbsolutePath()));
            }
        }
        this.h.addView(this.k, layoutParams3);
        FrameLayout frameLayout = this.h;
        this.i = new ImageButton(this.l);
        this.i.setPadding(0, 0, 0, 0);
        this.i.setBackgroundColor(0);
        this.i.setImageBitmap(this.g);
        this.i.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.gk.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                gk.this.f2732a.d.setVisibility(0);
                gk.this.h.setVisibility(0);
                gk.this.m.setVisibility(4);
                gk.this.k.setVisibility(8);
                gk.this.o();
                gk.this.requestLayout();
                if (gk.this.getVideoPosition() <= 0 && !gk.this.z) {
                    gk.this.C = true;
                    gk.this.b();
                    return;
                }
                gk.this.c(gk.this.getVideoPosition());
                gk.this.z = false;
            }
        });
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2, 17);
        m();
        frameLayout.addView(this.i, layoutParams4);
        FrameLayout frameLayout2 = this.h;
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, lw.b(200), 17);
        this.m = new RelativeLayout(this.l);
        this.m.setBackgroundColor(0);
        String str = this.t;
        final RelativeLayout relativeLayout = this.m;
        if (str != null && t()) {
            this.p.a(relativeLayout, this.o.e(), str);
        } else {
            ab abVar2 = i.a().i;
            File c2 = ab.c(getAdObject(), "previewImageFromVideo");
            if (c2 != null && c2.exists()) {
                final Bitmap decodeFile = BitmapFactory.decodeFile(c2.getAbsolutePath());
                jy.a().a(new ma() { // from class: com.flurry.sdk.gk.6
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
        this.m.setVisibility(8);
        RelativeLayout relativeLayout2 = this.m;
        this.j = new Button(this.l);
        this.j.setText(this.s);
        this.j.setTextColor(-1);
        this.j.setBackgroundColor(0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Integer.MIN_VALUE);
        gradientDrawable.setCornerRadius(20.0f);
        gradientDrawable.setStroke(3, -1);
        if (Build.VERSION.SDK_INT < 16) {
            this.j.setBackgroundDrawable(gradientDrawable);
        } else {
            this.j.setBackground(gradientDrawable);
        }
        this.j.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.gk.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                gk.this.B = true;
                gk.this.y();
                gk.this.o.l().b(true);
            }
        });
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.setMargins(0, 0, 0, 0);
        layoutParams6.addRule(13);
        this.j.setVisibility(0);
        relativeLayout2.addView(this.j, layoutParams6);
        frameLayout2.addView(this.m, layoutParams5);
        this.n = new ProgressBar(getContext());
        C();
        if (this.f && !q()) {
            this.f2732a.d.setVisibility(0);
            this.h.setVisibility(0);
            this.k.setVisibility(0);
            o();
            this.m.setVisibility(8);
        } else if (q()) {
            d();
        } else if (!this.f && getVideoPosition() == 0 && !this.y && !q()) {
            this.f2732a.d.setVisibility(8);
            this.k.setVisibility(0);
            m();
            this.h.setVisibility(0);
            this.m.setVisibility(8);
        } else if (!this.f && getVideoPosition() > 0 && !this.y) {
            if (this.i.getVisibility() != 0) {
                this.k.setVisibility(8);
                this.f2732a.d.setVisibility(0);
                m();
                this.h.setVisibility(0);
            }
            this.z = true;
        } else if (!this.f && getVideoPosition() >= 0 && !this.y) {
            F();
        } else {
            this.m.setVisibility(8);
            this.f2732a.d.setVisibility(8);
            m();
            this.k.setVisibility(0);
            this.h.setVisibility(0);
        }
        addView(this.h, layoutParams);
        addView(this.n, layoutParams2);
        requestLayout();
    }

    private void E() {
        if (this.r.b) {
            if (this.D.booleanValue() && this.r.b() == jr.a.WIFI) {
                this.f = true;
                setAutoPlay(true);
            } else if (this.E.booleanValue() && this.r.b() == jr.a.CELL) {
                this.f = true;
                setAutoPlay(true);
            } else {
                this.f = false;
                setAutoPlay(false);
            }
        }
    }

    private void getServerParamInfo() {
        Map<String, String> e2 = e("videoUrl");
        if (e2 == null) {
            e2 = e("vastAd");
        }
        if (e2 != null) {
            this.D = a(e2, "autoplayWifi");
            this.E = a(e2, "autoplayCell");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        gp f = getAdController().f();
        f.g = true;
        f.f2735a = Integer.MIN_VALUE;
        getAdController().a(f);
        this.y = true;
        this.A = true;
        boolean z = this.A;
        gp f2 = getAdController().f();
        f2.n = z;
        getAdController().a(f2);
        this.m.setVisibility(0);
        this.h.setVisibility(0);
        o();
        this.f2732a.d.setVisibility(8);
        this.k.setVisibility(8);
        this.h.setClickable(false);
        this.j.setClickable(true);
        D();
        requestLayout();
    }

    @Override // com.flurry.sdk.gj
    public final boolean h() {
        return this.f;
    }

    private static boolean a(Context context, Intent intent) {
        if (context == null) {
            return false;
        }
        try {
            if (!(context instanceof Activity)) {
                intent.addFlags(276824064);
            }
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e2) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.gm, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        if (!this.w) {
            super.onConfigurationChanged(configuration);
            if (configuration.orientation == 2) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(9);
                setLayoutParams(layoutParams);
                requestLayout();
            }
        }
    }

    private String d(String str) {
        if (this.o != null) {
            for (de deVar : this.o.l().b.b()) {
                if (deVar.f2530a.equals(str)) {
                    return deVar.c;
                }
            }
        }
        return null;
    }

    private Map<String, String> e(String str) {
        if (this.o != null) {
            for (de deVar : this.o.l().b.b()) {
                if (deVar.f2530a.equals(str)) {
                    return deVar.f;
                }
            }
        }
        return null;
    }

    private static Boolean a(Map<String, String> map, String str) {
        if (map == null || !map.containsKey(str)) {
            return false;
        }
        return Boolean.valueOf(map.get(str));
    }

    @Override // com.flurry.sdk.gj
    public final void j() {
        if (!this.f && !this.A) {
            jy.a().a(new Runnable() { // from class: com.flurry.sdk.gk.4
                @Override // java.lang.Runnable
                public final void run() {
                    gk.this.m();
                    gk.this.requestLayout();
                }
            });
        }
    }
}
