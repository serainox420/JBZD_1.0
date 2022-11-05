package android.support.v4.f;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapCollections.java */
/* loaded from: classes.dex */
public abstract class h<K, V> {
    h<K, V>.b b;
    h<K, V>.c c;
    h<K, V>.e d;

    protected abstract int a();

    protected abstract int a(Object obj);

    protected abstract Object a(int i, int i2);

    protected abstract V a(int i, V v);

    protected abstract void a(int i);

    protected abstract void a(K k, V v);

    protected abstract int b(Object obj);

    protected abstract Map<K, V> b();

    protected abstract void c();

    /* compiled from: MapCollections.java */
    /* loaded from: classes.dex */
    final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f320a;
        int b;
        int c;
        boolean d = false;

        a(int i) {
            this.f320a = i;
            this.b = h.this.a();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.c < this.b;
        }

        @Override // java.util.Iterator
        public T next() {
            T t = (T) h.this.a(this.c, this.f320a);
            this.c++;
            this.d = true;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.d) {
                throw new IllegalStateException();
            }
            this.c--;
            this.b--;
            this.d = false;
            h.this.a(this.c);
        }
    }

    /* compiled from: MapCollections.java */
    /* loaded from: classes.dex */
    final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        int f323a;
        boolean c = false;
        int b = -1;

        d() {
            this.f323a = h.this.a() - 1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b < this.f323a;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            this.b++;
            this.c = true;
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.c) {
                throw new IllegalStateException();
            }
            h.this.a(this.b);
            this.b--;
            this.f323a--;
            this.c = false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (!this.c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (K) h.this.a(this.b, 0);
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (!this.c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (V) h.this.a(this.b, 1);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (!this.c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (V) h.this.a(this.b, (int) v);
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            boolean z = true;
            if (!this.c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (!android.support.v4.f.c.a(entry.getKey(), h.this.a(this.b, 0)) || !android.support.v4.f.c.a(entry.getValue(), h.this.a(this.b, 1))) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            int i = 0;
            if (!this.c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object a2 = h.this.a(this.b, 0);
            Object a3 = h.this.a(this.b, 1);
            int hashCode = a2 == null ? 0 : a2.hashCode();
            if (a3 != null) {
                i = a3.hashCode();
            }
            return i ^ hashCode;
        }

        public final String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* compiled from: MapCollections.java */
    /* loaded from: classes.dex */
    final class b implements Set<Map.Entry<K, V>> {
        b() {
        }

        @Override // java.util.Set, java.util.Collection
        /* renamed from: a */
        public boolean add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int a2 = h.this.a();
            for (Map.Entry<K, V> entry : collection) {
                h.this.a((h) entry.getKey(), (K) entry.getValue());
            }
            return a2 != h.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            h.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int a2 = h.this.a(entry.getKey());
            if (a2 < 0) {
                return false;
            }
            return android.support.v4.f.c.a(h.this.a(a2, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return h.this.a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return h.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return h.a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int a2 = h.this.a() - 1;
            int i = 0;
            while (a2 >= 0) {
                Object a3 = h.this.a(a2, 0);
                Object a4 = h.this.a(a2, 1);
                a2--;
                i += (a4 == null ? 0 : a4.hashCode()) ^ (a3 == null ? 0 : a3.hashCode());
            }
            return i;
        }
    }

    /* compiled from: MapCollections.java */
    /* loaded from: classes.dex */
    final class c implements Set<K> {
        c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            h.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return h.this.a(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return h.a((Map) h.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return h.this.a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int a2 = h.this.a(obj);
            if (a2 >= 0) {
                h.this.a(a2);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return h.b(h.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return h.c(h.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return h.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return h.this.b(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) h.this.a(tArr, 0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return h.a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int a2 = h.this.a() - 1; a2 >= 0; a2--) {
                Object a3 = h.this.a(a2, 0);
                i += a3 == null ? 0 : a3.hashCode();
            }
            return i;
        }
    }

    /* compiled from: MapCollections.java */
    /* loaded from: classes.dex */
    final class e implements Collection<V> {
        e() {
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            h.this.c();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return h.this.b(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return h.this.a() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int b = h.this.b(obj);
            if (b >= 0) {
                h.this.a(b);
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int i = 0;
            int a2 = h.this.a();
            boolean z = false;
            while (i < a2) {
                if (collection.contains(h.this.a(i, 1))) {
                    h.this.a(i);
                    i--;
                    a2--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int i = 0;
            int a2 = h.this.a();
            boolean z = false;
            while (i < a2) {
                if (!collection.contains(h.this.a(i, 1))) {
                    h.this.a(i);
                    i--;
                    a2--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return h.this.a();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return h.this.b(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) h.this.a(tArr, 1);
        }
    }

    public static <K, V> boolean a(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <K, V> boolean b(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean c(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public Object[] b(int i) {
        int a2 = a();
        Object[] objArr = new Object[a2];
        for (int i2 = 0; i2 < a2; i2++) {
            objArr[i2] = a(i2, i);
        }
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T[] a(T[] tArr, int i) {
        int a2 = a();
        T[] tArr2 = tArr.length < a2 ? (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), a2)) : tArr;
        for (int i2 = 0; i2 < a2; i2++) {
            tArr2[i2] = a(i2, i);
        }
        if (tArr2.length > a2) {
            tArr2[a2] = null;
        }
        return tArr2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001a, code lost:
        if (r4.containsAll(r5) != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <T> boolean a(Set<T> set, Object obj) {
        boolean z = true;
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            if (set.size() == set2.size()) {
            }
            z = false;
            return z;
        } catch (ClassCastException e2) {
            return false;
        } catch (NullPointerException e3) {
            return false;
        }
    }

    public Set<Map.Entry<K, V>> d() {
        if (this.b == null) {
            this.b = new b();
        }
        return this.b;
    }

    public Set<K> e() {
        if (this.c == null) {
            this.c = new c();
        }
        return this.c;
    }

    public Collection<V> f() {
        if (this.d == null) {
            this.d = new e();
        }
        return this.d;
    }
}
