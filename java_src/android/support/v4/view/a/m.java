package android.support.v4.view.a;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;
/* compiled from: AccessibilityNodeProviderCompatJellyBean.java */
@TargetApi(16)
/* loaded from: classes.dex */
class m {

    /* compiled from: AccessibilityNodeProviderCompatJellyBean.java */
    /* loaded from: classes.dex */
    interface a {
        Object a(int i);

        List<Object> a(String str, int i);

        boolean a(int i, int i2, Bundle bundle);
    }

    public static Object a(final a aVar) {
        return new AccessibilityNodeProvider() { // from class: android.support.v4.view.a.m.1
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
        };
    }
}
