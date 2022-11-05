package android.support.v4.f;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* compiled from: ArraySet.java */
/* loaded from: classes.dex */
public final class b<E> implements Collection<E>, Set<E> {

    /* renamed from: a  reason: collision with root package name */
    static Object[] f315a;
    static int b;
    static Object[] c;
    static int d;
    private static final int[] j = new int[0];
    private static final Object[] k = new Object[0];
    final boolean e;
    int[] f;
    Object[] g;
    int h;
    h<E, E> i;

    private int a(Object obj, int i) {
        int i2 = this.h;
        if (i2 == 0) {
            return -1;
        }
        int a2 = c.a(this.f, i2, i);
        if (a2 >= 0 && !obj.equals(this.g[a2])) {
            int i3 = a2 + 1;
            while (i3 < i2 && this.f[i3] == i) {
                if (obj.equals(this.g[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = a2 - 1; i4 >= 0 && this.f[i4] == i; i4--) {
                if (obj.equals(this.g[i4])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        }
        return a2;
    }

    private int a() {
        int i = this.h;
        if (i == 0) {
            return -1;
        }
        int a2 = c.a(this.f, i, 0);
        if (a2 >= 0 && this.g[a2] != null) {
            int i2 = a2 + 1;
            while (i2 < i && this.f[i2] == 0) {
                if (this.g[i2] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = a2 - 1; i3 >= 0 && this.f[i3] == 0; i3--) {
                if (this.g[i3] == null) {
                    return i3;
                }
            }
            return i2 ^ (-1);
        }
        return a2;
    }

    private void d(int i) {
        if (i == 8) {
            synchronized (b.class) {
                if (c != null) {
                    Object[] objArr = c;
                    this.g = objArr;
                    c = (Object[]) objArr[0];
                    this.f = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    d--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (b.class) {
                if (f315a != null) {
                    Object[] objArr2 = f315a;
                    this.g = objArr2;
                    f315a = (Object[]) objArr2[0];
                    this.f = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    b--;
                    return;
                }
            }
        }
        this.f = new int[i];
        this.g = new Object[i];
    }

    private static void a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (b.class) {
                if (d < 10) {
                    objArr[0] = c;
                    objArr[1] = iArr;
                    for (int i2 = i - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    c = objArr;
                    d++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (b.class) {
                if (b < 10) {
                    objArr[0] = f315a;
                    objArr[1] = iArr;
                    for (int i3 = i - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f315a = objArr;
                    b++;
                }
            }
        }
    }

    public b() {
        this(0, false);
    }

    public b(int i, boolean z) {
        this.e = z;
        if (i == 0) {
            this.f = j;
            this.g = k;
        } else {
            d(i);
        }
        this.h = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        if (this.h != 0) {
            a(this.f, this.g, this.h);
            this.f = j;
            this.g = k;
            this.h = 0;
        }
    }

    public void a(int i) {
        if (this.f.length < i) {
            int[] iArr = this.f;
            Object[] objArr = this.g;
            d(i);
            if (this.h > 0) {
                System.arraycopy(iArr, 0, this.f, 0, this.h);
                System.arraycopy(objArr, 0, this.g, 0, this.h);
            }
            a(iArr, objArr, this.h);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return a(obj) >= 0;
    }

    public int a(Object obj) {
        if (obj == null) {
            return a();
        }
        return a(obj, this.e ? System.identityHashCode(obj) : obj.hashCode());
    }

    public E b(int i) {
        return (E) this.g[i];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.h <= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e) {
        int i;
        int a2;
        int i2;
        if (e == null) {
            a2 = a();
            i = 0;
        } else {
            int identityHashCode = this.e ? System.identityHashCode(e) : e.hashCode();
            i = identityHashCode;
            a2 = a(e, identityHashCode);
        }
        if (a2 >= 0) {
            return false;
        }
        int i3 = a2 ^ (-1);
        if (this.h >= this.f.length) {
            if (this.h >= 8) {
                i2 = this.h + (this.h >> 1);
            } else {
                i2 = this.h >= 4 ? 8 : 4;
            }
            int[] iArr = this.f;
            Object[] objArr = this.g;
            d(i2);
            if (this.f.length > 0) {
                System.arraycopy(iArr, 0, this.f, 0, iArr.length);
                System.arraycopy(objArr, 0, this.g, 0, objArr.length);
            }
            a(iArr, objArr, this.h);
        }
        if (i3 < this.h) {
            System.arraycopy(this.f, i3, this.f, i3 + 1, this.h - i3);
            System.arraycopy(this.g, i3, this.g, i3 + 1, this.h - i3);
        }
        this.f[i3] = i;
        this.g[i3] = e;
        this.h++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int a2 = a(obj);
        if (a2 >= 0) {
            c(a2);
            return true;
        }
        return false;
    }

    public E c(int i) {
        int i2 = 8;
        E e = (E) this.g[i];
        if (this.h <= 1) {
            a(this.f, this.g, this.h);
            this.f = j;
            this.g = k;
            this.h = 0;
        } else if (this.f.length > 8 && this.h < this.f.length / 3) {
            if (this.h > 8) {
                i2 = this.h + (this.h >> 1);
            }
            int[] iArr = this.f;
            Object[] objArr = this.g;
            d(i2);
            this.h--;
            if (i > 0) {
                System.arraycopy(iArr, 0, this.f, 0, i);
                System.arraycopy(objArr, 0, this.g, 0, i);
            }
            if (i < this.h) {
                System.arraycopy(iArr, i + 1, this.f, i, this.h - i);
                System.arraycopy(objArr, i + 1, this.g, i, this.h - i);
            }
        } else {
            this.h--;
            if (i < this.h) {
                System.arraycopy(this.f, i + 1, this.f, i, this.h - i);
                System.arraycopy(this.g, i + 1, this.g, i, this.h - i);
            }
            this.g[this.h] = null;
        }
        return e;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.h;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        Object[] objArr = new Object[this.h];
        System.arraycopy(this.g, 0, objArr, 0, this.h);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        T[] tArr2 = tArr.length < this.h ? (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.h)) : tArr;
        System.arraycopy(this.g, 0, tArr2, 0, this.h);
        if (tArr2.length > this.h) {
            tArr2[this.h] = null;
        }
        return tArr2;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        for (int i = 0; i < this.h; i++) {
            try {
                if (!set.contains(b(i))) {
                    return false;
                }
            } catch (ClassCastException e) {
                return false;
            } catch (NullPointerException e2) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f;
        int i = this.h;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.h * 14);
        sb.append('{');
        for (int i = 0; i < this.h; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            E b2 = b(i);
            if (b2 != this) {
                sb.append(b2);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    private h<E, E> b() {
        if (this.i == null) {
            this.i = new h<E, E>() { // from class: android.support.v4.f.b.1
                @Override // android.support.v4.f.h
                protected int a() {
                    return b.this.h;
                }

                @Override // android.support.v4.f.h
                protected Object a(int i, int i2) {
                    return b.this.g[i];
                }

                @Override // android.support.v4.f.h
                protected int a(Object obj) {
                    return b.this.a(obj);
                }

                @Override // android.support.v4.f.h
                protected int b(Object obj) {
                    return b.this.a(obj);
                }

                @Override // android.support.v4.f.h
                protected Map<E, E> b() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // android.support.v4.f.h
                protected void a(E e, E e2) {
                    b.this.add(e);
                }

                @Override // android.support.v4.f.h
                protected E a(int i, E e) {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // android.support.v4.f.h
                protected void a(int i) {
                    b.this.c(i);
                }

                @Override // android.support.v4.f.h
                protected void c() {
                    b.this.clear();
                }
            };
        }
        return this.i;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return b().e().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        a(this.h + collection.size());
        boolean z = false;
        for (E e : collection) {
            z |= add(e);
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        boolean z = false;
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.h - 1; i >= 0; i--) {
            if (!collection.contains(this.g[i])) {
                c(i);
                z = true;
            }
        }
        return z;
    }
}
