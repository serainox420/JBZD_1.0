package android.support.v4.view;

import android.os.Build;
import android.view.View;
import android.view.ViewParent;
/* compiled from: ViewParentCompat.java */
/* loaded from: classes.dex */
public final class ax {

    /* renamed from: a  reason: collision with root package name */
    static final b f443a;

    /* compiled from: ViewParentCompat.java */
    /* loaded from: classes.dex */
    interface b {
        void a(ViewParent viewParent, View view);

        void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4);

        void a(ViewParent viewParent, View view, int i, int i2, int[] iArr);

        boolean a(ViewParent viewParent, View view, float f, float f2);

        boolean a(ViewParent viewParent, View view, float f, float f2, boolean z);

        boolean a(ViewParent viewParent, View view, View view2, int i);

        void b(ViewParent viewParent, View view, View view2, int i);
    }

    /* compiled from: ViewParentCompat.java */
    /* loaded from: classes.dex */
    static class e implements b {
        e() {
        }

        @Override // android.support.v4.view.ax.b
        public boolean a(ViewParent viewParent, View view, View view2, int i) {
            if (viewParent instanceof x) {
                return ((x) viewParent).onStartNestedScroll(view, view2, i);
            }
            return false;
        }

        @Override // android.support.v4.view.ax.b
        public void b(ViewParent viewParent, View view, View view2, int i) {
            if (viewParent instanceof x) {
                ((x) viewParent).onNestedScrollAccepted(view, view2, i);
            }
        }

        @Override // android.support.v4.view.ax.b
        public void a(ViewParent viewParent, View view) {
            if (viewParent instanceof x) {
                ((x) viewParent).onStopNestedScroll(view);
            }
        }

        @Override // android.support.v4.view.ax.b
        public void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
            if (viewParent instanceof x) {
                ((x) viewParent).onNestedScroll(view, i, i2, i3, i4);
            }
        }

        @Override // android.support.v4.view.ax.b
        public void a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
            if (viewParent instanceof x) {
                ((x) viewParent).onNestedPreScroll(view, i, i2, iArr);
            }
        }

        @Override // android.support.v4.view.ax.b
        public boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
            if (viewParent instanceof x) {
                return ((x) viewParent).onNestedFling(view, f, f2, z);
            }
            return false;
        }

        @Override // android.support.v4.view.ax.b
        public boolean a(ViewParent viewParent, View view, float f, float f2) {
            if (viewParent instanceof x) {
                return ((x) viewParent).onNestedPreFling(view, f, f2);
            }
            return false;
        }
    }

    /* compiled from: ViewParentCompat.java */
    /* loaded from: classes.dex */
    static class a extends e {
        a() {
        }
    }

    /* compiled from: ViewParentCompat.java */
    /* loaded from: classes.dex */
    static class c extends a {
        c() {
        }
    }

    /* compiled from: ViewParentCompat.java */
    /* loaded from: classes.dex */
    static class d extends c {
        d() {
        }

        @Override // android.support.v4.view.ax.e, android.support.v4.view.ax.b
        public boolean a(ViewParent viewParent, View view, View view2, int i) {
            return ay.a(viewParent, view, view2, i);
        }

        @Override // android.support.v4.view.ax.e, android.support.v4.view.ax.b
        public void b(ViewParent viewParent, View view, View view2, int i) {
            ay.b(viewParent, view, view2, i);
        }

        @Override // android.support.v4.view.ax.e, android.support.v4.view.ax.b
        public void a(ViewParent viewParent, View view) {
            ay.a(viewParent, view);
        }

        @Override // android.support.v4.view.ax.e, android.support.v4.view.ax.b
        public void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
            ay.a(viewParent, view, i, i2, i3, i4);
        }

        @Override // android.support.v4.view.ax.e, android.support.v4.view.ax.b
        public void a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
            ay.a(viewParent, view, i, i2, iArr);
        }

        @Override // android.support.v4.view.ax.e, android.support.v4.view.ax.b
        public boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
            return ay.a(viewParent, view, f, f2, z);
        }

        @Override // android.support.v4.view.ax.e, android.support.v4.view.ax.b
        public boolean a(ViewParent viewParent, View view, float f, float f2) {
            return ay.a(viewParent, view, f, f2);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f443a = new d();
        } else if (i >= 19) {
            f443a = new c();
        } else if (i >= 14) {
            f443a = new a();
        } else {
            f443a = new e();
        }
    }

    public static boolean a(ViewParent viewParent, View view, View view2, int i) {
        return f443a.a(viewParent, view, view2, i);
    }

    public static void b(ViewParent viewParent, View view, View view2, int i) {
        f443a.b(viewParent, view, view2, i);
    }

    public static void a(ViewParent viewParent, View view) {
        f443a.a(viewParent, view);
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
        f443a.a(viewParent, view, i, i2, i3, i4);
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
        f443a.a(viewParent, view, i, i2, iArr);
    }

    public static boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
        return f443a.a(viewParent, view, f, f2, z);
    }

    public static boolean a(ViewParent viewParent, View view, float f, float f2) {
        return f443a.a(viewParent, view, f, f2);
    }
}
