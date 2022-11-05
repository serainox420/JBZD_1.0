package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.be;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.o;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: ToolbarWidgetWrapper.java */
@RestrictTo
/* loaded from: classes.dex */
public class aw implements u {

    /* renamed from: a  reason: collision with root package name */
    Toolbar f883a;
    CharSequence b;
    Window.Callback c;
    boolean d;
    private int e;
    private View f;
    private View g;
    private Drawable h;
    private Drawable i;
    private Drawable j;
    private boolean k;
    private CharSequence l;
    private CharSequence m;
    private ActionMenuPresenter n;
    private int o;
    private int p;
    private Drawable q;

    public aw(Toolbar toolbar, boolean z) {
        this(toolbar, z, R.string.abc_action_bar_up_description, R.drawable.abc_ic_ab_back_material);
    }

    public aw(Toolbar toolbar, boolean z, int i, int i2) {
        this.o = 0;
        this.p = 0;
        this.f883a = toolbar;
        this.b = toolbar.getTitle();
        this.l = toolbar.getSubtitle();
        this.k = this.b != null;
        this.j = toolbar.getNavigationIcon();
        av a2 = av.a(toolbar.getContext(), null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        this.q = a2.a(R.styleable.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence c = a2.c(R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(c)) {
                b(c);
            }
            CharSequence c2 = a2.c(R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(c2)) {
                c(c2);
            }
            Drawable a3 = a2.a(R.styleable.ActionBar_logo);
            if (a3 != null) {
                c(a3);
            }
            Drawable a4 = a2.a(R.styleable.ActionBar_icon);
            if (a4 != null) {
                a(a4);
            }
            if (this.j == null && this.q != null) {
                b(this.q);
            }
            c(a2.a(R.styleable.ActionBar_displayOptions, 0));
            int g = a2.g(R.styleable.ActionBar_customNavigationLayout, 0);
            if (g != 0) {
                a(LayoutInflater.from(this.f883a.getContext()).inflate(g, (ViewGroup) this.f883a, false));
                c(this.e | 16);
            }
            int f = a2.f(R.styleable.ActionBar_height, 0);
            if (f > 0) {
                ViewGroup.LayoutParams layoutParams = this.f883a.getLayoutParams();
                layoutParams.height = f;
                this.f883a.setLayoutParams(layoutParams);
            }
            int d = a2.d(R.styleable.ActionBar_contentInsetStart, -1);
            int d2 = a2.d(R.styleable.ActionBar_contentInsetEnd, -1);
            if (d >= 0 || d2 >= 0) {
                this.f883a.a(Math.max(d, 0), Math.max(d2, 0));
            }
            int g2 = a2.g(R.styleable.ActionBar_titleTextStyle, 0);
            if (g2 != 0) {
                this.f883a.a(this.f883a.getContext(), g2);
            }
            int g3 = a2.g(R.styleable.ActionBar_subtitleTextStyle, 0);
            if (g3 != 0) {
                this.f883a.b(this.f883a.getContext(), g3);
            }
            int g4 = a2.g(R.styleable.ActionBar_popupTheme, 0);
            if (g4 != 0) {
                this.f883a.setPopupTheme(g4);
            }
        } else {
            this.e = s();
        }
        a2.a();
        g(i);
        this.m = this.f883a.getNavigationContentDescription();
        this.f883a.setNavigationOnClickListener(new View.OnClickListener() { // from class: android.support.v7.widget.aw.1

            /* renamed from: a  reason: collision with root package name */
            final android.support.v7.view.menu.a f884a;

            {
                this.f884a = new android.support.v7.view.menu.a(aw.this.f883a.getContext(), 0, 16908332, 0, 0, aw.this.b);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (aw.this.c != null && aw.this.d) {
                    aw.this.c.onMenuItemSelected(0, this.f884a);
                }
            }
        });
    }

    public void g(int i) {
        if (i != this.p) {
            this.p = i;
            if (TextUtils.isEmpty(this.f883a.getNavigationContentDescription())) {
                e(this.p);
            }
        }
    }

    private int s() {
        if (this.f883a.getNavigationIcon() == null) {
            return 11;
        }
        this.q = this.f883a.getNavigationIcon();
        return 15;
    }

    @Override // android.support.v7.widget.u
    public ViewGroup a() {
        return this.f883a;
    }

    @Override // android.support.v7.widget.u
    public Context b() {
        return this.f883a.getContext();
    }

    @Override // android.support.v7.widget.u
    public boolean c() {
        return this.f883a.g();
    }

    @Override // android.support.v7.widget.u
    public void d() {
        this.f883a.h();
    }

    @Override // android.support.v7.widget.u
    public void a(Window.Callback callback) {
        this.c = callback;
    }

    @Override // android.support.v7.widget.u
    public void a(CharSequence charSequence) {
        if (!this.k) {
            e(charSequence);
        }
    }

    @Override // android.support.v7.widget.u
    public CharSequence e() {
        return this.f883a.getTitle();
    }

    @Override // android.support.v7.widget.u
    public void b(CharSequence charSequence) {
        this.k = true;
        e(charSequence);
    }

    private void e(CharSequence charSequence) {
        this.b = charSequence;
        if ((this.e & 8) != 0) {
            this.f883a.setTitle(charSequence);
        }
    }

    public void c(CharSequence charSequence) {
        this.l = charSequence;
        if ((this.e & 8) != 0) {
            this.f883a.setSubtitle(charSequence);
        }
    }

    @Override // android.support.v7.widget.u
    public void f() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // android.support.v7.widget.u
    public void g() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // android.support.v7.widget.u
    public void a(int i) {
        a(i != 0 ? android.support.v7.a.a.b.b(b(), i) : null);
    }

    @Override // android.support.v7.widget.u
    public void a(Drawable drawable) {
        this.h = drawable;
        t();
    }

    @Override // android.support.v7.widget.u
    public void b(int i) {
        c(i != 0 ? android.support.v7.a.a.b.b(b(), i) : null);
    }

    public void c(Drawable drawable) {
        this.i = drawable;
        t();
    }

    private void t() {
        Drawable drawable = null;
        if ((this.e & 2) != 0) {
            if ((this.e & 1) != 0) {
                drawable = this.i != null ? this.i : this.h;
            } else {
                drawable = this.h;
            }
        }
        this.f883a.setLogo(drawable);
    }

    @Override // android.support.v7.widget.u
    public boolean h() {
        return this.f883a.a();
    }

    @Override // android.support.v7.widget.u
    public boolean i() {
        return this.f883a.b();
    }

    @Override // android.support.v7.widget.u
    public boolean j() {
        return this.f883a.c();
    }

    @Override // android.support.v7.widget.u
    public boolean k() {
        return this.f883a.d();
    }

    @Override // android.support.v7.widget.u
    public boolean l() {
        return this.f883a.e();
    }

    @Override // android.support.v7.widget.u
    public void m() {
        this.d = true;
    }

    @Override // android.support.v7.widget.u
    public void a(Menu menu, o.a aVar) {
        if (this.n == null) {
            this.n = new ActionMenuPresenter(this.f883a.getContext());
            this.n.a(R.id.action_menu_presenter);
        }
        this.n.a(aVar);
        this.f883a.a((android.support.v7.view.menu.h) menu, this.n);
    }

    @Override // android.support.v7.widget.u
    public void n() {
        this.f883a.f();
    }

    @Override // android.support.v7.widget.u
    public int o() {
        return this.e;
    }

    @Override // android.support.v7.widget.u
    public void c(int i) {
        int i2 = this.e ^ i;
        this.e = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    v();
                }
                u();
            }
            if ((i2 & 3) != 0) {
                t();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f883a.setTitle(this.b);
                    this.f883a.setSubtitle(this.l);
                } else {
                    this.f883a.setTitle((CharSequence) null);
                    this.f883a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) != 0 && this.g != null) {
                if ((i & 16) != 0) {
                    this.f883a.addView(this.g);
                } else {
                    this.f883a.removeView(this.g);
                }
            }
        }
    }

    @Override // android.support.v7.widget.u
    public void a(an anVar) {
        if (this.f != null && this.f.getParent() == this.f883a) {
            this.f883a.removeView(this.f);
        }
        this.f = anVar;
        if (anVar != null && this.o == 2) {
            this.f883a.addView(this.f, 0);
            Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.f530a = 8388691;
            anVar.setAllowCollapse(true);
        }
    }

    @Override // android.support.v7.widget.u
    public void a(boolean z) {
        this.f883a.setCollapsible(z);
    }

    @Override // android.support.v7.widget.u
    public void b(boolean z) {
    }

    @Override // android.support.v7.widget.u
    public int p() {
        return this.o;
    }

    public void a(View view) {
        if (this.g != null && (this.e & 16) != 0) {
            this.f883a.removeView(this.g);
        }
        this.g = view;
        if (view != null && (this.e & 16) != 0) {
            this.f883a.addView(this.g);
        }
    }

    @Override // android.support.v7.widget.u
    public android.support.v4.view.az a(final int i, long j) {
        return android.support.v4.view.ai.r(this.f883a).a(i == 0 ? 1.0f : BitmapDescriptorFactory.HUE_RED).a(j).a(new be() { // from class: android.support.v7.widget.aw.2
            private boolean c = false;

            @Override // android.support.v4.view.be, android.support.v4.view.bd
            public void a(View view) {
                aw.this.f883a.setVisibility(0);
            }

            @Override // android.support.v4.view.be, android.support.v4.view.bd
            public void b(View view) {
                if (!this.c) {
                    aw.this.f883a.setVisibility(i);
                }
            }

            @Override // android.support.v4.view.be, android.support.v4.view.bd
            public void c(View view) {
                this.c = true;
            }
        });
    }

    @Override // android.support.v7.widget.u
    public void b(Drawable drawable) {
        this.j = drawable;
        u();
    }

    @Override // android.support.v7.widget.u
    public void d(int i) {
        b(i != 0 ? android.support.v7.a.a.b.b(b(), i) : null);
    }

    private void u() {
        if ((this.e & 4) != 0) {
            this.f883a.setNavigationIcon(this.j != null ? this.j : this.q);
        } else {
            this.f883a.setNavigationIcon((Drawable) null);
        }
    }

    public void d(CharSequence charSequence) {
        this.m = charSequence;
        v();
    }

    @Override // android.support.v7.widget.u
    public void e(int i) {
        d(i == 0 ? null : b().getString(i));
    }

    private void v() {
        if ((this.e & 4) != 0) {
            if (TextUtils.isEmpty(this.m)) {
                this.f883a.setNavigationContentDescription(this.p);
            } else {
                this.f883a.setNavigationContentDescription(this.m);
            }
        }
    }

    @Override // android.support.v7.widget.u
    public void f(int i) {
        this.f883a.setVisibility(i);
    }

    @Override // android.support.v7.widget.u
    public int q() {
        return this.f883a.getVisibility();
    }

    @Override // android.support.v7.widget.u
    public void a(o.a aVar, h.a aVar2) {
        this.f883a.a(aVar, aVar2);
    }

    @Override // android.support.v7.widget.u
    public Menu r() {
        return this.f883a.getMenu();
    }
}
