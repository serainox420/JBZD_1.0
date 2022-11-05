package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.o;
import android.support.v7.widget.ae;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
/* compiled from: StandardMenuPopup.java */
/* loaded from: classes.dex */
final class t extends m implements o, View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {

    /* renamed from: a  reason: collision with root package name */
    final ae f730a;
    View b;
    private final Context c;
    private final h d;
    private final g e;
    private final boolean f;
    private final int g;
    private final int h;
    private final int i;
    private PopupWindow.OnDismissListener k;
    private View l;
    private o.a m;
    private ViewTreeObserver n;
    private boolean o;
    private boolean p;
    private int q;
    private boolean s;
    private final ViewTreeObserver.OnGlobalLayoutListener j = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.view.menu.t.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (t.this.f() && !t.this.f730a.c()) {
                View view = t.this.b;
                if (view == null || !view.isShown()) {
                    t.this.e();
                } else {
                    t.this.f730a.d();
                }
            }
        }
    };
    private int r = 0;

    public t(Context context, h hVar, View view, int i, int i2, boolean z) {
        this.c = context;
        this.d = hVar;
        this.f = z;
        this.e = new g(hVar, LayoutInflater.from(context), this.f);
        this.h = i;
        this.i = i2;
        Resources resources = context.getResources();
        this.g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.l = view;
        this.f730a = new ae(this.c, null, this.h, this.i);
        hVar.a(this, context);
    }

    @Override // android.support.v7.view.menu.m
    public void b(boolean z) {
        this.e.a(z);
    }

    @Override // android.support.v7.view.menu.m
    public void a(int i) {
        this.r = i;
    }

    private boolean j() {
        if (f()) {
            return true;
        }
        if (this.o || this.l == null) {
            return false;
        }
        this.b = this.l;
        this.f730a.a((PopupWindow.OnDismissListener) this);
        this.f730a.a((AdapterView.OnItemClickListener) this);
        this.f730a.a(true);
        View view = this.b;
        boolean z = this.n == null;
        this.n = view.getViewTreeObserver();
        if (z) {
            this.n.addOnGlobalLayoutListener(this.j);
        }
        this.f730a.b(view);
        this.f730a.e(this.r);
        if (!this.p) {
            this.q = a(this.e, null, this.c, this.g);
            this.p = true;
        }
        this.f730a.g(this.q);
        this.f730a.h(2);
        this.f730a.a(i());
        this.f730a.d();
        ListView g = this.f730a.g();
        g.setOnKeyListener(this);
        if (this.s && this.d.m() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.c).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) g, false);
            TextView textView = (TextView) frameLayout.findViewById(16908310);
            if (textView != null) {
                textView.setText(this.d.m());
            }
            frameLayout.setEnabled(false);
            g.addHeaderView(frameLayout, null, false);
        }
        this.f730a.a((ListAdapter) this.e);
        this.f730a.d();
        return true;
    }

    @Override // android.support.v7.view.menu.s
    public void d() {
        if (!j()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // android.support.v7.view.menu.s
    public void e() {
        if (f()) {
            this.f730a.e();
        }
    }

    @Override // android.support.v7.view.menu.m
    public void a(h hVar) {
    }

    @Override // android.support.v7.view.menu.s
    public boolean f() {
        return !this.o && this.f730a.f();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.o = true;
        this.d.close();
        if (this.n != null) {
            if (!this.n.isAlive()) {
                this.n = this.b.getViewTreeObserver();
            }
            this.n.removeGlobalOnLayoutListener(this.j);
            this.n = null;
        }
        if (this.k != null) {
            this.k.onDismiss();
        }
    }

    @Override // android.support.v7.view.menu.o
    public void a(boolean z) {
        this.p = false;
        if (this.e != null) {
            this.e.notifyDataSetChanged();
        }
    }

    @Override // android.support.v7.view.menu.o
    public void a(o.a aVar) {
        this.m = aVar;
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(u uVar) {
        if (uVar.hasVisibleItems()) {
            n nVar = new n(this.c, uVar, this.b, this.f, this.h, this.i);
            nVar.a(this.m);
            nVar.a(m.b(uVar));
            nVar.a(this.k);
            this.k = null;
            this.d.b(false);
            if (nVar.a(this.f730a.j(), this.f730a.k())) {
                if (this.m != null) {
                    this.m.a(uVar);
                }
                return true;
            }
        }
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public void a(h hVar, boolean z) {
        if (hVar == this.d) {
            e();
            if (this.m != null) {
                this.m.a(hVar, z);
            }
        }
    }

    @Override // android.support.v7.view.menu.o
    public boolean a() {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public Parcelable c() {
        return null;
    }

    @Override // android.support.v7.view.menu.o
    public void a(Parcelable parcelable) {
    }

    @Override // android.support.v7.view.menu.m
    public void a(View view) {
        this.l = view;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 82) {
            e();
            return true;
        }
        return false;
    }

    @Override // android.support.v7.view.menu.m
    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.k = onDismissListener;
    }

    @Override // android.support.v7.view.menu.s
    public ListView g() {
        return this.f730a.g();
    }

    @Override // android.support.v7.view.menu.m
    public void b(int i) {
        this.f730a.c(i);
    }

    @Override // android.support.v7.view.menu.m
    public void c(int i) {
        this.f730a.d(i);
    }

    @Override // android.support.v7.view.menu.m
    public void c(boolean z) {
        this.s = z;
    }
}
