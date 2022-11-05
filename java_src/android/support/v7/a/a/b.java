package android.support.v7.a.a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.widget.h;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.util.WeakHashMap;
/* compiled from: AppCompatResources.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<TypedValue> f527a = new ThreadLocal<>();
    private static final WeakHashMap<Context, SparseArray<a>> b = new WeakHashMap<>(0);
    private static final Object c = new Object();

    public static ColorStateList a(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList d = d(context, i);
        if (d == null) {
            ColorStateList c2 = c(context, i);
            if (c2 != null) {
                a(context, i, c2);
                return c2;
            }
            return android.support.v4.content.b.b(context, i);
        }
        return d;
    }

    public static Drawable b(Context context, int i) {
        return h.a().a(context, i);
    }

    private static ColorStateList c(Context context, int i) {
        if (e(context, i)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return android.support.v7.a.a.a.a(resources, resources.getXml(i), context.getTheme());
        } catch (Exception e) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    private static ColorStateList d(Context context, int i) {
        a aVar;
        synchronized (c) {
            SparseArray<a> sparseArray = b.get(context);
            if (sparseArray != null && sparseArray.size() > 0 && (aVar = sparseArray.get(i)) != null) {
                if (aVar.b.equals(context.getResources().getConfiguration())) {
                    return aVar.f528a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    private static void a(Context context, int i, ColorStateList colorStateList) {
        synchronized (c) {
            SparseArray<a> sparseArray = b.get(context);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                b.put(context, sparseArray);
            }
            sparseArray.append(i, new a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    private static boolean e(Context context, int i) {
        Resources resources = context.getResources();
        TypedValue a2 = a();
        resources.getValue(i, a2, true);
        return a2.type >= 28 && a2.type <= 31;
    }

    private static TypedValue a() {
        TypedValue typedValue = f527a.get();
        if (typedValue == null) {
            TypedValue typedValue2 = new TypedValue();
            f527a.set(typedValue2);
            return typedValue2;
        }
        return typedValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AppCompatResources.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final ColorStateList f528a;
        final Configuration b;

        a(ColorStateList colorStateList, Configuration configuration) {
            this.f528a = colorStateList;
            this.b = configuration;
        }
    }
}
