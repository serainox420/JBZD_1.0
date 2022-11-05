package android.support.v4.view;

import android.graphics.Paint;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* compiled from: ViewPropertyAnimatorCompat.java */
/* loaded from: classes.dex */
public final class az {
    static final g d;

    /* renamed from: a  reason: collision with root package name */
    Runnable f444a = null;
    Runnable b = null;
    int c = -1;
    private WeakReference<View> e;

    /* compiled from: ViewPropertyAnimatorCompat.java */
    /* loaded from: classes.dex */
    interface g {
        long a(az azVar, View view);

        void a(az azVar, View view, float f);

        void a(az azVar, View view, long j);

        void a(az azVar, View view, bd bdVar);

        void a(az azVar, View view, bf bfVar);

        void a(az azVar, View view, Interpolator interpolator);

        void b(az azVar, View view);

        void b(az azVar, View view, float f);

        void b(az azVar, View view, long j);

        void c(az azVar, View view);

        void c(az azVar, View view, float f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public az(View view) {
        this.e = new WeakReference<>(view);
    }

    /* compiled from: ViewPropertyAnimatorCompat.java */
    /* loaded from: classes.dex */
    static class a implements g {

        /* renamed from: a  reason: collision with root package name */
        WeakHashMap<View, Runnable> f445a = null;

        a() {
        }

        @Override // android.support.v4.view.az.g
        public void a(az azVar, View view, long j) {
        }

        @Override // android.support.v4.view.az.g
        public void a(az azVar, View view, float f) {
            e(azVar, view);
        }

        @Override // android.support.v4.view.az.g
        public void b(az azVar, View view, float f) {
            e(azVar, view);
        }

        @Override // android.support.v4.view.az.g
        public void c(az azVar, View view, float f) {
            e(azVar, view);
        }

        @Override // android.support.v4.view.az.g
        public long a(az azVar, View view) {
            return 0L;
        }

        @Override // android.support.v4.view.az.g
        public void a(az azVar, View view, Interpolator interpolator) {
        }

        @Override // android.support.v4.view.az.g
        public void b(az azVar, View view, long j) {
        }

        @Override // android.support.v4.view.az.g
        public void b(az azVar, View view) {
            e(azVar, view);
        }

        @Override // android.support.v4.view.az.g
        public void c(az azVar, View view) {
            a(view);
            d(azVar, view);
        }

        @Override // android.support.v4.view.az.g
        public void a(az azVar, View view, bd bdVar) {
            view.setTag(2113929216, bdVar);
        }

        @Override // android.support.v4.view.az.g
        public void a(az azVar, View view, bf bfVar) {
        }

        void d(az azVar, View view) {
            Object tag = view.getTag(2113929216);
            bd bdVar = tag instanceof bd ? (bd) tag : null;
            Runnable runnable = azVar.f444a;
            Runnable runnable2 = azVar.b;
            azVar.f444a = null;
            azVar.b = null;
            if (runnable != null) {
                runnable.run();
            }
            if (bdVar != null) {
                bdVar.a(view);
                bdVar.b(view);
            }
            if (runnable2 != null) {
                runnable2.run();
            }
            if (this.f445a != null) {
                this.f445a.remove(view);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ViewPropertyAnimatorCompat.java */
        /* renamed from: android.support.v4.view.az$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class RunnableC0031a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            WeakReference<View> f446a;
            az b;

            RunnableC0031a(az azVar, View view) {
                this.f446a = new WeakReference<>(view);
                this.b = azVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                View view = this.f446a.get();
                if (view != null) {
                    a.this.d(this.b, view);
                }
            }
        }

        private void a(View view) {
            Runnable runnable;
            if (this.f445a != null && (runnable = this.f445a.get(view)) != null) {
                view.removeCallbacks(runnable);
            }
        }

        private void e(az azVar, View view) {
            Runnable runnable = null;
            if (this.f445a != null) {
                runnable = this.f445a.get(view);
            }
            if (runnable == null) {
                runnable = new RunnableC0031a(azVar, view);
                if (this.f445a == null) {
                    this.f445a = new WeakHashMap<>();
                }
                this.f445a.put(view, runnable);
            }
            view.removeCallbacks(runnable);
            view.post(runnable);
        }
    }

    /* compiled from: ViewPropertyAnimatorCompat.java */
    /* loaded from: classes.dex */
    static class b extends a {
        WeakHashMap<View, Integer> b = null;

        b() {
        }

        @Override // android.support.v4.view.az.a, android.support.v4.view.az.g
        public void a(az azVar, View view, long j) {
            ba.a(view, j);
        }

        @Override // android.support.v4.view.az.a, android.support.v4.view.az.g
        public void a(az azVar, View view, float f) {
            ba.a(view, f);
        }

        @Override // android.support.v4.view.az.a, android.support.v4.view.az.g
        public void b(az azVar, View view, float f) {
            ba.b(view, f);
        }

        @Override // android.support.v4.view.az.a, android.support.v4.view.az.g
        public void c(az azVar, View view, float f) {
            ba.c(view, f);
        }

        @Override // android.support.v4.view.az.a, android.support.v4.view.az.g
        public long a(az azVar, View view) {
            return ba.a(view);
        }

        @Override // android.support.v4.view.az.a, android.support.v4.view.az.g
        public void a(az azVar, View view, Interpolator interpolator) {
            ba.a(view, interpolator);
        }

        @Override // android.support.v4.view.az.a, android.support.v4.view.az.g
        public void b(az azVar, View view, long j) {
            ba.b(view, j);
        }

        @Override // android.support.v4.view.az.a, android.support.v4.view.az.g
        public void b(az azVar, View view) {
            ba.b(view);
        }

        @Override // android.support.v4.view.az.a, android.support.v4.view.az.g
        public void c(az azVar, View view) {
            ba.c(view);
        }

        @Override // android.support.v4.view.az.a, android.support.v4.view.az.g
        public void a(az azVar, View view, bd bdVar) {
            view.setTag(2113929216, bdVar);
            ba.a(view, new a(azVar));
        }

        /* compiled from: ViewPropertyAnimatorCompat.java */
        /* loaded from: classes.dex */
        static class a implements bd {

            /* renamed from: a  reason: collision with root package name */
            az f447a;
            boolean b;

            a(az azVar) {
                this.f447a = azVar;
            }

            @Override // android.support.v4.view.bd
            public void a(View view) {
                this.b = false;
                if (this.f447a.c >= 0) {
                    ai.a(view, 2, (Paint) null);
                }
                if (this.f447a.f444a != null) {
                    Runnable runnable = this.f447a.f444a;
                    this.f447a.f444a = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                bd bdVar = tag instanceof bd ? (bd) tag : null;
                if (bdVar != null) {
                    bdVar.a(view);
                }
            }

            @Override // android.support.v4.view.bd
            public void b(View view) {
                if (this.f447a.c >= 0) {
                    ai.a(view, this.f447a.c, (Paint) null);
                    this.f447a.c = -1;
                }
                if (Build.VERSION.SDK_INT >= 16 || !this.b) {
                    if (this.f447a.b != null) {
                        Runnable runnable = this.f447a.b;
                        this.f447a.b = null;
                        runnable.run();
                    }
                    Object tag = view.getTag(2113929216);
                    bd bdVar = tag instanceof bd ? (bd) tag : null;
                    if (bdVar != null) {
                        bdVar.b(view);
                    }
                    this.b = true;
                }
            }

            @Override // android.support.v4.view.bd
            public void c(View view) {
                bd bdVar;
                Object tag = view.getTag(2113929216);
                if (!(tag instanceof bd)) {
                    bdVar = null;
                } else {
                    bdVar = (bd) tag;
                }
                if (bdVar != null) {
                    bdVar.c(view);
                }
            }
        }
    }

    /* compiled from: ViewPropertyAnimatorCompat.java */
    /* loaded from: classes.dex */
    static class d extends b {
        d() {
        }

        @Override // android.support.v4.view.az.b, android.support.v4.view.az.a, android.support.v4.view.az.g
        public void a(az azVar, View view, bd bdVar) {
            bb.a(view, bdVar);
        }
    }

    /* compiled from: ViewPropertyAnimatorCompat.java */
    /* loaded from: classes.dex */
    static class c extends d {
        c() {
        }
    }

    /* compiled from: ViewPropertyAnimatorCompat.java */
    /* loaded from: classes.dex */
    static class e extends c {
        e() {
        }

        @Override // android.support.v4.view.az.a, android.support.v4.view.az.g
        public void a(az azVar, View view, bf bfVar) {
            bc.a(view, bfVar);
        }
    }

    /* compiled from: ViewPropertyAnimatorCompat.java */
    /* loaded from: classes.dex */
    static class f extends e {
        f() {
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            d = new f();
        } else if (i >= 19) {
            d = new e();
        } else if (i >= 18) {
            d = new c();
        } else if (i >= 16) {
            d = new d();
        } else if (i >= 14) {
            d = new b();
        } else {
            d = new a();
        }
    }

    public az a(long j) {
        View view = this.e.get();
        if (view != null) {
            d.a(this, view, j);
        }
        return this;
    }

    public az a(float f2) {
        View view = this.e.get();
        if (view != null) {
            d.a(this, view, f2);
        }
        return this;
    }

    public az b(float f2) {
        View view = this.e.get();
        if (view != null) {
            d.b(this, view, f2);
        }
        return this;
    }

    public az c(float f2) {
        View view = this.e.get();
        if (view != null) {
            d.c(this, view, f2);
        }
        return this;
    }

    public long a() {
        View view = this.e.get();
        if (view != null) {
            return d.a(this, view);
        }
        return 0L;
    }

    public az a(Interpolator interpolator) {
        View view = this.e.get();
        if (view != null) {
            d.a(this, view, interpolator);
        }
        return this;
    }

    public az b(long j) {
        View view = this.e.get();
        if (view != null) {
            d.b(this, view, j);
        }
        return this;
    }

    public void b() {
        View view = this.e.get();
        if (view != null) {
            d.b(this, view);
        }
    }

    public void c() {
        View view = this.e.get();
        if (view != null) {
            d.c(this, view);
        }
    }

    public az a(bd bdVar) {
        View view = this.e.get();
        if (view != null) {
            d.a(this, view, bdVar);
        }
        return this;
    }

    public az a(bf bfVar) {
        View view = this.e.get();
        if (view != null) {
            d.a(this, view, bfVar);
        }
        return this;
    }
}
