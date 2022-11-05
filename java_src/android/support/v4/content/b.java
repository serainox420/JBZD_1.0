package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.TypedValue;
import java.io.File;
/* compiled from: ContextCompat.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f297a = new Object();
    private static TypedValue b;

    public static boolean a(Context context, Intent[] intentArr, Bundle bundle) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 16) {
            g.a(context, intentArr, bundle);
            return true;
        } else if (i >= 11) {
            f.a(context, intentArr);
            return true;
        } else {
            return false;
        }
    }

    public static void a(Context context, Intent intent, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            g.a(context, intent, bundle);
        } else {
            context.startActivity(intent);
        }
    }

    public static File[] a(Context context, String str) {
        return Build.VERSION.SDK_INT >= 19 ? h.a(context, str) : new File[]{context.getExternalFilesDir(str)};
    }

    public static File[] a(Context context) {
        return Build.VERSION.SDK_INT >= 19 ? h.a(context) : new File[]{context.getExternalCacheDir()};
    }

    public static final Drawable a(Context context, int i) {
        int i2;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            return c.a(context, i);
        }
        if (i3 >= 16) {
            return context.getResources().getDrawable(i);
        }
        synchronized (f297a) {
            if (b == null) {
                b = new TypedValue();
            }
            context.getResources().getValue(i, b, true);
            i2 = b.resourceId;
        }
        return context.getResources().getDrawable(i2);
    }

    public static final ColorStateList b(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? d.a(context, i) : context.getResources().getColorStateList(i);
    }

    public static final int c(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? d.b(context, i) : context.getResources().getColor(i);
    }

    public static int b(Context context, String str) {
        if (str == null) {
            throw new IllegalArgumentException("permission is null");
        }
        return context.checkPermission(str, Process.myPid(), Process.myUid());
    }

    public static boolean b(Context context) {
        if (android.support.v4.os.c.a()) {
            return e.a(context);
        }
        return false;
    }
}
