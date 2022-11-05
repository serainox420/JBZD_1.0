package io.realm.internal;

import io.realm.t;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ColumnIndices.java */
/* loaded from: classes3.dex */
public final class b implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private long f5792a;
    private Map<Class<? extends t>, c> b;

    public b(long j, Map<Class<? extends t>, c> map) {
        this.f5792a = j;
        this.b = map;
    }

    public long a() {
        return this.f5792a;
    }

    public c a(Class<? extends t> cls) {
        return this.b.get(cls);
    }

    /* renamed from: b */
    public b clone() {
        try {
            b bVar = (b) super.clone();
            bVar.b = c();
            return bVar;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    private Map<Class<? extends t>, c> c() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Class<? extends t>, c> entry : this.b.entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue().clone());
        }
        return hashMap;
    }

    public void a(b bVar, m mVar) {
        for (Map.Entry<Class<? extends t>, c> entry : this.b.entrySet()) {
            c a2 = bVar.a(entry.getKey());
            if (a2 == null) {
                throw new IllegalStateException("Failed to copy ColumnIndices cache: " + Table.d(mVar.a(entry.getKey())));
            }
            entry.getValue().a(a2);
        }
        this.f5792a = bVar.f5792a;
    }
}
