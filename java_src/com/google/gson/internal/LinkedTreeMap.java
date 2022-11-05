package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes2.dex */
public final class LinkedTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean f;
    private static final Comparator<Comparable> g;

    /* renamed from: a  reason: collision with root package name */
    Comparator<? super K> f3627a;
    d<K, V> b;
    int c;
    int d;
    final d<K, V> e;
    private LinkedTreeMap<K, V>.a h;
    private LinkedTreeMap<K, V>.b i;

    static {
        f = !LinkedTreeMap.class.desiredAssertionStatus();
        g = new Comparator<Comparable>() { // from class: com.google.gson.internal.LinkedTreeMap.1
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(Comparable comparable, Comparable comparable2) {
                return comparable.compareTo(comparable2);
            }
        };
    }

    public LinkedTreeMap() {
        this(g);
    }

    public LinkedTreeMap(Comparator<? super K> comparator) {
        this.c = 0;
        this.d = 0;
        this.e = new d<>();
        this.f3627a = comparator == null ? g : comparator;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        d<K, V> a2 = a(obj);
        if (a2 != null) {
            return a2.g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return a(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        d<K, V> a2 = a((LinkedTreeMap<K, V>) k, true);
        V v2 = a2.g;
        a2.g = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.b = null;
        this.c = 0;
        this.d++;
        d<K, V> dVar = this.e;
        dVar.e = dVar;
        dVar.d = dVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        d<K, V> b2 = b(obj);
        if (b2 != null) {
            return b2.g;
        }
        return null;
    }

    d<K, V> a(K k, boolean z) {
        d<K, V> dVar;
        int i;
        d<K, V> dVar2;
        int compare;
        Comparator<? super K> comparator = this.f3627a;
        d<K, V> dVar3 = this.b;
        if (dVar3 == null) {
            dVar = dVar3;
            i = 0;
        } else {
            Comparable comparable = comparator == g ? (Comparable) k : null;
            while (true) {
                if (comparable != null) {
                    compare = comparable.compareTo(dVar3.f);
                } else {
                    compare = comparator.compare(k, (K) dVar3.f);
                }
                if (compare == 0) {
                    return dVar3;
                }
                d<K, V> dVar4 = compare < 0 ? dVar3.b : dVar3.c;
                if (dVar4 == null) {
                    int i2 = compare;
                    dVar = dVar3;
                    i = i2;
                    break;
                }
                dVar3 = dVar4;
            }
        }
        if (z) {
            d<K, V> dVar5 = this.e;
            if (dVar == null) {
                if (comparator == g && !(k instanceof Comparable)) {
                    throw new ClassCastException(k.getClass().getName() + " is not Comparable");
                }
                dVar2 = new d<>(dVar, k, dVar5, dVar5.e);
                this.b = dVar2;
            } else {
                dVar2 = new d<>(dVar, k, dVar5, dVar5.e);
                if (i < 0) {
                    dVar.b = dVar2;
                } else {
                    dVar.c = dVar2;
                }
                b(dVar, true);
            }
            this.c++;
            this.d++;
            return dVar2;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    d<K, V> a(Object obj) {
        if (obj != 0) {
            try {
                return a((LinkedTreeMap<K, V>) obj, false);
            } catch (ClassCastException e) {
                return null;
            }
        }
        return null;
    }

    d<K, V> a(Map.Entry<?, ?> entry) {
        d<K, V> a2 = a(entry.getKey());
        if (a2 != null && a(a2.g, entry.getValue())) {
            return a2;
        }
        return null;
    }

    private boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    void a(d<K, V> dVar, boolean z) {
        int i;
        int i2 = 0;
        if (z) {
            dVar.e.d = dVar.d;
            dVar.d.e = dVar.e;
        }
        d<K, V> dVar2 = dVar.b;
        d<K, V> dVar3 = dVar.c;
        d<K, V> dVar4 = dVar.f3632a;
        if (dVar2 != null && dVar3 != null) {
            d<K, V> b2 = dVar2.h > dVar3.h ? dVar2.b() : dVar3.a();
            a((d) b2, false);
            d<K, V> dVar5 = dVar.b;
            if (dVar5 != null) {
                i = dVar5.h;
                b2.b = dVar5;
                dVar5.f3632a = b2;
                dVar.b = null;
            } else {
                i = 0;
            }
            d<K, V> dVar6 = dVar.c;
            if (dVar6 != null) {
                i2 = dVar6.h;
                b2.c = dVar6;
                dVar6.f3632a = b2;
                dVar.c = null;
            }
            b2.h = Math.max(i, i2) + 1;
            a((d) dVar, (d) b2);
            return;
        }
        if (dVar2 != null) {
            a((d) dVar, (d) dVar2);
            dVar.b = null;
        } else if (dVar3 != null) {
            a((d) dVar, (d) dVar3);
            dVar.c = null;
        } else {
            a((d) dVar, (d) null);
        }
        b(dVar4, false);
        this.c--;
        this.d++;
    }

    d<K, V> b(Object obj) {
        d<K, V> a2 = a(obj);
        if (a2 != null) {
            a((d) a2, true);
        }
        return a2;
    }

    private void a(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.f3632a;
        dVar.f3632a = null;
        if (dVar2 != null) {
            dVar2.f3632a = dVar3;
        }
        if (dVar3 != null) {
            if (dVar3.b == dVar) {
                dVar3.b = dVar2;
                return;
            } else if (!f && dVar3.c != dVar) {
                throw new AssertionError();
            } else {
                dVar3.c = dVar2;
                return;
            }
        }
        this.b = dVar2;
    }

    private void b(d<K, V> dVar, boolean z) {
        while (dVar != null) {
            d<K, V> dVar2 = dVar.b;
            d<K, V> dVar3 = dVar.c;
            int i = dVar2 != null ? dVar2.h : 0;
            int i2 = dVar3 != null ? dVar3.h : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                d<K, V> dVar4 = dVar3.b;
                d<K, V> dVar5 = dVar3.c;
                int i4 = (dVar4 != null ? dVar4.h : 0) - (dVar5 != null ? dVar5.h : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    a((d) dVar);
                } else if (!f && i4 != 1) {
                    throw new AssertionError();
                } else {
                    b((d) dVar3);
                    a((d) dVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                d<K, V> dVar6 = dVar2.b;
                d<K, V> dVar7 = dVar2.c;
                int i5 = (dVar6 != null ? dVar6.h : 0) - (dVar7 != null ? dVar7.h : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    b((d) dVar);
                } else if (!f && i5 != -1) {
                    throw new AssertionError();
                } else {
                    a((d) dVar2);
                    b((d) dVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                dVar.h = i + 1;
                if (z) {
                    return;
                }
            } else if (!f && i3 != -1 && i3 != 1) {
                throw new AssertionError();
            } else {
                dVar.h = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            dVar = dVar.f3632a;
        }
    }

    private void a(d<K, V> dVar) {
        int i = 0;
        d<K, V> dVar2 = dVar.b;
        d<K, V> dVar3 = dVar.c;
        d<K, V> dVar4 = dVar3.b;
        d<K, V> dVar5 = dVar3.c;
        dVar.c = dVar4;
        if (dVar4 != null) {
            dVar4.f3632a = dVar;
        }
        a((d) dVar, (d) dVar3);
        dVar3.b = dVar;
        dVar.f3632a = dVar3;
        dVar.h = Math.max(dVar2 != null ? dVar2.h : 0, dVar4 != null ? dVar4.h : 0) + 1;
        int i2 = dVar.h;
        if (dVar5 != null) {
            i = dVar5.h;
        }
        dVar3.h = Math.max(i2, i) + 1;
    }

    private void b(d<K, V> dVar) {
        int i = 0;
        d<K, V> dVar2 = dVar.b;
        d<K, V> dVar3 = dVar.c;
        d<K, V> dVar4 = dVar2.b;
        d<K, V> dVar5 = dVar2.c;
        dVar.b = dVar5;
        if (dVar5 != null) {
            dVar5.f3632a = dVar;
        }
        a((d) dVar, (d) dVar2);
        dVar2.c = dVar;
        dVar.f3632a = dVar2;
        dVar.h = Math.max(dVar3 != null ? dVar3.h : 0, dVar5 != null ? dVar5.h : 0) + 1;
        int i2 = dVar.h;
        if (dVar4 != null) {
            i = dVar4.h;
        }
        dVar2.h = Math.max(i2, i) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedTreeMap<K, V>.a aVar = this.h;
        if (aVar != null) {
            return aVar;
        }
        LinkedTreeMap<K, V>.a aVar2 = new a();
        this.h = aVar2;
        return aVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        LinkedTreeMap<K, V>.b bVar = this.i;
        if (bVar != null) {
            return bVar;
        }
        LinkedTreeMap<K, V>.b bVar2 = new b();
        this.i = bVar2;
        return bVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class d<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        d<K, V> f3632a;
        d<K, V> b;
        d<K, V> c;
        d<K, V> d;
        d<K, V> e;
        final K f;
        V g;
        int h;

        d() {
            this.f = null;
            this.e = this;
            this.d = this;
        }

        d(d<K, V> dVar, K k, d<K, V> dVar2, d<K, V> dVar3) {
            this.f3632a = dVar;
            this.f = k;
            this.h = 1;
            this.d = dVar2;
            this.e = dVar3;
            dVar3.d = this;
            dVar2.e = this;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.g;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.g;
            this.g = v;
            return v2;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (this.f == null) {
                    if (entry.getKey() != null) {
                        return false;
                    }
                } else if (!this.f.equals(entry.getKey())) {
                    return false;
                }
                if (this.g == null) {
                    if (entry.getValue() != null) {
                        return false;
                    }
                } else if (!this.g.equals(entry.getValue())) {
                    return false;
                }
                return true;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int i = 0;
            int hashCode = this.f == null ? 0 : this.f.hashCode();
            if (this.g != null) {
                i = this.g.hashCode();
            }
            return hashCode ^ i;
        }

        public String toString() {
            return this.f + "=" + this.g;
        }

        public d<K, V> a() {
            for (d<K, V> dVar = this.b; dVar != null; dVar = dVar.b) {
                this = dVar;
            }
            return this;
        }

        public d<K, V> b() {
            for (d<K, V> dVar = this.c; dVar != null; dVar = dVar.c) {
                this = dVar;
            }
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public abstract class c<T> implements Iterator<T> {
        d<K, V> b;
        d<K, V> c = null;
        int d;

        c() {
            this.b = LinkedTreeMap.this.e.d;
            this.d = LinkedTreeMap.this.d;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b != LinkedTreeMap.this.e;
        }

        final d<K, V> b() {
            d<K, V> dVar = this.b;
            if (dVar == LinkedTreeMap.this.e) {
                throw new NoSuchElementException();
            }
            if (LinkedTreeMap.this.d != this.d) {
                throw new ConcurrentModificationException();
            }
            this.b = dVar.d;
            this.c = dVar;
            return dVar;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.c == null) {
                throw new IllegalStateException();
            }
            LinkedTreeMap.this.a((d) this.c, true);
            this.c = null;
            this.d = LinkedTreeMap.this.d;
        }
    }

    /* loaded from: classes2.dex */
    class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedTreeMap.this.c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new LinkedTreeMap<K, V>.c<Map.Entry<K, V>>() { // from class: com.google.gson.internal.LinkedTreeMap.a.1
                {
                    LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
                }

                @Override // java.util.Iterator
                /* renamed from: a */
                public Map.Entry<K, V> next() {
                    return b();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && LinkedTreeMap.this.a((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            d<K, V> a2;
            if ((obj instanceof Map.Entry) && (a2 = LinkedTreeMap.this.a((Map.Entry) obj)) != null) {
                LinkedTreeMap.this.a((d) a2, true);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedTreeMap.this.clear();
        }
    }

    /* loaded from: classes2.dex */
    final class b extends AbstractSet<K> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedTreeMap.this.c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new LinkedTreeMap<K, V>.c<K>() { // from class: com.google.gson.internal.LinkedTreeMap.b.1
                {
                    LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return b().f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedTreeMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LinkedTreeMap.this.b(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedTreeMap.this.clear();
        }
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }
}
