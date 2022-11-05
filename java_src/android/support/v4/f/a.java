package android.support.v4.f;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* compiled from: ArrayMap.java */
/* loaded from: classes.dex */
public class a<K, V> extends k<K, V> implements Map<K, V> {

    /* renamed from: a  reason: collision with root package name */
    h<K, V> f313a;

    public a() {
    }

    public a(int i) {
        super(i);
    }

    public a(k kVar) {
        super(kVar);
    }

    private h<K, V> b() {
        if (this.f313a == null) {
            this.f313a = new h<K, V>() { // from class: android.support.v4.f.a.1
                @Override // android.support.v4.f.h
                protected int a() {
                    return a.this.h;
                }

                @Override // android.support.v4.f.h
                protected Object a(int i, int i2) {
                    return a.this.g[(i << 1) + i2];
                }

                @Override // android.support.v4.f.h
                protected int a(Object obj) {
                    return a.this.a(obj);
                }

                @Override // android.support.v4.f.h
                protected int b(Object obj) {
                    return a.this.b(obj);
                }

                @Override // android.support.v4.f.h
                protected Map<K, V> b() {
                    return a.this;
                }

                @Override // android.support.v4.f.h
                protected void a(K k, V v) {
                    a.this.put(k, v);
                }

                @Override // android.support.v4.f.h
                protected V a(int i, V v) {
                    return a.this.a(i, (int) v);
                }

                @Override // android.support.v4.f.h
                protected void a(int i) {
                    a.this.d(i);
                }

                @Override // android.support.v4.f.h
                protected void c() {
                    a.this.clear();
                }
            };
        }
        return this.f313a;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        a(this.h + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean a(Collection<?> collection) {
        return h.c(this, collection);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return b().d();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return b().e();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return b().f();
    }
}
