package android.support.v7.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.ae;
import android.support.v4.view.ai;
import android.support.v4.view.at;
import android.support.v4.view.az;
import android.support.v4.view.bd;
import android.support.v4.view.be;
import android.support.v4.view.bg;
import android.support.v4.view.z;
import android.support.v7.appcompat.R;
import android.support.v7.view.b;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.o;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ContentFrameLayout;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.ViewStubCompat;
import android.support.v7.widget.ax;
import android.support.v7.widget.ba;
import android.support.v7.widget.y;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
/* JADX INFO: Access modifiers changed from: package-private */
@TargetApi(9)
/* loaded from: classes.dex */
public class AppCompatDelegateImplV9 extends f implements android.support.v4.view.n, h.a {
    private static final boolean t;
    private View A;
    private boolean B;
    private boolean C;
    private boolean D;
    private PanelFeatureState[] E;
    private PanelFeatureState F;
    private boolean G;
    private final Runnable H;
    private boolean I;
    private Rect J;
    private Rect K;
    private l L;
    android.support.v7.view.b m;
    ActionBarContextView n;
    PopupWindow o;
    Runnable p;
    az q;
    boolean r;
    int s;
    private android.support.v7.widget.t u;
    private a v;
    private d w;
    private boolean x;
    private ViewGroup y;
    private TextView z;

    static {
        t = Build.VERSION.SDK_INT < 21;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatDelegateImplV9(Context context, Window window, android.support.v7.app.d dVar) {
        super(context, window, dVar);
        this.q = null;
        this.H = new Runnable() { // from class: android.support.v7.app.AppCompatDelegateImplV9.1
            @Override // java.lang.Runnable
            public void run() {
                if ((AppCompatDelegateImplV9.this.s & 1) != 0) {
                    AppCompatDelegateImplV9.this.f(0);
                }
                if ((AppCompatDelegateImplV9.this.s & 4096) != 0) {
                    AppCompatDelegateImplV9.this.f(108);
                }
                AppCompatDelegateImplV9.this.r = false;
                AppCompatDelegateImplV9.this.s = 0;
            }
        };
    }

    @Override // android.support.v7.app.e
    public void a(Bundle bundle) {
        if ((this.c instanceof Activity) && ae.b((Activity) this.c) != null) {
            ActionBar n = n();
            if (n == null) {
                this.I = true;
            } else {
                n.f(true);
            }
        }
    }

    @Override // android.support.v7.app.e
    public void b(Bundle bundle) {
        x();
    }

    @Override // android.support.v7.app.f
    public void m() {
        x();
        if (this.h && this.f == null) {
            if (this.c instanceof Activity) {
                this.f = new y((Activity) this.c, this.i);
            } else if (this.c instanceof Dialog) {
                this.f = new y((Dialog) this.c);
            }
            if (this.f != null) {
                this.f.f(this.I);
            }
        }
    }

    @Override // android.support.v7.app.e
    public void a(Toolbar toolbar) {
        if (this.c instanceof Activity) {
            ActionBar a2 = a();
            if (a2 instanceof y) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.g = null;
            if (a2 != null) {
                a2.h();
            }
            if (toolbar != null) {
                v vVar = new v(toolbar, ((Activity) this.c).getTitle(), this.d);
                this.f = vVar;
                this.b.setCallback(vVar.i());
            } else {
                this.f = null;
                this.b.setCallback(this.d);
            }
            f();
        }
    }

    @Override // android.support.v7.app.e
    public View a(int i) {
        x();
        return this.b.findViewById(i);
    }

    @Override // android.support.v7.app.e
    public void a(Configuration configuration) {
        ActionBar a2;
        if (this.h && this.x && (a2 = a()) != null) {
            a2.a(configuration);
        }
        android.support.v7.widget.h.a().a(this.f576a);
        j();
    }

    @Override // android.support.v7.app.f, android.support.v7.app.e
    public void d() {
        ActionBar a2 = a();
        if (a2 != null) {
            a2.g(false);
        }
    }

    @Override // android.support.v7.app.e
    public void e() {
        ActionBar a2 = a();
        if (a2 != null) {
            a2.g(true);
        }
    }

    @Override // android.support.v7.app.e
    public void a(View view) {
        x();
        ViewGroup viewGroup = (ViewGroup) this.y.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.c.onContentChanged();
    }

    @Override // android.support.v7.app.e
    public void b(int i) {
        x();
        ViewGroup viewGroup = (ViewGroup) this.y.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f576a).inflate(i, viewGroup);
        this.c.onContentChanged();
    }

    @Override // android.support.v7.app.e
    public void a(View view, ViewGroup.LayoutParams layoutParams) {
        x();
        ViewGroup viewGroup = (ViewGroup) this.y.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.c.onContentChanged();
    }

    @Override // android.support.v7.app.e
    public void b(View view, ViewGroup.LayoutParams layoutParams) {
        x();
        ((ViewGroup) this.y.findViewById(16908290)).addView(view, layoutParams);
        this.c.onContentChanged();
    }

    @Override // android.support.v7.app.f, android.support.v7.app.e
    public void g() {
        if (this.r) {
            this.b.getDecorView().removeCallbacks(this.H);
        }
        super.g();
        if (this.f != null) {
            this.f.h();
        }
    }

    private void x() {
        if (!this.x) {
            this.y = y();
            CharSequence s = s();
            if (!TextUtils.isEmpty(s)) {
                b(s);
            }
            z();
            a(this.y);
            this.x = true;
            PanelFeatureState a2 = a(0, false);
            if (q()) {
                return;
            }
            if (a2 == null || a2.j == null) {
                d(108);
            }
        }
    }

    private ViewGroup y() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        Context context;
        TypedArray obtainStyledAttributes = this.f576a.obtainStyledAttributes(R.styleable.AppCompatTheme);
        if (!obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowActionBar)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowNoTitle, false)) {
            c(1);
        } else if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowActionBar, false)) {
            c(108);
        }
        if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            c(109);
        }
        if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            c(10);
        }
        this.k = obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_android_windowIsFloating, false);
        obtainStyledAttributes.recycle();
        this.b.getDecorView();
        LayoutInflater from = LayoutInflater.from(this.f576a);
        if (!this.l) {
            if (this.k) {
                this.i = false;
                this.h = false;
                viewGroup2 = (ViewGroup) from.inflate(R.layout.abc_dialog_title_material, (ViewGroup) null);
            } else if (this.h) {
                TypedValue typedValue = new TypedValue();
                this.f576a.getTheme().resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                if (typedValue.resourceId != 0) {
                    context = new android.support.v7.view.d(this.f576a, typedValue.resourceId);
                } else {
                    context = this.f576a;
                }
                ViewGroup viewGroup3 = (ViewGroup) LayoutInflater.from(context).inflate(R.layout.abc_screen_toolbar, (ViewGroup) null);
                this.u = (android.support.v7.widget.t) viewGroup3.findViewById(R.id.decor_content_parent);
                this.u.setWindowCallback(r());
                if (this.i) {
                    this.u.a(109);
                }
                if (this.B) {
                    this.u.a(2);
                }
                if (this.C) {
                    this.u.a(5);
                }
                viewGroup2 = viewGroup3;
            } else {
                viewGroup2 = null;
            }
        } else {
            if (this.j) {
                viewGroup = (ViewGroup) from.inflate(R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null);
            } else {
                viewGroup = (ViewGroup) from.inflate(R.layout.abc_screen_simple, (ViewGroup) null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                ai.a(viewGroup, new z() { // from class: android.support.v7.app.AppCompatDelegateImplV9.2
                    @Override // android.support.v4.view.z
                    public bg a(View view, bg bgVar) {
                        int b2 = bgVar.b();
                        int g = AppCompatDelegateImplV9.this.g(b2);
                        if (b2 != g) {
                            bgVar = bgVar.a(bgVar.a(), g, bgVar.c(), bgVar.d());
                        }
                        return ai.a(view, bgVar);
                    }
                });
                viewGroup2 = viewGroup;
            } else {
                ((android.support.v7.widget.y) viewGroup).setOnFitSystemWindowsListener(new y.a() { // from class: android.support.v7.app.AppCompatDelegateImplV9.3
                    @Override // android.support.v7.widget.y.a
                    public void a(Rect rect) {
                        rect.top = AppCompatDelegateImplV9.this.g(rect.top);
                    }
                });
                viewGroup2 = viewGroup;
            }
        }
        if (viewGroup2 == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.h + ", windowActionBarOverlay: " + this.i + ", android:windowIsFloating: " + this.k + ", windowActionModeOverlay: " + this.j + ", windowNoTitle: " + this.l + " }");
        }
        if (this.u == null) {
            this.z = (TextView) viewGroup2.findViewById(R.id.title);
        }
        ba.b(viewGroup2);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup2.findViewById(R.id.action_bar_activity_content);
        ViewGroup viewGroup4 = (ViewGroup) this.b.findViewById(16908290);
        if (viewGroup4 != null) {
            while (viewGroup4.getChildCount() > 0) {
                View childAt = viewGroup4.getChildAt(0);
                viewGroup4.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup4.setId(-1);
            contentFrameLayout.setId(16908290);
            if (viewGroup4 instanceof FrameLayout) {
                ((FrameLayout) viewGroup4).setForeground(null);
            }
        }
        this.b.setContentView(viewGroup2);
        contentFrameLayout.setAttachListener(new ContentFrameLayout.a() { // from class: android.support.v7.app.AppCompatDelegateImplV9.4
            @Override // android.support.v7.widget.ContentFrameLayout.a
            public void a() {
            }

            @Override // android.support.v7.widget.ContentFrameLayout.a
            public void b() {
                AppCompatDelegateImplV9.this.w();
            }
        });
        return viewGroup2;
    }

    void a(ViewGroup viewGroup) {
    }

    private void z() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.y.findViewById(16908290);
        View decorView = this.b.getDecorView();
        contentFrameLayout.a(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f576a.obtainStyledAttributes(R.styleable.AppCompatTheme);
        obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    @Override // android.support.v7.app.e
    public boolean c(int i) {
        int h = h(i);
        if (!this.l || h != 108) {
            if (this.h && h == 1) {
                this.h = false;
            }
            switch (h) {
                case 1:
                    A();
                    this.l = true;
                    return true;
                case 2:
                    A();
                    this.B = true;
                    return true;
                case 5:
                    A();
                    this.C = true;
                    return true;
                case 10:
                    A();
                    this.j = true;
                    return true;
                case 108:
                    A();
                    this.h = true;
                    return true;
                case 109:
                    A();
                    this.i = true;
                    return true;
                default:
                    return this.b.requestFeature(h);
            }
        }
        return false;
    }

    @Override // android.support.v7.app.f
    void b(CharSequence charSequence) {
        if (this.u != null) {
            this.u.setWindowTitle(charSequence);
        } else if (n() != null) {
            n().b(charSequence);
        } else if (this.z != null) {
            this.z.setText(charSequence);
        }
    }

    @Override // android.support.v7.app.f
    void a(int i, Menu menu) {
        if (i == 108) {
            ActionBar a2 = a();
            if (a2 != null) {
                a2.h(false);
            }
        } else if (i == 0) {
            PanelFeatureState a3 = a(i, true);
            if (a3.o) {
                a(a3, false);
            }
        }
    }

    @Override // android.support.v7.app.f
    boolean b(int i, Menu menu) {
        if (i == 108) {
            ActionBar a2 = a();
            if (a2 == null) {
                return true;
            }
            a2.h(true);
            return true;
        }
        return false;
    }

    @Override // android.support.v7.view.menu.h.a
    public boolean a(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
        PanelFeatureState a2;
        Window.Callback r = r();
        if (r == null || q() || (a2 = a((Menu) hVar.p())) == null) {
            return false;
        }
        return r.onMenuItemSelected(a2.f551a, menuItem);
    }

    @Override // android.support.v7.view.menu.h.a
    public void a(android.support.v7.view.menu.h hVar) {
        a(hVar, true);
    }

    @Override // android.support.v7.app.e
    public android.support.v7.view.b a(b.a aVar) {
        if (aVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (this.m != null) {
            this.m.c();
        }
        b bVar = new b(aVar);
        ActionBar a2 = a();
        if (a2 != null) {
            this.m = a2.a(bVar);
            if (this.m != null && this.e != null) {
                this.e.onSupportActionModeStarted(this.m);
            }
        }
        if (this.m == null) {
            this.m = b(bVar);
        }
        return this.m;
    }

    @Override // android.support.v7.app.e
    public void f() {
        ActionBar a2 = a();
        if (a2 == null || !a2.e()) {
            d(0);
        }
    }

    @Override // android.support.v7.app.f
    android.support.v7.view.b b(b.a aVar) {
        android.support.v7.view.b bVar;
        Context context;
        u();
        if (this.m != null) {
            this.m.c();
        }
        if (!(aVar instanceof b)) {
            aVar = new b(aVar);
        }
        if (this.e == null || q()) {
            bVar = null;
        } else {
            try {
                bVar = this.e.onWindowStartingSupportActionMode(aVar);
            } catch (AbstractMethodError e) {
                bVar = null;
            }
        }
        if (bVar != null) {
            this.m = bVar;
        } else {
            if (this.n == null) {
                if (this.k) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.f576a.getTheme();
                    theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme newTheme = this.f576a.getResources().newTheme();
                        newTheme.setTo(theme);
                        newTheme.applyStyle(typedValue.resourceId, true);
                        context = new android.support.v7.view.d(this.f576a, 0);
                        context.getTheme().setTo(newTheme);
                    } else {
                        context = this.f576a;
                    }
                    this.n = new ActionBarContextView(context);
                    this.o = new PopupWindow(context, (AttributeSet) null, R.attr.actionModePopupWindowStyle);
                    android.support.v4.widget.s.a(this.o, 2);
                    this.o.setContentView(this.n);
                    this.o.setWidth(-1);
                    context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
                    this.n.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                    this.o.setHeight(-2);
                    this.p = new Runnable() { // from class: android.support.v7.app.AppCompatDelegateImplV9.5
                        @Override // java.lang.Runnable
                        public void run() {
                            AppCompatDelegateImplV9.this.o.showAtLocation(AppCompatDelegateImplV9.this.n, 55, 0, 0);
                            AppCompatDelegateImplV9.this.u();
                            if (AppCompatDelegateImplV9.this.t()) {
                                ai.c(AppCompatDelegateImplV9.this.n, (float) BitmapDescriptorFactory.HUE_RED);
                                AppCompatDelegateImplV9.this.q = ai.r(AppCompatDelegateImplV9.this.n).a(1.0f);
                                AppCompatDelegateImplV9.this.q.a(new be() { // from class: android.support.v7.app.AppCompatDelegateImplV9.5.1
                                    @Override // android.support.v4.view.be, android.support.v4.view.bd
                                    public void a(View view) {
                                        AppCompatDelegateImplV9.this.n.setVisibility(0);
                                    }

                                    @Override // android.support.v4.view.be, android.support.v4.view.bd
                                    public void b(View view) {
                                        ai.c((View) AppCompatDelegateImplV9.this.n, 1.0f);
                                        AppCompatDelegateImplV9.this.q.a((bd) null);
                                        AppCompatDelegateImplV9.this.q = null;
                                    }
                                });
                                return;
                            }
                            ai.c((View) AppCompatDelegateImplV9.this.n, 1.0f);
                            AppCompatDelegateImplV9.this.n.setVisibility(0);
                        }
                    };
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.y.findViewById(R.id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(o()));
                        this.n = (ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (this.n != null) {
                u();
                this.n.c();
                android.support.v7.view.e eVar = new android.support.v7.view.e(this.n.getContext(), this.n, aVar, this.o == null);
                if (aVar.a(eVar, eVar.b())) {
                    eVar.d();
                    this.n.a(eVar);
                    this.m = eVar;
                    if (t()) {
                        ai.c(this.n, (float) BitmapDescriptorFactory.HUE_RED);
                        this.q = ai.r(this.n).a(1.0f);
                        this.q.a(new be() { // from class: android.support.v7.app.AppCompatDelegateImplV9.6
                            @Override // android.support.v4.view.be, android.support.v4.view.bd
                            public void a(View view) {
                                AppCompatDelegateImplV9.this.n.setVisibility(0);
                                AppCompatDelegateImplV9.this.n.sendAccessibilityEvent(32);
                                if (AppCompatDelegateImplV9.this.n.getParent() instanceof View) {
                                    ai.w((View) AppCompatDelegateImplV9.this.n.getParent());
                                }
                            }

                            @Override // android.support.v4.view.be, android.support.v4.view.bd
                            public void b(View view) {
                                ai.c((View) AppCompatDelegateImplV9.this.n, 1.0f);
                                AppCompatDelegateImplV9.this.q.a((bd) null);
                                AppCompatDelegateImplV9.this.q = null;
                            }
                        });
                    } else {
                        ai.c((View) this.n, 1.0f);
                        this.n.setVisibility(0);
                        this.n.sendAccessibilityEvent(32);
                        if (this.n.getParent() instanceof View) {
                            ai.w((View) this.n.getParent());
                        }
                    }
                    if (this.o != null) {
                        this.b.getDecorView().post(this.p);
                    }
                } else {
                    this.m = null;
                }
            }
        }
        if (this.m != null && this.e != null) {
            this.e.onSupportActionModeStarted(this.m);
        }
        return this.m;
    }

    final boolean t() {
        return this.x && this.y != null && ai.F(this.y);
    }

    void u() {
        if (this.q != null) {
            this.q.b();
        }
    }

    boolean v() {
        if (this.m != null) {
            this.m.c();
            return true;
        }
        ActionBar a2 = a();
        return a2 != null && a2.f();
    }

    @Override // android.support.v7.app.f
    boolean a(int i, KeyEvent keyEvent) {
        ActionBar a2 = a();
        if (a2 == null || !a2.a(i, keyEvent)) {
            if (this.F != null && a(this.F, keyEvent.getKeyCode(), keyEvent, 1)) {
                if (this.F == null) {
                    return true;
                }
                this.F.n = true;
                return true;
            }
            if (this.F == null) {
                PanelFeatureState a3 = a(0, true);
                b(a3, keyEvent);
                boolean a4 = a(a3, keyEvent.getKeyCode(), keyEvent, 1);
                a3.m = false;
                if (a4) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    @Override // android.support.v7.app.f
    boolean a(KeyEvent keyEvent) {
        boolean z = true;
        if (keyEvent.getKeyCode() != 82 || !this.c.dispatchKeyEvent(keyEvent)) {
            int keyCode = keyEvent.getKeyCode();
            if (keyEvent.getAction() != 0) {
                z = false;
            }
            return z ? c(keyCode, keyEvent) : b(keyCode, keyEvent);
        }
        return true;
    }

    boolean b(int i, KeyEvent keyEvent) {
        switch (i) {
            case 82:
                e(0, keyEvent);
                return true;
            case 4:
                boolean z = this.G;
                this.G = false;
                PanelFeatureState a2 = a(0, false);
                if (a2 != null && a2.o) {
                    if (z) {
                        return true;
                    }
                    a(a2, true);
                    return true;
                } else if (v()) {
                    return true;
                }
                break;
        }
        return false;
    }

    boolean c(int i, KeyEvent keyEvent) {
        boolean z = true;
        switch (i) {
            case 82:
                d(0, keyEvent);
                return true;
            case 4:
                if ((keyEvent.getFlags() & 128) == 0) {
                    z = false;
                }
                this.G = z;
                break;
        }
        if (Build.VERSION.SDK_INT < 11) {
            a(i, keyEvent);
        }
        return false;
    }

    public View c(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        boolean a2;
        if (this.L == null) {
            this.L = new l();
        }
        if (t) {
            if (attributeSet instanceof XmlPullParser) {
                a2 = ((XmlPullParser) attributeSet).getDepth() > 1;
            } else {
                a2 = a((ViewParent) view);
            }
            z = a2;
        } else {
            z = false;
        }
        return this.L.a(view, str, context, attributeSet, z, t, true, ax.a());
    }

    private boolean a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.b.getDecorView();
        for (ViewParent viewParent2 = viewParent; viewParent2 != null; viewParent2 = viewParent2.getParent()) {
            if (viewParent2 == decorView || !(viewParent2 instanceof View) || ai.H((View) viewParent2)) {
                return false;
            }
        }
        return true;
    }

    @Override // android.support.v7.app.e
    public void i() {
        LayoutInflater from = LayoutInflater.from(this.f576a);
        if (from.getFactory() == null) {
            android.support.v4.view.j.a(from, this);
        } else if (!(android.support.v4.view.j.a(from) instanceof AppCompatDelegateImplV9)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // android.support.v4.view.n
    public final View a(View view, String str, Context context, AttributeSet attributeSet) {
        View b2 = b(view, str, context, attributeSet);
        return b2 != null ? b2 : c(view, str, context, attributeSet);
    }

    View b(View view, String str, Context context, AttributeSet attributeSet) {
        View onCreateView;
        if (!(this.c instanceof LayoutInflater.Factory) || (onCreateView = ((LayoutInflater.Factory) this.c).onCreateView(str, context, attributeSet)) == null) {
            return null;
        }
        return onCreateView;
    }

    private void a(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        ViewGroup.LayoutParams layoutParams;
        int i = -1;
        if (!panelFeatureState.o && !q()) {
            if (panelFeatureState.f551a == 0) {
                Context context = this.f576a;
                boolean z = (context.getResources().getConfiguration().screenLayout & 15) == 4;
                boolean z2 = context.getApplicationInfo().targetSdkVersion >= 11;
                if (z && z2) {
                    return;
                }
            }
            Window.Callback r = r();
            if (r != null && !r.onMenuOpened(panelFeatureState.f551a, panelFeatureState.j)) {
                a(panelFeatureState, true);
                return;
            }
            WindowManager windowManager = (WindowManager) this.f576a.getSystemService("window");
            if (windowManager != null && b(panelFeatureState, keyEvent)) {
                if (panelFeatureState.g == null || panelFeatureState.q) {
                    if (panelFeatureState.g == null) {
                        if (!a(panelFeatureState) || panelFeatureState.g == null) {
                            return;
                        }
                    } else if (panelFeatureState.q && panelFeatureState.g.getChildCount() > 0) {
                        panelFeatureState.g.removeAllViews();
                    }
                    if (c(panelFeatureState) && panelFeatureState.a()) {
                        ViewGroup.LayoutParams layoutParams2 = panelFeatureState.h.getLayoutParams();
                        ViewGroup.LayoutParams layoutParams3 = layoutParams2 == null ? new ViewGroup.LayoutParams(-2, -2) : layoutParams2;
                        panelFeatureState.g.setBackgroundResource(panelFeatureState.b);
                        ViewParent parent = panelFeatureState.h.getParent();
                        if (parent != null && (parent instanceof ViewGroup)) {
                            ((ViewGroup) parent).removeView(panelFeatureState.h);
                        }
                        panelFeatureState.g.addView(panelFeatureState.h, layoutParams3);
                        if (!panelFeatureState.h.hasFocus()) {
                            panelFeatureState.h.requestFocus();
                        }
                        i = -2;
                    } else {
                        return;
                    }
                } else if (panelFeatureState.i == null || (layoutParams = panelFeatureState.i.getLayoutParams()) == null || layoutParams.width != -1) {
                    i = -2;
                }
                panelFeatureState.n = false;
                WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i, -2, panelFeatureState.d, panelFeatureState.e, 1002, 8519680, -3);
                layoutParams4.gravity = panelFeatureState.c;
                layoutParams4.windowAnimations = panelFeatureState.f;
                windowManager.addView(panelFeatureState.g, layoutParams4);
                panelFeatureState.o = true;
            }
        }
    }

    private boolean a(PanelFeatureState panelFeatureState) {
        panelFeatureState.a(o());
        panelFeatureState.g = new c(panelFeatureState.l);
        panelFeatureState.c = 81;
        return true;
    }

    private void a(android.support.v7.view.menu.h hVar, boolean z) {
        if (this.u != null && this.u.e() && (!at.a(ViewConfiguration.get(this.f576a)) || this.u.g())) {
            Window.Callback r = r();
            if (!this.u.f() || !z) {
                if (r != null && !q()) {
                    if (this.r && (this.s & 1) != 0) {
                        this.b.getDecorView().removeCallbacks(this.H);
                        this.H.run();
                    }
                    PanelFeatureState a2 = a(0, true);
                    if (a2.j != null && !a2.r && r.onPreparePanel(0, a2.i, a2.j)) {
                        r.onMenuOpened(108, a2.j);
                        this.u.h();
                        return;
                    }
                    return;
                }
                return;
            }
            this.u.i();
            if (!q()) {
                r.onPanelClosed(108, a(0, true).j);
                return;
            }
            return;
        }
        PanelFeatureState a3 = a(0, true);
        a3.q = true;
        a(a3, false);
        a(a3, (KeyEvent) null);
    }

    private boolean b(PanelFeatureState panelFeatureState) {
        Context dVar;
        Context context = this.f576a;
        if ((panelFeatureState.f551a == 0 || panelFeatureState.f551a == 108) && this.u != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
            Resources.Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (theme2 == null) {
                    theme2 = context.getResources().newTheme();
                    theme2.setTo(theme);
                }
                theme2.applyStyle(typedValue.resourceId, true);
            }
            Resources.Theme theme3 = theme2;
            if (theme3 != null) {
                dVar = new android.support.v7.view.d(context, 0);
                dVar.getTheme().setTo(theme3);
                android.support.v7.view.menu.h hVar = new android.support.v7.view.menu.h(dVar);
                hVar.a(this);
                panelFeatureState.a(hVar);
                return true;
            }
        }
        dVar = context;
        android.support.v7.view.menu.h hVar2 = new android.support.v7.view.menu.h(dVar);
        hVar2.a(this);
        panelFeatureState.a(hVar2);
        return true;
    }

    private boolean c(PanelFeatureState panelFeatureState) {
        if (panelFeatureState.i != null) {
            panelFeatureState.h = panelFeatureState.i;
            return true;
        } else if (panelFeatureState.j == null) {
            return false;
        } else {
            if (this.w == null) {
                this.w = new d();
            }
            panelFeatureState.h = (View) panelFeatureState.a(this.w);
            return panelFeatureState.h != null;
        }
    }

    private boolean b(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        if (q()) {
            return false;
        }
        if (panelFeatureState.m) {
            return true;
        }
        if (this.F != null && this.F != panelFeatureState) {
            a(this.F, false);
        }
        Window.Callback r = r();
        if (r != null) {
            panelFeatureState.i = r.onCreatePanelView(panelFeatureState.f551a);
        }
        boolean z = panelFeatureState.f551a == 0 || panelFeatureState.f551a == 108;
        if (z && this.u != null) {
            this.u.j();
        }
        if (panelFeatureState.i == null && (!z || !(n() instanceof v))) {
            if (panelFeatureState.j == null || panelFeatureState.r) {
                if (panelFeatureState.j == null && (!b(panelFeatureState) || panelFeatureState.j == null)) {
                    return false;
                }
                if (z && this.u != null) {
                    if (this.v == null) {
                        this.v = new a();
                    }
                    this.u.a(panelFeatureState.j, this.v);
                }
                panelFeatureState.j.g();
                if (!r.onCreatePanelMenu(panelFeatureState.f551a, panelFeatureState.j)) {
                    panelFeatureState.a((android.support.v7.view.menu.h) null);
                    if (!z || this.u == null) {
                        return false;
                    }
                    this.u.a(null, this.v);
                    return false;
                }
                panelFeatureState.r = false;
            }
            panelFeatureState.j.g();
            if (panelFeatureState.s != null) {
                panelFeatureState.j.d(panelFeatureState.s);
                panelFeatureState.s = null;
            }
            if (!r.onPreparePanel(0, panelFeatureState.i, panelFeatureState.j)) {
                if (z && this.u != null) {
                    this.u.a(null, this.v);
                }
                panelFeatureState.j.h();
                return false;
            }
            panelFeatureState.p = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.j.setQwertyMode(panelFeatureState.p);
            panelFeatureState.j.h();
        }
        panelFeatureState.m = true;
        panelFeatureState.n = false;
        this.F = panelFeatureState;
        return true;
    }

    void b(android.support.v7.view.menu.h hVar) {
        if (!this.D) {
            this.D = true;
            this.u.k();
            Window.Callback r = r();
            if (r != null && !q()) {
                r.onPanelClosed(108, hVar);
            }
            this.D = false;
        }
    }

    void e(int i) {
        a(a(i, true), true);
    }

    void a(PanelFeatureState panelFeatureState, boolean z) {
        if (z && panelFeatureState.f551a == 0 && this.u != null && this.u.f()) {
            b(panelFeatureState.j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f576a.getSystemService("window");
        if (windowManager != null && panelFeatureState.o && panelFeatureState.g != null) {
            windowManager.removeView(panelFeatureState.g);
            if (z) {
                a(panelFeatureState.f551a, panelFeatureState, (Menu) null);
            }
        }
        panelFeatureState.m = false;
        panelFeatureState.n = false;
        panelFeatureState.o = false;
        panelFeatureState.h = null;
        panelFeatureState.q = true;
        if (this.F == panelFeatureState) {
            this.F = null;
        }
    }

    private boolean d(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            PanelFeatureState a2 = a(i, true);
            if (!a2.o) {
                return b(a2, keyEvent);
            }
        }
        return false;
    }

    private boolean e(int i, KeyEvent keyEvent) {
        boolean z;
        boolean z2 = true;
        if (this.m != null) {
            return false;
        }
        PanelFeatureState a2 = a(i, true);
        if (i == 0 && this.u != null && this.u.e() && !at.a(ViewConfiguration.get(this.f576a))) {
            if (!this.u.f()) {
                if (!q() && b(a2, keyEvent)) {
                    z2 = this.u.h();
                }
                z2 = false;
            } else {
                z2 = this.u.i();
            }
        } else if (a2.o || a2.n) {
            boolean z3 = a2.o;
            a(a2, true);
            z2 = z3;
        } else {
            if (a2.m) {
                if (a2.r) {
                    a2.m = false;
                    z = b(a2, keyEvent);
                } else {
                    z = true;
                }
                if (z) {
                    a(a2, keyEvent);
                }
            }
            z2 = false;
        }
        if (z2) {
            AudioManager audioManager = (AudioManager) this.f576a.getSystemService("audio");
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
            } else {
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
            }
        }
        return z2;
    }

    void a(int i, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i >= 0 && i < this.E.length) {
                panelFeatureState = this.E[i];
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.j;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.o) && !q()) {
            this.c.onPanelClosed(i, menu);
        }
    }

    PanelFeatureState a(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.E;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null && panelFeatureState.j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PanelFeatureState a(int i, boolean z) {
        PanelFeatureState[] panelFeatureStateArr = this.E;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.E = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
        if (panelFeatureState == null) {
            PanelFeatureState panelFeatureState2 = new PanelFeatureState(i);
            panelFeatureStateArr[i] = panelFeatureState2;
            return panelFeatureState2;
        }
        return panelFeatureState;
    }

    private boolean a(PanelFeatureState panelFeatureState, int i, KeyEvent keyEvent, int i2) {
        boolean z = false;
        if (!keyEvent.isSystem()) {
            if ((panelFeatureState.m || b(panelFeatureState, keyEvent)) && panelFeatureState.j != null) {
                z = panelFeatureState.j.performShortcut(i, keyEvent, i2);
            }
            if (z && (i2 & 1) == 0 && this.u == null) {
                a(panelFeatureState, true);
            }
        }
        return z;
    }

    private void d(int i) {
        this.s |= 1 << i;
        if (!this.r) {
            ai.a(this.b.getDecorView(), this.H);
            this.r = true;
        }
    }

    void f(int i) {
        PanelFeatureState a2;
        PanelFeatureState a3 = a(i, true);
        if (a3.j != null) {
            Bundle bundle = new Bundle();
            a3.j.c(bundle);
            if (bundle.size() > 0) {
                a3.s = bundle;
            }
            a3.j.g();
            a3.j.clear();
        }
        a3.r = true;
        a3.q = true;
        if ((i == 108 || i == 0) && this.u != null && (a2 = a(0, false)) != null) {
            a2.m = false;
            b(a2, (KeyEvent) null);
        }
    }

    int g(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = true;
        int i2 = 0;
        if (this.n == null || !(this.n.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.n.getLayoutParams();
            if (this.n.isShown()) {
                if (this.J == null) {
                    this.J = new Rect();
                    this.K = new Rect();
                }
                Rect rect = this.J;
                Rect rect2 = this.K;
                rect.set(0, i, 0, 0);
                ba.a(this.y, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i : 0)) {
                    marginLayoutParams.topMargin = i;
                    if (this.A == null) {
                        this.A = new View(this.f576a);
                        this.A.setBackgroundColor(this.f576a.getResources().getColor(R.color.abc_input_method_navigation_guard));
                        this.y.addView(this.A, -1, new ViewGroup.LayoutParams(-1, i));
                        z3 = true;
                    } else {
                        ViewGroup.LayoutParams layoutParams = this.A.getLayoutParams();
                        if (layoutParams.height != i) {
                            layoutParams.height = i;
                            this.A.setLayoutParams(layoutParams);
                        }
                        z3 = true;
                    }
                } else {
                    z3 = false;
                }
                if (this.A == null) {
                    z4 = false;
                }
                if (!this.j && z4) {
                    i = 0;
                }
                boolean z5 = z3;
                z2 = z4;
                z4 = z5;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
            } else {
                z4 = false;
                z2 = false;
            }
            if (z4) {
                this.n.setLayoutParams(marginLayoutParams);
            }
            z = z2;
        }
        if (this.A != null) {
            View view = this.A;
            if (!z) {
                i2 = 8;
            }
            view.setVisibility(i2);
        }
        return i;
    }

    private void A() {
        if (this.x) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private int h(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        } else if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            return 109;
        } else {
            return i;
        }
    }

    void w() {
        if (this.u != null) {
            this.u.k();
        }
        if (this.o != null) {
            this.b.getDecorView().removeCallbacks(this.p);
            if (this.o.isShowing()) {
                try {
                    this.o.dismiss();
                } catch (IllegalArgumentException e) {
                }
            }
            this.o = null;
        }
        u();
        PanelFeatureState a2 = a(0, false);
        if (a2 != null && a2.j != null) {
            a2.j.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements b.a {
        private b.a b;

        public b(b.a aVar) {
            this.b = aVar;
        }

        @Override // android.support.v7.view.b.a
        public boolean a(android.support.v7.view.b bVar, Menu menu) {
            return this.b.a(bVar, menu);
        }

        @Override // android.support.v7.view.b.a
        public boolean b(android.support.v7.view.b bVar, Menu menu) {
            return this.b.b(bVar, menu);
        }

        @Override // android.support.v7.view.b.a
        public boolean a(android.support.v7.view.b bVar, MenuItem menuItem) {
            return this.b.a(bVar, menuItem);
        }

        @Override // android.support.v7.view.b.a
        public void a(android.support.v7.view.b bVar) {
            this.b.a(bVar);
            if (AppCompatDelegateImplV9.this.o != null) {
                AppCompatDelegateImplV9.this.b.getDecorView().removeCallbacks(AppCompatDelegateImplV9.this.p);
            }
            if (AppCompatDelegateImplV9.this.n != null) {
                AppCompatDelegateImplV9.this.u();
                AppCompatDelegateImplV9.this.q = ai.r(AppCompatDelegateImplV9.this.n).a(BitmapDescriptorFactory.HUE_RED);
                AppCompatDelegateImplV9.this.q.a(new be() { // from class: android.support.v7.app.AppCompatDelegateImplV9.b.1
                    @Override // android.support.v4.view.be, android.support.v4.view.bd
                    public void b(View view) {
                        AppCompatDelegateImplV9.this.n.setVisibility(8);
                        if (AppCompatDelegateImplV9.this.o != null) {
                            AppCompatDelegateImplV9.this.o.dismiss();
                        } else if (AppCompatDelegateImplV9.this.n.getParent() instanceof View) {
                            ai.w((View) AppCompatDelegateImplV9.this.n.getParent());
                        }
                        AppCompatDelegateImplV9.this.n.removeAllViews();
                        AppCompatDelegateImplV9.this.q.a((bd) null);
                        AppCompatDelegateImplV9.this.q = null;
                    }
                });
            }
            if (AppCompatDelegateImplV9.this.e != null) {
                AppCompatDelegateImplV9.this.e.onSupportActionModeFinished(AppCompatDelegateImplV9.this.m);
            }
            AppCompatDelegateImplV9.this.m = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class d implements o.a {
        d() {
        }

        @Override // android.support.v7.view.menu.o.a
        public void a(android.support.v7.view.menu.h hVar, boolean z) {
            android.support.v7.view.menu.h p = hVar.p();
            boolean z2 = p != hVar;
            AppCompatDelegateImplV9 appCompatDelegateImplV9 = AppCompatDelegateImplV9.this;
            if (z2) {
                hVar = p;
            }
            PanelFeatureState a2 = appCompatDelegateImplV9.a((Menu) hVar);
            if (a2 != null) {
                if (z2) {
                    AppCompatDelegateImplV9.this.a(a2.f551a, a2, p);
                    AppCompatDelegateImplV9.this.a(a2, true);
                    return;
                }
                AppCompatDelegateImplV9.this.a(a2, z);
            }
        }

        @Override // android.support.v7.view.menu.o.a
        public boolean a(android.support.v7.view.menu.h hVar) {
            Window.Callback r;
            if (hVar == null && AppCompatDelegateImplV9.this.h && (r = AppCompatDelegateImplV9.this.r()) != null && !AppCompatDelegateImplV9.this.q()) {
                r.onMenuOpened(108, hVar);
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class a implements o.a {
        a() {
        }

        @Override // android.support.v7.view.menu.o.a
        public boolean a(android.support.v7.view.menu.h hVar) {
            Window.Callback r = AppCompatDelegateImplV9.this.r();
            if (r != null) {
                r.onMenuOpened(108, hVar);
                return true;
            }
            return true;
        }

        @Override // android.support.v7.view.menu.o.a
        public void a(android.support.v7.view.menu.h hVar, boolean z) {
            AppCompatDelegateImplV9.this.b(hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class PanelFeatureState {

        /* renamed from: a  reason: collision with root package name */
        int f551a;
        int b;
        int c;
        int d;
        int e;
        int f;
        ViewGroup g;
        View h;
        View i;
        android.support.v7.view.menu.h j;
        android.support.v7.view.menu.f k;
        Context l;
        boolean m;
        boolean n;
        boolean o;
        public boolean p;
        boolean q = false;
        boolean r;
        Bundle s;

        PanelFeatureState(int i) {
            this.f551a = i;
        }

        public boolean a() {
            if (this.h == null) {
                return false;
            }
            return this.i != null || this.k.d().getCount() > 0;
        }

        void a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            }
            newTheme.resolveAttribute(R.attr.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            } else {
                newTheme.applyStyle(R.style.Theme_AppCompat_CompactMenu, true);
            }
            android.support.v7.view.d dVar = new android.support.v7.view.d(context, 0);
            dVar.getTheme().setTo(newTheme);
            this.l = dVar;
            TypedArray obtainStyledAttributes = dVar.obtainStyledAttributes(R.styleable.AppCompatTheme);
            this.b = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTheme_panelBackground, 0);
            this.f = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }

        void a(android.support.v7.view.menu.h hVar) {
            if (hVar != this.j) {
                if (this.j != null) {
                    this.j.b(this.k);
                }
                this.j = hVar;
                if (hVar == null || this.k == null) {
                    return;
                }
                hVar.a(this.k);
            }
        }

        android.support.v7.view.menu.p a(o.a aVar) {
            if (this.j == null) {
                return null;
            }
            if (this.k == null) {
                this.k = new android.support.v7.view.menu.f(this.l, R.layout.abc_list_menu_item_layout);
                this.k.a(aVar);
                this.j.a(this.k);
            }
            return this.k.a(this.g);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = android.support.v4.os.e.a(new android.support.v4.os.f<SavedState>() { // from class: android.support.v7.app.AppCompatDelegateImplV9.PanelFeatureState.SavedState.1
                @Override // android.support.v4.os.f
                /* renamed from: a */
                public SavedState b(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.a(parcel, classLoader);
                }

                @Override // android.support.v4.os.f
                /* renamed from: a */
                public SavedState[] b(int i) {
                    return new SavedState[i];
                }
            });

            /* renamed from: a  reason: collision with root package name */
            int f552a;
            boolean b;
            Bundle c;

            SavedState() {
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f552a);
                parcel.writeInt(this.b ? 1 : 0);
                if (this.b) {
                    parcel.writeBundle(this.c);
                }
            }

            static SavedState a(Parcel parcel, ClassLoader classLoader) {
                boolean z = true;
                SavedState savedState = new SavedState();
                savedState.f552a = parcel.readInt();
                if (parcel.readInt() != 1) {
                    z = false;
                }
                savedState.b = z;
                if (savedState.b) {
                    savedState.c = parcel.readBundle(classLoader);
                }
                return savedState;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends ContentFrameLayout {
        public c(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImplV9.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImplV9.this.e(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(android.support.v7.a.a.b.b(getContext(), i));
        }

        private boolean a(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }
    }
}
