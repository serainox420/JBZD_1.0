package android.support.design.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.design.widget.r;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* compiled from: ValueAnimatorCompatImplGingerbread.java */
/* loaded from: classes.dex */
class s extends r.e {

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f135a = new Handler(Looper.getMainLooper());
    private long b;
    private boolean c;
    private float d;
    private Interpolator h;
    private ArrayList<r.e.a> i;
    private ArrayList<r.e.b> j;
    private final int[] e = new int[2];
    private final float[] f = new float[2];
    private long g = 200;
    private final Runnable k = new Runnable() { // from class: android.support.design.widget.s.1
        @Override // java.lang.Runnable
        public void run() {
            s.this.j();
        }
    };

    @Override // android.support.design.widget.r.e
    public void a() {
        if (!this.c) {
            if (this.h == null) {
                this.h = new AccelerateDecelerateInterpolator();
            }
            this.c = true;
            this.d = BitmapDescriptorFactory.HUE_RED;
            i();
        }
    }

    final void i() {
        this.b = SystemClock.uptimeMillis();
        k();
        l();
        f135a.postDelayed(this.k, 10L);
    }

    @Override // android.support.design.widget.r.e
    public boolean b() {
        return this.c;
    }

    @Override // android.support.design.widget.r.e
    public void a(Interpolator interpolator) {
        this.h = interpolator;
    }

    @Override // android.support.design.widget.r.e
    public void a(r.e.a aVar) {
        if (this.i == null) {
            this.i = new ArrayList<>();
        }
        this.i.add(aVar);
    }

    @Override // android.support.design.widget.r.e
    public void a(r.e.b bVar) {
        if (this.j == null) {
            this.j = new ArrayList<>();
        }
        this.j.add(bVar);
    }

    @Override // android.support.design.widget.r.e
    public void a(int i, int i2) {
        this.e[0] = i;
        this.e[1] = i2;
    }

    @Override // android.support.design.widget.r.e
    public int c() {
        return a.a(this.e[0], this.e[1], f());
    }

    @Override // android.support.design.widget.r.e
    public void a(float f, float f2) {
        this.f[0] = f;
        this.f[1] = f2;
    }

    @Override // android.support.design.widget.r.e
    public float d() {
        return a.a(this.f[0], this.f[1], f());
    }

    @Override // android.support.design.widget.r.e
    public void a(long j) {
        this.g = j;
    }

    @Override // android.support.design.widget.r.e
    public void e() {
        this.c = false;
        f135a.removeCallbacks(this.k);
        m();
        n();
    }

    @Override // android.support.design.widget.r.e
    public float f() {
        return this.d;
    }

    @Override // android.support.design.widget.r.e
    public void g() {
        if (this.c) {
            this.c = false;
            f135a.removeCallbacks(this.k);
            this.d = 1.0f;
            k();
            n();
        }
    }

    @Override // android.support.design.widget.r.e
    public long h() {
        return this.g;
    }

    final void j() {
        if (this.c) {
            float a2 = l.a(((float) (SystemClock.uptimeMillis() - this.b)) / ((float) this.g), (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
            if (this.h != null) {
                a2 = this.h.getInterpolation(a2);
            }
            this.d = a2;
            k();
            if (SystemClock.uptimeMillis() >= this.b + this.g) {
                this.c = false;
                n();
            }
        }
        if (this.c) {
            f135a.postDelayed(this.k, 10L);
        }
    }

    private void k() {
        if (this.j != null) {
            int size = this.j.size();
            for (int i = 0; i < size; i++) {
                this.j.get(i).a();
            }
        }
    }

    private void l() {
        if (this.i != null) {
            int size = this.i.size();
            for (int i = 0; i < size; i++) {
                this.i.get(i).a();
            }
        }
    }

    private void m() {
        if (this.i != null) {
            int size = this.i.size();
            for (int i = 0; i < size; i++) {
                this.i.get(i).c();
            }
        }
    }

    private void n() {
        if (this.i != null) {
            int size = this.i.size();
            for (int i = 0; i < size; i++) {
                this.i.get(i).b();
            }
        }
    }
}
