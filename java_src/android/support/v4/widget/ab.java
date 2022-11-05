package android.support.v4.widget;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.TextView;
import java.lang.reflect.Field;
/* compiled from: TextViewCompatGingerbread.java */
@TargetApi(9)
/* loaded from: classes.dex */
class ab {

    /* renamed from: a  reason: collision with root package name */
    private static Field f504a;
    private static boolean b;
    private static Field c;
    private static boolean d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(TextView textView) {
        if (!d) {
            c = a("mMaxMode");
            d = true;
        }
        if (c != null && a(c, textView) == 1) {
            if (!b) {
                f504a = a("mMaximum");
                b = true;
            }
            if (f504a != null) {
                return a(f504a, textView);
            }
        }
        return -1;
    }

    private static Field a(String str) {
        Field field = null;
        try {
            field = TextView.class.getDeclaredField(str);
            field.setAccessible(true);
            return field;
        } catch (NoSuchFieldException e) {
            Log.e("TextViewCompatGingerbread", "Could not retrieve " + str + " field.");
            return field;
        }
    }

    private static int a(Field field, TextView textView) {
        try {
            return field.getInt(textView);
        } catch (IllegalAccessException e) {
            Log.d("TextViewCompatGingerbread", "Could not retrieve value of " + field.getName() + " field.");
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(TextView textView, int i) {
        textView.setTextAppearance(textView.getContext(), i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Drawable[] b(TextView textView) {
        return textView.getCompoundDrawables();
    }
}
