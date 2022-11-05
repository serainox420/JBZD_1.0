package android.support.v4.view;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
/* compiled from: AccessibilityDelegateCompatJellyBean.java */
@TargetApi(16)
/* loaded from: classes.dex */
class c {

    /* compiled from: AccessibilityDelegateCompatJellyBean.java */
    /* loaded from: classes.dex */
    public interface a {
        Object a(View view);

        void a(View view, int i);

        void a(View view, Object obj);

        boolean a(View view, int i, Bundle bundle);

        boolean a(View view, AccessibilityEvent accessibilityEvent);

        boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent);

        void b(View view, AccessibilityEvent accessibilityEvent);

        void c(View view, AccessibilityEvent accessibilityEvent);

        void d(View view, AccessibilityEvent accessibilityEvent);
    }

    public static Object a(final a aVar) {
        return new View.AccessibilityDelegate() { // from class: android.support.v4.view.c.1
            @Override // android.view.View.AccessibilityDelegate
            public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                return a.this.a(view, accessibilityEvent);
            }

            @Override // android.view.View.AccessibilityDelegate
            public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                a.this.b(view, accessibilityEvent);
            }

            @Override // android.view.View.AccessibilityDelegate
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                a.this.a(view, accessibilityNodeInfo);
            }

            @Override // android.view.View.AccessibilityDelegate
            public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                a.this.c(view, accessibilityEvent);
            }

            @Override // android.view.View.AccessibilityDelegate
            public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                return a.this.a(viewGroup, view, accessibilityEvent);
            }

            @Override // android.view.View.AccessibilityDelegate
            public void sendAccessibilityEvent(View view, int i) {
                a.this.a(view, i);
            }

            @Override // android.view.View.AccessibilityDelegate
            public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                a.this.d(view, accessibilityEvent);
            }

            @Override // android.view.View.AccessibilityDelegate
            public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
                return (AccessibilityNodeProvider) a.this.a(view);
            }

            @Override // android.view.View.AccessibilityDelegate
            public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
                return a.this.a(view, i, bundle);
            }
        };
    }

    public static Object a(Object obj, View view) {
        return ((View.AccessibilityDelegate) obj).getAccessibilityNodeProvider(view);
    }

    public static boolean a(Object obj, View view, int i, Bundle bundle) {
        return ((View.AccessibilityDelegate) obj).performAccessibilityAction(view, i, bundle);
    }
}
