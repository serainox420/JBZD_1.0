package android.support.v4.view.a;

import android.annotation.TargetApi;
import android.view.accessibility.AccessibilityNodeInfo;
/* compiled from: AccessibilityNodeInfoCompatApi21.java */
@TargetApi(21)
/* loaded from: classes.dex */
class d {
    public static boolean a(Object obj, Object obj2) {
        return ((AccessibilityNodeInfo) obj).removeAction((AccessibilityNodeInfo.AccessibilityAction) obj2);
    }

    public static Object a(int i, int i2, boolean z, int i3) {
        return AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3);
    }

    public static Object a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        return AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2);
    }

    public static void a(Object obj, CharSequence charSequence) {
        ((AccessibilityNodeInfo) obj).setError(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(int i, CharSequence charSequence) {
        return new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
    }
}
