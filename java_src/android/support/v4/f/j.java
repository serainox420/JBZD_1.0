package android.support.v4.f;
/* compiled from: Pools.java */
/* loaded from: classes.dex */
public final class j {

    /* compiled from: Pools.java */
    /* loaded from: classes.dex */
    public interface a<T> {
        T a();

        boolean a(T t);
    }

    /* compiled from: Pools.java */
    /* loaded from: classes.dex */
    public static class b<T> implements a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Object[] f326a;
        private int b;

        public b(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.f326a = new Object[i];
        }

        @Override // android.support.v4.f.j.a
        public T a() {
            if (this.b > 0) {
                int i = this.b - 1;
                T t = (T) this.f326a[i];
                this.f326a[i] = null;
                this.b--;
                return t;
            }
            return null;
        }

        @Override // android.support.v4.f.j.a
        public boolean a(T t) {
            if (b(t)) {
                throw new IllegalStateException("Already in the pool!");
            }
            if (this.b >= this.f326a.length) {
                return false;
            }
            this.f326a[this.b] = t;
            this.b++;
            return true;
        }

        private boolean b(T t) {
            for (int i = 0; i < this.b; i++) {
                if (this.f326a[i] == t) {
                    return true;
                }
            }
            return false;
        }
    }

    /* compiled from: Pools.java */
    /* loaded from: classes.dex */
    public static class c<T> extends b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Object f327a;

        public c(int i) {
            super(i);
            this.f327a = new Object();
        }

        @Override // android.support.v4.f.j.b, android.support.v4.f.j.a
        public T a() {
            T t;
            synchronized (this.f327a) {
                t = (T) super.a();
            }
            return t;
        }

        @Override // android.support.v4.f.j.b, android.support.v4.f.j.a
        public boolean a(T t) {
            boolean a2;
            synchronized (this.f327a) {
                a2 = super.a(t);
            }
            return a2;
        }
    }
}
