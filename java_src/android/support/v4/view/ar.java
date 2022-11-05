package android.support.v4.view;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowInsets;
/* compiled from: ViewCompatLollipop.java */
@TargetApi(21)
/* loaded from: classes.dex */
class ar {

    /* renamed from: a  reason: collision with root package name */
    private static ThreadLocal<Rect> f439a;

    /* compiled from: ViewCompatLollipop.java */
    /* loaded from: classes.dex */
    public interface a {
        Object a(View view, Object obj);
    }

    public static String a(View view) {
        return view.getTransitionName();
    }

    public static void b(View view) {
        view.requestApplyInsets();
    }

    public static void a(View view, float f) {
        view.setElevation(f);
    }

    public static float c(View view) {
        return view.getElevation();
    }

    public static float d(View view) {
        return view.getTranslationZ();
    }

    public static void a(View view, final a aVar) {
        if (aVar == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: android.support.v4.view.ar.1
                @Override // android.view.View.OnApplyWindowInsetsListener
                public WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                    return (WindowInsets) a.this.a(view2, windowInsets);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ColorStateList e(View view) {
        return view.getBackgroundTintList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, ColorStateList colorStateList) {
        view.setBackgroundTintList(colorStateList);
        if (Build.VERSION.SDK_INT == 21) {
            Drawable background = view.getBackground();
            boolean z = (view.getBackgroundTintList() == null || view.getBackgroundTintMode() == null) ? false : true;
            if (background != null && z) {
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                view.setBackground(background);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PorterDuff.Mode f(View view) {
        return view.getBackgroundTintMode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
        if (Build.VERSION.SDK_INT == 21) {
            Drawable background = view.getBackground();
            boolean z = (view.getBackgroundTintList() == null || view.getBackgroundTintMode() == null) ? false : true;
            if (background != null && z) {
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                view.setBackground(background);
            }
        }
    }

    public static Object a(View view, Object obj) {
        WindowInsets windowInsets = (WindowInsets) obj;
        WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        if (onApplyWindowInsets != windowInsets) {
            return new WindowInsets(onApplyWindowInsets);
        }
        return obj;
    }

    public static Object b(View view, Object obj) {
        WindowInsets windowInsets = (WindowInsets) obj;
        WindowInsets dispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsets);
        if (dispatchApplyWindowInsets != windowInsets) {
            return new WindowInsets(dispatchApplyWindowInsets);
        }
        return obj;
    }

    public static boolean g(View view) {
        return view.isNestedScrollingEnabled();
    }

    public static void h(View view) {
        view.stopNestedScroll();
    }

    public static float i(View view) {
        return view.getZ();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, int i) {
        boolean z;
        Rect a2 = a();
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            a2.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !a2.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        al.a(view, i);
        if (z && a2.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(View view, int i) {
        boolean z;
        Rect a2 = a();
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            a2.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !a2.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        al.b(view, i);
        if (z && a2.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(a2);
        }
    }

    private static Rect a() {
        if (f439a == null) {
            f439a = new ThreadLocal<>();
        }
        Rect rect = f439a.get();
        if (rect == null) {
            rect = new Rect();
            f439a.set(rect);
        }
        rect.setEmpty();
        return rect;
    }
}
