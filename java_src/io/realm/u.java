package io.realm;

import io.realm.internal.InvalidRow;
/* compiled from: RealmObject.java */
/* loaded from: classes.dex */
public abstract class u implements t {
    public final void deleteFromRealm() {
        deleteFromRealm(this);
    }

    public static <E extends t> void deleteFromRealm(E e) {
        if (!(e instanceof io.realm.internal.l)) {
            throw new IllegalArgumentException("Object not managed by Realm, so it cannot be removed.");
        }
        io.realm.internal.l lVar = (io.realm.internal.l) e;
        if (lVar.c().b() == null) {
            throw new IllegalStateException("Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
        }
        if (lVar.c().a() == null) {
            throw new IllegalStateException("Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
        }
        lVar.c().a().e();
        io.realm.internal.n b = lVar.c().b();
        b.getTable().d(b.getIndex());
        lVar.c().a(InvalidRow.INSTANCE);
    }

    public final boolean isValid() {
        return isValid(this);
    }

    public static <E extends t> boolean isValid(E e) {
        if (e instanceof io.realm.internal.l) {
            io.realm.internal.n b = ((io.realm.internal.l) e).c().b();
            return b != null && b.isAttached();
        }
        return true;
    }

    public final boolean isLoaded() {
        return isLoaded(this);
    }

    public static <E extends t> boolean isLoaded(E e) {
        if (e instanceof io.realm.internal.l) {
            io.realm.internal.l lVar = (io.realm.internal.l) e;
            lVar.c().a().e();
            return lVar.c().i();
        }
        return true;
    }

    public boolean isManaged() {
        return isManaged(this);
    }

    public static <E extends t> boolean isManaged(E e) {
        return e instanceof io.realm.internal.l;
    }

    public final boolean load() {
        return load(this);
    }

    public static <E extends t> boolean load(E e) {
        if (isLoaded(e)) {
            return true;
        }
        if (e instanceof io.realm.internal.l) {
            ((io.realm.internal.l) e).c().j();
            return true;
        }
        return false;
    }

    public final <E extends t> void addChangeListener(o<E> oVar) {
        addChangeListener(this, oVar);
    }

    public static <E extends t> void addChangeListener(E e, o<E> oVar) {
        if (e == null) {
            throw new IllegalArgumentException("Object should not be null");
        }
        if (oVar == null) {
            throw new IllegalArgumentException("Listener should not be null");
        }
        if (e instanceof io.realm.internal.l) {
            io.realm.internal.l lVar = (io.realm.internal.l) e;
            b a2 = lVar.c().a();
            a2.e();
            a2.e.d.a("Listeners cannot be used on current thread.");
            lVar.c().a(oVar);
            return;
        }
        throw new IllegalArgumentException("Cannot add listener from this unmanaged RealmObject (created outside of Realm)");
    }

    public final void removeChangeListener(o oVar) {
        removeChangeListener(this, oVar);
    }

    public static <E extends t> void removeChangeListener(E e, o oVar) {
        if (e == null) {
            throw new IllegalArgumentException("Object should not be null");
        }
        if (oVar == null) {
            throw new IllegalArgumentException("Listener should not be null");
        }
        if (e instanceof io.realm.internal.l) {
            io.realm.internal.l lVar = (io.realm.internal.l) e;
            b a2 = lVar.c().a();
            a2.e();
            a2.e.d.a("Listeners cannot be used on current thread.");
            lVar.c().b(oVar);
            return;
        }
        throw new IllegalArgumentException("Cannot remove listener from this unmanaged RealmObject (created outside of Realm)");
    }

    @Deprecated
    public final void removeChangeListeners() {
        removeChangeListeners(this);
    }

    public final void removeAllChangeListeners() {
        removeAllChangeListeners(this);
    }

    @Deprecated
    public static <E extends t> void removeChangeListeners(E e) {
        removeAllChangeListeners(e);
    }

    public static <E extends t> void removeAllChangeListeners(E e) {
        if (e instanceof io.realm.internal.l) {
            io.realm.internal.l lVar = (io.realm.internal.l) e;
            b a2 = lVar.c().a();
            a2.e();
            a2.e.d.a("Listeners cannot be used on current thread.");
            lVar.c().e();
            return;
        }
        throw new IllegalArgumentException("Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)");
    }

    public final <E extends u> a.a<E> asObservable() {
        return asObservable(this);
    }

    public static <E extends t> a.a<E> asObservable(E e) {
        if (e instanceof io.realm.internal.l) {
            b a2 = ((io.realm.internal.l) e).c().a();
            if (a2 instanceof l) {
                return a2.d.m().a((l) a2, (l) e);
            }
            if (a2 instanceof d) {
                return a2.d.m().a((d) a2, (e) e);
            }
            throw new UnsupportedOperationException(a2.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
        }
        throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
    }
}
