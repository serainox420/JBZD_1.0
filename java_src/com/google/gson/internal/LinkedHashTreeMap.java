package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes2.dex */
public final class LinkedHashTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean g;
    private static final Comparator<Comparable> h;

    /* renamed from: a  reason: collision with root package name */
    Comparator<? super K> f3619a;
    f<K, V>[] b;
    final f<K, V> c;
    int d;
    int e;
    int f;
    private LinkedHashTreeMap<K, V>.c i;
    private LinkedHashTreeMap<K, V>.d j;

    static {
        g = !LinkedHashTreeMap.class.desiredAssertionStatus();
        h = new Comparator<Comparable>() { // from class: com.google.gson.internal.LinkedHashTreeMap.1
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(Comparable comparable, Comparable comparable2) {
                return comparable.compareTo(comparable2);
            }
        };
    }

    public LinkedHashTreeMap() {
        this(h);
    }

    public LinkedHashTreeMap(Comparator<? super K> comparator) {
        this.d = 0;
        this.e = 0;
        this.f3619a = comparator == null ? h : comparator;
        this.c = new f<>();
        this.b = new f[16];
        this.f = (this.b.length / 2) + (this.b.length / 4);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        f<K, V> a2 = a(obj);
        if (a2 != null) {
            return a2.h;
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
        f<K, V> a2 = a((LinkedHashTreeMap<K, V>) k, true);
        V v2 = a2.h;
        a2.h = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Arrays.fill(this.b, (Object) null);
        this.d = 0;
        this.e++;
        f<K, V> fVar = this.c;
        f<K, V> fVar2 = fVar.d;
        while (fVar2 != fVar) {
            f<K, V> fVar3 = fVar2.d;
            fVar2.e = null;
            fVar2.d = null;
            fVar2 = fVar3;
        }
        fVar.e = fVar;
        fVar.d = fVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        f<K, V> b2 = b(obj);
        if (b2 != null) {
            return b2.h;
        }
        return null;
    }

    f<K, V> a(K k, boolean z) {
        int i;
        f<K, V> fVar;
        int compare;
        Comparator<? super K> comparator = this.f3619a;
        f<K, V>[] fVarArr = this.b;
        int a2 = a(k.hashCode());
        int length = a2 & (fVarArr.length - 1);
        f<K, V> fVar2 = fVarArr[length];
        if (fVar2 == null) {
            i = 0;
        } else {
            Comparable comparable = comparator == h ? (Comparable) k : null;
            while (true) {
                if (comparable != null) {
                    compare = comparable.compareTo(fVar2.f);
                } else {
                    compare = comparator.compare(k, (K) fVar2.f);
                }
                if (compare == 0) {
                    return fVar2;
                }
                f<K, V> fVar3 = compare < 0 ? fVar2.b : fVar2.c;
                if (fVar3 == null) {
                    i = compare;
                    break;
                }
                fVar2 = fVar3;
            }
        }
        if (z) {
            f<K, V> fVar4 = this.c;
            if (fVar2 == null) {
                if (comparator == h && !(k instanceof Comparable)) {
                    throw new ClassCastException(k.getClass().getName() + " is not Comparable");
                }
                fVar = new f<>(fVar2, k, a2, fVar4, fVar4.e);
                fVarArr[length] = fVar;
            } else {
                fVar = new f<>(fVar2, k, a2, fVar4, fVar4.e);
                if (i < 0) {
                    fVar2.b = fVar;
                } else {
                    fVar2.c = fVar;
                }
                b(fVar2, true);
            }
            int i2 = this.d;
            this.d = i2 + 1;
            if (i2 > this.f) {
                a();
            }
            this.e++;
            return fVar;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    f<K, V> a(Object obj) {
        if (obj != 0) {
            try {
                return a((LinkedHashTreeMap<K, V>) obj, false);
            } catch (ClassCastException e2) {
                return null;
            }
        }
        return null;
    }

    f<K, V> a(Map.Entry<?, ?> entry) {
        f<K, V> a2 = a(entry.getKey());
        if (a2 != null && a(a2.h, entry.getValue())) {
            return a2;
        }
        return null;
    }

    private boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private static int a(int i) {
        int i2 = ((i >>> 20) ^ (i >>> 12)) ^ i;
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }

    void a(f<K, V> fVar, boolean z) {
        int i;
        int i2 = 0;
        if (z) {
            fVar.e.d = fVar.d;
            fVar.d.e = fVar.e;
            fVar.e = null;
            fVar.d = null;
        }
        f<K, V> fVar2 = fVar.b;
        f<K, V> fVar3 = fVar.c;
        f<K, V> fVar4 = fVar.f3626a;
        if (fVar2 != null && fVar3 != null) {
            f<K, V> b2 = fVar2.i > fVar3.i ? fVar2.b() : fVar3.a();
            a((f) b2, false);
            f<K, V> fVar5 = fVar.b;
            if (fVar5 != null) {
                i = fVar5.i;
                b2.b = fVar5;
                fVar5.f3626a = b2;
                fVar.b = null;
            } else {
                i = 0;
            }
            f<K, V> fVar6 = fVar.c;
            if (fVar6 != null) {
                i2 = fVar6.i;
                b2.c = fVar6;
                fVar6.f3626a = b2;
                fVar.c = null;
            }
            b2.i = Math.max(i, i2) + 1;
            a((f) fVar, (f) b2);
            return;
        }
        if (fVar2 != null) {
            a((f) fVar, (f) fVar2);
            fVar.b = null;
        } else if (fVar3 != null) {
            a((f) fVar, (f) fVar3);
            fVar.c = null;
        } else {
            a((f) fVar, (f) null);
        }
        b(fVar4, false);
        this.d--;
        this.e++;
    }

    f<K, V> b(Object obj) {
        f<K, V> a2 = a(obj);
        if (a2 != null) {
            a((f) a2, true);
        }
        return a2;
    }

    private void a(f<K, V> fVar, f<K, V> fVar2) {
        f<K, V> fVar3 = fVar.f3626a;
        fVar.f3626a = null;
        if (fVar2 != null) {
            fVar2.f3626a = fVar3;
        }
        if (fVar3 != null) {
            if (fVar3.b == fVar) {
                fVar3.b = fVar2;
                return;
            } else if (!g && fVar3.c != fVar) {
                throw new AssertionError();
            } else {
                fVar3.c = fVar2;
                return;
            }
        }
        this.b[fVar.g & (this.b.length - 1)] = fVar2;
    }

    private void b(f<K, V> fVar, boolean z) {
        while (fVar != null) {
            f<K, V> fVar2 = fVar.b;
            f<K, V> fVar3 = fVar.c;
            int i = fVar2 != null ? fVar2.i : 0;
            int i2 = fVar3 != null ? fVar3.i : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                f<K, V> fVar4 = fVar3.b;
                f<K, V> fVar5 = fVar3.c;
                int i4 = (fVar4 != null ? fVar4.i : 0) - (fVar5 != null ? fVar5.i : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    a((f) fVar);
                } else if (!g && i4 != 1) {
                    throw new AssertionError();
                } else {
                    b((f) fVar3);
                    a((f) fVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                f<K, V> fVar6 = fVar2.b;
                f<K, V> fVar7 = fVar2.c;
                int i5 = (fVar6 != null ? fVar6.i : 0) - (fVar7 != null ? fVar7.i : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    b((f) fVar);
                } else if (!g && i5 != -1) {
                    throw new AssertionError();
                } else {
                    a((f) fVar2);
                    b((f) fVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                fVar.i = i + 1;
                if (z) {
                    return;
                }
            } else if (!g && i3 != -1 && i3 != 1) {
                throw new AssertionError();
            } else {
                fVar.i = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            fVar = fVar.f3626a;
        }
    }

    private void a(f<K, V> fVar) {
        int i = 0;
        f<K, V> fVar2 = fVar.b;
        f<K, V> fVar3 = fVar.c;
        f<K, V> fVar4 = fVar3.b;
        f<K, V> fVar5 = fVar3.c;
        fVar.c = fVar4;
        if (fVar4 != null) {
            fVar4.f3626a = fVar;
        }
        a((f) fVar, (f) fVar3);
        fVar3.b = fVar;
        fVar.f3626a = fVar3;
        fVar.i = Math.max(fVar2 != null ? fVar2.i : 0, fVar4 != null ? fVar4.i : 0) + 1;
        int i2 = fVar.i;
        if (fVar5 != null) {
            i = fVar5.i;
        }
        fVar3.i = Math.max(i2, i) + 1;
    }

    private void b(f<K, V> fVar) {
        int i = 0;
        f<K, V> fVar2 = fVar.b;
        f<K, V> fVar3 = fVar.c;
        f<K, V> fVar4 = fVar2.b;
        f<K, V> fVar5 = fVar2.c;
        fVar.b = fVar5;
        if (fVar5 != null) {
            fVar5.f3626a = fVar;
        }
        a((f) fVar, (f) fVar2);
        fVar2.c = fVar;
        fVar.f3626a = fVar2;
        fVar.i = Math.max(fVar3 != null ? fVar3.i : 0, fVar5 != null ? fVar5.i : 0) + 1;
        int i2 = fVar.i;
        if (fVar4 != null) {
            i = fVar4.i;
        }
        fVar2.i = Math.max(i2, i) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedHashTreeMap<K, V>.c cVar = this.i;
        if (cVar != null) {
            return cVar;
        }
        LinkedHashTreeMap<K, V>.c cVar2 = new c();
        this.i = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        LinkedHashTreeMap<K, V>.d dVar = this.j;
        if (dVar != null) {
            return dVar;
        }
        LinkedHashTreeMap<K, V>.d dVar2 = new d();
        this.j = dVar2;
        return dVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class f<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        f<K, V> f3626a;
        f<K, V> b;
        f<K, V> c;
        f<K, V> d;
        f<K, V> e;
        final K f;
        final int g;
        V h;
        int i;

        f() {
            this.f = null;
            this.g = -1;
            this.e = this;
            this.d = this;
        }

        f(f<K, V> fVar, K k, int i, f<K, V> fVar2, f<K, V> fVar3) {
            this.f3626a = fVar;
            this.f = k;
            this.g = i;
            this.i = 1;
            this.d = fVar2;
            this.e = fVar3;
            fVar3.d = this;
            fVar2.e = this;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.h;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.h;
            this.h = v;
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
                if (this.h == null) {
                    if (entry.getValue() != null) {
                        return false;
                    }
                } else if (!this.h.equals(entry.getValue())) {
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
            if (this.h != null) {
                i = this.h.hashCode();
            }
            return hashCode ^ i;
        }

        public String toString() {
            return this.f + "=" + this.h;
        }

        public f<K, V> a() {
            for (f<K, V> fVar = this.b; fVar != null; fVar = fVar.b) {
                this = fVar;
            }
            return this;
        }

        public f<K, V> b() {
            for (f<K, V> fVar = this.c; fVar != null; fVar = fVar.c) {
                this = fVar;
            }
            return this;
        }
    }

    private void a() {
        this.b = a((f[]) this.b);
        this.f = (this.b.length / 2) + (this.b.length / 4);
    }

    static <K, V> f<K, V>[] a(f<K, V>[] fVarArr) {
        int length = fVarArr.length;
        f<K, V>[] fVarArr2 = new f[length * 2];
        b bVar = new b();
        a aVar = new a();
        a aVar2 = new a();
        for (int i = 0; i < length; i++) {
            f<K, V> fVar = fVarArr[i];
            if (fVar != null) {
                bVar.a(fVar);
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    f<K, V> a2 = bVar.a();
                    if (a2 == null) {
                        break;
                    } else if ((a2.g & length) == 0) {
                        i3++;
                    } else {
                        i2++;
                    }
                }
                aVar.a(i3);
                aVar2.a(i2);
                bVar.a(fVar);
                while (true) {
                    f<K, V> a3 = bVar.a();
                    if (a3 == null) {
                        break;
                    } else if ((a3.g & length) == 0) {
                        aVar.a(a3);
                    } else {
                        aVar2.a(a3);
                    }
                }
                fVarArr2[i] = i3 > 0 ? aVar.a() : null;
                fVarArr2[i + length] = i2 > 0 ? aVar2.a() : null;
            }
        }
        return fVarArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private f<K, V> f3621a;

        b() {
        }

        void a(f<K, V> fVar) {
            f<K, V> fVar2 = null;
            while (fVar != null) {
                fVar.f3626a = fVar2;
                fVar2 = fVar;
                fVar = fVar.b;
            }
            this.f3621a = fVar2;
        }

        public f<K, V> a() {
            f<K, V> fVar = this.f3621a;
            if (fVar == null) {
                return null;
            }
            f<K, V> fVar2 = fVar.f3626a;
            fVar.f3626a = null;
            for (f<K, V> fVar3 = fVar.c; fVar3 != null; fVar3 = fVar3.b) {
                fVar3.f3626a = fVar2;
                fVar2 = fVar3;
            }
            this.f3621a = fVar2;
            return fVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private f<K, V> f3620a;
        private int b;
        private int c;
        private int d;

        a() {
        }

        void a(int i) {
            this.b = ((Integer.highestOneBit(i) * 2) - 1) - i;
            this.d = 0;
            this.c = 0;
            this.f3620a = null;
        }

        void a(f<K, V> fVar) {
            fVar.c = null;
            fVar.f3626a = null;
            fVar.b = null;
            fVar.i = 1;
            if (this.b > 0 && (this.d & 1) == 0) {
                this.d++;
                this.b--;
                this.c++;
            }
            fVar.f3626a = this.f3620a;
            this.f3620a = fVar;
            this.d++;
            if (this.b > 0 && (this.d & 1) == 0) {
                this.d++;
                this.b--;
                this.c++;
            }
            for (int i = 4; (this.d & (i - 1)) == i - 1; i *= 2) {
                if (this.c == 0) {
                    f<K, V> fVar2 = this.f3620a;
                    f<K, V> fVar3 = fVar2.f3626a;
                    f<K, V> fVar4 = fVar3.f3626a;
                    fVar3.f3626a = fVar4.f3626a;
                    this.f3620a = fVar3;
                    fVar3.b = fVar4;
                    fVar3.c = fVar2;
                    fVar3.i = fVar2.i + 1;
                    fVar4.f3626a = fVar3;
                    fVar2.f3626a = fVar3;
                } else if (this.c == 1) {
                    f<K, V> fVar5 = this.f3620a;
                    f<K, V> fVar6 = fVar5.f3626a;
                    this.f3620a = fVar6;
                    fVar6.c = fVar5;
                    fVar6.i = fVar5.i + 1;
                    fVar5.f3626a = fVar6;
                    this.c = 0;
                } else if (this.c == 2) {
                    this.c = 0;
                }
            }
        }

        f<K, V> a() {
            f<K, V> fVar = this.f3620a;
            if (fVar.f3626a != null) {
                throw new IllegalStateException();
            }
            return fVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public abstract class e<T> implements Iterator<T> {
        f<K, V> b;
        f<K, V> c = null;
        int d;

        e() {
            this.b = LinkedHashTreeMap.this.c.d;
            this.d = LinkedHashTreeMap.this.e;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b != LinkedHashTreeMap.this.c;
        }

        final f<K, V> b() {
            f<K, V> fVar = this.b;
            if (fVar == LinkedHashTreeMap.this.c) {
                throw new NoSuchElementException();
            }
            if (LinkedHashTreeMap.this.e != this.d) {
                throw new ConcurrentModificationException();
            }
            this.b = fVar.d;
            this.c = fVar;
            return fVar;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.c == null) {
                throw new IllegalStateException();
            }
            LinkedHashTreeMap.this.a((f) this.c, true);
            this.c = null;
            this.d = LinkedHashTreeMap.this.e;
        }
    }

    /* loaded from: classes2.dex */
    final class c extends AbstractSet<Map.Entry<K, V>> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedHashTreeMap.this.d;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new LinkedHashTreeMap<K, V>.e<Map.Entry<K, V>>() { // from class: com.google.gson.internal.LinkedHashTreeMap.c.1
                {
                    LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
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
            return (obj instanceof Map.Entry) && LinkedHashTreeMap.this.a((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            f<K, V> a2;
            if ((obj instanceof Map.Entry) && (a2 = LinkedHashTreeMap.this.a((Map.Entry) obj)) != null) {
                LinkedHashTreeMap.this.a((f) a2, true);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }
    }

    /* loaded from: classes2.dex */
    final class d extends AbstractSet<K> {
        d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedHashTreeMap.this.d;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new LinkedHashTreeMap<K, V>.e<K>() { // from class: com.google.gson.internal.LinkedHashTreeMap.d.1
                {
                    LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return b().f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedHashTreeMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LinkedHashTreeMap.this.b(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }
}
