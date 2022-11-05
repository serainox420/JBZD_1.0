package android.support.v7.widget;

import android.support.v4.f.j;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.af;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdapterHelper.java */
/* loaded from: classes.dex */
public class e implements af.a {

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<b> f897a;
    final ArrayList<b> b;
    final a c;
    Runnable d;
    final boolean e;
    final af f;
    private j.a<b> g;
    private int h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterHelper.java */
    /* loaded from: classes.dex */
    public interface a {
        RecyclerView.u a(int i);

        void a(int i, int i2);

        void a(int i, int i2, Object obj);

        void a(b bVar);

        void b(int i, int i2);

        void b(b bVar);

        void c(int i, int i2);

        void d(int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(a aVar) {
        this(aVar, false);
    }

    e(a aVar, boolean z) {
        this.g = new j.b(30);
        this.f897a = new ArrayList<>();
        this.b = new ArrayList<>();
        this.h = 0;
        this.c = aVar;
        this.e = z;
        this.f = new af(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        a(this.f897a);
        a(this.b);
        this.h = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f.a(this.f897a);
        int size = this.f897a.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f897a.get(i);
            switch (bVar.f898a) {
                case 1:
                    f(bVar);
                    break;
                case 2:
                    c(bVar);
                    break;
                case 4:
                    d(bVar);
                    break;
                case 8:
                    b(bVar);
                    break;
            }
            if (this.d != null) {
                this.d.run();
            }
        }
        this.f897a.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            this.c.b(this.b.get(i));
        }
        a(this.b);
        this.h = 0;
    }

    private void b(b bVar) {
        g(bVar);
    }

    private void c(b bVar) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4 = bVar.b;
        int i5 = bVar.b + bVar.d;
        char c = 65535;
        int i6 = bVar.b;
        int i7 = 0;
        while (i6 < i5) {
            if (this.c.a(i6) != null || d(i6)) {
                if (c == 0) {
                    e(a(2, i4, i7, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 1;
            } else {
                if (c == 1) {
                    g(a(2, i4, i7, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 0;
            }
            if (z) {
                i3 = i6 - i7;
                i = i5 - i7;
                i2 = 1;
            } else {
                int i8 = i6;
                i = i5;
                i2 = i7 + 1;
                i3 = i8;
            }
            i7 = i2;
            i5 = i;
            i6 = i3 + 1;
        }
        if (i7 != bVar.d) {
            a(bVar);
            bVar = a(2, i4, i7, null);
        }
        if (c == 0) {
            e(bVar);
        } else {
            g(bVar);
        }
    }

    private void d(b bVar) {
        int i;
        int i2;
        boolean z;
        int i3 = bVar.b;
        int i4 = bVar.b + bVar.d;
        int i5 = bVar.b;
        boolean z2 = true;
        int i6 = 0;
        while (i5 < i4) {
            if (this.c.a(i5) != null || d(i5)) {
                if (!z2) {
                    e(a(4, i3, i6, bVar.c));
                    i6 = 0;
                    i3 = i5;
                }
                i = i3;
                i2 = i6;
                z = true;
            } else {
                if (z2) {
                    g(a(4, i3, i6, bVar.c));
                    i6 = 0;
                    i3 = i5;
                }
                i = i3;
                i2 = i6;
                z = false;
            }
            i5++;
            boolean z3 = z;
            i6 = i2 + 1;
            i3 = i;
            z2 = z3;
        }
        if (i6 != bVar.d) {
            Object obj = bVar.c;
            a(bVar);
            bVar = a(4, i3, i6, obj);
        }
        if (!z2) {
            e(bVar);
        } else {
            g(bVar);
        }
    }

    private void e(b bVar) {
        int i;
        boolean z;
        if (bVar.f898a == 1 || bVar.f898a == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int d = d(bVar.b, bVar.f898a);
        int i2 = bVar.b;
        switch (bVar.f898a) {
            case 2:
                i = 0;
                break;
            case 3:
            default:
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            case 4:
                i = 1;
                break;
        }
        int i3 = 1;
        int i4 = d;
        int i5 = i2;
        for (int i6 = 1; i6 < bVar.d; i6++) {
            int d2 = d(bVar.b + (i * i6), bVar.f898a);
            switch (bVar.f898a) {
                case 2:
                    if (d2 == i4) {
                        z = true;
                        break;
                    } else {
                        z = false;
                        break;
                    }
                case 3:
                default:
                    z = false;
                    break;
                case 4:
                    if (d2 == i4 + 1) {
                        z = true;
                        break;
                    } else {
                        z = false;
                        break;
                    }
            }
            if (z) {
                i3++;
            } else {
                b a2 = a(bVar.f898a, i4, i3, bVar.c);
                a(a2, i5);
                a(a2);
                if (bVar.f898a == 4) {
                    i5 += i3;
                }
                i3 = 1;
                i4 = d2;
            }
        }
        Object obj = bVar.c;
        a(bVar);
        if (i3 > 0) {
            b a3 = a(bVar.f898a, i4, i3, obj);
            a(a3, i5);
            a(a3);
        }
    }

    void a(b bVar, int i) {
        this.c.a(bVar);
        switch (bVar.f898a) {
            case 2:
                this.c.a(i, bVar.d);
                return;
            case 3:
            default:
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            case 4:
                this.c.a(i, bVar.d, bVar.c);
                return;
        }
    }

    private int d(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6 = i;
        for (int size = this.b.size() - 1; size >= 0; size--) {
            b bVar = this.b.get(size);
            if (bVar.f898a == 8) {
                if (bVar.b < bVar.d) {
                    i3 = bVar.b;
                    i4 = bVar.d;
                } else {
                    i3 = bVar.d;
                    i4 = bVar.b;
                }
                if (i6 >= i3 && i6 <= i4) {
                    if (i3 == bVar.b) {
                        if (i2 == 1) {
                            bVar.d++;
                        } else if (i2 == 2) {
                            bVar.d--;
                        }
                        i5 = i6 + 1;
                    } else {
                        if (i2 == 1) {
                            bVar.b++;
                        } else if (i2 == 2) {
                            bVar.b--;
                        }
                        i5 = i6 - 1;
                    }
                } else {
                    if (i6 < bVar.b) {
                        if (i2 == 1) {
                            bVar.b++;
                            bVar.d++;
                            i5 = i6;
                        } else if (i2 == 2) {
                            bVar.b--;
                            bVar.d--;
                        }
                    }
                    i5 = i6;
                }
                i6 = i5;
            } else if (bVar.b <= i6) {
                if (bVar.f898a == 1) {
                    i6 -= bVar.d;
                } else if (bVar.f898a == 2) {
                    i6 += bVar.d;
                }
            } else if (i2 == 1) {
                bVar.b++;
            } else if (i2 == 2) {
                bVar.b--;
            }
        }
        for (int size2 = this.b.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.b.get(size2);
            if (bVar2.f898a == 8) {
                if (bVar2.d == bVar2.b || bVar2.d < 0) {
                    this.b.remove(size2);
                    a(bVar2);
                }
            } else if (bVar2.d <= 0) {
                this.b.remove(size2);
                a(bVar2);
            }
        }
        return i6;
    }

    private boolean d(int i) {
        int size = this.b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.b.get(i2);
            if (bVar.f898a == 8) {
                if (a(bVar.d, i2 + 1) == i) {
                    return true;
                }
            } else if (bVar.f898a == 1) {
                int i3 = bVar.b + bVar.d;
                for (int i4 = bVar.b; i4 < i3; i4++) {
                    if (a(i4, i2 + 1) == i) {
                        return true;
                    }
                }
                continue;
            } else {
                continue;
            }
        }
        return false;
    }

    private void f(b bVar) {
        g(bVar);
    }

    private void g(b bVar) {
        this.b.add(bVar);
        switch (bVar.f898a) {
            case 1:
                this.c.c(bVar.b, bVar.d);
                return;
            case 2:
                this.c.b(bVar.b, bVar.d);
                return;
            case 3:
            case 5:
            case 6:
            case 7:
            default:
                throw new IllegalArgumentException("Unknown update op type for " + bVar);
            case 4:
                this.c.a(bVar.b, bVar.d, bVar.c);
                return;
            case 8:
                this.c.d(bVar.b, bVar.d);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return this.f897a.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i) {
        return (this.h & i) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(int i) {
        return a(i, 0);
    }

    int a(int i, int i2) {
        int size = this.b.size();
        int i3 = i;
        while (i2 < size) {
            b bVar = this.b.get(i2);
            if (bVar.f898a == 8) {
                if (bVar.b == i3) {
                    i3 = bVar.d;
                } else {
                    if (bVar.b < i3) {
                        i3--;
                    }
                    if (bVar.d <= i3) {
                        i3++;
                    }
                }
            } else if (bVar.b > i3) {
                continue;
            } else if (bVar.f898a == 2) {
                if (i3 < bVar.b + bVar.d) {
                    return -1;
                }
                i3 -= bVar.d;
            } else if (bVar.f898a == 1) {
                i3 += bVar.d;
            }
            i2++;
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i, int i2, Object obj) {
        boolean z = true;
        if (i2 < 1) {
            return false;
        }
        this.f897a.add(a(4, i, i2, obj));
        this.h |= 4;
        if (this.f897a.size() != 1) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(int i, int i2) {
        boolean z = true;
        if (i2 < 1) {
            return false;
        }
        this.f897a.add(a(1, i, i2, null));
        this.h |= 1;
        if (this.f897a.size() != 1) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(int i, int i2) {
        boolean z = true;
        if (i2 < 1) {
            return false;
        }
        this.f897a.add(a(2, i, i2, null));
        this.h |= 2;
        if (this.f897a.size() != 1) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i, int i2, int i3) {
        boolean z = true;
        if (i == i2) {
            return false;
        }
        if (i3 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.f897a.add(a(8, i, i2, null));
        this.h |= 8;
        if (this.f897a.size() != 1) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        c();
        int size = this.f897a.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f897a.get(i);
            switch (bVar.f898a) {
                case 1:
                    this.c.b(bVar);
                    this.c.c(bVar.b, bVar.d);
                    break;
                case 2:
                    this.c.b(bVar);
                    this.c.a(bVar.b, bVar.d);
                    break;
                case 4:
                    this.c.b(bVar);
                    this.c.a(bVar.b, bVar.d, bVar.c);
                    break;
                case 8:
                    this.c.b(bVar);
                    this.c.d(bVar.b, bVar.d);
                    break;
            }
            if (this.d != null) {
                this.d.run();
            }
        }
        a(this.f897a);
        this.h = 0;
    }

    public int c(int i) {
        int size = this.f897a.size();
        int i2 = i;
        for (int i3 = 0; i3 < size; i3++) {
            b bVar = this.f897a.get(i3);
            switch (bVar.f898a) {
                case 1:
                    if (bVar.b <= i2) {
                        i2 += bVar.d;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (bVar.b <= i2) {
                        if (bVar.b + bVar.d > i2) {
                            return -1;
                        }
                        i2 -= bVar.d;
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if (bVar.b == i2) {
                        i2 = bVar.d;
                        break;
                    } else {
                        if (bVar.b < i2) {
                            i2--;
                        }
                        if (bVar.d <= i2) {
                            i2++;
                            break;
                        } else {
                            break;
                        }
                    }
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return !this.b.isEmpty() && !this.f897a.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterHelper.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        int f898a;
        int b;
        Object c;
        int d;

        b(int i, int i2, int i3, Object obj) {
            this.f898a = i;
            this.b = i2;
            this.d = i3;
            this.c = obj;
        }

        String a() {
            switch (this.f898a) {
                case 1:
                    return ProductAction.ACTION_ADD;
                case 2:
                    return "rm";
                case 3:
                case 5:
                case 6:
                case 7:
                default:
                    return "??";
                case 4:
                    return "up";
                case 8:
                    return "mv";
            }
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.b + "c:" + this.d + ",p:" + this.c + "]";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f898a != bVar.f898a) {
                return false;
            }
            if (this.f898a == 8 && Math.abs(this.d - this.b) == 1 && this.d == bVar.b && this.b == bVar.d) {
                return true;
            }
            if (this.d == bVar.d && this.b == bVar.b) {
                return this.c != null ? this.c.equals(bVar.c) : bVar.c == null;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f898a * 31) + this.b) * 31) + this.d;
        }
    }

    @Override // android.support.v7.widget.af.a
    public b a(int i, int i2, int i3, Object obj) {
        b a2 = this.g.a();
        if (a2 == null) {
            return new b(i, i2, i3, obj);
        }
        a2.f898a = i;
        a2.b = i2;
        a2.d = i3;
        a2.c = obj;
        return a2;
    }

    @Override // android.support.v7.widget.af.a
    public void a(b bVar) {
        if (!this.e) {
            bVar.c = null;
            this.g.a(bVar);
        }
    }

    void a(List<b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a(list.get(i));
        }
        list.clear();
    }
}
