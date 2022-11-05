package android.support.v4.view;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.view.View;
import android.view.ViewParent;
/* compiled from: ViewCompatHC.java */
@TargetApi(11)
/* loaded from: classes.dex */
class al {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a() {
        return ValueAnimator.getFrameDelay();
    }

    public static float a(View view) {
        return view.getAlpha();
    }

    public static void a(View view, int i, Paint paint) {
        view.setLayerType(i, paint);
    }

    public static int b(View view) {
        return view.getLayerType();
    }

    public static int a(int i, int i2, int i3) {
        return View.resolveSizeAndState(i, i2, i3);
    }

    public static int c(View view) {
        return view.getMeasuredWidthAndState();
    }

    public static int d(View view) {
        return view.getMeasuredState();
    }

    public static float e(View view) {
        return view.getTranslationX();
    }

    public static float f(View view) {
        return view.getTranslationY();
    }

    public static float g(View view) {
        return view.getScaleX();
    }

    public static void a(View view, float f) {
        view.setTranslationX(f);
    }

    public static void b(View view, float f) {
        view.setTranslationY(f);
    }

    public static Matrix h(View view) {
        return view.getMatrix();
    }

    public static void c(View view, float f) {
        view.setAlpha(f);
    }

    public static void d(View view, float f) {
        view.setScaleX(f);
    }

    public static void e(View view, float f) {
        view.setScaleY(f);
    }

    public static void f(View view, float f) {
        view.setPivotX(f);
    }

    public static void g(View view, float f) {
        view.setPivotY(f);
    }

    public static void i(View view) {
        view.jumpDrawablesToCurrentState();
    }

    public static void a(View view, boolean z) {
        view.setSaveFromParentEnabled(z);
    }

    public static void b(View view, boolean z) {
        view.setActivated(z);
    }

    public static int a(int i, int i2) {
        return View.combineMeasuredStates(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, int i) {
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            j(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                j((View) parent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(View view, int i) {
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            j(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                j((View) parent);
            }
        }
    }

    private static void j(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }
}
