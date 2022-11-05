package android.support.v7.widget;

import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.util.Log;
import com.flurry.android.AdCreative;
import java.lang.reflect.Field;
/* compiled from: DrawableUtils.java */
@RestrictTo
/* loaded from: classes.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    public static final Rect f922a = new Rect();
    private static Class<?> b;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                b = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    public static Rect a(Drawable drawable) {
        Field[] fields;
        if (b != null) {
            try {
                Drawable h = android.support.v4.b.a.a.h(drawable);
                Object invoke = h.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(h, new Object[0]);
                if (invoke != null) {
                    Rect rect = new Rect();
                    for (Field field : b.getFields()) {
                        String name = field.getName();
                        char c = 65535;
                        switch (name.hashCode()) {
                            case -1383228885:
                                if (name.equals(AdCreative.kAlignmentBottom)) {
                                    c = 3;
                                    break;
                                }
                                break;
                            case 115029:
                                if (name.equals(AdCreative.kAlignmentTop)) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case 3317767:
                                if (name.equals(AdCreative.kAlignmentLeft)) {
                                    c = 0;
                                    break;
                                }
                                break;
                            case 108511772:
                                if (name.equals(AdCreative.kAlignmentRight)) {
                                    c = 2;
                                    break;
                                }
                                break;
                        }
                        switch (c) {
                            case 0:
                                rect.left = field.getInt(invoke);
                                continue;
                            case 1:
                                rect.top = field.getInt(invoke);
                                continue;
                            case 2:
                                rect.right = field.getInt(invoke);
                                continue;
                            case 3:
                                rect.bottom = field.getInt(invoke);
                                continue;
                        }
                    }
                    return rect;
                }
            } catch (Exception e) {
                Log.e("DrawableUtils", "Couldn't obtain the optical insets. Ignoring.");
            }
        }
        return f922a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            d(drawable);
        }
    }

    public static boolean c(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 15 || !(drawable instanceof InsetDrawable)) {
            if (Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
                return false;
            }
            if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
                return false;
            }
            if (drawable instanceof DrawableContainer) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState instanceof DrawableContainer.DrawableContainerState) {
                    Drawable[] children = ((DrawableContainer.DrawableContainerState) constantState).getChildren();
                    for (Drawable drawable2 : children) {
                        if (!c(drawable2)) {
                            return false;
                        }
                    }
                }
            } else if (drawable instanceof android.support.v4.b.a.h) {
                return c(((android.support.v4.b.a.h) drawable).a());
            } else {
                if (drawable instanceof android.support.v7.b.a.a) {
                    return c(((android.support.v7.b.a.a) drawable).b());
                }
                if (drawable instanceof ScaleDrawable) {
                    return c(((ScaleDrawable) drawable).getDrawable());
                }
            }
            return true;
        }
        return false;
    }

    private static void d(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(aq.e);
        } else {
            drawable.setState(aq.h);
        }
        drawable.setState(state);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PorterDuff.Mode a(int i, PorterDuff.Mode mode) {
        switch (i) {
            case 3:
                return PorterDuff.Mode.SRC_OVER;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            default:
                return mode;
            case 5:
                return PorterDuff.Mode.SRC_IN;
            case 9:
                return PorterDuff.Mode.SRC_ATOP;
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                if (Build.VERSION.SDK_INT >= 11) {
                    return PorterDuff.Mode.valueOf("ADD");
                }
                return mode;
        }
    }
}
