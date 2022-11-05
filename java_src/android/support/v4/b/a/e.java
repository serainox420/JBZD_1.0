package android.support.v4.b.a;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.lang.reflect.Method;
/* compiled from: DrawableCompatJellybeanMr1.java */
@TargetApi(17)
/* loaded from: classes.dex */
class e {

    /* renamed from: a  reason: collision with root package name */
    private static Method f280a;
    private static boolean b;
    private static Method c;
    private static boolean d;

    public static boolean a(Drawable drawable, int i) {
        if (!b) {
            try {
                f280a = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                f280a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompatJellybeanMr1", "Failed to retrieve setLayoutDirection(int) method", e);
            }
            b = true;
        }
        if (f280a != null) {
            try {
                f280a.invoke(drawable, Integer.valueOf(i));
                return true;
            } catch (Exception e2) {
                Log.i("DrawableCompatJellybeanMr1", "Failed to invoke setLayoutDirection(int) via reflection", e2);
                f280a = null;
            }
        }
        return false;
    }

    public static int a(Drawable drawable) {
        if (!d) {
            try {
                c = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                c.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompatJellybeanMr1", "Failed to retrieve getLayoutDirection() method", e);
            }
            d = true;
        }
        if (c != null) {
            try {
                return ((Integer) c.invoke(drawable, new Object[0])).intValue();
            } catch (Exception e2) {
                Log.i("DrawableCompatJellybeanMr1", "Failed to invoke getLayoutDirection() via reflection", e2);
                c = null;
            }
        }
        return -1;
    }
}
