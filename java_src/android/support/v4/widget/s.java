package android.support.v4.widget;

import android.os.Build;
import android.support.v4.view.ai;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
/* compiled from: PopupWindowCompat.java */
/* loaded from: classes.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    static final e f522a;

    /* compiled from: PopupWindowCompat.java */
    /* loaded from: classes.dex */
    interface e {
        void a(PopupWindow popupWindow, int i);

        void a(PopupWindow popupWindow, View view, int i, int i2, int i3);

        void a(PopupWindow popupWindow, boolean z);
    }

    /* compiled from: PopupWindowCompat.java */
    /* loaded from: classes.dex */
    static class c implements e {

        /* renamed from: a  reason: collision with root package name */
        private static Method f523a;
        private static boolean b;

        c() {
        }

        @Override // android.support.v4.widget.s.e
        public void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            if ((android.support.v4.view.f.a(i3, ai.g(view)) & 7) == 5) {
                i -= popupWindow.getWidth() - view.getWidth();
            }
            popupWindow.showAsDropDown(view, i, i2);
        }

        @Override // android.support.v4.widget.s.e
        public void a(PopupWindow popupWindow, boolean z) {
        }

        @Override // android.support.v4.widget.s.e
        public void a(PopupWindow popupWindow, int i) {
            if (!b) {
                try {
                    f523a = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                    f523a.setAccessible(true);
                } catch (Exception e) {
                }
                b = true;
            }
            if (f523a != null) {
                try {
                    f523a.invoke(popupWindow, Integer.valueOf(i));
                } catch (Exception e2) {
                }
            }
        }
    }

    /* compiled from: PopupWindowCompat.java */
    /* loaded from: classes.dex */
    static class d extends c {
        d() {
        }

        @Override // android.support.v4.widget.s.c, android.support.v4.widget.s.e
        public void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            v.a(popupWindow, view, i, i2, i3);
        }
    }

    /* compiled from: PopupWindowCompat.java */
    /* loaded from: classes.dex */
    static class a extends d {
        a() {
        }

        @Override // android.support.v4.widget.s.c, android.support.v4.widget.s.e
        public void a(PopupWindow popupWindow, boolean z) {
            t.a(popupWindow, z);
        }
    }

    /* compiled from: PopupWindowCompat.java */
    /* loaded from: classes.dex */
    static class b extends a {
        b() {
        }

        @Override // android.support.v4.widget.s.a, android.support.v4.widget.s.c, android.support.v4.widget.s.e
        public void a(PopupWindow popupWindow, boolean z) {
            u.a(popupWindow, z);
        }

        @Override // android.support.v4.widget.s.c, android.support.v4.widget.s.e
        public void a(PopupWindow popupWindow, int i) {
            u.a(popupWindow, i);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            f522a = new b();
        } else if (i >= 21) {
            f522a = new a();
        } else if (i >= 19) {
            f522a = new d();
        } else {
            f522a = new c();
        }
    }

    public static void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        f522a.a(popupWindow, view, i, i2, i3);
    }

    public static void a(PopupWindow popupWindow, boolean z) {
        f522a.a(popupWindow, z);
    }

    public static void a(PopupWindow popupWindow, int i) {
        f522a.a(popupWindow, i);
    }
}
