package android.support.v4.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.support.v4.view.ai;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: AutoScrollHelper.java */
/* loaded from: classes.dex */
public abstract class a implements View.OnTouchListener {
    private static final int r = ViewConfiguration.getTapTimeout();
    final View b;
    boolean c;
    boolean d;
    boolean e;
    private Runnable g;
    private int j;
    private int k;
    private boolean o;
    private boolean p;
    private boolean q;

    /* renamed from: a  reason: collision with root package name */
    final C0032a f501a = new C0032a();
    private final Interpolator f = new AccelerateInterpolator();
    private float[] h = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    private float[] i = {Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] l = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    private float[] m = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    private float[] n = {Float.MAX_VALUE, Float.MAX_VALUE};

    public abstract void a(int i, int i2);

    public abstract boolean e(int i);

    public abstract boolean f(int i);

    public a(View view) {
        this.b = view;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i = (int) ((1575.0f * displayMetrics.density) + 0.5f);
        int i2 = (int) ((displayMetrics.density * 315.0f) + 0.5f);
        a(i, i);
        b(i2, i2);
        a(1);
        e(Float.MAX_VALUE, Float.MAX_VALUE);
        d(0.2f, 0.2f);
        c(1.0f, 1.0f);
        b(r);
        c(500);
        d(500);
    }

    public a a(boolean z) {
        if (this.p && !z) {
            d();
        }
        this.p = z;
        return this;
    }

    public a a(float f, float f2) {
        this.n[0] = f / 1000.0f;
        this.n[1] = f2 / 1000.0f;
        return this;
    }

    public a b(float f, float f2) {
        this.m[0] = f / 1000.0f;
        this.m[1] = f2 / 1000.0f;
        return this;
    }

    public a c(float f, float f2) {
        this.l[0] = f / 1000.0f;
        this.l[1] = f2 / 1000.0f;
        return this;
    }

    public a a(int i) {
        this.j = i;
        return this;
    }

    public a d(float f, float f2) {
        this.h[0] = f;
        this.h[1] = f2;
        return this;
    }

    public a e(float f, float f2) {
        this.i[0] = f;
        this.i[1] = f2;
        return this;
    }

    public a b(int i) {
        this.k = i;
        return this;
    }

    public a c(int i) {
        this.f501a.a(i);
        return this;
    }

    public a d(int i) {
        this.f501a.b(i);
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z = true;
        if (!this.p) {
            return false;
        }
        switch (android.support.v4.view.t.a(motionEvent)) {
            case 0:
                this.d = true;
                this.o = false;
                this.f501a.a(a(0, motionEvent.getX(), view.getWidth(), this.b.getWidth()), a(1, motionEvent.getY(), view.getHeight(), this.b.getHeight()));
                if (!this.e && a()) {
                    c();
                    break;
                }
                break;
            case 1:
            case 3:
                d();
                break;
            case 2:
                this.f501a.a(a(0, motionEvent.getX(), view.getWidth(), this.b.getWidth()), a(1, motionEvent.getY(), view.getHeight(), this.b.getHeight()));
                if (!this.e) {
                    c();
                    break;
                }
                break;
        }
        if (!this.q || !this.e) {
            z = false;
        }
        return z;
    }

    boolean a() {
        C0032a c0032a = this.f501a;
        int f = c0032a.f();
        int e = c0032a.e();
        return (f != 0 && f(f)) || (e != 0 && e(e));
    }

    private void c() {
        if (this.g == null) {
            this.g = new b();
        }
        this.e = true;
        this.c = true;
        if (!this.o && this.k > 0) {
            ai.a(this.b, this.g, this.k);
        } else {
            this.g.run();
        }
        this.o = true;
    }

    private void d() {
        if (this.c) {
            this.e = false;
        } else {
            this.f501a.b();
        }
    }

    private float a(int i, float f, float f2, float f3) {
        float a2 = a(this.h[i], f2, this.i[i], f);
        if (a2 == BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float f4 = this.l[i];
        float f5 = this.m[i];
        float f6 = this.n[i];
        float f7 = f4 * f3;
        if (a2 > BitmapDescriptorFactory.HUE_RED) {
            return a(a2 * f7, f5, f6);
        }
        return -a((-a2) * f7, f5, f6);
    }

    private float a(float f, float f2, float f3, float f4) {
        float interpolation;
        float a2 = a(f * f2, (float) BitmapDescriptorFactory.HUE_RED, f3);
        float f5 = f(f2 - f4, a2) - f(f4, a2);
        if (f5 < BitmapDescriptorFactory.HUE_RED) {
            interpolation = -this.f.getInterpolation(-f5);
        } else if (f5 <= BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        } else {
            interpolation = this.f.getInterpolation(f5);
        }
        return a(interpolation, -1.0f, 1.0f);
    }

    private float f(float f, float f2) {
        if (f2 == BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        switch (this.j) {
            case 0:
            case 1:
                if (f >= f2) {
                    return BitmapDescriptorFactory.HUE_RED;
                }
                if (f >= BitmapDescriptorFactory.HUE_RED) {
                    return 1.0f - (f / f2);
                }
                if (this.e && this.j == 1) {
                    return 1.0f;
                }
                return BitmapDescriptorFactory.HUE_RED;
            case 2:
                return f < BitmapDescriptorFactory.HUE_RED ? f / (-f2) : BitmapDescriptorFactory.HUE_RED;
            default:
                return BitmapDescriptorFactory.HUE_RED;
        }
    }

    static int a(int i, int i2, int i3) {
        if (i > i3) {
            return i3;
        }
        return i < i2 ? i2 : i;
    }

    static float a(float f, float f2, float f3) {
        if (f > f3) {
            return f3;
        }
        return f < f2 ? f2 : f;
    }

    void b() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
        this.b.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AutoScrollHelper.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.e) {
                if (a.this.c) {
                    a.this.c = false;
                    a.this.f501a.a();
                }
                C0032a c0032a = a.this.f501a;
                if (c0032a.c() || !a.this.a()) {
                    a.this.e = false;
                    return;
                }
                if (a.this.d) {
                    a.this.d = false;
                    a.this.b();
                }
                c0032a.d();
                a.this.a(c0032a.g(), c0032a.h());
                ai.a(a.this.b, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AutoScrollHelper.java */
    /* renamed from: android.support.v4.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0032a {

        /* renamed from: a  reason: collision with root package name */
        private int f502a;
        private int b;
        private float c;
        private float d;
        private float j;
        private int k;
        private long e = Long.MIN_VALUE;
        private long i = -1;
        private long f = 0;
        private int g = 0;
        private int h = 0;

        C0032a() {
        }

        public void a(int i) {
            this.f502a = i;
        }

        public void b(int i) {
            this.b = i;
        }

        public void a() {
            this.e = AnimationUtils.currentAnimationTimeMillis();
            this.i = -1L;
            this.f = this.e;
            this.j = 0.5f;
            this.g = 0;
            this.h = 0;
        }

        public void b() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.k = a.a((int) (currentAnimationTimeMillis - this.e), 0, this.b);
            this.j = a(currentAnimationTimeMillis);
            this.i = currentAnimationTimeMillis;
        }

        public boolean c() {
            return this.i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.i + ((long) this.k);
        }

        private float a(long j) {
            if (j < this.e) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            if (this.i < 0 || j < this.i) {
                return a.a(((float) (j - this.e)) / this.f502a, (float) BitmapDescriptorFactory.HUE_RED, 1.0f) * 0.5f;
            }
            return (a.a(((float) (j - this.i)) / this.k, (float) BitmapDescriptorFactory.HUE_RED, 1.0f) * this.j) + (1.0f - this.j);
        }

        private float a(float f) {
            return ((-4.0f) * f * f) + (4.0f * f);
        }

        public void d() {
            if (this.f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float a2 = a(a(currentAnimationTimeMillis));
            long j = currentAnimationTimeMillis - this.f;
            this.f = currentAnimationTimeMillis;
            this.g = (int) (((float) j) * a2 * this.c);
            this.h = (int) (((float) j) * a2 * this.d);
        }

        public void a(float f, float f2) {
            this.c = f;
            this.d = f2;
        }

        public int e() {
            return (int) (this.c / Math.abs(this.c));
        }

        public int f() {
            return (int) (this.d / Math.abs(this.d));
        }

        public int g() {
            return this.g;
        }

        public int h() {
            return this.h;
        }
    }
}
