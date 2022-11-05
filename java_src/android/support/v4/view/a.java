package android.support.v4.view;

import android.os.Build;
import android.os.Bundle;
import android.support.v4.view.b;
import android.support.v4.view.c;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
/* compiled from: AccessibilityDelegateCompat.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final b f418a;
    private static final Object c;
    final Object b = f418a.a(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AccessibilityDelegateCompat.java */
    /* loaded from: classes.dex */
    public interface b {
        android.support.v4.view.a.l a(Object obj, View view);

        Object a();

        Object a(a aVar);

        void a(Object obj, View view, int i);

        void a(Object obj, View view, android.support.v4.view.a.c cVar);

        boolean a(Object obj, View view, int i, Bundle bundle);

        boolean a(Object obj, View view, AccessibilityEvent accessibilityEvent);

        boolean a(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent);

        void b(Object obj, View view, AccessibilityEvent accessibilityEvent);

        void c(Object obj, View view, AccessibilityEvent accessibilityEvent);

        void d(Object obj, View view, AccessibilityEvent accessibilityEvent);
    }

    /* compiled from: AccessibilityDelegateCompat.java */
    /* loaded from: classes.dex */
    static class d implements b {
        d() {
        }

        @Override // android.support.v4.view.a.b
        public Object a() {
            return null;
        }

        @Override // android.support.v4.view.a.b
        public Object a(a aVar) {
            return null;
        }

        @Override // android.support.v4.view.a.b
        public boolean a(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            return false;
        }

        @Override // android.support.v4.view.a.b
        public void b(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        }

        @Override // android.support.v4.view.a.b
        public void a(Object obj, View view, android.support.v4.view.a.c cVar) {
        }

        @Override // android.support.v4.view.a.b
        public void c(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        }

        @Override // android.support.v4.view.a.b
        public boolean a(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return true;
        }

        @Override // android.support.v4.view.a.b
        public void a(Object obj, View view, int i) {
        }

        @Override // android.support.v4.view.a.b
        public void d(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        }

        @Override // android.support.v4.view.a.b
        public android.support.v4.view.a.l a(Object obj, View view) {
            return null;
        }

        @Override // android.support.v4.view.a.b
        public boolean a(Object obj, View view, int i, Bundle bundle) {
            return false;
        }
    }

    /* compiled from: AccessibilityDelegateCompat.java */
    /* renamed from: android.support.v4.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0028a extends d {
        C0028a() {
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public Object a() {
            return android.support.v4.view.b.a();
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public Object a(final a aVar) {
            return android.support.v4.view.b.a(new b.a() { // from class: android.support.v4.view.a.a.1
                @Override // android.support.v4.view.b.a
                public boolean a(View view, AccessibilityEvent accessibilityEvent) {
                    return aVar.d(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.b.a
                public void b(View view, AccessibilityEvent accessibilityEvent) {
                    aVar.a(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.b.a
                public void a(View view, Object obj) {
                    aVar.a(view, new android.support.v4.view.a.c(obj));
                }

                @Override // android.support.v4.view.b.a
                public void c(View view, AccessibilityEvent accessibilityEvent) {
                    aVar.b(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.b.a
                public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                    return aVar.a(viewGroup, view, accessibilityEvent);
                }

                @Override // android.support.v4.view.b.a
                public void a(View view, int i) {
                    aVar.a(view, i);
                }

                @Override // android.support.v4.view.b.a
                public void d(View view, AccessibilityEvent accessibilityEvent) {
                    aVar.c(view, accessibilityEvent);
                }
            });
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public boolean a(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            return android.support.v4.view.b.a(obj, view, accessibilityEvent);
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public void b(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            android.support.v4.view.b.b(obj, view, accessibilityEvent);
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public void a(Object obj, View view, android.support.v4.view.a.c cVar) {
            android.support.v4.view.b.a(obj, view, cVar.a());
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public void c(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            android.support.v4.view.b.c(obj, view, accessibilityEvent);
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public boolean a(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return android.support.v4.view.b.a(obj, viewGroup, view, accessibilityEvent);
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public void a(Object obj, View view, int i) {
            android.support.v4.view.b.a(obj, view, i);
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public void d(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            android.support.v4.view.b.d(obj, view, accessibilityEvent);
        }
    }

    /* compiled from: AccessibilityDelegateCompat.java */
    /* loaded from: classes.dex */
    static class c extends C0028a {
        c() {
        }

        @Override // android.support.v4.view.a.C0028a, android.support.v4.view.a.d, android.support.v4.view.a.b
        public Object a(final a aVar) {
            return android.support.v4.view.c.a(new c.a() { // from class: android.support.v4.view.a.c.1
                @Override // android.support.v4.view.c.a
                public boolean a(View view, AccessibilityEvent accessibilityEvent) {
                    return aVar.d(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.c.a
                public void b(View view, AccessibilityEvent accessibilityEvent) {
                    aVar.a(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.c.a
                public void a(View view, Object obj) {
                    aVar.a(view, new android.support.v4.view.a.c(obj));
                }

                @Override // android.support.v4.view.c.a
                public void c(View view, AccessibilityEvent accessibilityEvent) {
                    aVar.b(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.c.a
                public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                    return aVar.a(viewGroup, view, accessibilityEvent);
                }

                @Override // android.support.v4.view.c.a
                public void a(View view, int i) {
                    aVar.a(view, i);
                }

                @Override // android.support.v4.view.c.a
                public void d(View view, AccessibilityEvent accessibilityEvent) {
                    aVar.c(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.c.a
                public Object a(View view) {
                    android.support.v4.view.a.l a2 = aVar.a(view);
                    if (a2 != null) {
                        return a2.a();
                    }
                    return null;
                }

                @Override // android.support.v4.view.c.a
                public boolean a(View view, int i, Bundle bundle) {
                    return aVar.a(view, i, bundle);
                }
            });
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public android.support.v4.view.a.l a(Object obj, View view) {
            Object a2 = android.support.v4.view.c.a(obj, view);
            if (a2 != null) {
                return new android.support.v4.view.a.l(a2);
            }
            return null;
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public boolean a(Object obj, View view, int i, Bundle bundle) {
            return android.support.v4.view.c.a(obj, view, i, bundle);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            f418a = new c();
        } else if (Build.VERSION.SDK_INT >= 14) {
            f418a = new C0028a();
        } else {
            f418a = new d();
        }
        c = f418a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object a() {
        return this.b;
    }

    public void a(View view, int i) {
        f418a.a(c, view, i);
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        f418a.d(c, view, accessibilityEvent);
    }

    public boolean d(View view, AccessibilityEvent accessibilityEvent) {
        return f418a.a(c, view, accessibilityEvent);
    }

    public void b(View view, AccessibilityEvent accessibilityEvent) {
        f418a.c(c, view, accessibilityEvent);
    }

    public void a(View view, AccessibilityEvent accessibilityEvent) {
        f418a.b(c, view, accessibilityEvent);
    }

    public void a(View view, android.support.v4.view.a.c cVar) {
        f418a.a(c, view, cVar);
    }

    public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return f418a.a(c, viewGroup, view, accessibilityEvent);
    }

    public android.support.v4.view.a.l a(View view) {
        return f418a.a(c, view);
    }

    public boolean a(View view, int i, Bundle bundle) {
        return f418a.a(c, view, i, bundle);
    }
}
