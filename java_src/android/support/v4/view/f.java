package android.support.v4.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.Gravity;
/* compiled from: GravityCompat.java */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final a f463a;

    /* compiled from: GravityCompat.java */
    /* loaded from: classes.dex */
    interface a {
        int a(int i, int i2);

        void a(int i, int i2, int i3, Rect rect, Rect rect2, int i4);
    }

    /* compiled from: GravityCompat.java */
    /* loaded from: classes.dex */
    static class b implements a {
        b() {
        }

        @Override // android.support.v4.view.f.a
        public int a(int i, int i2) {
            return (-8388609) & i;
        }

        @Override // android.support.v4.view.f.a
        public void a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
            Gravity.apply(i, i2, i3, rect, rect2);
        }
    }

    /* compiled from: GravityCompat.java */
    /* loaded from: classes.dex */
    static class c implements a {
        c() {
        }

        @Override // android.support.v4.view.f.a
        public int a(int i, int i2) {
            return g.a(i, i2);
        }

        @Override // android.support.v4.view.f.a
        public void a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
            g.a(i, i2, i3, rect, rect2, i4);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            f463a = new c();
        } else {
            f463a = new b();
        }
    }

    public static void a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
        f463a.a(i, i2, i3, rect, rect2, i4);
    }

    public static int a(int i, int i2) {
        return f463a.a(i, i2);
    }
}
