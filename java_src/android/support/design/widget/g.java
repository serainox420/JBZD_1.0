package android.support.design.widget;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.util.Log;
import java.lang.reflect.Method;
/* compiled from: DrawableUtils.java */
/* loaded from: classes.dex */
class g {

    /* renamed from: a  reason: collision with root package name */
    private static Method f112a;
    private static boolean b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        return b(drawableContainer, constantState);
    }

    private static boolean b(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        if (!b) {
            try {
                f112a = DrawableContainer.class.getDeclaredMethod("setConstantState", DrawableContainer.DrawableContainerState.class);
                f112a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.e("DrawableUtils", "Could not fetch setConstantState(). Oh well.");
            }
            b = true;
        }
        if (f112a != null) {
            try {
                f112a.invoke(drawableContainer, constantState);
                return true;
            } catch (Exception e2) {
                Log.e("DrawableUtils", "Could not invoke setConstantState(). Oh well.");
            }
        }
        return false;
    }
}
