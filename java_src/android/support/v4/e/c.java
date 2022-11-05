package android.support.v4.e;

import android.annotation.TargetApi;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* compiled from: ICUCompatIcs.java */
@TargetApi(14)
/* loaded from: classes.dex */
class c {

    /* renamed from: a  reason: collision with root package name */
    private static Method f305a;
    private static Method b;

    static {
        try {
            Class<?> cls = Class.forName("libcore.icu.ICU");
            if (cls != null) {
                f305a = cls.getMethod("getScript", String.class);
                b = cls.getMethod("addLikelySubtags", String.class);
            }
        } catch (Exception e) {
            f305a = null;
            b = null;
            Log.w("ICUCompatIcs", e);
        }
    }

    public static String a(Locale locale) {
        String b2 = b(locale);
        if (b2 != null) {
            return a(b2);
        }
        return null;
    }

    private static String a(String str) {
        try {
            if (f305a != null) {
                return (String) f305a.invoke(null, str);
            }
        } catch (IllegalAccessException e) {
            Log.w("ICUCompatIcs", e);
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompatIcs", e2);
        }
        return null;
    }

    private static String b(Locale locale) {
        String locale2 = locale.toString();
        try {
            if (b != null) {
                return (String) b.invoke(null, locale2);
            }
        } catch (IllegalAccessException e) {
            Log.w("ICUCompatIcs", e);
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompatIcs", e2);
        }
        return locale2;
    }
}
