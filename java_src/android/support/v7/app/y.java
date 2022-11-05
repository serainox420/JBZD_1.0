package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.support.v4.view.bd;
import android.support.v4.view.be;
import android.support.v4.view.bf;
import android.support.v7.app.ActionBar;
import android.support.v7.appcompat.R;
import android.support.v7.view.b;
import android.support.v7.view.menu.h;
import android.support.v7.widget.ActionBarContainer;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ActionBarOverlayLayout;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.an;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* compiled from: WindowDecorActionBar.java */
@RestrictTo
/* loaded from: classes.dex */
public class y extends ActionBar implements ActionBarOverlayLayout.a {
    static final /* synthetic */ boolean s;
    private static final Interpolator t;
    private static final Interpolator u;
    private static final boolean v;
    private boolean B;
    private boolean C;
    private boolean E;
    private boolean G;
    private boolean I;

    /* renamed from: a  reason: collision with root package name */
    Context f624a;
    ActionBarOverlayLayout b;
    ActionBarContainer c;
    android.support.v7.widget.u d;
    ActionBarContextView e;
    View f;
    an g;
    a h;
    android.support.v7.view.b i;
    b.a j;
    boolean l;
    boolean m;
    android.support.v7.view.h n;
    boolean o;
    private Context w;
    private Activity x;
    private Dialog y;
    private ArrayList<Object> z = new ArrayList<>();
    private int A = -1;
    private ArrayList<ActionBar.a> D = new ArrayList<>();
    private int F = 0;
    boolean k = true;
    private boolean H = true;
    final bd p = new be() { // from class: android.support.v7.app.y.1
        @Override // android.support.v4.view.be, android.support.v4.view.bd
        public void b(View view) {
            if (y.this.k && y.this.f != null) {
                ai.b(y.this.f, (float) BitmapDescriptorFactory.HUE_RED);
                ai.b(y.this.c, (float) BitmapDescriptorFactory.HUE_RED);
            }
            y.this.c.setVisibility(8);
            y.this.c.setTransitioning(false);
            y.this.n = null;
            y.this.i();
            if (y.this.b != null) {
                ai.w(y.this.b);
            }
        }
    };
    final bd q = new be() { // from class: android.support.v7.app.y.2
        @Override // android.support.v4.view.be, android.support.v4.view.bd
        public void b(View view) {
            y.this.n = null;
            y.this.c.requestLayout();
        }
    };
    final bf r = new bf() { // from class: android.support.v7.app.y.3
        @Override // android.support.v4.view.bf
        public void a(View view) {
            ((View) y.this.c.getParent()).invalidate();
        }
    };

    static {
        boolean z = true;
        s = !y.class.desiredAssertionStatus();
        t = new AccelerateInterpolator();
        u = new DecelerateInterpolator();
        if (Build.VERSION.SDK_INT < 14) {
            z = false;
        }
        v = z;
    }

    public y(Activity activity, boolean z) {
        this.x = activity;
        View decorView = activity.getWindow().getDecorView();
        a(decorView);
        if (!z) {
            this.f = decorView.findViewById(16908290);
        }
    }

    public y(Dialog dialog) {
        this.y = dialog;
        a(dialog.getWindow().getDecorView());
    }

    private void a(View view) {
        this.b = (ActionBarOverlayLayout) view.findViewById(R.id.decor_content_parent);
        if (this.b != null) {
            this.b.setActionBarVisibilityCallback(this);
        }
        this.d = b(view.findViewById(R.id.action_bar));
        this.e = (ActionBarContextView) view.findViewById(R.id.action_context_bar);
        this.c = (ActionBarContainer) view.findViewById(R.id.action_bar_container);
        if (this.d == null || this.e == null || this.c == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f624a = this.d.b();
        boolean z = (this.d.o() & 4) != 0;
        if (z) {
            this.B = true;
        }
        android.support.v7.view.a a2 = android.support.v7.view.a.a(this.f624a);
        d(a2.f() || z);
        m(a2.d());
        TypedArray obtainStyledAttributes = this.f624a.obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(R.styleable.ActionBar_hideOnContentScroll, false)) {
            e(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            a(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    private android.support.v7.widget.u b(View view) {
        if (view instanceof android.support.v7.widget.u) {
            return (android.support.v7.widget.u) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException(new StringBuilder().append("Can't make a decor toolbar out of ").append(view).toString() != null ? view.getClass().getSimpleName() : "null");
    }

    @Override // android.support.v7.app.ActionBar
    public void a(float f) {
        ai.h(this.c, f);
    }

    @Override // android.support.v7.app.ActionBar
    public void a(Configuration configuration) {
        m(android.support.v7.view.a.a(this.f624a).d());
    }

    private void m(boolean z) {
        boolean z2 = true;
        this.E = z;
        if (!this.E) {
            this.d.a((an) null);
            this.c.setTabContainer(this.g);
        } else {
            this.c.setTabContainer(null);
            this.d.a(this.g);
        }
        boolean z3 = j() == 2;
        if (this.g != null) {
            if (z3) {
                this.g.setVisibility(0);
                if (this.b != null) {
                    ai.w(this.b);
                }
            } else {
                this.g.setVisibility(8);
            }
        }
        this.d.a(!this.E && z3);
        ActionBarOverlayLayout actionBarOverlayLayout = this.b;
        if (this.E || !z3) {
            z2 = false;
        }
        actionBarOverlayLayout.setHasNonEmbeddedTabs(z2);
    }

    void i() {
        if (this.j != null) {
            this.j.a(this.i);
            this.i = null;
            this.j = null;
        }
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.a
    public void c(int i) {
        this.F = i;
    }

    @Override // android.support.v7.app.ActionBar
    public void g(boolean z) {
        this.I = z;
        if (!z && this.n != null) {
            this.n.c();
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void h(boolean z) {
        if (z != this.C) {
            this.C = z;
            int size = this.D.size();
            for (int i = 0; i < size; i++) {
                this.D.get(i).a(z);
            }
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void a(boolean z) {
        a(z ? 2 : 0, 2);
    }

    @Override // android.support.v7.app.ActionBar
    public void b(boolean z) {
        a(z ? 4 : 0, 4);
    }

    @Override // android.support.v7.app.ActionBar
    public void c(boolean z) {
        a(z ? 8 : 0, 8);
    }

    @Override // android.support.v7.app.ActionBar
    public void d(boolean z) {
        this.d.b(z);
    }

    @Override // android.support.v7.app.ActionBar
    public void a(CharSequence charSequence) {
        this.d.b(charSequence);
    }

    @Override // android.support.v7.app.ActionBar
    public void b(CharSequence charSequence) {
        this.d.a(charSequence);
    }

    @Override // android.support.v7.app.ActionBar
    public boolean g() {
        ViewGroup a2 = this.d.a();
        if (a2 == null || a2.hasFocus()) {
            return false;
        }
        a2.requestFocus();
        return true;
    }

    public void a(int i, int i2) {
        int o = this.d.o();
        if ((i2 & 4) != 0) {
            this.B = true;
        }
        this.d.c((o & (i2 ^ (-1))) | (i & i2));
    }

    public int j() {
        return this.d.p();
    }

    @Override // android.support.v7.app.ActionBar
    public int a() {
        return this.d.o();
    }

    @Override // android.support.v7.app.ActionBar
    public android.support.v7.view.b a(b.a aVar) {
        if (this.h != null) {
            this.h.c();
        }
        this.b.setHideOnContentScrollEnabled(false);
        this.e.c();
        a aVar2 = new a(this.e.getContext(), aVar);
        if (aVar2.e()) {
            this.h = aVar2;
            aVar2.d();
            this.e.a(aVar2);
            l(true);
            this.e.sendAccessibilityEvent(32);
            return aVar2;
        }
        return null;
    }

    public int k() {
        return this.c.getHeight();
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.a
    public void i(boolean z) {
        this.k = z;
    }

    private void p() {
        if (!this.G) {
            this.G = true;
            if (this.b != null) {
                this.b.setShowingForActionMode(true);
            }
            n(false);
        }
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.a
    public void l() {
        if (this.m) {
            this.m = false;
            n(true);
        }
    }

    private void q() {
        if (this.G) {
            this.G = false;
            if (this.b != null) {
                this.b.setShowingForActionMode(false);
            }
            n(false);
        }
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.a
    public void m() {
        if (!this.m) {
            this.m = true;
            n(true);
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void e(boolean z) {
        if (z && !this.b.a()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.o = z;
        this.b.setHideOnContentScrollEnabled(z);
    }

    @Override // android.support.v7.app.ActionBar
    public int d() {
        return this.b.getActionBarHideOffset();
    }

    static boolean a(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return !z && !z2;
    }

    private void n(boolean z) {
        if (a(this.l, this.m, this.G)) {
            if (!this.H) {
                this.H = true;
                j(z);
            }
        } else if (this.H) {
            this.H = false;
            k(z);
        }
    }

    public void j(boolean z) {
        int[] iArr;
        if (this.n != null) {
            this.n.c();
        }
        this.c.setVisibility(0);
        if (this.F == 0 && v && (this.I || z)) {
            ai.b(this.c, (float) BitmapDescriptorFactory.HUE_RED);
            float f = -this.c.getHeight();
            if (z) {
                this.c.getLocationInWindow(new int[]{0, 0});
                f -= iArr[1];
            }
            ai.b(this.c, f);
            android.support.v7.view.h hVar = new android.support.v7.view.h();
            az c = ai.r(this.c).c(BitmapDescriptorFactory.HUE_RED);
            c.a(this.r);
            hVar.a(c);
            if (this.k && this.f != null) {
                ai.b(this.f, f);
                hVar.a(ai.r(this.f).c(BitmapDescriptorFactory.HUE_RED));
            }
            hVar.a(u);
            hVar.a(250L);
            hVar.a(this.q);
            this.n = hVar;
            hVar.a();
        } else {
            ai.c((View) this.c, 1.0f);
            ai.b(this.c, (float) BitmapDescriptorFactory.HUE_RED);
            if (this.k && this.f != null) {
                ai.b(this.f, (float) BitmapDescriptorFactory.HUE_RED);
            }
            this.q.b(null);
        }
        if (this.b != null) {
            ai.w(this.b);
        }
    }

    public void k(boolean z) {
        int[] iArr;
        if (this.n != null) {
            this.n.c();
        }
        if (this.F == 0 && v && (this.I || z)) {
            ai.c((View) this.c, 1.0f);
            this.c.setTransitioning(true);
            android.support.v7.view.h hVar = new android.support.v7.view.h();
            float f = -this.c.getHeight();
            if (z) {
                this.c.getLocationInWindow(new int[]{0, 0});
                f -= iArr[1];
            }
            az c = ai.r(this.c).c(f);
            c.a(this.r);
            hVar.a(c);
            if (this.k && this.f != null) {
                hVar.a(ai.r(this.f).c(f));
            }
            hVar.a(t);
            hVar.a(250L);
            hVar.a(this.p);
            this.n = hVar;
            hVar.a();
            return;
        }
        this.p.b(null);
    }

    @Override // android.support.v7.app.ActionBar
    public boolean b() {
        int k = k();
        return this.H && (k == 0 || d() < k);
    }

    public void l(boolean z) {
        az a2;
        az a3;
        if (z) {
            p();
        } else {
            q();
        }
        if (r()) {
            if (z) {
                a3 = this.d.a(4, 100L);
                a2 = this.e.a(0, 200L);
            } else {
                a2 = this.d.a(0, 200L);
                a3 = this.e.a(8, 100L);
            }
            android.support.v7.view.h hVar = new android.support.v7.view.h();
            hVar.a(a3, a2);
            hVar.a();
        } else if (z) {
            this.d.f(4);
            this.e.setVisibility(0);
        } else {
            this.d.f(0);
            this.e.setVisibility(8);
        }
    }

    private boolean r() {
        return ai.F(this.c);
    }

    @Override // android.support.v7.app.ActionBar
    public Context c() {
        if (this.w == null) {
            TypedValue typedValue = new TypedValue();
            this.f624a.getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.w = new ContextThemeWrapper(this.f624a, i);
            } else {
                this.w = this.f624a;
            }
        }
        return this.w;
    }

    @Override // android.support.v7.app.ActionBar
    public void a(Drawable drawable) {
        this.d.b(drawable);
    }

    @Override // android.support.v7.app.ActionBar
    public void a(int i) {
        this.d.d(i);
    }

    @Override // android.support.v7.app.ActionBar
    public void b(int i) {
        this.d.e(i);
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.a
    public void n() {
        if (this.n != null) {
            this.n.c();
            this.n = null;
        }
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.a
    public void o() {
    }

    @Override // android.support.v7.app.ActionBar
    public boolean f() {
        if (this.d == null || !this.d.c()) {
            return false;
        }
        this.d.d();
        return true;
    }

    /* compiled from: WindowDecorActionBar.java */
    @RestrictTo
    /* loaded from: classes.dex */
    public class a extends android.support.v7.view.b implements h.a {
        private final Context b;
        private final android.support.v7.view.menu.h c;
        private b.a d;
        private WeakReference<View> e;

        public a(Context context, b.a aVar) {
            this.b = context;
            this.d = aVar;
            this.c = new android.support.v7.view.menu.h(context).a(1);
            this.c.a(this);
        }

        @Override // android.support.v7.view.b
        public MenuInflater a() {
            return new android.support.v7.view.g(this.b);
        }

        @Override // android.support.v7.view.b
        public Menu b() {
            return this.c;
        }

        @Override // android.support.v7.view.b
        public void c() {
            if (y.this.h == this) {
                if (!y.a(y.this.l, y.this.m, false)) {
                    y.this.i = this;
                    y.this.j = this.d;
                } else {
                    this.d.a(this);
                }
                this.d = null;
                y.this.l(false);
                y.this.e.b();
                y.this.d.a().sendAccessibilityEvent(32);
                y.this.b.setHideOnContentScrollEnabled(y.this.o);
                y.this.h = null;
            }
        }

        @Override // android.support.v7.view.b
        public void d() {
            if (y.this.h == this) {
                this.c.g();
                try {
                    this.d.b(this, this.c);
                } finally {
                    this.c.h();
                }
            }
        }

        public boolean e() {
            this.c.g();
            try {
                return this.d.a(this, this.c);
            } finally {
                this.c.h();
            }
        }

        @Override // android.support.v7.view.b
        public void a(View view) {
            y.this.e.setCustomView(view);
            this.e = new WeakReference<>(view);
        }

        @Override // android.support.v7.view.b
        public void a(CharSequence charSequence) {
            y.this.e.setSubtitle(charSequence);
        }

        @Override // android.support.v7.view.b
        public void b(CharSequence charSequence) {
            y.this.e.setTitle(charSequence);
        }

        @Override // android.support.v7.view.b
        public void a(int i) {
            b(y.this.f624a.getResources().getString(i));
        }

        @Override // android.support.v7.view.b
        public void b(int i) {
            a((CharSequence) y.this.f624a.getResources().getString(i));
        }

        @Override // android.support.v7.view.b
        public CharSequence f() {
            return y.this.e.getTitle();
        }

        @Override // android.support.v7.view.b
        public CharSequence g() {
            return y.this.e.getSubtitle();
        }

        @Override // android.support.v7.view.b
        public void a(boolean z) {
            super.a(z);
            y.this.e.setTitleOptional(z);
        }

        @Override // android.support.v7.view.b
        public boolean h() {
            return y.this.e.d();
        }

        @Override // android.support.v7.view.b
        public View i() {
            if (this.e != null) {
                return this.e.get();
            }
            return null;
        }

        @Override // android.support.v7.view.menu.h.a
        public boolean a(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
            if (this.d != null) {
                return this.d.a(this, menuItem);
            }
            return false;
        }

        @Override // android.support.v7.view.menu.h.a
        public void a(android.support.v7.view.menu.h hVar) {
            if (this.d != null) {
                d();
                y.this.e.a();
            }
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void f(boolean z) {
        if (!this.B) {
            b(z);
        }
    }
}
