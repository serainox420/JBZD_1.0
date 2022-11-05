package io.realm.internal.a;

import io.realm.RealmObjectSchema;
import io.realm.RealmSchema;
import io.realm.internal.SharedRealm;
import io.realm.internal.Table;
import io.realm.internal.Util;
import io.realm.internal.c;
import io.realm.internal.m;
import io.realm.internal.n;
import io.realm.l;
import io.realm.t;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: FilterableMediator.java */
/* loaded from: classes3.dex */
public class b extends m {

    /* renamed from: a  reason: collision with root package name */
    private final m f5786a;
    private final Set<Class<? extends t>> b;

    public b(m mVar, Collection<Class<? extends t>> collection) {
        this.f5786a = mVar;
        HashSet hashSet = new HashSet();
        if (mVar != null) {
            Set<Class<? extends t>> a2 = mVar.a();
            for (Class<? extends t> cls : collection) {
                if (a2.contains(cls)) {
                    hashSet.add(cls);
                }
            }
        }
        this.b = Collections.unmodifiableSet(hashSet);
    }

    @Override // io.realm.internal.m
    public RealmObjectSchema a(Class<? extends t> cls, RealmSchema realmSchema) {
        d(cls);
        return this.f5786a.a(cls, realmSchema);
    }

    @Override // io.realm.internal.m
    public Table a(Class<? extends t> cls, SharedRealm sharedRealm) {
        d(cls);
        return this.f5786a.a(cls, sharedRealm);
    }

    @Override // io.realm.internal.m
    public c a(Class<? extends t> cls, SharedRealm sharedRealm, boolean z) {
        d(cls);
        return this.f5786a.a(cls, sharedRealm, z);
    }

    @Override // io.realm.internal.m
    public String a(Class<? extends t> cls) {
        d(cls);
        return this.f5786a.a(cls);
    }

    @Override // io.realm.internal.m
    public <E extends t> E a(Class<E> cls, Object obj, n nVar, c cVar, boolean z, List<String> list) {
        d(cls);
        return (E) this.f5786a.a(cls, obj, nVar, cVar, z, list);
    }

    @Override // io.realm.internal.m
    public Set<Class<? extends t>> a() {
        return this.b;
    }

    @Override // io.realm.internal.m
    public <E extends t> E a(l lVar, E e, boolean z, Map<t, io.realm.internal.l> map) {
        d(Util.a(e.getClass()));
        return (E) this.f5786a.a(lVar, e, z, map);
    }

    @Override // io.realm.internal.m
    public boolean b() {
        if (this.f5786a == null) {
            return true;
        }
        return this.f5786a.b();
    }

    private void d(Class<? extends t> cls) {
        if (!this.b.contains(cls)) {
            throw new IllegalArgumentException(cls.getSimpleName() + " is not part of the schema for this Realm");
        }
    }
}
