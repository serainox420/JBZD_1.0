package io.realm.internal;

import io.realm.internal.i.b;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: ObserverPairList.java */
/* loaded from: classes3.dex */
class i<T extends b> {

    /* renamed from: a  reason: collision with root package name */
    private List<T> f5798a = new CopyOnWriteArrayList();
    private boolean b = false;

    /* compiled from: ObserverPairList.java */
    /* loaded from: classes3.dex */
    interface a<T extends b> {
        void a(T t, Object obj);
    }

    /* compiled from: ObserverPairList.java */
    /* loaded from: classes3.dex */
    static abstract class b<T, S> {
        final WeakReference<T> b;
        protected final S c;
        boolean d = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(T t, S s) {
            this.c = s;
            this.b = new WeakReference<>(t);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.c.equals(bVar.c) && this.b.get() == bVar.b.get();
        }

        public int hashCode() {
            int i = 0;
            T t = this.b.get();
            int hashCode = ((t != null ? t.hashCode() : 0) + 527) * 31;
            if (this.c != null) {
                i = this.c.hashCode();
            }
            return hashCode + i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a<T> aVar) {
        for (T t : this.f5798a) {
            if (!this.b) {
                Object obj = t.b.get();
                if (obj == null) {
                    this.f5798a.remove(t);
                } else if (!t.d) {
                    aVar.a(t, obj);
                }
            } else {
                return;
            }
        }
    }

    public boolean a() {
        return this.f5798a.isEmpty();
    }

    public void b() {
        this.b = true;
        this.f5798a.clear();
    }

    public void a(T t) {
        if (!this.f5798a.contains(t)) {
            this.f5798a.add(t);
            t.d = false;
        }
        if (this.b) {
            this.b = false;
        }
    }

    public <S, U> void a(S s, U u) {
        for (T t : this.f5798a) {
            if (s == t.b.get() && u.equals(t.c)) {
                t.d = true;
                this.f5798a.remove(t);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Object obj) {
        for (T t : this.f5798a) {
            Object obj2 = t.b.get();
            if (obj2 == null || obj2 == obj) {
                t.d = true;
                this.f5798a.remove(t);
            }
        }
    }

    public int c() {
        return this.f5798a.size();
    }
}
