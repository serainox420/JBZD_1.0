package android.support.design.widget;

import android.view.animation.Interpolator;
/* compiled from: ValueAnimatorCompat.java */
/* loaded from: classes.dex */
class r {

    /* renamed from: a  reason: collision with root package name */
    private final e f132a;

    /* compiled from: ValueAnimatorCompat.java */
    /* loaded from: classes.dex */
    interface a {
        void b(r rVar);

        void c(r rVar);

        void d(r rVar);
    }

    /* compiled from: ValueAnimatorCompat.java */
    /* loaded from: classes.dex */
    interface c {
        void a(r rVar);
    }

    /* compiled from: ValueAnimatorCompat.java */
    /* loaded from: classes.dex */
    interface d {
        r a();
    }

    /* compiled from: ValueAnimatorCompat.java */
    /* loaded from: classes.dex */
    static abstract class e {

        /* compiled from: ValueAnimatorCompat.java */
        /* loaded from: classes.dex */
        interface a {
            void a();

            void b();

            void c();
        }

        /* compiled from: ValueAnimatorCompat.java */
        /* loaded from: classes.dex */
        interface b {
            void a();
        }

        abstract void a();

        abstract void a(float f, float f2);

        abstract void a(int i, int i2);

        abstract void a(long j);

        abstract void a(a aVar);

        abstract void a(b bVar);

        abstract void a(Interpolator interpolator);

        abstract boolean b();

        abstract int c();

        abstract float d();

        abstract void e();

        abstract float f();

        abstract void g();

        abstract long h();
    }

    /* compiled from: ValueAnimatorCompat.java */
    /* loaded from: classes.dex */
    static class b implements a {
        @Override // android.support.design.widget.r.a
        public void c(r rVar) {
        }

        @Override // android.support.design.widget.r.a
        public void b(r rVar) {
        }

        @Override // android.support.design.widget.r.a
        public void d(r rVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(e eVar) {
        this.f132a = eVar;
    }

    public void a() {
        this.f132a.a();
    }

    public boolean b() {
        return this.f132a.b();
    }

    public void a(Interpolator interpolator) {
        this.f132a.a(interpolator);
    }

    public void a(final c cVar) {
        if (cVar != null) {
            this.f132a.a(new e.b() { // from class: android.support.design.widget.r.1
                @Override // android.support.design.widget.r.e.b
                public void a() {
                    cVar.a(r.this);
                }
            });
        } else {
            this.f132a.a((e.b) null);
        }
    }

    public void a(final a aVar) {
        if (aVar != null) {
            this.f132a.a(new e.a() { // from class: android.support.design.widget.r.2
                @Override // android.support.design.widget.r.e.a
                public void a() {
                    aVar.c(r.this);
                }

                @Override // android.support.design.widget.r.e.a
                public void b() {
                    aVar.b(r.this);
                }

                @Override // android.support.design.widget.r.e.a
                public void c() {
                    aVar.d(r.this);
                }
            });
        } else {
            this.f132a.a((e.a) null);
        }
    }

    public void a(int i, int i2) {
        this.f132a.a(i, i2);
    }

    public int c() {
        return this.f132a.c();
    }

    public void a(float f, float f2) {
        this.f132a.a(f, f2);
    }

    public float d() {
        return this.f132a.d();
    }

    public void a(long j) {
        this.f132a.a(j);
    }

    public void e() {
        this.f132a.e();
    }

    public float f() {
        return this.f132a.f();
    }

    public void g() {
        this.f132a.g();
    }

    public long h() {
        return this.f132a.h();
    }
}
