package android.support.v4.view.a;

import android.annotation.TargetApi;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
/* compiled from: AccessibilityNodeInfoCompatJellybeanMr1.java */
@TargetApi(17)
/* loaded from: classes.dex */
class i {
    public static void a(Object obj, View view) {
        ((AccessibilityNodeInfo) obj).setLabelFor(view);
    }
}
