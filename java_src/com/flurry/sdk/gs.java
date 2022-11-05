package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.flurry.sdk.gv;
import com.intentsoftware.addapptr.ad.NativeAd;
import java.util.List;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
class gs extends gv {
    private float A;
    private boolean B;
    private String C;
    private String D;
    private List<de> F;
    private fn G;
    private boolean I;
    private boolean J;

    /* renamed from: a  reason: collision with root package name */
    FrameLayout.LayoutParams f2743a;
    private LinearLayout d;
    private gv.a e;
    private Bitmap f;
    private Bitmap g;
    private Bitmap h;
    private Bitmap i;
    private ImageButton j;
    private ImageButton k;
    private ImageButton l;
    private ImageButton m;
    private Context n;
    private LinearLayout o;
    private LinearLayout p;
    private LinearLayout q;
    private RelativeLayout r;
    private TextView s;
    private TextView t;
    private TextView u;
    private ImageView v;
    private int w;
    private int x;
    private int y;
    private float z;
    private static final String b = gs.class.getSimpleName();
    private static int c = 60;
    private static String E = "Sponsored";
    private static final int H = lw.b(50);

    public gs(Context context, gv.a aVar, List<de> list, int i, boolean z) {
        super(context);
        this.w = 0;
        this.x = 0;
        this.y = -1;
        this.z = 15.0f;
        this.A = 17.5f;
        this.B = false;
        this.f2743a = new FrameLayout.LayoutParams(-1, -1);
        this.n = context;
        this.e = aVar;
        this.G = new fn();
        this.F = list;
        this.y = i;
        this.B = z;
        this.C = a(NativeAd.TITLE_TEXT_ASSET);
        this.D = a("source");
        this.I = fe.a(context);
        hi hiVar = new hi();
        hiVar.g();
        this.f = hiVar.f;
        this.g = hiVar.g;
        this.h = hiVar.h;
        this.i = hiVar.i;
    }

    @Override // android.widget.MediaController
    public void show() {
        super.show();
    }

    @Override // android.widget.MediaController
    public void show(int i) {
        super.show(i);
    }

    @Override // com.flurry.sdk.gv
    public final void a() {
        this.w = 0;
        this.x = 0;
    }

    @Override // android.widget.MediaController
    public final void setAnchorView(View view) {
        super.setAnchorView(view);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        removeAllViews();
        if (this.J) {
            b(q());
        } else if (this.n != null) {
            m();
            l();
            n();
            o();
            b(q());
            this.J = true;
        }
        LinearLayout linearLayout = this.d;
        if (linearLayout != null) {
            ((ViewGroup) linearLayout.getParent()).removeView(linearLayout);
        }
        addView(linearLayout, layoutParams);
    }

    private void l() {
        this.l = new ImageButton(this.n);
        this.l.setPadding(0, 0, 0, 0);
        this.l.setBackgroundColor(0);
        this.l.setImageBitmap(this.h);
        this.l.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.gs.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                gs.this.e.t();
                gs.this.B = false;
            }
        });
    }

    private void m() {
        this.m = new ImageButton(this.n);
        this.m.setPadding(0, 0, 0, 0);
        this.m.setBackgroundColor(0);
        this.m.setImageBitmap(this.i);
        this.m.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.gs.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                gs.this.e.s();
                gs.this.B = true;
            }
        });
    }

    private void n() {
        this.j = new ImageButton(this.n);
        this.j.setPadding(0, 0, 0, 0);
        this.j.setBackgroundColor(0);
        this.j.setImageBitmap(this.f);
        this.j.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.gs.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                gs.this.e.q();
            }
        });
    }

    private void o() {
        this.k = new ImageButton(this.n);
        this.k.setPadding(0, 0, 0, 0);
        this.k.setBackgroundColor(0);
        this.k.setImageBitmap(this.g);
        this.k.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.gs.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                gs.this.e.r();
            }
        });
    }

    @Override // com.flurry.sdk.gv
    public final void b(int i) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        ViewGroup viewGroup4;
        ViewGroup viewGroup5;
        if (this.n != null) {
            if (this.d != null) {
                this.d.removeAllViews();
                ViewGroup viewGroup6 = (ViewGroup) this.d.getParent();
                if (viewGroup6 != null) {
                    viewGroup6.removeView(this.d);
                }
            }
            this.d = new LinearLayout(this.n);
            this.d.setOrientation(1);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            this.d.setBackgroundColor(0);
            this.d.setLayoutParams(layoutParams);
            LinearLayout linearLayout = this.d;
            if (this.r != null && (viewGroup5 = (ViewGroup) this.r.getParent()) != null) {
                viewGroup5.removeView(this.r);
            }
            this.r = new RelativeLayout(this.n);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            RelativeLayout relativeLayout = this.r;
            if (this.m != null && (viewGroup4 = (ViewGroup) this.m.getParent()) != null) {
                viewGroup4.removeView(this.m);
            }
            if (this.m == null) {
                m();
            }
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.setMargins(c, 0, 0, 0);
            layoutParams3.addRule(7);
            this.m.setVisibility(0);
            relativeLayout.addView(this.m, layoutParams3);
            RelativeLayout relativeLayout2 = this.r;
            if (this.l != null && (viewGroup3 = (ViewGroup) this.l.getParent()) != null) {
                viewGroup3.removeView(this.l);
            }
            if (this.l == null) {
                l();
            }
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams4.setMargins(c, 0, 0, 0);
            layoutParams4.addRule(7);
            this.l.setVisibility(0);
            relativeLayout2.addView(this.l, layoutParams4);
            RelativeLayout relativeLayout3 = this.r;
            if (this.j != null && (viewGroup2 = (ViewGroup) this.j.getParent()) != null) {
                viewGroup2.removeView(this.j);
            }
            if (this.j == null) {
                n();
            }
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams5.addRule(14);
            layoutParams5.addRule(1, this.l.getId());
            this.j.setVisibility(0);
            relativeLayout3.addView(this.j, layoutParams5);
            RelativeLayout relativeLayout4 = this.r;
            if (this.k != null && (viewGroup = (ViewGroup) this.k.getParent()) != null) {
                viewGroup.removeView(this.k);
            }
            if (this.k == null) {
                o();
            }
            RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams6.addRule(14);
            layoutParams6.addRule(1, this.l.getId());
            this.k.setVisibility(0);
            relativeLayout4.addView(this.k, layoutParams6);
            if (this.B) {
                this.l.setVisibility(0);
                this.m.setVisibility(8);
            } else {
                this.l.setVisibility(8);
                this.m.setVisibility(0);
            }
            linearLayout.addView(this.r, layoutParams2);
            if (i == 2) {
                LinearLayout linearLayout2 = this.d;
                this.q = new LinearLayout(this.n);
                this.q.setOrientation(0);
                LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, -1);
                LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-2, -2);
                LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
                this.p = new LinearLayout(this.n);
                this.p.setOrientation(1);
                this.p.setBackgroundColor(0);
                LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-2, -2, 1.0f);
                layoutParams10.gravity = 3;
                layoutParams10.setMargins(c, 20, 10, 10);
                this.s = new TextView(this.n);
                this.s.setPadding(0, 10, 0, 0);
                this.s.setText(this.C);
                this.s.setTextSize(this.A);
                this.s.setTypeface(null, 1);
                this.s.setTextColor(-1);
                this.p.addView(this.s, layoutParams8);
                this.u = new TextView(this.n);
                this.u.setPadding(0, 10, 0, 0);
                this.u.setText(this.D);
                this.u.setTextColor(-1);
                this.u.setTextSize(this.z);
                this.p.addView(this.u, layoutParams8);
                this.q.addView(this.p, layoutParams10);
                this.o = new LinearLayout(this.n);
                this.o.setOrientation(0);
                this.o.setBackgroundColor(0);
                LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams11.gravity = 5;
                LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(80, 80);
                layoutParams12.setMargins(c, 10, 10, 10);
                this.v = new ImageView(this.n);
                this.v.setPadding(0, 0, 0, 0);
                String a2 = a("secHqBrandingLogo");
                if (a2 != null) {
                    this.G.a(this.v, this.y, a2);
                }
                this.o.addView(this.v, layoutParams12);
                layoutParams9.gravity = 16;
                this.t = new TextView(this.n);
                this.t.setPadding(0, 10, 0, 0);
                this.t.setText(E);
                this.t.setTextSize(this.z);
                this.t.setTextColor(-1);
                this.o.addView(this.t, layoutParams9);
                this.q.addView(this.o, layoutParams11);
                linearLayout2.addView(this.q, layoutParams7);
                p();
                addView(this.d, this.f2743a);
                requestLayout();
                return;
            }
            LinearLayout linearLayout3 = this.d;
            this.o = new LinearLayout(this.n);
            this.o.setOrientation(0);
            this.o.setBackgroundColor(0);
            LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(-1, -2);
            LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(80, 80);
            layoutParams14.setMargins(c, 10, 10, 10);
            this.v = new ImageView(this.n);
            this.v.setPadding(0, 0, 0, 0);
            String a3 = a("secHqBrandingLogo");
            if (a3 != null) {
                this.G.a(this.v, this.y, a3);
            }
            this.o.addView(this.v, layoutParams14);
            LinearLayout.LayoutParams layoutParams15 = new LinearLayout.LayoutParams(-2, -2);
            LinearLayout.LayoutParams layoutParams16 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams16.gravity = 16;
            this.t = new TextView(this.n);
            this.t.setPadding(0, 10, 0, 0);
            this.t.setText(E);
            this.t.setTextSize(this.z);
            this.t.setTextColor(-1);
            this.o.addView(this.t, layoutParams16);
            layoutParams13.setMargins(0, 15, 0, 0);
            linearLayout3.addView(this.o, layoutParams13);
            this.p = new LinearLayout(this.n);
            this.p.setOrientation(1);
            this.p.setBackgroundColor(0);
            LinearLayout.LayoutParams layoutParams17 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams17.setMargins(c, 20, 10, 10);
            this.s = new TextView(this.n);
            this.s.setPadding(0, 10, 0, 0);
            this.s.setText(this.C);
            this.s.setTextSize(this.A);
            this.s.setTypeface(null, 1);
            this.s.setTextColor(-1);
            this.p.addView(this.s, layoutParams15);
            this.u = new TextView(this.n);
            this.u.setPadding(0, 10, 0, 0);
            this.u.setText(this.D);
            this.u.setTextColor(-1);
            this.u.setTextSize(this.z);
            this.p.addView(this.u, layoutParams15);
            linearLayout3.addView(this.p, layoutParams17);
            p();
            addView(this.d, this.f2743a);
            requestLayout();
        }
    }

    private void p() {
        if (this.I) {
            this.l.setPadding(0, H, H, 0);
            this.m.setPadding(0, H, H, 0);
            this.j.setPadding(H, H, H, 0);
            this.k.setPadding(H, H, H, 0);
            return;
        }
        this.l.setPadding(0, 0, 0, 0);
        this.m.setPadding(0, 0, 0, 0);
        this.j.setPadding(0, 0, 0, 0);
        this.k.setPadding(0, 0, 0, 0);
    }

    private String a(String str) {
        if (this.F != null) {
            for (de deVar : this.F) {
                if (deVar.f2530a.equals(str)) {
                    return deVar.c;
                }
            }
        }
        return null;
    }

    @Override // com.flurry.sdk.gv
    public final void c() {
        if (this.j != null) {
            this.j.setVisibility(0);
        }
    }

    @Override // com.flurry.sdk.gv
    public final void d() {
        if (this.j != null) {
            this.j.setVisibility(8);
        }
    }

    @Override // com.flurry.sdk.gv
    public final void e() {
        if (this.k != null) {
            this.k.setVisibility(0);
        }
    }

    @Override // com.flurry.sdk.gv
    public final void f() {
        if (this.k != null) {
            this.k.setVisibility(8);
        }
    }

    @Override // com.flurry.sdk.gv
    public final void g() {
        if (this.l != null) {
            this.l.setVisibility(0);
        }
    }

    @Override // com.flurry.sdk.gv
    public final void h() {
        if (this.l != null) {
            this.l.setVisibility(8);
        }
    }

    @Override // com.flurry.sdk.gv
    public final void i() {
        if (this.m != null) {
            this.m.setVisibility(0);
        }
    }

    @Override // com.flurry.sdk.gv
    public final void j() {
        if (this.m != null) {
            this.m.setVisibility(8);
        }
    }

    @Override // com.flurry.sdk.gv
    public final void k() {
    }

    @Override // com.flurry.sdk.gv
    public final void a(int i) {
    }

    @Override // com.flurry.sdk.gv
    public final void a(float f, float f2) {
    }

    @Override // com.flurry.sdk.gv
    public final void b() {
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    private int q() {
        return getResources().getConfiguration().orientation;
    }
}
