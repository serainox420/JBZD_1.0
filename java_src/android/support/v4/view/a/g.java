package android.support.v4.view.a;

import android.annotation.TargetApi;
import android.graphics.Rect;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
/* compiled from: AccessibilityNodeInfoCompatIcs.java */
@TargetApi(14)
/* loaded from: classes.dex */
class g {
    public static Object a(Object obj) {
        return AccessibilityNodeInfo.obtain((AccessibilityNodeInfo) obj);
    }

    public static void a(Object obj, int i) {
        ((AccessibilityNodeInfo) obj).addAction(i);
    }

    public static void a(Object obj, View view) {
        ((AccessibilityNodeInfo) obj).addChild(view);
    }

    public static int b(Object obj) {
        return ((AccessibilityNodeInfo) obj).getActions();
    }

    public static void a(Object obj, Rect rect) {
        ((AccessibilityNodeInfo) obj).getBoundsInParent(rect);
    }

    public static void b(Object obj, Rect rect) {
        ((AccessibilityNodeInfo) obj).getBoundsInScreen(rect);
    }

    public static CharSequence c(Object obj) {
        return ((AccessibilityNodeInfo) obj).getClassName();
    }

    public static CharSequence d(Object obj) {
        return ((AccessibilityNodeInfo) obj).getContentDescription();
    }

    public static CharSequence e(Object obj) {
        return ((AccessibilityNodeInfo) obj).getPackageName();
    }

    public static CharSequence f(Object obj) {
        return ((AccessibilityNodeInfo) obj).getText();
    }

    public static boolean g(Object obj) {
        return ((AccessibilityNodeInfo) obj).isCheckable();
    }

    public static boolean h(Object obj) {
        return ((AccessibilityNodeInfo) obj).isChecked();
    }

    public static boolean i(Object obj) {
        return ((AccessibilityNodeInfo) obj).isClickable();
    }

    public static boolean j(Object obj) {
        return ((AccessibilityNodeInfo) obj).isEnabled();
    }

    public static boolean k(Object obj) {
        return ((AccessibilityNodeInfo) obj).isFocusable();
    }

    public static boolean l(Object obj) {
        return ((AccessibilityNodeInfo) obj).isFocused();
    }

    public static boolean m(Object obj) {
        return ((AccessibilityNodeInfo) obj).isLongClickable();
    }

    public static boolean n(Object obj) {
        return ((AccessibilityNodeInfo) obj).isPassword();
    }

    public static boolean o(Object obj) {
        return ((AccessibilityNodeInfo) obj).isScrollable();
    }

    public static boolean p(Object obj) {
        return ((AccessibilityNodeInfo) obj).isSelected();
    }

    public static void c(Object obj, Rect rect) {
        ((AccessibilityNodeInfo) obj).setBoundsInParent(rect);
    }

    public static void d(Object obj, Rect rect) {
        ((AccessibilityNodeInfo) obj).setBoundsInScreen(rect);
    }

    public static void a(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setCheckable(z);
    }

    public static void b(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setChecked(z);
    }

    public static void a(Object obj, CharSequence charSequence) {
        ((AccessibilityNodeInfo) obj).setClassName(charSequence);
    }

    public static void c(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setClickable(z);
    }

    public static void b(Object obj, CharSequence charSequence) {
        ((AccessibilityNodeInfo) obj).setContentDescription(charSequence);
    }

    public static void d(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setEnabled(z);
    }

    public static void e(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setFocusable(z);
    }

    public static void f(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setFocused(z);
    }

    public static void g(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setLongClickable(z);
    }

    public static void c(Object obj, CharSequence charSequence) {
        ((AccessibilityNodeInfo) obj).setPackageName(charSequence);
    }

    public static void b(Object obj, View view) {
        ((AccessibilityNodeInfo) obj).setParent(view);
    }

    public static void h(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setScrollable(z);
    }

    public static void i(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setSelected(z);
    }

    public static void c(Object obj, View view) {
        ((AccessibilityNodeInfo) obj).setSource(view);
    }

    public static void d(Object obj, CharSequence charSequence) {
        ((AccessibilityNodeInfo) obj).setText(charSequence);
    }

    public static void q(Object obj) {
        ((AccessibilityNodeInfo) obj).recycle();
    }
}
