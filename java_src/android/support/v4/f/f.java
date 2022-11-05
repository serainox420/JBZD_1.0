package android.support.v4.f;
/* compiled from: LongSparseArray.java */
/* loaded from: classes.dex */
public class f<E> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f319a = new Object();
    private boolean b;
    private long[] c;
    private Object[] d;
    private int e;

    public f() {
        this(10);
    }

    public f(int i) {
        this.b = false;
        if (i == 0) {
            this.c = c.b;
            this.d = c.c;
        } else {
            int b = c.b(i);
            this.c = new long[b];
            this.d = new Object[b];
        }
        this.e = 0;
    }

    /* renamed from: a */
    public f<E> clone() {
        try {
            f<E> fVar = (f) super.clone();
            try {
                fVar.c = (long[]) this.c.clone();
                fVar.d = (Object[]) this.d.clone();
                return fVar;
            } catch (CloneNotSupportedException e) {
                return fVar;
            }
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    public E a(long j) {
        return a(j, null);
    }

    public E a(long j, E e) {
        int a2 = c.a(this.c, this.e, j);
        return (a2 < 0 || this.d[a2] == f319a) ? e : (E) this.d[a2];
    }

    public void b(long j) {
        int a2 = c.a(this.c, this.e, j);
        if (a2 >= 0 && this.d[a2] != f319a) {
            this.d[a2] = f319a;
            this.b = true;
        }
    }

    public void c(long j) {
        b(j);
    }

    public void a(int i) {
        if (this.d[i] != f319a) {
            this.d[i] = f319a;
            this.b = true;
        }
    }

    private void d() {
        int i = this.e;
        long[] jArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f319a) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.b = false;
        this.e = i2;
    }

    public void b(long j, E e) {
        int a2 = c.a(this.c, this.e, j);
        if (a2 >= 0) {
            this.d[a2] = e;
            return;
        }
        int i = a2 ^ (-1);
        if (i < this.e && this.d[i] == f319a) {
            this.c[i] = j;
            this.d[i] = e;
            return;
        }
        if (this.b && this.e >= this.c.length) {
            d();
            i = c.a(this.c, this.e, j) ^ (-1);
        }
        if (this.e >= this.c.length) {
            int b = c.b(this.e + 1);
            long[] jArr = new long[b];
            Object[] objArr = new Object[b];
            System.arraycopy(this.c, 0, jArr, 0, this.c.length);
            System.arraycopy(this.d, 0, objArr, 0, this.d.length);
            this.c = jArr;
            this.d = objArr;
        }
        if (this.e - i != 0) {
            System.arraycopy(this.c, i, this.c, i + 1, this.e - i);
            System.arraycopy(this.d, i, this.d, i + 1, this.e - i);
        }
        this.c[i] = j;
        this.d[i] = e;
        this.e++;
    }

    public int b() {
        if (this.b) {
            d();
        }
        return this.e;
    }

    public long b(int i) {
        if (this.b) {
            d();
        }
        return this.c[i];
    }

    public E c(int i) {
        if (this.b) {
            d();
        }
        return (E) this.d[i];
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
            sb.append(b(i));
            sb.append('=');
            E c = c(i);
            if (c != this) {
                sb.append(c);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
