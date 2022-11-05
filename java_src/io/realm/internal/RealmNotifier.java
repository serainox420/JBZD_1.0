package io.realm.internal;

import io.realm.internal.i;
import io.realm.o;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
@Keep
/* loaded from: classes3.dex */
public abstract class RealmNotifier implements Closeable {
    private SharedRealm sharedRealm;
    private i<a> realmObserverPairs = new i<>();
    private final i.a<a> onChangeCallBack = new i.a<a>() { // from class: io.realm.internal.RealmNotifier.1
        @Override // io.realm.internal.i.a
        public void a(a aVar, Object obj) {
            if (RealmNotifier.this.sharedRealm != null && !RealmNotifier.this.sharedRealm.k()) {
                aVar.a(obj);
            }
        }
    };
    private List<Runnable> transactionCallbacks = new ArrayList();

    public abstract boolean post(Runnable runnable);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a<T> extends i.b<T, o<T>> {
        public a(T t, o<T> oVar) {
            super(t, oVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(T t) {
            if (t != null) {
                ((o) this.c).a(t);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public RealmNotifier(SharedRealm sharedRealm) {
        this.sharedRealm = sharedRealm;
    }

    void didChange() {
        this.realmObserverPairs.a(this.onChangeCallBack);
        for (Runnable runnable : this.transactionCallbacks) {
            runnable.run();
        }
        this.transactionCallbacks.clear();
    }

    void beforeNotify() {
        this.sharedRealm.n();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        removeAllChangeListeners();
    }

    public <T> void addChangeListener(T t, o<T> oVar) {
        this.realmObserverPairs.a((i<a>) new a(t, oVar));
    }

    public <E> void removeChangeListener(E e, o<E> oVar) {
        this.realmObserverPairs.a(e, oVar);
    }

    public <E> void removeChangeListeners(E e) {
        this.realmObserverPairs.a(e);
    }

    private void removeAllChangeListeners() {
        this.realmObserverPairs.b();
    }

    public void addTransactionCallback(Runnable runnable) {
        this.transactionCallbacks.add(runnable);
    }

    public int getListenersListSize() {
        return this.realmObserverPairs.c();
    }
}
