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
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: CompositeMediator.java */
/* loaded from: classes3.dex */
public class a extends m {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<? extends t>, m> f5785a;

    public a(m... mVarArr) {
        HashMap hashMap = new HashMap();
        if (mVarArr != null) {
            for (m mVar : mVarArr) {
                for (Class<? extends t> cls : mVar.a()) {
                    hashMap.put(cls, mVar);
                }
            }
        }
        this.f5785a = Collections.unmodifiableMap(hashMap);
    }

    @Override // io.realm.internal.m
    public RealmObjectSchema a(Class<? extends t> cls, RealmSchema realmSchema) {
        return d(cls).a(cls, realmSchema);
    }

    @Override // io.realm.internal.m
    public Table a(Class<? extends t> cls, SharedRealm sharedRealm) {
        return d(cls).a(cls, sharedRealm);
    }

    @Override // io.realm.internal.m
    public c a(Class<? extends t> cls, SharedRealm sharedRealm, boolean z) {
        return d(cls).a(cls, sharedRealm, z);
    }

    @Override // io.realm.internal.m
    public String a(Class<? extends t> cls) {
        return d(cls).a(cls);
    }

    @Override // io.realm.internal.m
    public <E extends t> E a(Class<E> cls, Object obj, n nVar, c cVar, boolean z, List<String> list) {
        return (E) d(cls).a(cls, obj, nVar, cVar, z, list);
    }

    @Override // io.realm.internal.m
    public Set<Class<? extends t>> a() {
        return this.f5785a.keySet();
    }

    @Override // io.realm.internal.m
    public <E extends t> E a(l lVar, E e, boolean z, Map<t, io.realm.internal.l> map) {
        return (E) d(Util.a(e.getClass())).a(lVar, e, z, map);
    }

    @Override // io.realm.internal.m
    public boolean b() {
        for (Map.Entry<Class<? extends t>, m> entry : this.f5785a.entrySet()) {
            if (!entry.getValue().b()) {
                return false;
            }
        }
        return true;
    }

    private m d(Class<? extends t> cls) {
        m mVar = this.f5785a.get(cls);
        if (mVar == null) {
            throw new IllegalArgumentException(cls.getSimpleName() + " is not part of the schema for this Realm");
        }
        return mVar;
    }
}
