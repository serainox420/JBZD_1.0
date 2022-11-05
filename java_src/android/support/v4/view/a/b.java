package android.support.v4.view.a;

import android.annotation.TargetApi;
import android.view.accessibility.AccessibilityEvent;
/* compiled from: AccessibilityEventCompatKitKat.java */
@TargetApi(19)
/* loaded from: classes.dex */
class b {
    public static void a(AccessibilityEvent accessibilityEvent, int i) {
        accessibilityEvent.setContentChangeTypes(i);
    }

    public static int a(AccessibilityEvent accessibilityEvent) {
        return accessibilityEvent.getContentChangeTypes();
    }
}
