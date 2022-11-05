package android.support.v4.view.a;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
/* compiled from: AccessibilityEventCompat.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final e f419a;

    /* compiled from: AccessibilityEventCompat.java */
    /* loaded from: classes.dex */
    interface e {
        int a(AccessibilityEvent accessibilityEvent);

        void a(AccessibilityEvent accessibilityEvent, int i);
    }

    /* compiled from: AccessibilityEventCompat.java */
    /* loaded from: classes.dex */
    static class d implements e {
        d() {
        }

        @Override // android.support.v4.view.a.a.e
        public void a(AccessibilityEvent accessibilityEvent, int i) {
        }

        @Override // android.support.v4.view.a.a.e
        public int a(AccessibilityEvent accessibilityEvent) {
            return 0;
        }
    }

    /* compiled from: AccessibilityEventCompat.java */
    /* renamed from: android.support.v4.view.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0029a extends d {
        C0029a() {
        }
    }

    /* compiled from: AccessibilityEventCompat.java */
    /* loaded from: classes.dex */
    static class b extends C0029a {
        b() {
        }
    }

    /* compiled from: AccessibilityEventCompat.java */
    /* loaded from: classes.dex */
    static class c extends b {
        c() {
        }

        @Override // android.support.v4.view.a.a.d, android.support.v4.view.a.a.e
        public void a(AccessibilityEvent accessibilityEvent, int i) {
            android.support.v4.view.a.b.a(accessibilityEvent, i);
        }

        @Override // android.support.v4.view.a.a.d, android.support.v4.view.a.a.e
        public int a(AccessibilityEvent accessibilityEvent) {
            return android.support.v4.view.a.b.a(accessibilityEvent);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            f419a = new c();
        } else if (Build.VERSION.SDK_INT >= 16) {
            f419a = new b();
        } else if (Build.VERSION.SDK_INT >= 14) {
            f419a = new C0029a();
        } else {
            f419a = new d();
        }
    }

    public static o a(AccessibilityEvent accessibilityEvent) {
        return new o(accessibilityEvent);
    }

    public static void a(AccessibilityEvent accessibilityEvent, int i) {
        f419a.a(accessibilityEvent, i);
    }

    public static int b(AccessibilityEvent accessibilityEvent) {
        return f419a.a(accessibilityEvent);
    }
}
