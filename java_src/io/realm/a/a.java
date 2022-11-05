package io.realm.a;

import io.realm.d;
import io.realm.e;
import io.realm.l;
import io.realm.p;
import io.realm.q;
import io.realm.t;
import io.realm.w;
import java.util.IdentityHashMap;
import java.util.Map;
import rx.Observable;
/* compiled from: RealmObservableFactory.java */
/* loaded from: classes3.dex */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    ThreadLocal<C0592a<w>> f5747a = new ThreadLocal<C0592a<w>>() { // from class: io.realm.a.a.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public C0592a<w> initialValue() {
            return new C0592a<>();
        }
    };
    ThreadLocal<C0592a<q>> b = new ThreadLocal<C0592a<q>>() { // from class: io.realm.a.a.4
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public C0592a<q> initialValue() {
            return new C0592a<>();
        }
    };
    ThreadLocal<C0592a<t>> c = new ThreadLocal<C0592a<t>>() { // from class: io.realm.a.a.5
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public C0592a<t> initialValue() {
            return new C0592a<>();
        }
    };

    @Override // io.realm.a.b
    public <E extends t> a.a<E> a(l lVar, final E e) {
        final p g = lVar.g();
        return a.a.create(new Observable.OnSubscribe<E>() { // from class: io.realm.a.a.2
        });
    }

    @Override // io.realm.a.b
    public a.a<e> a(d dVar, final e eVar) {
        final p g = dVar.g();
        return a.a.create(new Observable.OnSubscribe<e>() { // from class: io.realm.a.a.3
        });
    }

    public boolean equals(Object obj) {
        return obj instanceof a;
    }

    public int hashCode() {
        return 37;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RealmObservableFactory.java */
    /* renamed from: io.realm.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0592a<K> {

        /* renamed from: a  reason: collision with root package name */
        private final Map<K, Integer> f5753a;

        private C0592a() {
            this.f5753a = new IdentityHashMap();
        }
    }
}
