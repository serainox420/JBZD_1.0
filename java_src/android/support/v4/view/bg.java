package android.support.v4.view;

import android.os.Build;
/* compiled from: WindowInsetsCompat.java */
/* loaded from: classes.dex */
public class bg {

    /* renamed from: a  reason: collision with root package name */
    private static final d f456a;
    private final Object b;

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    private interface d {
        bg a(Object obj);

        bg a(Object obj, int i, int i2, int i3, int i4);

        int b(Object obj);

        int c(Object obj);

        int d(Object obj);

        int e(Object obj);

        boolean f(Object obj);

        boolean g(Object obj);
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    private static class c implements d {
        c() {
        }

        @Override // android.support.v4.view.bg.d
        public int c(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.bg.d
        public int e(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.bg.d
        public int d(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.bg.d
        public int b(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.bg.d
        public boolean f(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.bg.d
        public boolean g(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.bg.d
        public bg a(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.bg.d
        public bg a(Object obj, int i, int i2, int i3, int i4) {
            return null;
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    private static class a extends c {
        a() {
        }

        @Override // android.support.v4.view.bg.c, android.support.v4.view.bg.d
        public bg a(Object obj) {
            return new bg(bh.a(obj));
        }

        @Override // android.support.v4.view.bg.c, android.support.v4.view.bg.d
        public int b(Object obj) {
            return bh.b(obj);
        }

        @Override // android.support.v4.view.bg.c, android.support.v4.view.bg.d
        public int c(Object obj) {
            return bh.c(obj);
        }

        @Override // android.support.v4.view.bg.c, android.support.v4.view.bg.d
        public int d(Object obj) {
            return bh.d(obj);
        }

        @Override // android.support.v4.view.bg.c, android.support.v4.view.bg.d
        public int e(Object obj) {
            return bh.e(obj);
        }

        @Override // android.support.v4.view.bg.c, android.support.v4.view.bg.d
        public boolean f(Object obj) {
            return bh.f(obj);
        }

        @Override // android.support.v4.view.bg.c, android.support.v4.view.bg.d
        public bg a(Object obj, int i, int i2, int i3, int i4) {
            return new bg(bh.a(obj, i, i2, i3, i4));
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    private static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.bg.c, android.support.v4.view.bg.d
        public boolean g(Object obj) {
            return bi.a(obj);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f456a = new b();
        } else if (i >= 20) {
            f456a = new a();
        } else {
            f456a = new c();
        }
    }

    bg(Object obj) {
        this.b = obj;
    }

    public int a() {
        return f456a.c(this.b);
    }

    public int b() {
        return f456a.e(this.b);
    }

    public int c() {
        return f456a.d(this.b);
    }

    public int d() {
        return f456a.b(this.b);
    }

    public boolean e() {
        return f456a.f(this.b);
    }

    public boolean f() {
        return f456a.g(this.b);
    }

    public bg g() {
        return f456a.a(this.b);
    }

    public bg a(int i, int i2, int i3, int i4) {
        return f456a.a(this.b, i, i2, i3, i4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        bg bgVar = (bg) obj;
        return this.b == null ? bgVar.b == null : this.b.equals(bgVar.b);
    }

    public int hashCode() {
        if (this.b == null) {
            return 0;
        }
        return this.b.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static bg a(Object obj) {
        if (obj == null) {
            return null;
        }
        return new bg(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(bg bgVar) {
        if (bgVar == null) {
            return null;
        }
        return bgVar.b;
    }
}
