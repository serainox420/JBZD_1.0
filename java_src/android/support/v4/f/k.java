package android.support.v4.f;

import java.util.Map;
/* compiled from: SimpleArrayMap.java */
/* loaded from: classes.dex */
public class k<K, V> {
    static Object[] b;
    static int c;
    static Object[] d;
    static int e;
    int[] f;
    Object[] g;
    int h;

    int a(Object obj, int i) {
        int i2 = this.h;
        if (i2 == 0) {
            return -1;
        }
        int a2 = c.a(this.f, i2, i);
        if (a2 >= 0 && !obj.equals(this.g[a2 << 1])) {
            int i3 = a2 + 1;
            while (i3 < i2 && this.f[i3] == i) {
                if (obj.equals(this.g[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = a2 - 1; i4 >= 0 && this.f[i4] == i; i4--) {
                if (obj.equals(this.g[i4 << 1])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        }
        return a2;
    }

    int a() {
        int i = this.h;
        if (i == 0) {
            return -1;
        }
        int a2 = c.a(this.f, i, 0);
        if (a2 >= 0 && this.g[a2 << 1] != null) {
            int i2 = a2 + 1;
            while (i2 < i && this.f[i2] == 0) {
                if (this.g[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = a2 - 1; i3 >= 0 && this.f[i3] == 0; i3--) {
                if (this.g[i3 << 1] == null) {
                    return i3;
                }
            }
            return i2 ^ (-1);
        }
        return a2;
    }

    private void e(int i) {
        if (i == 8) {
            synchronized (a.class) {
                if (d != null) {
                    Object[] objArr = d;
                    this.g = objArr;
                    d = (Object[]) objArr[0];
                    this.f = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    e--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (a.class) {
                if (b != null) {
                    Object[] objArr2 = b;
                    this.g = objArr2;
                    b = (Object[]) objArr2[0];
                    this.f = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    c--;
                    return;
                }
            }
        }
        this.f = new int[i];
        this.g = new Object[i << 1];
    }

    private static void a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (a.class) {
                if (e < 10) {
                    objArr[0] = d;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    d = objArr;
                    e++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (a.class) {
                if (c < 10) {
                    objArr[0] = b;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    b = objArr;
                    c++;
                }
            }
        }
    }

    public k() {
        this.f = c.f317a;
        this.g = c.c;
        this.h = 0;
    }

    public k(int i) {
        if (i == 0) {
            this.f = c.f317a;
            this.g = c.c;
        } else {
            e(i);
        }
        this.h = 0;
    }

    public k(k kVar) {
        this();
        if (kVar != null) {
            a(kVar);
        }
    }

    public void clear() {
        if (this.h != 0) {
            a(this.f, this.g, this.h);
            this.f = c.f317a;
            this.g = c.c;
            this.h = 0;
        }
    }

    public void a(int i) {
        if (this.f.length < i) {
            int[] iArr = this.f;
            Object[] objArr = this.g;
            e(i);
            if (this.h > 0) {
                System.arraycopy(iArr, 0, this.f, 0, this.h);
                System.arraycopy(objArr, 0, this.g, 0, this.h << 1);
            }
            a(iArr, objArr, this.h);
        }
    }

    public boolean containsKey(Object obj) {
        return a(obj) >= 0;
    }

    public int a(Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(Object obj) {
        int i = 1;
        int i2 = this.h * 2;
        Object[] objArr = this.g;
        if (obj == null) {
            while (i < i2) {
                if (objArr[i] != null) {
                    i += 2;
                } else {
                    return i >> 1;
                }
            }
        } else {
            while (i < i2) {
                if (!obj.equals(objArr[i])) {
                    i += 2;
                } else {
                    return i >> 1;
                }
            }
        }
        return -1;
    }

    public boolean containsValue(Object obj) {
        return b(obj) >= 0;
    }

    public V get(Object obj) {
        int a2 = a(obj);
        if (a2 >= 0) {
            return (V) this.g[(a2 << 1) + 1];
        }
        return null;
    }

    public K b(int i) {
        return (K) this.g[i << 1];
    }

    public V c(int i) {
        return (V) this.g[(i << 1) + 1];
    }

    public V a(int i, V v) {
        int i2 = (i << 1) + 1;
        V v2 = (V) this.g[i2];
        this.g[i2] = v;
        return v2;
    }

    public boolean isEmpty() {
        return this.h <= 0;
    }

    public V put(K k, V v) {
        int hashCode;
        int a2;
        int i = 8;
        if (k == null) {
            a2 = a();
            hashCode = 0;
        } else {
            hashCode = k.hashCode();
            a2 = a(k, hashCode);
        }
        if (a2 >= 0) {
            int i2 = (a2 << 1) + 1;
            V v2 = (V) this.g[i2];
            this.g[i2] = v;
            return v2;
        }
        int i3 = a2 ^ (-1);
        if (this.h >= this.f.length) {
            if (this.h >= 8) {
                i = this.h + (this.h >> 1);
            } else if (this.h < 4) {
                i = 4;
            }
            int[] iArr = this.f;
            Object[] objArr = this.g;
            e(i);
            if (this.f.length > 0) {
                System.arraycopy(iArr, 0, this.f, 0, iArr.length);
                System.arraycopy(objArr, 0, this.g, 0, objArr.length);
            }
            a(iArr, objArr, this.h);
        }
        if (i3 < this.h) {
            System.arraycopy(this.f, i3, this.f, i3 + 1, this.h - i3);
            System.arraycopy(this.g, i3 << 1, this.g, (i3 + 1) << 1, (this.h - i3) << 1);
        }
        this.f[i3] = hashCode;
        this.g[i3 << 1] = k;
        this.g[(i3 << 1) + 1] = v;
        this.h++;
        return null;
    }

    public void a(k<? extends K, ? extends V> kVar) {
        int i = kVar.h;
        a(this.h + i);
        if (this.h == 0) {
            if (i > 0) {
                System.arraycopy(kVar.f, 0, this.f, 0, i);
                System.arraycopy(kVar.g, 0, this.g, 0, i << 1);
                this.h = i;
                return;
            }
            return;
        }
        for (int i2 = 0; i2 < i; i2++) {
            put(kVar.b(i2), kVar.c(i2));
        }
    }

    public V remove(Object obj) {
        int a2 = a(obj);
        if (a2 >= 0) {
            return d(a2);
        }
        return null;
    }

    public V d(int i) {
        int i2 = 8;
        V v = (V) this.g[(i << 1) + 1];
        if (this.h <= 1) {
            a(this.f, this.g, this.h);
            this.f = c.f317a;
            this.g = c.c;
            this.h = 0;
        } else if (this.f.length > 8 && this.h < this.f.length / 3) {
            if (this.h > 8) {
                i2 = this.h + (this.h >> 1);
            }
            int[] iArr = this.f;
            Object[] objArr = this.g;
            e(i2);
            this.h--;
            if (i > 0) {
                System.arraycopy(iArr, 0, this.f, 0, i);
                System.arraycopy(objArr, 0, this.g, 0, i << 1);
            }
            if (i < this.h) {
                System.arraycopy(iArr, i + 1, this.f, i, this.h - i);
                System.arraycopy(objArr, (i + 1) << 1, this.g, i << 1, (this.h - i) << 1);
            }
        } else {
            this.h--;
            if (i < this.h) {
                System.arraycopy(this.f, i + 1, this.f, i, this.h - i);
                System.arraycopy(this.g, (i + 1) << 1, this.g, i << 1, (this.h - i) << 1);
            }
            this.g[this.h << 1] = null;
            this.g[(this.h << 1) + 1] = null;
        }
        return v;
    }

    public int size() {
        return this.h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (size() != kVar.size()) {
                return false;
            }
            for (int i = 0; i < this.h; i++) {
                try {
                    K b2 = b(i);
                    V c2 = c(i);
                    Object obj2 = kVar.get(b2);
                    if (c2 == null) {
                        if (obj2 != null || !kVar.containsKey(b2)) {
                            return false;
                        }
                    } else if (!c2.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException e2) {
                    return false;
                } catch (NullPointerException e3) {
                    return false;
                }
            }
            return true;
        } else if (!(obj instanceof Map)) {
            return false;
        } else {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.h; i2++) {
                try {
                    K b3 = b(i2);
                    V c3 = c(i2);
                    Object obj3 = map.get(b3);
                    if (c3 == null) {
                        if (obj3 != null || !map.containsKey(b3)) {
                            return false;
                        }
                    } else if (!c3.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException e4) {
                    return false;
                } catch (NullPointerException e5) {
                    return false;
                }
            }
            return true;
        }
    }

    public int hashCode() {
        int[] iArr = this.f;
        Object[] objArr = this.g;
        int i = this.h;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.h * 28);
        sb.append('{');
        for (int i = 0; i < this.h; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K b2 = b(i);
            if (b2 != this) {
                sb.append(b2);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V c2 = c(i);
            if (c2 != this) {
                sb.append(c2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
