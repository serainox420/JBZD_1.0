package android.support.v4.widget;

import android.content.Context;
import android.support.v4.view.ai;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.intentsoftware.addapptr.AATKit;
import java.util.Arrays;
/* compiled from: ViewDragHelper.java */
/* loaded from: classes.dex */
public class ag {
    private static final Interpolator v = new Interpolator() { // from class: android.support.v4.widget.ag.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private int f505a;
    private int b;
    private float[] d;
    private float[] e;
    private float[] f;
    private float[] g;
    private int[] h;
    private int[] i;
    private int[] j;
    private int k;
    private VelocityTracker l;
    private float m;
    private float n;
    private int o;
    private int p;
    private x q;
    private final a r;
    private View s;
    private boolean t;
    private final ViewGroup u;
    private int c = -1;
    private final Runnable w = new Runnable() { // from class: android.support.v4.widget.ag.2
        @Override // java.lang.Runnable
        public void run() {
            ag.this.c(0);
        }
    };

    /* compiled from: ViewDragHelper.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract boolean a(View view, int i);

        public void a(int i) {
        }

        public void a(View view, int i, int i2, int i3, int i4) {
        }

        public void b(View view, int i) {
        }

        public void a(View view, float f, float f2) {
        }

        public void a(int i, int i2) {
        }

        public boolean b(int i) {
            return false;
        }

        public void b(int i, int i2) {
        }

        public int c(int i) {
            return i;
        }

        public int b(View view) {
            return 0;
        }

        public int a(View view) {
            return 0;
        }

        public int b(View view, int i, int i2) {
            return 0;
        }

        public int a(View view, int i, int i2) {
            return 0;
        }
    }

    public static ag a(ViewGroup viewGroup, a aVar) {
        return new ag(viewGroup.getContext(), viewGroup, aVar);
    }

    public static ag a(ViewGroup viewGroup, float f, a aVar) {
        ag a2 = a(viewGroup, aVar);
        a2.b = (int) (a2.b * (1.0f / f));
        return a2;
    }

    private ag(Context context, ViewGroup viewGroup, a aVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.u = viewGroup;
        this.r = aVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.b = viewConfiguration.getScaledTouchSlop();
        this.m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.q = x.a(context, v);
    }

    public void a(float f) {
        this.n = f;
    }

    public int a() {
        return this.f505a;
    }

    public void a(int i) {
        this.p = i;
    }

    public int b() {
        return this.o;
    }

    public void a(View view, int i) {
        if (view.getParent() != this.u) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.u + ")");
        }
        this.s = view;
        this.c = i;
        this.r.b(view, i);
        c(1);
    }

    public View c() {
        return this.s;
    }

    public int d() {
        return this.b;
    }

    public void e() {
        this.c = -1;
        g();
        if (this.l != null) {
            this.l.recycle();
            this.l = null;
        }
    }

    public void f() {
        e();
        if (this.f505a == 2) {
            int b = this.q.b();
            int c = this.q.c();
            this.q.h();
            int b2 = this.q.b();
            int c2 = this.q.c();
            this.r.a(this.s, b2, c2, b2 - b, c2 - c);
        }
        c(0);
    }

    public boolean a(View view, int i, int i2) {
        this.s = view;
        this.c = -1;
        boolean a2 = a(i, i2, 0, 0);
        if (!a2 && this.f505a == 0 && this.s != null) {
            this.s = null;
        }
        return a2;
    }

    public boolean a(int i, int i2) {
        if (!this.t) {
            throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        }
        return a(i, i2, (int) android.support.v4.view.ag.a(this.l, this.c), (int) android.support.v4.view.ag.b(this.l, this.c));
    }

    private boolean a(int i, int i2, int i3, int i4) {
        int left = this.s.getLeft();
        int top = this.s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.q.h();
            c(0);
            return false;
        }
        this.q.a(left, top, i5, i6, a(this.s, i5, i6, i3, i4));
        c(2);
        return true;
    }

    private int a(View view, int i, int i2, int i3, int i4) {
        int b = b(i3, (int) this.n, (int) this.m);
        int b2 = b(i4, (int) this.n, (int) this.m);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(b);
        int abs4 = Math.abs(b2);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        float f = b != 0 ? abs3 / i5 : abs / i6;
        return (int) (((b2 != 0 ? abs4 / i5 : abs2 / i6) * a(i2, b2, this.r.a(view))) + (f * a(i, b, this.r.b(view))));
    }

    private int a(int i, int i2, int i3) {
        int abs;
        if (i == 0) {
            return 0;
        }
        int width = this.u.getWidth();
        int i4 = width / 2;
        float b = (b(Math.min(1.0f, Math.abs(i) / width)) * i4) + i4;
        int abs2 = Math.abs(i2);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(b / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f);
        }
        return Math.min(abs, (int) AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS);
    }

    private int b(int i, int i2, int i3) {
        int abs = Math.abs(i);
        if (abs < i2) {
            return 0;
        }
        return abs > i3 ? i <= 0 ? -i3 : i3 : i;
    }

    private float a(float f, float f2, float f3) {
        float abs = Math.abs(f);
        return abs < f2 ? BitmapDescriptorFactory.HUE_RED : abs > f3 ? f <= BitmapDescriptorFactory.HUE_RED ? -f3 : f3 : f;
    }

    private float b(float f) {
        return (float) Math.sin((float) ((f - 0.5f) * 0.4712389167638204d));
    }

    public boolean a(boolean z) {
        boolean z2;
        if (this.f505a == 2) {
            boolean g = this.q.g();
            int b = this.q.b();
            int c = this.q.c();
            int left = b - this.s.getLeft();
            int top = c - this.s.getTop();
            if (left != 0) {
                ai.f(this.s, left);
            }
            if (top != 0) {
                ai.e(this.s, top);
            }
            if (left != 0 || top != 0) {
                this.r.a(this.s, b, c, left, top);
            }
            if (g && b == this.q.d() && c == this.q.e()) {
                this.q.h();
                z2 = false;
            } else {
                z2 = g;
            }
            if (!z2) {
                if (z) {
                    this.u.post(this.w);
                } else {
                    c(0);
                }
            }
        }
        return this.f505a == 2;
    }

    private void a(float f, float f2) {
        this.t = true;
        this.r.a(this.s, f, f2);
        this.t = false;
        if (this.f505a == 1) {
            c(0);
        }
    }

    private void g() {
        if (this.d != null) {
            Arrays.fill(this.d, (float) BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.e, (float) BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.f, (float) BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.g, (float) BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.h, 0);
            Arrays.fill(this.i, 0);
            Arrays.fill(this.j, 0);
            this.k = 0;
        }
    }

    private void e(int i) {
        if (this.d != null && b(i)) {
            this.d[i] = 0.0f;
            this.e[i] = 0.0f;
            this.f[i] = 0.0f;
            this.g[i] = 0.0f;
            this.h[i] = 0;
            this.i[i] = 0;
            this.j[i] = 0;
            this.k &= (1 << i) ^ (-1);
        }
    }

    private void f(int i) {
        if (this.d == null || this.d.length <= i) {
            float[] fArr = new float[i + 1];
            float[] fArr2 = new float[i + 1];
            float[] fArr3 = new float[i + 1];
            float[] fArr4 = new float[i + 1];
            int[] iArr = new int[i + 1];
            int[] iArr2 = new int[i + 1];
            int[] iArr3 = new int[i + 1];
            if (this.d != null) {
                System.arraycopy(this.d, 0, fArr, 0, this.d.length);
                System.arraycopy(this.e, 0, fArr2, 0, this.e.length);
                System.arraycopy(this.f, 0, fArr3, 0, this.f.length);
                System.arraycopy(this.g, 0, fArr4, 0, this.g.length);
                System.arraycopy(this.h, 0, iArr, 0, this.h.length);
                System.arraycopy(this.i, 0, iArr2, 0, this.i.length);
                System.arraycopy(this.j, 0, iArr3, 0, this.j.length);
            }
            this.d = fArr;
            this.e = fArr2;
            this.f = fArr3;
            this.g = fArr4;
            this.h = iArr;
            this.i = iArr2;
            this.j = iArr3;
        }
    }

    private void a(float f, float f2, int i) {
        f(i);
        float[] fArr = this.d;
        this.f[i] = f;
        fArr[i] = f;
        float[] fArr2 = this.e;
        this.g[i] = f2;
        fArr2[i] = f2;
        this.h[i] = e((int) f, (int) f2);
        this.k |= 1 << i;
    }

    private void c(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (g(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f[pointerId] = x;
                this.g[pointerId] = y;
            }
        }
    }

    public boolean b(int i) {
        return (this.k & (1 << i)) != 0;
    }

    void c(int i) {
        this.u.removeCallbacks(this.w);
        if (this.f505a != i) {
            this.f505a = i;
            this.r.a(i);
            if (this.f505a == 0) {
                this.s = null;
            }
        }
    }

    boolean b(View view, int i) {
        if (view == this.s && this.c == i) {
            return true;
        }
        if (view != null && this.r.a(view, i)) {
            this.c = i;
            a(view, i);
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ff, code lost:
        if (r8 != r7) goto L56;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(MotionEvent motionEvent) {
        View d;
        int a2 = android.support.v4.view.t.a(motionEvent);
        int b = android.support.v4.view.t.b(motionEvent);
        if (a2 == 0) {
            e();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        switch (a2) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                int pointerId = motionEvent.getPointerId(0);
                a(x, y, pointerId);
                View d2 = d((int) x, (int) y);
                if (d2 == this.s && this.f505a == 2) {
                    b(d2, pointerId);
                }
                int i = this.h[pointerId];
                if ((this.p & i) != 0) {
                    this.r.a(i & this.p, pointerId);
                    break;
                }
                break;
            case 1:
            case 3:
                e();
                break;
            case 2:
                if (this.d != null && this.e != null) {
                    int pointerCount = motionEvent.getPointerCount();
                    for (int i2 = 0; i2 < pointerCount; i2++) {
                        int pointerId2 = motionEvent.getPointerId(i2);
                        if (g(pointerId2)) {
                            float x2 = motionEvent.getX(i2);
                            float y2 = motionEvent.getY(i2);
                            float f = x2 - this.d[pointerId2];
                            float f2 = y2 - this.e[pointerId2];
                            View d3 = d((int) x2, (int) y2);
                            boolean z = d3 != null && a(d3, f, f2);
                            if (z) {
                                int left = d3.getLeft();
                                int b2 = this.r.b(d3, ((int) f) + left, (int) f);
                                int top = d3.getTop();
                                int a3 = this.r.a(d3, ((int) f2) + top, (int) f2);
                                int b3 = this.r.b(d3);
                                int a4 = this.r.a(d3);
                                if (b3 != 0) {
                                    if (b3 > 0) {
                                    }
                                }
                                if (a4 != 0) {
                                    if (a4 > 0 && a3 == top) {
                                    }
                                }
                                c(motionEvent);
                                break;
                            }
                            b(f, f2, pointerId2);
                            if (this.f505a != 1) {
                                if (z && b(d3, pointerId2)) {
                                }
                            }
                            c(motionEvent);
                        }
                    }
                    c(motionEvent);
                }
                break;
            case 5:
                int pointerId3 = motionEvent.getPointerId(b);
                float x3 = motionEvent.getX(b);
                float y3 = motionEvent.getY(b);
                a(x3, y3, pointerId3);
                if (this.f505a == 0) {
                    int i3 = this.h[pointerId3];
                    if ((this.p & i3) != 0) {
                        this.r.a(i3 & this.p, pointerId3);
                        break;
                    }
                } else if (this.f505a == 2 && (d = d((int) x3, (int) y3)) == this.s) {
                    b(d, pointerId3);
                    break;
                }
                break;
            case 6:
                e(motionEvent.getPointerId(b));
                break;
        }
        return this.f505a == 1;
    }

    public void b(MotionEvent motionEvent) {
        int i;
        int i2 = 0;
        int a2 = android.support.v4.view.t.a(motionEvent);
        int b = android.support.v4.view.t.b(motionEvent);
        if (a2 == 0) {
            e();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        switch (a2) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                int pointerId = motionEvent.getPointerId(0);
                View d = d((int) x, (int) y);
                a(x, y, pointerId);
                b(d, pointerId);
                int i3 = this.h[pointerId];
                if ((this.p & i3) != 0) {
                    this.r.a(i3 & this.p, pointerId);
                    return;
                }
                return;
            case 1:
                if (this.f505a == 1) {
                    h();
                }
                e();
                return;
            case 2:
                if (this.f505a == 1) {
                    if (g(this.c)) {
                        int findPointerIndex = motionEvent.findPointerIndex(this.c);
                        float x2 = motionEvent.getX(findPointerIndex);
                        float y2 = motionEvent.getY(findPointerIndex);
                        int i4 = (int) (x2 - this.f[this.c]);
                        int i5 = (int) (y2 - this.g[this.c]);
                        b(this.s.getLeft() + i4, this.s.getTop() + i5, i4, i5);
                        c(motionEvent);
                        return;
                    }
                    return;
                }
                int pointerCount = motionEvent.getPointerCount();
                while (i2 < pointerCount) {
                    int pointerId2 = motionEvent.getPointerId(i2);
                    if (g(pointerId2)) {
                        float x3 = motionEvent.getX(i2);
                        float y3 = motionEvent.getY(i2);
                        float f = x3 - this.d[pointerId2];
                        float f2 = y3 - this.e[pointerId2];
                        b(f, f2, pointerId2);
                        if (this.f505a != 1) {
                            View d2 = d((int) x3, (int) y3);
                            if (a(d2, f, f2) && b(d2, pointerId2)) {
                            }
                        }
                        c(motionEvent);
                        return;
                    }
                    i2++;
                }
                c(motionEvent);
                return;
            case 3:
                if (this.f505a == 1) {
                    a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                }
                e();
                return;
            case 4:
            default:
                return;
            case 5:
                int pointerId3 = motionEvent.getPointerId(b);
                float x4 = motionEvent.getX(b);
                float y4 = motionEvent.getY(b);
                a(x4, y4, pointerId3);
                if (this.f505a == 0) {
                    b(d((int) x4, (int) y4), pointerId3);
                    int i6 = this.h[pointerId3];
                    if ((this.p & i6) != 0) {
                        this.r.a(i6 & this.p, pointerId3);
                        return;
                    }
                    return;
                } else if (c((int) x4, (int) y4)) {
                    b(this.s, pointerId3);
                    return;
                } else {
                    return;
                }
            case 6:
                int pointerId4 = motionEvent.getPointerId(b);
                if (this.f505a == 1 && pointerId4 == this.c) {
                    int pointerCount2 = motionEvent.getPointerCount();
                    while (true) {
                        if (i2 >= pointerCount2) {
                            i = -1;
                        } else {
                            int pointerId5 = motionEvent.getPointerId(i2);
                            if (pointerId5 != this.c) {
                                if (d((int) motionEvent.getX(i2), (int) motionEvent.getY(i2)) == this.s && b(this.s, pointerId5)) {
                                    i = this.c;
                                }
                            }
                            i2++;
                        }
                    }
                    if (i == -1) {
                        h();
                    }
                }
                e(pointerId4);
                return;
        }
    }

    private void b(float f, float f2, int i) {
        int i2 = 1;
        if (!a(f, f2, i, 1)) {
            i2 = 0;
        }
        if (a(f2, f, i, 4)) {
            i2 |= 4;
        }
        if (a(f, f2, i, 2)) {
            i2 |= 2;
        }
        if (a(f2, f, i, 8)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.i;
            iArr[i] = iArr[i] | i2;
            this.r.b(i2, i);
        }
    }

    private boolean a(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        if ((this.h[i] & i2) != i2 || (this.p & i2) == 0 || (this.j[i] & i2) == i2 || (this.i[i] & i2) == i2) {
            return false;
        }
        if (abs <= this.b && abs2 <= this.b) {
            return false;
        }
        if (abs >= abs2 * 0.5f || !this.r.b(i2)) {
            return (this.i[i] & i2) == 0 && abs > ((float) this.b);
        }
        int[] iArr = this.j;
        iArr[i] = iArr[i] | i2;
        return false;
    }

    private boolean a(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = this.r.b(view) > 0;
        boolean z2 = this.r.a(view) > 0;
        return (!z || !z2) ? z ? Math.abs(f) > ((float) this.b) : z2 && Math.abs(f2) > ((float) this.b) : (f * f) + (f2 * f2) > ((float) (this.b * this.b));
    }

    public boolean d(int i) {
        int length = this.d.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (b(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean b(int i, int i2) {
        if (!b(i2)) {
            return false;
        }
        boolean z = (i & 1) == 1;
        boolean z2 = (i & 2) == 2;
        float f = this.f[i2] - this.d[i2];
        float f2 = this.g[i2] - this.e[i2];
        return (!z || !z2) ? z ? Math.abs(f) > ((float) this.b) : z2 && Math.abs(f2) > ((float) this.b) : (f * f) + (f2 * f2) > ((float) (this.b * this.b));
    }

    private void h() {
        this.l.computeCurrentVelocity(1000, this.m);
        a(a(android.support.v4.view.ag.a(this.l, this.c), this.n, this.m), a(android.support.v4.view.ag.b(this.l, this.c), this.n, this.m));
    }

    private void b(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int left = this.s.getLeft();
        int top = this.s.getTop();
        if (i3 != 0) {
            i5 = this.r.b(this.s, i, i3);
            ai.f(this.s, i5 - left);
        } else {
            i5 = i;
        }
        if (i4 != 0) {
            i6 = this.r.a(this.s, i2, i4);
            ai.e(this.s, i6 - top);
        } else {
            i6 = i2;
        }
        if (i3 != 0 || i4 != 0) {
            this.r.a(this.s, i5, i6, i5 - left, i6 - top);
        }
    }

    public boolean c(int i, int i2) {
        return b(this.s, i, i2);
    }

    public boolean b(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    public View d(int i, int i2) {
        for (int childCount = this.u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.u.getChildAt(this.r.c(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private int e(int i, int i2) {
        int i3 = 0;
        if (i < this.u.getLeft() + this.o) {
            i3 = 1;
        }
        if (i2 < this.u.getTop() + this.o) {
            i3 |= 4;
        }
        if (i > this.u.getRight() - this.o) {
            i3 |= 2;
        }
        return i2 > this.u.getBottom() - this.o ? i3 | 8 : i3;
    }

    private boolean g(int i) {
        if (!b(i)) {
            Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
            return false;
        }
        return true;
    }
}
