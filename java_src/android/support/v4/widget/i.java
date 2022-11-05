package android.support.v4.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
/* compiled from: DrawerLayoutCompatApi21.java */
@TargetApi(21)
/* loaded from: classes.dex */
class i {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f515a = {16843828};

    public static void a(View view) {
        if (view instanceof j) {
            view.setOnApplyWindowInsetsListener(new a());
            view.setSystemUiVisibility(1280);
        }
    }

    public static void a(View view, Object obj, int i) {
        WindowInsets windowInsets = (WindowInsets) obj;
        if (i == 3) {
            windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), 0, windowInsets.getSystemWindowInsetBottom());
        } else if (i == 5) {
            windowInsets = windowInsets.replaceSystemWindowInsets(0, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        view.dispatchApplyWindowInsets(windowInsets);
    }

    public static void a(ViewGroup.MarginLayoutParams marginLayoutParams, Object obj, int i) {
        WindowInsets windowInsets = (WindowInsets) obj;
        if (i == 3) {
            windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), 0, windowInsets.getSystemWindowInsetBottom());
        } else if (i == 5) {
            windowInsets = windowInsets.replaceSystemWindowInsets(0, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        marginLayoutParams.leftMargin = windowInsets.getSystemWindowInsetLeft();
        marginLayoutParams.topMargin = windowInsets.getSystemWindowInsetTop();
        marginLayoutParams.rightMargin = windowInsets.getSystemWindowInsetRight();
        marginLayoutParams.bottomMargin = windowInsets.getSystemWindowInsetBottom();
    }

    public static int a(Object obj) {
        if (obj != null) {
            return ((WindowInsets) obj).getSystemWindowInsetTop();
        }
        return 0;
    }

    public static Drawable a(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f515a);
        try {
            return obtainStyledAttributes.getDrawable(0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: DrawerLayoutCompatApi21.java */
    /* loaded from: classes.dex */
    static class a implements View.OnApplyWindowInsetsListener {
        a() {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((j) view).a(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }
}
