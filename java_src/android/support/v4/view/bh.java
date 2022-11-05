package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.WindowInsets;
/* compiled from: WindowInsetsCompatApi20.java */
@TargetApi(20)
/* loaded from: classes.dex */
class bh {
    public static Object a(Object obj) {
        return ((WindowInsets) obj).consumeSystemWindowInsets();
    }

    public static int b(Object obj) {
        return ((WindowInsets) obj).getSystemWindowInsetBottom();
    }

    public static int c(Object obj) {
        return ((WindowInsets) obj).getSystemWindowInsetLeft();
    }

    public static int d(Object obj) {
        return ((WindowInsets) obj).getSystemWindowInsetRight();
    }

    public static int e(Object obj) {
        return ((WindowInsets) obj).getSystemWindowInsetTop();
    }

    public static boolean f(Object obj) {
        return ((WindowInsets) obj).hasSystemWindowInsets();
    }

    public static Object a(Object obj, int i, int i2, int i3, int i4) {
        return ((WindowInsets) obj).replaceSystemWindowInsets(i, i2, i3, i4);
    }
}
