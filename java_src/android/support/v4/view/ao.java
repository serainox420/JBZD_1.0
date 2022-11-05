package android.support.v4.view;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewParent;
/* compiled from: ViewCompatJB.java */
@TargetApi(16)
/* loaded from: classes.dex */
class ao {
    public static boolean a(View view) {
        return view.hasTransientState();
    }

    public static void b(View view) {
        view.postInvalidateOnAnimation();
    }

    public static void a(View view, int i, int i2, int i3, int i4) {
        view.postInvalidate(i, i2, i3, i4);
    }

    public static void a(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    public static void a(View view, Runnable runnable, long j) {
        view.postOnAnimationDelayed(runnable, j);
    }

    public static int c(View view) {
        return view.getImportantForAccessibility();
    }

    public static void a(View view, int i) {
        view.setImportantForAccessibility(i);
    }

    public static ViewParent d(View view) {
        return view.getParentForAccessibility();
    }

    public static int e(View view) {
        return view.getMinimumWidth();
    }

    public static int f(View view) {
        return view.getMinimumHeight();
    }

    public static void g(View view) {
        view.requestFitSystemWindows();
    }

    public static boolean h(View view) {
        return view.getFitsSystemWindows();
    }

    public static boolean i(View view) {
        return view.hasOverlappingRendering();
    }

    public static void a(View view, Drawable drawable) {
        view.setBackground(drawable);
    }
}
