package com.revmob;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import com.mdotm.android.constants.MdotMConstants;
import com.mopub.mobileads.resource.DrawableConstants;
import com.revmob.client.RevMobClient;
import com.revmob.internal.RMLog;
import com.revmob.internal.p;
import com.revmob.internal.s;
import com.revmob.internal.u;
import com.revmob.internal.w;
import java.io.IOException;
@TargetApi(8)
/* loaded from: classes3.dex */
public class FullscreenActivity extends Activity implements SensorEventListener {
    private static Boolean h;
    private int A;
    private AudioManager B;
    private AudioManager.OnAudioFocusChangeListener C;
    private double D;
    private double E;
    private ImageView F;
    private ImageView G;
    private TextView H;
    private TextView I;
    private Boolean J;
    private int K;
    private int L;
    private int M;
    private int N;
    private int O;
    private RelativeLayout.LayoutParams P;
    private RelativeLayout.LayoutParams Q;
    private RelativeLayout.LayoutParams R;
    private double S;
    private int T;
    private double U;
    private double V;
    private double W;
    private int X;

    /* renamed from: a  reason: collision with root package name */
    public com.revmob.ads.interstitial.b.g f4732a;
    public com.revmob.ads.interstitial.a.b b;
    public RevMobAdsListener c;
    public RelativeLayout d;
    public boolean e;
    public Boolean f;
    public boolean g;
    private com.revmob.ads.interstitial.a i;
    private VideoView j;
    private ProgressBar k;
    private ImageView l;
    private RelativeLayout m;
    private RelativeLayout.LayoutParams n;
    private RelativeLayout.LayoutParams o;
    private RelativeLayout.LayoutParams p;
    private ImageView r;
    private SensorManager u;
    private Sensor v;
    private int w;
    private int x;
    private int y;
    private int z;
    private DisplayMetrics q = new DisplayMetrics();
    private boolean s = true;
    private boolean t = false;

    public FullscreenActivity() {
        new Handler();
        this.w = 0;
        this.f = false;
        this.J = false;
        this.U = 0.0d;
        this.V = 0.0d;
        this.W = 0.65d;
        this.X = 0;
        this.g = false;
    }

    public static Boolean a(Activity activity) {
        if (h == null) {
            h = Boolean.valueOf(com.revmob.a.a.a(activity, FullscreenActivity.class));
        }
        return h;
    }

    private void a(boolean z) {
        if (z) {
            this.o = new RelativeLayout.LayoutParams(this.A, this.A);
            if (this.x > this.y) {
                if (this.E == 0.0d || this.D == 0.0d) {
                    this.n = new RelativeLayout.LayoutParams((int) (this.W * this.y), (int) (this.W * this.x));
                } else if (this.E > this.D) {
                    this.n = new RelativeLayout.LayoutParams((int) (this.W * this.y), (int) (this.V * this.W * this.y));
                } else {
                    this.n = new RelativeLayout.LayoutParams((int) (this.W * this.y), (int) (this.U * this.W * this.y));
                }
                this.n.setMargins((this.y / 2) - (this.n.width / 2), (this.x / 2) - (this.n.height / 2), 0, 0);
                if (this.s) {
                    ((View) this.f4732a).setLayoutParams(new RelativeLayout.LayoutParams(this.n.width, this.n.height));
                }
                this.o.leftMargin = ((this.y + this.n.width) - this.A) / 2;
                this.o.topMargin = ((this.x - this.n.height) - this.A) / 2;
                setContentView(this.d, new RelativeLayout.LayoutParams(-1, -1));
            } else {
                if (this.E == 0.0d || this.D == 0.0d) {
                    this.n = new RelativeLayout.LayoutParams((int) (this.W * this.y), (int) (this.W * this.x));
                } else if (this.E > this.D) {
                    this.n = new RelativeLayout.LayoutParams((int) (this.W * this.x), (int) (this.V * this.W * this.x));
                } else {
                    this.n = new RelativeLayout.LayoutParams((int) (this.W * this.x), (int) (this.U * this.W * this.x));
                }
                this.n.setMargins((this.x / 2) - (this.n.width / 2), (this.y / 2) - (this.n.height / 2), 0, 0);
                if (this.s) {
                    ((View) this.f4732a).setLayoutParams(new RelativeLayout.LayoutParams(this.n.width, this.n.height));
                }
                this.o.leftMargin = ((this.x + this.n.width) - this.A) / 2;
                this.o.topMargin = ((this.y - this.n.height) - this.A) / 2;
                setContentView(this.d, new RelativeLayout.LayoutParams(-1, -1));
            }
            this.m.setLayoutParams(this.n);
            this.l.setLayoutParams(this.o);
            return;
        }
        this.o = new RelativeLayout.LayoutParams(this.A, this.A);
        if (this.x < this.y) {
            if (this.E == 0.0d || this.D == 0.0d) {
                this.n = new RelativeLayout.LayoutParams((int) (this.W * this.y), (int) (this.W * this.x));
            } else if (this.E > this.D) {
                this.n = new RelativeLayout.LayoutParams((int) (this.W * this.y), (int) (this.U * this.W * this.y));
            } else {
                this.n = new RelativeLayout.LayoutParams((int) (this.W * this.y), (int) (this.V * this.W * this.y));
            }
            this.n.setMargins((this.y / 2) - (this.n.width / 2), (this.x / 2) - (this.n.height / 2), 0, 0);
            if (this.s) {
                ((View) this.f4732a).setLayoutParams(new RelativeLayout.LayoutParams(this.n.width, this.n.height));
            }
            this.o.leftMargin = ((this.y + this.n.width) - this.A) / 2;
            this.o.topMargin = ((this.x - this.n.height) - this.A) / 2;
            setContentView(this.d, new RelativeLayout.LayoutParams(-1, -1));
        } else {
            if (this.E == 0.0d || this.D == 0.0d) {
                this.n = new RelativeLayout.LayoutParams((int) (this.W * this.y), (int) (this.W * this.x));
            } else if (this.E > this.D) {
                this.n = new RelativeLayout.LayoutParams((int) (this.W * this.x), (int) (this.U * this.W * this.x));
            } else {
                this.n = new RelativeLayout.LayoutParams((int) (this.W * this.x), (int) (this.V * this.W * this.x));
            }
            this.n.setMargins((this.x / 2) - (this.n.width / 2), (this.y / 2) - (this.n.height / 2), 0, 0);
            if (this.s) {
                ((View) this.f4732a).setLayoutParams(new RelativeLayout.LayoutParams(this.n.width, this.n.height));
            }
            this.o.leftMargin = ((this.x + this.n.width) - this.A) / 2;
            this.o.topMargin = ((this.y - this.n.height) - this.A) / 2;
            setContentView(this.d, new RelativeLayout.LayoutParams(-1, -1));
        }
        this.m.setLayoutParams(this.n);
        this.l.setLayoutParams(this.o);
    }

    private void b(boolean z) {
        if (z) {
            if (this.x > this.y) {
                this.K = (int) (this.b.z() / this.S);
                this.L = (int) (this.b.y() / this.S);
                this.P = new RelativeLayout.LayoutParams(this.K, this.L);
                this.P.addRule(13);
                this.F.setLayoutParams(this.P);
                this.o.rightMargin = ((this.y - this.K) - this.A) / 2;
                this.o.topMargin = ((this.x - this.L) - this.A) / 2;
                this.l.setLayoutParams(this.o);
                this.O = ((this.x - this.L) / 2) + ((int) (this.L * 0.2d));
                this.Q = new RelativeLayout.LayoutParams((int) (this.K * 0.8d), (int) (this.L * 0.2d));
                this.Q.topMargin = this.O;
                this.Q.addRule(14);
                this.H.setLayoutParams(this.Q);
                return;
            }
            this.K = (int) (this.b.z() / this.S);
            this.L = (int) (this.b.y() / this.S);
            this.P = new RelativeLayout.LayoutParams(this.K, this.L);
            this.P.addRule(13);
            this.F.setLayoutParams(this.P);
            this.o.rightMargin = ((this.x - this.K) - this.A) / 2;
            this.o.topMargin = ((this.y - this.L) - this.A) / 2;
            this.l.setLayoutParams(this.o);
            this.O = ((this.y - this.L) / 2) + ((int) (this.L * 0.2d));
            this.Q = new RelativeLayout.LayoutParams((int) (this.K * 0.8d), (int) (this.L * 0.2d));
            this.Q.topMargin = this.O;
            this.Q.addRule(14);
            this.H.setLayoutParams(this.Q);
        } else if (this.x > this.y) {
            this.L = (int) (this.b.z() / this.S);
            this.K = (int) (this.b.y() / this.S);
            this.P = new RelativeLayout.LayoutParams(this.K, this.L);
            this.P.addRule(13);
            this.F.setLayoutParams(this.P);
            this.o.rightMargin = ((this.x - this.K) - this.A) / 2;
            this.o.topMargin = ((this.y - this.L) - this.A) / 2;
            this.l.setLayoutParams(this.o);
            this.O = ((this.y - this.L) / 2) + ((int) (this.L * 0.05d));
            this.Q = new RelativeLayout.LayoutParams((int) (this.K * 0.8d), (int) (0.25d * this.L));
            this.Q.topMargin = this.O;
            this.Q.addRule(14);
            this.H.setLayoutParams(this.Q);
        } else {
            this.L = (int) (this.b.z() / this.S);
            this.K = (int) (this.b.y() / this.S);
            this.P = new RelativeLayout.LayoutParams(this.K, this.L);
            this.P.addRule(13);
            this.F.setLayoutParams(this.P);
            this.o.rightMargin = ((this.y - this.K) - this.A) / 2;
            this.o.topMargin = ((this.x - this.L) - this.A) / 2;
            this.l.setLayoutParams(this.o);
            this.O = ((this.x - this.L) / 2) + ((int) (this.L * 0.05d));
            this.Q = new RelativeLayout.LayoutParams((int) (this.K * 0.8d), (int) (0.25d * this.L));
            this.Q.topMargin = this.O;
            this.Q.addRule(14);
            this.H.setLayoutParams(this.Q);
        }
    }

    private void c(boolean z) {
        if (z) {
            if (this.x > this.y) {
                this.O = ((this.x - this.N) / 2) + ((int) (this.N * 0.2d));
                this.Q = new RelativeLayout.LayoutParams((int) (this.M * 0.8d), (int) (this.N * 0.3d));
                this.Q.topMargin = this.O;
                this.Q.addRule(14);
                this.I.setLayoutParams(this.Q);
                return;
            }
            this.O = ((this.y - this.N) / 2) + ((int) (this.N * 0.2d));
            this.Q = new RelativeLayout.LayoutParams((int) (this.M * 0.8d), (int) (this.N * 0.3d));
            this.Q.topMargin = this.O;
            this.Q.addRule(14);
            this.I.setLayoutParams(this.Q);
        } else if (this.x > this.y) {
            this.O = ((this.y - this.N) / 2) + ((int) (this.N * 0.2d));
            this.Q = new RelativeLayout.LayoutParams((int) (this.M * 0.8d), (int) (this.N * 0.3d));
            this.Q.topMargin = this.O;
            this.Q.addRule(14);
            this.I.setLayoutParams(this.Q);
        } else {
            this.O = ((this.x - this.N) / 2) + ((int) (this.N * 0.2d));
            this.Q = new RelativeLayout.LayoutParams((int) (this.M * 0.8d), (int) (this.N * 0.3d));
            this.Q.topMargin = this.O;
            this.Q.addRule(14);
            this.I.setLayoutParams(this.Q);
        }
    }

    private void i() {
        ((View) this.f4732a).setAnimation(this.b.i());
        this.d = new RelativeLayout(this);
        this.d.setBackgroundColor(-587202560);
        if (this.b.Q() != 1.0d) {
            if (this.b.b(this.z) != null) {
                this.d.setGravity(48);
                this.r = new ImageView(this);
                this.r.setImageBitmap(this.b.b(this.z));
                this.p = new RelativeLayout.LayoutParams(-1, -1);
                this.d.addView(this.r, this.p);
                this.r.setAnimation(this.b.i());
                setContentView(this.d, new RelativeLayout.LayoutParams(-1, -1));
                ((View) this.f4732a).bringToFront();
            }
            this.D = this.b.x();
            this.E = this.b.w();
            this.U = this.D / this.E;
            this.V = this.E / this.D;
            setContentView(this.d, new RelativeLayout.LayoutParams(-1, -1));
            this.m = new RelativeLayout(this);
            if (this.E == 0.0d || this.D == 0.0d) {
                this.n = new RelativeLayout.LayoutParams((int) (this.W * this.x), (int) (this.W * this.y));
            } else if (this.z == 2) {
                if (this.E < this.D) {
                    this.n = new RelativeLayout.LayoutParams((int) (this.W * this.x), (int) (this.V * this.W * this.x));
                } else {
                    this.n = new RelativeLayout.LayoutParams((int) (this.W * this.x), (int) (this.U * this.W * this.x));
                }
            } else if (this.E < this.D) {
                this.n = new RelativeLayout.LayoutParams((int) (this.W * this.x), (int) (this.U * this.W * this.x));
            } else {
                this.n = new RelativeLayout.LayoutParams((int) (this.W * this.x), (int) (this.V * this.W * this.x));
            }
            this.n.setMargins((this.x / 2) - (this.n.width / 2), (this.y / 2) - (this.n.height / 2), 0, 0);
            this.m.setLayoutParams(this.n);
            this.m.addView((View) this.f4732a);
            if (this.s) {
                ((View) this.f4732a).setLayoutParams(new RelativeLayout.LayoutParams(this.n.width, this.n.height));
            }
            this.d.addView(this.m);
        } else {
            this.d.setGravity(48);
            this.d.addView((View) this.f4732a, new RelativeLayout.LayoutParams(-1, -1));
            setContentView(this.d, new RelativeLayout.LayoutParams(-1, -1));
            l();
        }
        l();
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.d.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        if (this.F != null) {
            this.d.removeView(this.F);
        }
        if (this.H != null) {
            this.d.removeView(this.H);
        }
        this.i = new com.revmob.ads.interstitial.a(this, this.b, new com.revmob.ads.interstitial.b.a(this), this);
        this.d.addView(this.i, new RelativeLayout.LayoutParams(-1, -1));
        this.j = this.i.b;
    }

    private void k() {
        this.l = new ImageView(this);
        this.l.setImageDrawable(com.revmob.ads.a.g.a());
        this.l.setOnClickListener(new f(this));
        this.A = com.revmob.a.a.a(this, 40);
        this.o = new RelativeLayout.LayoutParams(this.A, this.A);
        if (this.b.Q() != 1.0d) {
            this.z = getResources().getConfiguration().orientation;
            if (this.n != null) {
                this.o.leftMargin = ((this.x + this.n.width) - this.A) / 2;
                this.o.topMargin = ((this.y - this.n.height) - this.A) / 2;
            } else {
                int a2 = com.revmob.a.a.a(this, 20);
                this.o.rightMargin = a2;
                this.o.topMargin = a2;
                this.o.addRule(11);
                this.o.addRule(6);
            }
        } else {
            int a3 = com.revmob.a.a.a(this, 20);
            this.o.rightMargin = a3;
            this.o.topMargin = a3;
            this.o.addRule(11);
            this.o.addRule(6);
        }
        this.d.addView(this.l, this.o);
    }

    private void l() {
        if (this.b.l() == null || this.b.l().length() == 0) {
            return;
        }
        try {
            new p().a(this, this.b.l());
        } catch (IOException e) {
            if (this.b != null) {
                u.a(e, this.b.d, w.c, null, "playSoundOnShow");
            } else {
                u.a(e, null, w.c, null, "playSoundOnShow");
            }
            e.printStackTrace();
        }
    }

    public final void a() {
        boolean z = false;
        if (this.b.C() != null || this.b.D() != null) {
            z = true;
        }
        if (this.b.E() != null) {
            this.J = true;
        }
        this.d = new RelativeLayout(this);
        setContentView(this.d, new RelativeLayout.LayoutParams(-1, -1));
        if (!z) {
            j();
            return;
        }
        this.d.setBackgroundColor(-587202560);
        if (this.x < this.y) {
            this.L = (int) (this.b.y() / this.S);
            this.K = (int) (this.b.z() / this.S);
            this.O = ((this.y - this.L) / 2) + ((int) (0.17d * this.L));
        } else {
            this.L = (int) (this.b.z() / this.S);
            this.K = (int) (this.b.y() / this.S);
            this.O = ((this.y - this.L) / 2) + ((int) (0.05d * this.L));
        }
        this.P = new RelativeLayout.LayoutParams(this.K, this.L);
        this.P.addRule(13);
        this.Q = new RelativeLayout.LayoutParams((int) (0.8d * this.K), (int) (0.25d * this.L));
        this.Q.topMargin = this.O;
        this.Q.addRule(14);
        RelativeLayout relativeLayout = this.d;
        this.F = new ImageView(this);
        this.z = getResources().getConfiguration().orientation;
        if (this.z == 2) {
            this.F.setImageBitmap(this.b.D());
        } else {
            this.F.setImageBitmap(this.b.C());
        }
        this.F.setOnClickListener(new c(this));
        relativeLayout.addView(this.F, this.P);
        RelativeLayout relativeLayout2 = this.d;
        String F = this.b.F();
        this.H = new TextView(this);
        this.H.setText(F);
        int H = this.b.H();
        int I = this.b.I();
        int J = this.b.J();
        this.H.setTextSize((int) (com.revmob.a.a.a(this, 12) * this.S));
        this.H.setTextColor(Color.argb(this.b.K() * 255, H, I, J));
        this.H.setGravity(17);
        relativeLayout2.addView(this.H, this.Q);
        k();
        this.o.rightMargin = ((this.x - this.K) - this.A) / 2;
        this.o.topMargin = ((this.y - this.L) - this.A) / 2;
        this.l.setLayoutParams(this.o);
        this.c.onRevMobRewardedPreRollDisplayed();
    }

    public final void b() {
        this.d.removeAllViews();
        this.i.g();
        if (this.J.booleanValue()) {
            this.F = null;
            setRequestedOrientation(-1);
            this.d.setBackgroundColor(-587202560);
            this.N = (int) (this.b.A() / this.S);
            this.M = (int) (this.b.B() / this.S);
            int i = this.x < this.y ? ((this.x - this.N) / 2) + ((int) (this.N * 0.2d)) : ((this.y - this.N) / 2) + ((int) (this.N * 0.2d));
            this.R = new RelativeLayout.LayoutParams(this.M, this.N);
            this.R.addRule(13);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (0.8d * this.M), (int) (0.3d * this.N));
            layoutParams.topMargin = i;
            layoutParams.addRule(14);
            RelativeLayout relativeLayout = this.d;
            this.G = new ImageView(this);
            this.G.setImageBitmap(this.b.E());
            this.G.setOnClickListener(new d(this));
            relativeLayout.addView(this.G, this.R);
            RelativeLayout relativeLayout2 = this.d;
            String G = this.b.G();
            this.I = new TextView(this);
            this.I.setText(G);
            int L = this.b.L();
            int M = this.b.M();
            int N = this.b.N();
            this.I.setTextSize((int) (com.revmob.a.a.a(this, 8) * this.S));
            this.I.setTextColor(Color.argb(this.b.O() * 255, L, M, N));
            this.I.setGravity(17);
            relativeLayout2.addView(this.I, layoutParams);
        }
    }

    public final void c() {
        this.B.abandonAudioFocus(this.C);
    }

    public final void d() {
        if (this.k == null) {
            this.k = new ProgressBar(this);
            this.k.setIndeterminate(true);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13, -1);
            this.d.addView(this.k, layoutParams);
        }
    }

    public final void e() {
        if (this.k != null) {
            this.d.removeView(this.k);
        }
    }

    public final void f() {
        if (this.b.o() != null) {
            this.d.removeView(this.j);
            this.d.removeAllViews();
            finish();
            return;
        }
        Animation j = this.b.j();
        ((View) this.f4732a).setAnimation(j);
        j.setAnimationListener(new g(this));
        ((View) this.f4732a).startAnimation(j);
    }

    @Override // android.app.Activity
    public void finish() {
        if (this.i != null) {
            c();
            this.i = null;
        }
        super.finish();
    }

    public final int g() {
        return this.w;
    }

    public final void h() {
        this.w = 0;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f.booleanValue() || this.g) {
            return;
        }
        if (this.c != null) {
            this.c.onRevMobAdDismissed();
        }
        finish();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int i = getResources().getConfiguration().orientation;
        if (this.b.o() == null) {
            if (this.b.b(i) != null && this.r != null) {
                this.r.setImageBitmap(this.b.b(i));
                this.r.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            }
            this.f4732a.e();
            if (this.b.Q() == 1.0d) {
                return;
            }
            switch (i) {
                case 1:
                    a(true);
                    return;
                case 2:
                    a(false);
                    return;
                default:
                    return;
            }
        } else if (this.F == null) {
            if (this.G == null) {
                return;
            }
            switch (getResources().getConfiguration().orientation) {
                case 1:
                    c(true);
                    return;
                case 2:
                    c(false);
                    return;
                default:
                    return;
            }
        } else {
            if (this.F != null) {
                if (getResources().getConfiguration().orientation == 1) {
                    this.F.setImageBitmap(this.b.C());
                } else {
                    this.F.setImageBitmap(this.b.D());
                }
            }
            switch (getResources().getConfiguration().orientation) {
                case 1:
                    b(true);
                    return;
                case 2:
                    b(false);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.w = bundle.getInt("videoPosition");
        } else {
            this.w = 0;
        }
        if (Integer.valueOf(Build.VERSION.SDK).intValue() <= 14) {
            requestWindowFeature(1);
            getWindow().addFlags(1024);
        } else {
            requestWindowFeature(1);
            getWindow().addFlags(1024);
        }
        this.x = getWindowManager().getDefaultDisplay().getWidth();
        this.y = getWindowManager().getDefaultDisplay().getHeight();
        this.z = getResources().getConfiguration().orientation;
        getWindowManager().getDefaultDisplay().getMetrics(this.q);
        this.T = this.q.densityDpi;
        this.S = 1.0d;
        if (this.T != 0) {
            this.S = 320.0d / this.T;
        }
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("com.revmob.ads.fullscreen.fetchId");
        this.e = intent.getBooleanExtra("followAppOrientation", false);
        this.f = Boolean.valueOf(intent.getBooleanExtra(MdotMConstants.IS_REWARDED, false));
        try {
            com.revmob.ads.interstitial.a.b a2 = getLastNonConfigurationInstance() != null ? (com.revmob.ads.interstitial.a.b) getLastNonConfigurationInstance() : stringExtra != null ? com.revmob.ads.interstitial.a.b.a(stringExtra) : null;
            if (a2 == null) {
                this.f4732a = new com.revmob.ads.interstitial.b.i(this, intent.getStringExtra("marketURL"), null, new e(this));
                i();
                d();
                return;
            }
            this.b = a2;
            this.W = this.b.Q() != 0.0d ? this.b.Q() : 1.0d;
            this.c = this.b.e();
            this.X = this.b.R();
            if (this.X == 1) {
                if (this.z == 2) {
                    setRequestedOrientation(6);
                } else {
                    setRequestedOrientation(7);
                }
            }
            if (this.b.o() != null) {
                this.C = new a();
                this.B = (AudioManager) getSystemService("audio");
                int requestAudioFocus = this.B.requestAudioFocus(this.C, 3, 1);
                if (requestAudioFocus == 1 || requestAudioFocus != 0) {
                    return;
                }
                finish();
                return;
            }
            RMLog.i("Fullscreen loaded - " + this.b.d);
            if (this.b.f()) {
                this.f4732a = new com.revmob.ads.interstitial.b.i(this, this.b.b(), this.b.a(), new s(this.c, new com.revmob.ads.interstitial.b.h(this), this.b.f));
            } else if (this.b.g()) {
                this.f4732a = new com.revmob.ads.interstitial.b.i(this, this.b.c(), this.b.d(), new s(this.c, new com.revmob.ads.interstitial.b.d(this), this.b.f));
            } else {
                if (RevMobClient.a().b() == RevMobParallaxMode.DEFAULT) {
                    this.t = true;
                }
                this.s = false;
                this.f4732a = new com.revmob.ads.interstitial.b.e(this, this.b, new com.revmob.ads.interstitial.b.a(this), this.t, this.b.k());
            }
            i();
        } catch (RuntimeException e) {
            RMLog.e("Unexpected error on create Fullscreen Ad.", e);
            if (this.c != null) {
                this.c.onRevMobAdNotReceived("Unexpected error on create Fullscreen Ad.");
            }
            if (this.b != null) {
                u.a(e, this.b.d, w.c, null, "onCreate");
            } else {
                u.a(e, null, w.c, null, "onCreate");
            }
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        com.revmob.ads.interstitial.a.b.b(this.b);
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && !this.f.booleanValue() && !this.g) {
            if (this.c != null) {
                this.c.onRevMobAdDismissed();
            }
            finish();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.u != null) {
            this.u.unregisterListener(this);
        }
        if (this.i == null || this.i.b == null || !this.i.b.isPlaying()) {
            return;
        }
        this.w = this.i.b.getCurrentPosition();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.b != null && this.t) {
            this.u = (SensorManager) getSystemService("sensor");
            this.v = this.u.getDefaultSensor(3);
            if (this.v != null) {
                this.u.registerListener(this, this.v, 3);
            }
        }
        if (this.i == null) {
            if (this.b.o() == null || this.i != null) {
                return;
            }
            runOnUiThread(new b(this));
        } else if (this.i.b != null && this.i.b.isPlaying()) {
            this.i.d();
            this.i.b.seekTo(this.w);
            this.i.b.start();
        } else if (this.i.b == null || this.i.b.isPlaying()) {
        } else {
            this.i.d();
            this.i.b.seekTo(this.w);
            this.i.b.start();
        }
    }

    @Override // android.app.Activity
    public Object onRetainNonConfigurationInstance() {
        return this.b;
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.i != null) {
            bundle.putInt("videoPosition", this.w);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.b == null || !this.t || sensorEvent.sensor.getType() != 3 || this.b.f() || this.b.g()) {
            return;
        }
        ((com.revmob.ads.interstitial.b.e) this.f4732a).a((int) sensorEvent.values[0], (int) sensorEvent.values[1]);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (this.i != null) {
            this.i.d();
            if (this.i.b == null) {
                return;
            }
            this.i.b.stopPlayback();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z || this.i == null || this.i.b == null || this.w <= 0 || this.i.b.isPlaying()) {
            return;
        }
        this.i.d();
        this.i.b.seekTo(this.w);
        this.i.b.resume();
    }
}
