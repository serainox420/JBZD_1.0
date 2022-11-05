package android.support.v4.e;

import android.annotation.TargetApi;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* compiled from: ICUCompatApi23.java */
@TargetApi(23)
/* loaded from: classes.dex */
class b {

    /* renamed from: a  reason: collision with root package name */
    private static Method f304a;

    static {
        try {
            f304a = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    public static String a(Locale locale) {
        try {
            return ((Locale) f304a.invoke(null, locale)).getScript();
        } catch (IllegalAccessException e) {
            Log.w("ICUCompatIcs", e);
            return locale.getScript();
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompatIcs", e2);
            return locale.getScript();
        }
    }
}
