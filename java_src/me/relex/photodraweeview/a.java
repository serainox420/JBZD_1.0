package me.relex.photodraweeview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.support.v4.view.t;
import android.support.v4.widget.x;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import com.facebook.drawee.drawable.ScalingUtils;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.drawee.view.DraweeView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
/* compiled from: Attacher.java */
/* loaded from: classes3.dex */
public class a implements View.OnTouchListener, e {
    private g i;
    private android.support.v4.view.e j;
    private b r;
    private WeakReference<DraweeView<GenericDraweeHierarchy>> s;
    private c t;
    private f u;
    private View.OnLongClickListener v;
    private d w;

    /* renamed from: a  reason: collision with root package name */
    private int f5818a = 0;
    private final float[] b = new float[9];
    private final RectF c = new RectF();
    private final Interpolator d = new AccelerateDecelerateInterpolator();
    private float e = 1.0f;
    private float f = 1.75f;
    private float g = 3.0f;
    private long h = 200;
    private boolean k = false;
    private boolean l = true;
    private int m = 2;
    private int n = 2;
    private final Matrix o = new Matrix();
    private int p = -1;
    private int q = -1;

    public a(DraweeView<GenericDraweeHierarchy> draweeView) {
        this.s = new WeakReference<>(draweeView);
        draweeView.getHierarchy().setActualImageScaleType(ScalingUtils.ScaleType.FIT_CENTER);
        draweeView.setOnTouchListener(this);
        this.i = new g(draweeView.getContext(), this);
        this.j = new android.support.v4.view.e(draweeView.getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: me.relex.photodraweeview.a.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                super.onLongPress(motionEvent);
                if (a.this.v != null) {
                    a.this.v.onLongClick(a.this.a());
                }
            }
        });
        this.j.a(new me.relex.photodraweeview.b(this));
    }

    public void a(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        if (onDoubleTapListener != null) {
            this.j.a(onDoubleTapListener);
        } else {
            this.j.a(new me.relex.photodraweeview.b(this));
        }
    }

    public DraweeView<GenericDraweeHierarchy> a() {
        return this.s.get();
    }

    public float b() {
        return this.e;
    }

    public float c() {
        return this.f;
    }

    public float d() {
        return this.g;
    }

    public void a(float f) {
        b(this.e, this.f, f);
        this.g = f;
    }

    public void b(float f) {
        b(this.e, f, this.g);
        this.f = f;
    }

    public void c(float f) {
        b(f, this.f, this.g);
        this.e = f;
    }

    public float e() {
        return (float) Math.sqrt(((float) Math.pow(a(this.o, 0), 2.0d)) + ((float) Math.pow(a(this.o, 3), 2.0d)));
    }

    public void d(float f) {
        a(f, false);
    }

    public void a(float f, boolean z) {
        DraweeView<GenericDraweeHierarchy> a2 = a();
        if (a2 != null) {
            a(f, a2.getRight() / 2, a2.getBottom() / 2, false);
        }
    }

    public void a(float f, float f2, float f3, boolean z) {
        DraweeView<GenericDraweeHierarchy> a2 = a();
        if (a2 != null && f >= this.e && f <= this.g) {
            if (z) {
                a2.post(new RunnableC0597a(e(), f, f2, f3));
                return;
            }
            this.o.setScale(f, f, f2, f3);
            j();
        }
    }

    public void a(int i) {
        this.f5818a = i;
    }

    public void a(long j) {
        if (j < 0) {
            j = 200;
        }
        this.h = j;
    }

    public void a(boolean z) {
        this.l = z;
    }

    public void a(d dVar) {
        this.w = dVar;
    }

    public void a(View.OnLongClickListener onLongClickListener) {
        this.v = onLongClickListener;
    }

    public void a(c cVar) {
        this.t = cVar;
    }

    public void a(f fVar) {
        this.u = fVar;
    }

    public c f() {
        return this.t;
    }

    public f g() {
        return this.u;
    }

    public void a(int i, int i2) {
        this.q = i;
        this.p = i2;
        p();
    }

    private static void b(float f, float f2, float f3) {
        if (f >= f2) {
            throw new IllegalArgumentException("MinZoom has to be less than MidZoom");
        }
        if (f2 >= f3) {
            throw new IllegalArgumentException("MidZoom has to be less than MaxZoom");
        }
    }

    private int n() {
        DraweeView<GenericDraweeHierarchy> a2 = a();
        if (a2 != null) {
            return (a2.getWidth() - a2.getPaddingLeft()) - a2.getPaddingRight();
        }
        return 0;
    }

    private int o() {
        DraweeView<GenericDraweeHierarchy> a2 = a();
        if (a2 != null) {
            return (a2.getHeight() - a2.getPaddingTop()) - a2.getPaddingBottom();
        }
        return 0;
    }

    private float a(Matrix matrix, int i) {
        matrix.getValues(this.b);
        return this.b[i];
    }

    public Matrix h() {
        return this.o;
    }

    public RectF i() {
        k();
        return a(h());
    }

    public void j() {
        DraweeView<GenericDraweeHierarchy> a2 = a();
        if (a2 != null && k()) {
            a2.invalidate();
        }
    }

    public boolean k() {
        float f;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        RectF a2 = a(h());
        if (a2 == null) {
            return false;
        }
        float height = a2.height();
        float width = a2.width();
        int o = o();
        if (height <= o) {
            f = ((o - height) / 2.0f) - a2.top;
            this.n = 2;
        } else if (a2.top > BitmapDescriptorFactory.HUE_RED) {
            f = -a2.top;
            this.n = 0;
        } else if (a2.bottom < o) {
            f = o - a2.bottom;
            this.n = 1;
        } else {
            this.n = -1;
            f = 0.0f;
        }
        int n = n();
        if (width <= n) {
            f2 = ((n - width) / 2.0f) - a2.left;
            this.m = 2;
        } else if (a2.left > BitmapDescriptorFactory.HUE_RED) {
            f2 = -a2.left;
            this.m = 0;
        } else if (a2.right < n) {
            f2 = n - a2.right;
            this.m = 1;
        } else {
            this.m = -1;
        }
        this.o.postTranslate(f2, f);
        return true;
    }

    private RectF a(Matrix matrix) {
        DraweeView<GenericDraweeHierarchy> a2 = a();
        if (a2 == null || (this.q == -1 && this.p == -1)) {
            return null;
        }
        this.c.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.q, this.p);
        a2.getHierarchy().getActualImageBounds(this.c);
        matrix.mapRect(this.c);
        return this.c;
    }

    private void p() {
        if (this.q != -1 || this.p != -1) {
            q();
        }
    }

    private void q() {
        this.o.reset();
        k();
        DraweeView<GenericDraweeHierarchy> a2 = a();
        if (a2 != null) {
            a2.invalidate();
        }
    }

    private void r() {
        RectF i;
        DraweeView<GenericDraweeHierarchy> a2 = a();
        if (a2 != null && e() < this.e && (i = i()) != null) {
            a2.post(new RunnableC0597a(e(), this.e, i.centerX(), i.centerY()));
        }
    }

    @Override // me.relex.photodraweeview.e
    public void a(float f, float f2, float f3) {
        if (e() < this.g || f < 1.0f) {
            if (this.w != null) {
                this.w.a(f, f2, f3);
            }
            this.o.postScale(f, f, f2, f3);
            j();
        }
    }

    @Override // me.relex.photodraweeview.e
    public void l() {
        r();
    }

    @Override // me.relex.photodraweeview.e
    public void a(float f, float f2) {
        DraweeView<GenericDraweeHierarchy> a2 = a();
        if (a2 != null && !this.i.a()) {
            this.o.postTranslate(f, f2);
            j();
            ViewParent parent = a2.getParent();
            if (parent != null) {
                if (this.l && !this.i.a() && !this.k) {
                    if (this.f5818a == 0 && (this.m == 2 || ((this.m == 0 && f >= 1.0f) || (this.m == 1 && f <= -1.0f)))) {
                        parent.requestDisallowInterceptTouchEvent(false);
                        return;
                    } else if (this.f5818a != 1) {
                        return;
                    } else {
                        if (this.n == 2 || ((this.n == 0 && f2 >= 1.0f) || (this.n == 1 && f2 <= -1.0f))) {
                            parent.requestDisallowInterceptTouchEvent(false);
                            return;
                        }
                        return;
                    }
                }
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    @Override // me.relex.photodraweeview.e
    public void a(float f, float f2, float f3, float f4) {
        DraweeView<GenericDraweeHierarchy> a2 = a();
        if (a2 != null) {
            this.r = new b(a2.getContext());
            this.r.a(n(), o(), (int) f3, (int) f4);
            a2.post(this.r);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z = false;
        switch (t.a(motionEvent)) {
            case 0:
                ViewParent parent = view.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                s();
                break;
            case 1:
            case 3:
                ViewParent parent2 = view.getParent();
                if (parent2 != null) {
                    parent2.requestDisallowInterceptTouchEvent(false);
                    break;
                }
                break;
        }
        boolean a2 = this.i.a();
        boolean b2 = this.i.b();
        boolean a3 = this.i.a(motionEvent);
        boolean z2 = !a2 && !this.i.a();
        boolean z3 = !b2 && !this.i.b();
        if (z2 && z3) {
            z = true;
        }
        this.k = z;
        if (this.j.a(motionEvent)) {
            return true;
        }
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Attacher.java */
    /* renamed from: me.relex.photodraweeview.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class RunnableC0597a implements Runnable {
        private final float b;
        private final float c;
        private final long d = System.currentTimeMillis();
        private final float e;
        private final float f;

        public RunnableC0597a(float f, float f2, float f3, float f4) {
            this.b = f3;
            this.c = f4;
            this.e = f;
            this.f = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            DraweeView<GenericDraweeHierarchy> a2 = a.this.a();
            if (a2 != null) {
                float a3 = a();
                a.this.a((this.e + ((this.f - this.e) * a3)) / a.this.e(), this.b, this.c);
                if (a3 < 1.0f) {
                    a.this.a(a2, this);
                }
            }
        }

        private float a() {
            return a.this.d.getInterpolation(Math.min(1.0f, (((float) (System.currentTimeMillis() - this.d)) * 1.0f) / ((float) a.this.h)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Attacher.java */
    /* loaded from: classes3.dex */
    public class b implements Runnable {
        private final x b;
        private int c;
        private int d;

        public b(Context context) {
            this.b = x.a(context);
        }

        public void a() {
            this.b.h();
        }

        public void a(int i, int i2, int i3, int i4) {
            int i5;
            int i6;
            int i7;
            int i8;
            RectF i9 = a.this.i();
            if (i9 != null) {
                int round = Math.round(-i9.left);
                if (i < i9.width()) {
                    i5 = Math.round(i9.width() - i);
                    i6 = 0;
                } else {
                    i5 = round;
                    i6 = round;
                }
                int round2 = Math.round(-i9.top);
                if (i2 < i9.height()) {
                    i7 = Math.round(i9.height() - i2);
                    i8 = 0;
                } else {
                    i7 = round2;
                    i8 = round2;
                }
                this.c = round;
                this.d = round2;
                if (round != i5 || round2 != i7) {
                    this.b.a(round, round2, i3, i4, i6, i5, i8, i7, 0, 0);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            DraweeView<GenericDraweeHierarchy> a2;
            if (!this.b.a() && (a2 = a.this.a()) != null && this.b.g()) {
                int b = this.b.b();
                int c = this.b.c();
                a.this.o.postTranslate(this.c - b, this.d - c);
                a2.invalidate();
                this.c = b;
                this.d = c;
                a.this.a(a2, this);
            }
        }
    }

    private void s() {
        if (this.r != null) {
            this.r.a();
            this.r = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void m() {
        s();
    }
}
