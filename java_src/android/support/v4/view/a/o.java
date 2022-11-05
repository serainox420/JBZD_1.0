package android.support.v4.view.a;

import android.os.Build;
/* compiled from: AccessibilityRecordCompat.java */
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private static final c f431a;
    private final Object b;

    /* compiled from: AccessibilityRecordCompat.java */
    /* loaded from: classes.dex */
    interface c {
        void a(Object obj, int i);

        void a(Object obj, boolean z);

        void b(Object obj, int i);

        void c(Object obj, int i);

        void d(Object obj, int i);

        void e(Object obj, int i);

        void f(Object obj, int i);

        void g(Object obj, int i);
    }

    /* compiled from: AccessibilityRecordCompat.java */
    /* loaded from: classes.dex */
    static class e implements c {
        e() {
        }

        @Override // android.support.v4.view.a.o.c
        public void a(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.o.c
        public void b(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.o.c
        public void f(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.o.c
        public void g(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.o.c
        public void c(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.o.c
        public void d(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.o.c
        public void a(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.o.c
        public void e(Object obj, int i) {
        }
    }

    /* compiled from: AccessibilityRecordCompat.java */
    /* loaded from: classes.dex */
    static class a extends e {
        a() {
        }

        @Override // android.support.v4.view.a.o.e, android.support.v4.view.a.o.c
        public void a(Object obj, int i) {
            p.a(obj, i);
        }

        @Override // android.support.v4.view.a.o.e, android.support.v4.view.a.o.c
        public void b(Object obj, int i) {
            p.b(obj, i);
        }

        @Override // android.support.v4.view.a.o.e, android.support.v4.view.a.o.c
        public void c(Object obj, int i) {
            p.c(obj, i);
        }

        @Override // android.support.v4.view.a.o.e, android.support.v4.view.a.o.c
        public void d(Object obj, int i) {
            p.d(obj, i);
        }

        @Override // android.support.v4.view.a.o.e, android.support.v4.view.a.o.c
        public void a(Object obj, boolean z) {
            p.a(obj, z);
        }

        @Override // android.support.v4.view.a.o.e, android.support.v4.view.a.o.c
        public void e(Object obj, int i) {
            p.e(obj, i);
        }
    }

    /* compiled from: AccessibilityRecordCompat.java */
    /* loaded from: classes.dex */
    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.a.o.e, android.support.v4.view.a.o.c
        public void f(Object obj, int i) {
            q.a(obj, i);
        }

        @Override // android.support.v4.view.a.o.e, android.support.v4.view.a.o.c
        public void g(Object obj, int i) {
            q.b(obj, i);
        }
    }

    /* compiled from: AccessibilityRecordCompat.java */
    /* loaded from: classes.dex */
    static class d extends b {
        d() {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            f431a = new d();
        } else if (Build.VERSION.SDK_INT >= 15) {
            f431a = new b();
        } else if (Build.VERSION.SDK_INT >= 14) {
            f431a = new a();
        } else {
            f431a = new e();
        }
    }

    @Deprecated
    public o(Object obj) {
        this.b = obj;
    }

    public void a(boolean z) {
        f431a.a(this.b, z);
    }

    public void a(int i) {
        f431a.b(this.b, i);
    }

    public void b(int i) {
        f431a.a(this.b, i);
    }

    public void c(int i) {
        f431a.e(this.b, i);
    }

    public void d(int i) {
        f431a.c(this.b, i);
    }

    public void e(int i) {
        f431a.d(this.b, i);
    }

    public void f(int i) {
        f431a.f(this.b, i);
    }

    public void g(int i) {
        f431a.g(this.b, i);
    }

    public int hashCode() {
        if (this.b == null) {
            return 0;
        }
        return this.b.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            o oVar = (o) obj;
            return this.b == null ? oVar.b == null : this.b.equals(oVar.b);
        }
        return false;
    }
}
