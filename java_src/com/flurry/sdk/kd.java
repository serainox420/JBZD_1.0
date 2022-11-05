package com.flurry.sdk;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class kd<K, V> {

    /* renamed from: a  reason: collision with root package name */
    public final Map<K, List<V>> f2959a;
    private int b;

    public kd() {
        this.f2959a = new HashMap();
    }

    public kd(Map<K, List<V>> map) {
        this.f2959a = map;
    }

    public final void a() {
        this.f2959a.clear();
    }

    public final List<V> a(K k) {
        if (k == null) {
            return Collections.emptyList();
        }
        List<V> a2 = a((kd<K, V>) k, false);
        if (a2 == null) {
            return Collections.emptyList();
        }
        return a2;
    }

    public final void a(K k, V v) {
        if (k != null) {
            a((kd<K, V>) k, true).add(v);
        }
    }

    public final void a(kd<K, V> kdVar) {
        if (kdVar != null) {
            for (Map.Entry<K, List<V>> entry : kdVar.f2959a.entrySet()) {
                a((kd<K, V>) entry.getKey(), true).addAll(entry.getValue());
            }
        }
    }

    public final boolean b(K k, V v) {
        List<V> a2;
        boolean z = false;
        if (k != null && (a2 = a((kd<K, V>) k, false)) != null) {
            z = a2.remove(v);
            if (a2.size() == 0) {
                this.f2959a.remove(k);
            }
        }
        return z;
    }

    public final boolean b(K k) {
        return (k == null || this.f2959a.remove(k) == null) ? false : true;
    }

    public final Collection<Map.Entry<K, V>> b() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<K, List<V>> entry : this.f2959a.entrySet()) {
            for (V v : entry.getValue()) {
                arrayList.add(new AbstractMap.SimpleImmutableEntry(entry.getKey(), v));
            }
        }
        return arrayList;
    }

    public final Set<K> c() {
        return this.f2959a.keySet();
    }

    public final Collection<V> d() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<K, List<V>> entry : this.f2959a.entrySet()) {
            arrayList.addAll(entry.getValue());
        }
        return arrayList;
    }

    public final int e() {
        int i = 0;
        Iterator<Map.Entry<K, List<V>>> it = this.f2959a.entrySet().iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = it.next().getValue().size() + i2;
            } else {
                return i2;
            }
        }
    }

    public final List<V> a(K k, boolean z) {
        List<V> list = this.f2959a.get(k);
        if (z && list == null) {
            if (this.b > 0) {
                list = new ArrayList<>(this.b);
            } else {
                list = new ArrayList<>();
            }
            this.f2959a.put(k, list);
        }
        return list;
    }
}
