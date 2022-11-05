package android.support.v4.f;
/* compiled from: SparseArrayCompat.java */
/* loaded from: classes.dex */
public class l<E> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f328a = new Object();
    private boolean b;
    private int[] c;
    private Object[] d;
    private int e;

    public l() {
        this(10);
    }

    public l(int i) {
        this.b = false;
        if (i == 0) {
            this.c = c.f317a;
            this.d = c.c;
        } else {
            int a2 = c.a(i);
            this.c = new int[a2];
            this.d = new Object[a2];
        }
        this.e = 0;
    }

    /* renamed from: a */
    public l<E> clone() {
        try {
            l<E> lVar = (l) super.clone();
            try {
                lVar.c = (int[]) this.c.clone();
                lVar.d = (Object[]) this.d.clone();
                return lVar;
            } catch (CloneNotSupportedException e) {
                return lVar;
            }
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    public E a(int i) {
        return a(i, null);
    }

    public E a(int i, E e) {
        int a2 = c.a(this.c, this.e, i);
        return (a2 < 0 || this.d[a2] == f328a) ? e : (E) this.d[a2];
    }

    public void b(int i) {
        int a2 = c.a(this.c, this.e, i);
        if (a2 >= 0 && this.d[a2] != f328a) {
            this.d[a2] = f328a;
            this.b = true;
        }
    }

    public void c(int i) {
        b(i);
    }

    private void d() {
        int i = this.e;
        int[] iArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f328a) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.b = false;
        this.e = i2;
    }

    public void b(int i, E e) {
        int a2 = c.a(this.c, this.e, i);
        if (a2 >= 0) {
            this.d[a2] = e;
            return;
        }
        int i2 = a2 ^ (-1);
        if (i2 < this.e && this.d[i2] == f328a) {
            this.c[i2] = i;
            this.d[i2] = e;
            return;
        }
        if (this.b && this.e >= this.c.length) {
            d();
            i2 = c.a(this.c, this.e, i) ^ (-1);
        }
        if (this.e >= this.c.length) {
            int a3 = c.a(this.e + 1);
            int[] iArr = new int[a3];
            Object[] objArr = new Object[a3];
            System.arraycopy(this.c, 0, iArr, 0, this.c.length);
            System.arraycopy(this.d, 0, objArr, 0, this.d.length);
            this.c = iArr;
            this.d = objArr;
        }
        if (this.e - i2 != 0) {
            System.arraycopy(this.c, i2, this.c, i2 + 1, this.e - i2);
            System.arraycopy(this.d, i2, this.d, i2 + 1, this.e - i2);
        }
        this.c[i2] = i;
        this.d[i2] = e;
        this.e++;
    }

    public int b() {
        if (this.b) {
            d();
        }
        return this.e;
    }

    public int d(int i) {
        if (this.b) {
            d();
        }
        return this.c[i];
    }

    public E e(int i) {
        if (this.b) {
            d();
        }
        return (E) this.d[i];
    }

    public int f(int i) {
        if (this.b) {
            d();
        }
        return c.a(this.c, this.e, i);
    }

    public void c() {
        int i = this.e;
        Object[] objArr = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.b = false;
    }

    public void c(int i, E e) {
        if (this.e != 0 && i <= this.c[this.e - 1]) {
            b(i, e);
            return;
        }
        if (this.b && this.e >= this.c.length) {
            d();
        }
        int i2 = this.e;
        if (i2 >= this.c.length) {
            int a2 = c.a(i2 + 1);
            int[] iArr = new int[a2];
            Object[] objArr = new Object[a2];
            System.arraycopy(this.c, 0, iArr, 0, this.c.length);
            System.arraycopy(this.d, 0, objArr, 0, this.d.length);
            this.c = iArr;
            this.d = objArr;
        }
        this.c[i2] = i;
        this.d[i2] = e;
        this.e = i2 + 1;
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.e * 28);
        sb.append('{');
        for (int i = 0; i < this.e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(d(i));
            sb.append('=');
            E e = e(i);
            if (e != this) {
                sb.append(e);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
