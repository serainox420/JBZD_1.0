package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
/* compiled from: AccessibilityDelegateCompatIcs.java */
@TargetApi(14)
/* loaded from: classes.dex */
class b {

    /* compiled from: AccessibilityDelegateCompatIcs.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(View view, int i);

        void a(View view, Object obj);

        boolean a(View view, AccessibilityEvent accessibilityEvent);

        boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent);

        void b(View view, AccessibilityEvent accessibilityEvent);

        void c(View view, AccessibilityEvent accessibilityEvent);

        void d(View view, AccessibilityEvent accessibilityEvent);
    }

    public static Object a() {
        return new View.AccessibilityDelegate();
    }

    public static Object a(final a aVar) {
        return new View.AccessibilityDelegate() { // from class: android.support.v4.view.b.1
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
        };
    }

    public static boolean a(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        return ((View.AccessibilityDelegate) obj).dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public static void b(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        ((View.AccessibilityDelegate) obj).onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public static void a(Object obj, View view, Object obj2) {
        ((View.AccessibilityDelegate) obj).onInitializeAccessibilityNodeInfo(view, (AccessibilityNodeInfo) obj2);
    }

    public static void c(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        ((View.AccessibilityDelegate) obj).onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public static boolean a(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return ((View.AccessibilityDelegate) obj).onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public static void a(Object obj, View view, int i) {
        ((View.AccessibilityDelegate) obj).sendAccessibilityEvent(view, i);
    }

    public static void d(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        ((View.AccessibilityDelegate) obj).sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
