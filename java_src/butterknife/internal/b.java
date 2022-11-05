package butterknife.internal;

import android.util.TypedValue;
import android.view.View;
/* compiled from: Utils.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final TypedValue f956a = new TypedValue();

    public static <T> T a(View view, int i, String str, Class<T> cls) {
        return (T) c(view.findViewById(i), i, str, cls);
    }

    public static View a(View view, int i, String str) {
        View findViewById = view.findViewById(i);
        if (findViewById != null) {
            return findViewById;
        }
        throw new IllegalStateException("Required view '" + a(view, i) + "' with ID " + i + " for " + str + " was not found. If this view is optional add '@Nullable' (fields) or '@Optional' (methods) annotation.");
    }

    public static <T> T b(View view, int i, String str, Class<T> cls) {
        return (T) c(a(view, i, str), i, str, cls);
    }

    public static <T> T c(View view, int i, String str, Class<T> cls) {
        try {
            return cls.cast(view);
        } catch (ClassCastException e) {
            throw new IllegalStateException("View '" + a(view, i) + "' with ID " + i + " for " + str + " was of the wrong type. See cause for more info.", e);
        }
    }

    private static String a(View view, int i) {
        return view.isInEditMode() ? "<unavailable while editing>" : view.getContext().getResources().getResourceEntryName(i);
    }
}
