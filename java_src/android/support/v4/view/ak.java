package android.support.v4.view;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.view.Display;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowManager;
import java.lang.reflect.Field;
/* compiled from: ViewCompatBase.java */
@TargetApi(9)
/* loaded from: classes.dex */
class ak {

    /* renamed from: a  reason: collision with root package name */
    private static Field f438a;
    private static boolean b;
    private static Field c;
    private static boolean d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ColorStateList a(View view) {
        if (view instanceof af) {
            return ((af) view).getSupportBackgroundTintList();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, ColorStateList colorStateList) {
        if (view instanceof af) {
            ((af) view).setSupportBackgroundTintList(colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PorterDuff.Mode b(View view) {
        if (view instanceof af) {
            return ((af) view).getSupportBackgroundTintMode();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, PorterDuff.Mode mode) {
        if (view instanceof af) {
            ((af) view).setSupportBackgroundTintMode(mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(View view) {
        return view.getWidth() > 0 && view.getHeight() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(View view) {
        if (!b) {
            try {
                f438a = View.class.getDeclaredField("mMinWidth");
                f438a.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            b = true;
        }
        if (f438a != null) {
            try {
                return ((Integer) f438a.get(view)).intValue();
            } catch (Exception e2) {
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(View view) {
        if (!d) {
            try {
                c = View.class.getDeclaredField("mMinHeight");
                c.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            d = true;
        }
        if (c != null) {
            try {
                return ((Integer) c.get(view)).intValue();
            } catch (Exception e2) {
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f(View view) {
        return view.getWindowToken() != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, int i) {
        int top = view.getTop();
        view.offsetTopAndBottom(i);
        if (i != 0) {
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                int abs = Math.abs(i);
                ((View) parent).invalidate(view.getLeft(), top - abs, view.getRight(), top + view.getHeight() + abs);
                return;
            }
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(View view, int i) {
        int left = view.getLeft();
        view.offsetLeftAndRight(i);
        if (i != 0) {
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                int abs = Math.abs(i);
                ((View) parent).invalidate(left - abs, view.getTop(), left + view.getWidth() + abs, view.getBottom());
                return;
            }
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Display g(View view) {
        if (f(view)) {
            return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
        }
        return null;
    }
}
