package android.support.v4.app;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: BundleCompatGingerbread.java */
@TargetApi(9)
/* loaded from: classes.dex */
class o {

    /* renamed from: a  reason: collision with root package name */
    private static Method f259a;
    private static boolean b;
    private static Method c;
    private static boolean d;

    public static IBinder a(Bundle bundle, String str) {
        if (!b) {
            try {
                f259a = Bundle.class.getMethod("getIBinder", String.class);
                f259a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("BundleCompatGingerbread", "Failed to retrieve getIBinder method", e);
            }
            b = true;
        }
        if (f259a != null) {
            try {
                return (IBinder) f259a.invoke(bundle, str);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                Log.i("BundleCompatGingerbread", "Failed to invoke getIBinder via reflection", e2);
                f259a = null;
            }
        }
        return null;
    }

    public static void a(Bundle bundle, String str, IBinder iBinder) {
        if (!d) {
            try {
                c = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                c.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("BundleCompatGingerbread", "Failed to retrieve putIBinder method", e);
            }
            d = true;
        }
        if (c != null) {
            try {
                c.invoke(bundle, str, iBinder);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                Log.i("BundleCompatGingerbread", "Failed to invoke putIBinder via reflection", e2);
                c = null;
            }
        }
    }
}
