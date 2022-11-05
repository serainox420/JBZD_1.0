package android.support.v7.widget;

import android.support.v4.f.j;
import android.support.v7.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewInfoStore.java */
/* loaded from: classes.dex */
public class az {

    /* renamed from: a  reason: collision with root package name */
    final android.support.v4.f.a<RecyclerView.u, a> f889a = new android.support.v4.f.a<>();
    final android.support.v4.f.f<RecyclerView.u> b = new android.support.v4.f.f<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewInfoStore.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(RecyclerView.u uVar);

        void a(RecyclerView.u uVar, RecyclerView.e.c cVar, RecyclerView.e.c cVar2);

        void b(RecyclerView.u uVar, RecyclerView.e.c cVar, RecyclerView.e.c cVar2);

        void c(RecyclerView.u uVar, RecyclerView.e.c cVar, RecyclerView.e.c cVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f889a.clear();
        this.b.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(RecyclerView.u uVar, RecyclerView.e.c cVar) {
        a aVar = this.f889a.get(uVar);
        if (aVar == null) {
            aVar = a.a();
            this.f889a.put(uVar, aVar);
        }
        aVar.b = cVar;
        aVar.f890a |= 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(RecyclerView.u uVar) {
        a aVar = this.f889a.get(uVar);
        return (aVar == null || (aVar.f890a & 1) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecyclerView.e.c b(RecyclerView.u uVar) {
        return a(uVar, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecyclerView.e.c c(RecyclerView.u uVar) {
        return a(uVar, 8);
    }

    private RecyclerView.e.c a(RecyclerView.u uVar, int i) {
        a c;
        RecyclerView.e.c cVar = null;
        int a2 = this.f889a.a(uVar);
        if (a2 >= 0 && (c = this.f889a.c(a2)) != null && (c.f890a & i) != 0) {
            c.f890a &= i ^ (-1);
            if (i == 4) {
                cVar = c.b;
            } else if (i == 8) {
                cVar = c.c;
            } else {
                throw new IllegalArgumentException("Must provide flag PRE or POST");
            }
            if ((c.f890a & 12) == 0) {
                this.f889a.d(a2);
                a.a(c);
            }
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j, RecyclerView.u uVar) {
        this.b.b(j, uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(RecyclerView.u uVar, RecyclerView.e.c cVar) {
        a aVar = this.f889a.get(uVar);
        if (aVar == null) {
            aVar = a.a();
            this.f889a.put(uVar, aVar);
        }
        aVar.f890a |= 2;
        aVar.b = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(RecyclerView.u uVar) {
        a aVar = this.f889a.get(uVar);
        return (aVar == null || (aVar.f890a & 4) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecyclerView.u a(long j) {
        return this.b.a(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(RecyclerView.u uVar, RecyclerView.e.c cVar) {
        a aVar = this.f889a.get(uVar);
        if (aVar == null) {
            aVar = a.a();
            this.f889a.put(uVar, aVar);
        }
        aVar.c = cVar;
        aVar.f890a |= 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(RecyclerView.u uVar) {
        a aVar = this.f889a.get(uVar);
        if (aVar == null) {
            aVar = a.a();
            this.f889a.put(uVar, aVar);
        }
        aVar.f890a |= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(RecyclerView.u uVar) {
        a aVar = this.f889a.get(uVar);
        if (aVar != null) {
            aVar.f890a &= -2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(b bVar) {
        for (int size = this.f889a.size() - 1; size >= 0; size--) {
            RecyclerView.u b2 = this.f889a.b(size);
            a d = this.f889a.d(size);
            if ((d.f890a & 3) == 3) {
                bVar.a(b2);
            } else if ((d.f890a & 1) != 0) {
                if (d.b == null) {
                    bVar.a(b2);
                } else {
                    bVar.a(b2, d.b, d.c);
                }
            } else if ((d.f890a & 14) == 14) {
                bVar.b(b2, d.b, d.c);
            } else if ((d.f890a & 12) == 12) {
                bVar.c(b2, d.b, d.c);
            } else if ((d.f890a & 4) != 0) {
                bVar.a(b2, d.b, null);
            } else if ((d.f890a & 8) != 0) {
                bVar.b(b2, d.b, d.c);
            } else if ((d.f890a & 2) != 0) {
            }
            a.a(d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(RecyclerView.u uVar) {
        int b2 = this.b.b() - 1;
        while (true) {
            if (b2 < 0) {
                break;
            } else if (uVar != this.b.c(b2)) {
                b2--;
            } else {
                this.b.a(b2);
                break;
            }
        }
        a remove = this.f889a.remove(uVar);
        if (remove != null) {
            a.a(remove);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a.b();
    }

    public void h(RecyclerView.u uVar) {
        f(uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewInfoStore.java */
    /* loaded from: classes.dex */
    public static class a {
        static j.a<a> d = new j.b(20);

        /* renamed from: a  reason: collision with root package name */
        int f890a;
        RecyclerView.e.c b;
        RecyclerView.e.c c;

        private a() {
        }

        static a a() {
            a a2 = d.a();
            return a2 == null ? new a() : a2;
        }

        static void a(a aVar) {
            aVar.f890a = 0;
            aVar.b = null;
            aVar.c = null;
            d.a(aVar);
        }

        static void b() {
            do {
            } while (d.a() != null);
        }
    }
}
