package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.View;
/* compiled from: ViewCompatICS.java */
@TargetApi(14)
/* loaded from: classes.dex */
class am {
    public static boolean a(View view, int i) {
        return view.canScrollHorizontally(i);
    }

    public static boolean b(View view, int i) {
        return view.canScrollVertically(i);
    }

    public static void a(View view, Object obj) {
        view.setAccessibilityDelegate((View.AccessibilityDelegate) obj);
    }

    public static void a(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }
}
