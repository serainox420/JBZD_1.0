package android.support.design.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.support.design.R;
import android.support.design.widget.a;
import android.support.design.widget.j;
import android.support.design.widget.r;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FloatingActionButtonGingerbread.java */
/* loaded from: classes.dex */
public class h extends j {

    /* renamed from: a  reason: collision with root package name */
    m f113a;
    private final p q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(VisibilityAwareImageButton visibilityAwareImageButton, n nVar, r.d dVar) {
        super(visibilityAwareImageButton, nVar, dVar);
        this.q = new p();
        this.q.a(j, a(new b()));
        this.q.a(k, a(new b()));
        this.q.a(l, a(new c()));
        this.q.a(m, a(new a()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.j
    public void a(ColorStateList colorStateList, PorterDuff.Mode mode, int i, int i2) {
        Drawable[] drawableArr;
        this.d = android.support.v4.b.a.a.g(k());
        android.support.v4.b.a.a.a(this.d, colorStateList);
        if (mode != null) {
            android.support.v4.b.a.a.a(this.d, mode);
        }
        this.e = android.support.v4.b.a.a.g(k());
        android.support.v4.b.a.a.a(this.e, b(i));
        if (i2 > 0) {
            this.f = a(i2, colorStateList);
            drawableArr = new Drawable[]{this.f, this.d, this.e};
        } else {
            this.f = null;
            drawableArr = new Drawable[]{this.d, this.e};
        }
        this.g = new LayerDrawable(drawableArr);
        this.f113a = new m(this.n.getContext(), this.g, this.o.a(), this.h, this.h + this.i);
        this.f113a.a(false);
        this.o.a(this.f113a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.j
    public void a(ColorStateList colorStateList) {
        if (this.d != null) {
            android.support.v4.b.a.a.a(this.d, colorStateList);
        }
        if (this.f != null) {
            this.f.a(colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.j
    public void a(PorterDuff.Mode mode) {
        if (this.d != null) {
            android.support.v4.b.a.a.a(this.d, mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.j
    public void a(int i) {
        if (this.e != null) {
            android.support.v4.b.a.a.a(this.e, b(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.j
    public float a() {
        return this.h;
    }

    @Override // android.support.design.widget.j
    void a(float f, float f2) {
        if (this.f113a != null) {
            this.f113a.a(f, this.i + f);
            g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.j
    public void a(int[] iArr) {
        this.q.a(iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.j
    public void b() {
        this.q.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.j
    public void a(final j.a aVar, final boolean z) {
        if (!n()) {
            this.c = 1;
            Animation loadAnimation = AnimationUtils.loadAnimation(this.n.getContext(), R.anim.design_fab_out);
            loadAnimation.setInterpolator(android.support.design.widget.a.c);
            loadAnimation.setDuration(200L);
            loadAnimation.setAnimationListener(new a.animation.Animation$AnimationListenerC0005a() { // from class: android.support.design.widget.h.1
                @Override // android.support.design.widget.a.animation.Animation$AnimationListenerC0005a, android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    h.this.c = 0;
                    h.this.n.a(z ? 8 : 4, z);
                    if (aVar != null) {
                        aVar.b();
                    }
                }
            });
            this.n.startAnimation(loadAnimation);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.j
    public void b(final j.a aVar, boolean z) {
        if (!m()) {
            this.c = 2;
            this.n.a(0, z);
            Animation loadAnimation = AnimationUtils.loadAnimation(this.n.getContext(), R.anim.design_fab_in);
            loadAnimation.setDuration(200L);
            loadAnimation.setInterpolator(android.support.design.widget.a.d);
            loadAnimation.setAnimationListener(new a.animation.Animation$AnimationListenerC0005a() { // from class: android.support.design.widget.h.2
                @Override // android.support.design.widget.a.animation.Animation$AnimationListenerC0005a, android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    h.this.c = 0;
                    if (aVar != null) {
                        aVar.a();
                    }
                }
            });
            this.n.startAnimation(loadAnimation);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.j
    public void c() {
    }

    @Override // android.support.design.widget.j
    void a(Rect rect) {
        this.f113a.getPadding(rect);
    }

    private r a(d dVar) {
        r a2 = this.p.a();
        a2.a(b);
        a2.a(100L);
        a2.a((r.a) dVar);
        a2.a((r.c) dVar);
        a2.a(BitmapDescriptorFactory.HUE_RED, 1.0f);
        return a2;
    }

    /* compiled from: FloatingActionButtonGingerbread.java */
    /* loaded from: classes.dex */
    private abstract class d extends r.b implements r.c {

        /* renamed from: a  reason: collision with root package name */
        private boolean f119a;
        private float c;
        private float d;

        protected abstract float a();

        private d() {
        }

        @Override // android.support.design.widget.r.c
        public void a(r rVar) {
            if (!this.f119a) {
                this.c = h.this.f113a.a();
                this.d = a();
                this.f119a = true;
            }
            h.this.f113a.b(this.c + ((this.d - this.c) * rVar.f()));
        }

        @Override // android.support.design.widget.r.b, android.support.design.widget.r.a
        public void b(r rVar) {
            h.this.f113a.b(this.d);
            this.f119a = false;
        }
    }

    /* compiled from: FloatingActionButtonGingerbread.java */
    /* loaded from: classes.dex */
    private class c extends d {
        c() {
            super();
        }

        @Override // android.support.design.widget.h.d
        protected float a() {
            return h.this.h;
        }
    }

    /* compiled from: FloatingActionButtonGingerbread.java */
    /* loaded from: classes.dex */
    private class b extends d {
        b() {
            super();
        }

        @Override // android.support.design.widget.h.d
        protected float a() {
            return h.this.h + h.this.i;
        }
    }

    /* compiled from: FloatingActionButtonGingerbread.java */
    /* loaded from: classes.dex */
    private class a extends d {
        a() {
            super();
        }

        @Override // android.support.design.widget.h.d
        protected float a() {
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    private static ColorStateList b(int i) {
        return new ColorStateList(new int[][]{k, j, new int[0]}, new int[]{i, i, 0});
    }
}
