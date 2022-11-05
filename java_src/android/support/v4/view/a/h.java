package android.support.v4.view.a;

import android.annotation.TargetApi;
import android.view.accessibility.AccessibilityNodeInfo;
/* compiled from: AccessibilityNodeInfoCompatJellyBean.java */
@TargetApi(16)
/* loaded from: classes.dex */
class h {
    public static boolean a(Object obj) {
        return ((AccessibilityNodeInfo) obj).isVisibleToUser();
    }

    public static void a(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setVisibleToUser(z);
    }

    public static void a(Object obj, int i) {
        ((AccessibilityNodeInfo) obj).setMovementGranularities(i);
    }

    public static int b(Object obj) {
        return ((AccessibilityNodeInfo) obj).getMovementGranularities();
    }

    public static boolean c(Object obj) {
        return ((AccessibilityNodeInfo) obj).isAccessibilityFocused();
    }

    public static void b(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setAccessibilityFocused(z);
    }
}
