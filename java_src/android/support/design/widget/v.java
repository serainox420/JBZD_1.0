package android.support.design.widget;

import android.annotation.TargetApi;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* compiled from: ViewGroupUtilsHoneycomb.java */
@TargetApi(11)
/* loaded from: classes.dex */
class v {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<Matrix> f141a = new ThreadLocal<>();
    private static final ThreadLocal<RectF> b = new ThreadLocal<>();

    public static void a(ViewGroup viewGroup, View view, Rect rect) {
        Matrix matrix;
        Matrix matrix2 = f141a.get();
        if (matrix2 == null) {
            Matrix matrix3 = new Matrix();
            f141a.set(matrix3);
            matrix = matrix3;
        } else {
            matrix2.reset();
            matrix = matrix2;
        }
        a(viewGroup, view, matrix);
        RectF rectF = b.get();
        if (rectF == null) {
            rectF = new RectF();
            b.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    static void a(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            a(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }
}
