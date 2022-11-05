package android.support.v7.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.support.v7.mediarouter.R;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
/* compiled from: MediaRouterThemeHelper.java */
/* loaded from: classes.dex */
final class t {
    public static Context a(Context context, int i) {
        int i2;
        if (c(context)) {
            if (c(context, i) == -570425344) {
                i2 = R.style.Theme_MediaRouter_Light;
            } else {
                i2 = R.style.Theme_MediaRouter_Light_DarkControlPanel;
            }
        } else if (c(context, i) == -570425344) {
            i2 = R.style.Theme_MediaRouter_LightControlPanel;
        } else {
            i2 = R.style.Theme_MediaRouter;
        }
        int b = b(context, R.attr.mediaRouteTheme);
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i2);
        return b != 0 ? new ContextThemeWrapper(contextThemeWrapper, b) : contextThemeWrapper;
    }

    public static int b(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue.resourceId;
        }
        return 0;
    }

    public static float a(Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(16842803, typedValue, true)) {
            return typedValue.getFloat();
        }
        return 0.5f;
    }

    public static int c(Context context, int i) {
        return android.support.v4.b.a.b(-1, a(context, i, android.support.v7.appcompat.R.attr.colorPrimary)) >= 3.0d ? -1 : -570425344;
    }

    public static int b(Context context) {
        int a2 = a(context, 0, android.support.v7.appcompat.R.attr.colorPrimary);
        if (android.support.v4.b.a.b(a2, a(context, 0, 16842801)) < 3.0d) {
            return a(context, 0, android.support.v7.appcompat.R.attr.colorAccent);
        }
        return a2;
    }

    public static void a(Context context, View view, View view2, boolean z) {
        int i;
        int a2 = a(context, 0, android.support.v7.appcompat.R.attr.colorPrimary);
        int a3 = a(context, 0, android.support.v7.appcompat.R.attr.colorPrimaryDark);
        if (!z || c(context, 0) != -570425344) {
            i = a2;
            a2 = a3;
        } else {
            i = -1;
        }
        view.setBackgroundColor(i);
        view2.setBackgroundColor(a2);
        view.setTag(Integer.valueOf(i));
        view2.setTag(Integer.valueOf(a2));
    }

    public static void a(Context context, MediaRouteVolumeSlider mediaRouteVolumeSlider, View view) {
        int c = c(context, 0);
        mediaRouteVolumeSlider.a(Color.alpha(c) != 255 ? android.support.v4.b.a.a(c, ((Integer) view.getTag()).intValue()) : c);
    }

    public static int d(Context context, int i) {
        if (i < 16777216) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.alertDialogTheme, typedValue, true);
            return typedValue.resourceId;
        }
        return i;
    }

    private static boolean c(Context context) {
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.isLightTheme, typedValue, true) && typedValue.data != 0;
    }

    private static int a(Context context, int i, int i2) {
        if (i != 0) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, new int[]{i2});
            int color = obtainStyledAttributes.getColor(0, 0);
            obtainStyledAttributes.recycle();
            if (color != 0) {
                return color;
            }
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i2, typedValue, true);
        if (typedValue.resourceId != 0) {
            return context.getResources().getColor(typedValue.resourceId);
        }
        return typedValue.data;
    }
}
