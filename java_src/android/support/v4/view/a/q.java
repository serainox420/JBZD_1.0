package android.support.v4.view.a;

import android.annotation.TargetApi;
import android.view.accessibility.AccessibilityRecord;
/* compiled from: AccessibilityRecordCompatIcsMr1.java */
@TargetApi(15)
/* loaded from: classes.dex */
class q {
    public static void a(Object obj, int i) {
        ((AccessibilityRecord) obj).setMaxScrollX(i);
    }

    public static void b(Object obj, int i) {
        ((AccessibilityRecord) obj).setMaxScrollY(i);
    }
}
