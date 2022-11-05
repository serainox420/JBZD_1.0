package android.support.v4.view.a;

import android.annotation.TargetApi;
import android.view.accessibility.AccessibilityNodeInfo;
/* compiled from: AccessibilityNodeInfoCompatKitKat.java */
@TargetApi(19)
/* loaded from: classes.dex */
class k {
    public static void a(Object obj, Object obj2) {
        ((AccessibilityNodeInfo) obj).setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) obj2);
    }

    public static void b(Object obj, Object obj2) {
        ((AccessibilityNodeInfo) obj).setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) obj2);
    }

    public static Object a(int i, int i2, boolean z, int i3) {
        return AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z);
    }

    public static Object a(int i, int i2, int i3, int i4, boolean z) {
        return AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z);
    }

    public static void a(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setContentInvalid(z);
    }
}
