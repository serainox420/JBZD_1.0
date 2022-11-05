package android.support.v4.view.a;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;
/* compiled from: AccessibilityNodeProviderCompatKitKat.java */
@TargetApi(19)
/* loaded from: classes.dex */
class n {

    /* compiled from: AccessibilityNodeProviderCompatKitKat.java */
    /* loaded from: classes.dex */
    interface a {
        Object a(int i);

        List<Object> a(String str, int i);

        boolean a(int i, int i2, Bundle bundle);

        Object b(int i);
    }

    public static Object a(final a aVar) {
        return new AccessibilityNodeProvider() { // from class: android.support.v4.view.a.n.1
            @Override // android.view.accessibility.AccessibilityNodeProvider
            public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
                return (AccessibilityNodeInfo) a.this.a(i);
            }

            @Override // android.view.accessibility.AccessibilityNodeProvider
            public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
                return a.this.a(str, i);
            }

            @Override // android.view.accessibility.AccessibilityNodeProvider
            public boolean performAction(int i, int i2, Bundle bundle) {
                return a.this.a(i, i2, bundle);
            }

            @Override // android.view.accessibility.AccessibilityNodeProvider
            public AccessibilityNodeInfo findFocus(int i) {
                return (AccessibilityNodeInfo) a.this.b(i);
            }
        };
    }
}
