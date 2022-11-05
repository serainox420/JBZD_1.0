package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.support.design.R;
import android.support.design.widget.r;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;
/* compiled from: FloatingActionButtonImpl.java */
/* loaded from: classes.dex */
abstract class j {
    static final Interpolator b = android.support.design.widget.a.c;
    static final int[] j = {16842919, 16842910};
    static final int[] k = {16842908, 16842910};
    static final int[] l = {16842910};
    static final int[] m = new int[0];
    Drawable d;
    Drawable e;
    c f;
    Drawable g;
    float h;
    float i;
    final VisibilityAwareImageButton n;
    final n o;
    final r.d p;
    private ViewTreeObserver.OnPreDrawListener q;
    int c = 0;

    /* renamed from: a  reason: collision with root package name */
    private final Rect f122a = new Rect();

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes.dex */
    interface a {
        void a();

        void b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract float a();

    abstract void a(float f, float f2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(ColorStateList colorStateList);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(ColorStateList colorStateList, PorterDuff.Mode mode, int i, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(PorterDuff.Mode mode);

    abstract void a(Rect rect);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(a aVar, boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(int[] iArr);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(a aVar, boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(VisibilityAwareImageButton visibilityAwareImageButton, n nVar, r.d dVar) {
        this.n = visibilityAwareImageButton;
        this.o = nVar;
        this.p = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f) {
        if (this.h != f) {
            this.h = f;
            a(f, this.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(float f) {
        if (this.i != f) {
            this.i = f;
            a(this.h, f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Drawable f() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g() {
        Rect rect = this.f122a;
        a(rect);
        b(rect);
        this.o.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    void b(Rect rect) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        if (d()) {
            o();
            this.n.getViewTreeObserver().addOnPreDrawListener(this.q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        if (this.q != null) {
            this.n.getViewTreeObserver().removeOnPreDrawListener(this.q);
            this.q = null;
        }
    }

    boolean d() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c a(int i, ColorStateList colorStateList) {
        Context context = this.n.getContext();
        c j2 = j();
        j2.a(android.support.v4.content.b.c(context, R.color.design_fab_stroke_top_outer_color), android.support.v4.content.b.c(context, R.color.design_fab_stroke_top_inner_color), android.support.v4.content.b.c(context, R.color.design_fab_stroke_end_inner_color), android.support.v4.content.b.c(context, R.color.design_fab_stroke_end_outer_color));
        j2.a(i);
        j2.a(colorStateList);
        return j2;
    }

    c j() {
        return new c();
    }

    void e() {
    }

    private void o() {
        if (this.q == null) {
            this.q = new ViewTreeObserver.OnPreDrawListener() { // from class: android.support.design.widget.j.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    j.this.e();
                    return true;
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GradientDrawable k() {
        GradientDrawable l2 = l();
        l2.setShape(1);
        l2.setColor(-1);
        return l2;
    }

    GradientDrawable l() {
        return new GradientDrawable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m() {
        return this.n.getVisibility() != 0 ? this.c == 2 : this.c != 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean n() {
        return this.n.getVisibility() == 0 ? this.c == 1 : this.c != 2;
    }
}
