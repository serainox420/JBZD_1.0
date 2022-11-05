package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
/* compiled from: EdgeEffectCompat.java */
/* loaded from: classes.dex */
public final class k {
    private static final c b;

    /* renamed from: a  reason: collision with root package name */
    private Object f516a;

    /* compiled from: EdgeEffectCompat.java */
    /* loaded from: classes.dex */
    interface c {
        Object a(Context context);

        void a(Object obj, int i, int i2);

        boolean a(Object obj);

        boolean a(Object obj, float f);

        boolean a(Object obj, float f, float f2);

        boolean a(Object obj, int i);

        boolean a(Object obj, Canvas canvas);

        void b(Object obj);

        boolean c(Object obj);
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            b = new d();
        } else if (Build.VERSION.SDK_INT >= 14) {
            b = new b();
        } else {
            b = new a();
        }
    }

    /* compiled from: EdgeEffectCompat.java */
    /* loaded from: classes.dex */
    static class a implements c {
        a() {
        }

        @Override // android.support.v4.widget.k.c
        public Object a(Context context) {
            return null;
        }

        @Override // android.support.v4.widget.k.c
        public void a(Object obj, int i, int i2) {
        }

        @Override // android.support.v4.widget.k.c
        public boolean a(Object obj) {
            return true;
        }

        @Override // android.support.v4.widget.k.c
        public void b(Object obj) {
        }

        @Override // android.support.v4.widget.k.c
        public boolean a(Object obj, float f) {
            return false;
        }

        @Override // android.support.v4.widget.k.c
        public boolean c(Object obj) {
            return false;
        }

        @Override // android.support.v4.widget.k.c
        public boolean a(Object obj, int i) {
            return false;
        }

        @Override // android.support.v4.widget.k.c
        public boolean a(Object obj, Canvas canvas) {
            return false;
        }

        @Override // android.support.v4.widget.k.c
        public boolean a(Object obj, float f, float f2) {
            return false;
        }
    }

    /* compiled from: EdgeEffectCompat.java */
    /* loaded from: classes.dex */
    static class b implements c {
        b() {
        }

        @Override // android.support.v4.widget.k.c
        public Object a(Context context) {
            return l.a(context);
        }

        @Override // android.support.v4.widget.k.c
        public void a(Object obj, int i, int i2) {
            l.a(obj, i, i2);
        }

        @Override // android.support.v4.widget.k.c
        public boolean a(Object obj) {
            return l.a(obj);
        }

        @Override // android.support.v4.widget.k.c
        public void b(Object obj) {
            l.b(obj);
        }

        @Override // android.support.v4.widget.k.c
        public boolean a(Object obj, float f) {
            return l.a(obj, f);
        }

        @Override // android.support.v4.widget.k.c
        public boolean c(Object obj) {
            return l.c(obj);
        }

        @Override // android.support.v4.widget.k.c
        public boolean a(Object obj, int i) {
            return l.a(obj, i);
        }

        @Override // android.support.v4.widget.k.c
        public boolean a(Object obj, Canvas canvas) {
            return l.a(obj, canvas);
        }

        @Override // android.support.v4.widget.k.c
        public boolean a(Object obj, float f, float f2) {
            return l.a(obj, f);
        }
    }

    /* compiled from: EdgeEffectCompat.java */
    /* loaded from: classes.dex */
    static class d extends b {
        d() {
        }

        @Override // android.support.v4.widget.k.b, android.support.v4.widget.k.c
        public boolean a(Object obj, float f, float f2) {
            return m.a(obj, f, f2);
        }
    }

    public k(Context context) {
        this.f516a = b.a(context);
    }

    public void a(int i, int i2) {
        b.a(this.f516a, i, i2);
    }

    public boolean a() {
        return b.a(this.f516a);
    }

    public void b() {
        b.b(this.f516a);
    }

    @Deprecated
    public boolean a(float f) {
        return b.a(this.f516a, f);
    }

    public boolean a(float f, float f2) {
        return b.a(this.f516a, f, f2);
    }

    public boolean c() {
        return b.c(this.f516a);
    }

    public boolean a(int i) {
        return b.a(this.f516a, i);
    }

    public boolean a(Canvas canvas) {
        return b.a(this.f516a, canvas);
    }
}
