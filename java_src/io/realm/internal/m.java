package io.realm.internal;

import io.realm.RealmObjectSchema;
import io.realm.RealmSchema;
import io.realm.exceptions.RealmException;
import io.realm.t;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: RealmProxyMediator.java */
/* loaded from: classes3.dex */
public abstract class m {
    public abstract RealmObjectSchema a(Class<? extends t> cls, RealmSchema realmSchema);

    public abstract Table a(Class<? extends t> cls, SharedRealm sharedRealm);

    public abstract c a(Class<? extends t> cls, SharedRealm sharedRealm, boolean z);

    public abstract <E extends t> E a(io.realm.l lVar, E e, boolean z, Map<t, l> map);

    public abstract <E extends t> E a(Class<E> cls, Object obj, n nVar, c cVar, boolean z, List<String> list);

    public abstract String a(Class<? extends t> cls);

    public abstract Set<Class<? extends t>> a();

    public boolean b() {
        return false;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        return a().equals(((m) obj).a());
    }

    public int hashCode() {
        return a().hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void b(Class<? extends t> cls) {
        if (cls == null) {
            throw new NullPointerException("A class extending RealmObject must be provided");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static RealmException c(Class<? extends t> cls) {
        return new RealmException(cls + " is not part of the schema for this Realm.");
    }
}
