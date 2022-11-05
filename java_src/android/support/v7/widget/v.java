package android.support.v7.widget;

import android.support.v4.view.bd;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: DefaultItemAnimator.java */
/* loaded from: classes.dex */
public class v extends ao {
    private ArrayList<RecyclerView.u> i = new ArrayList<>();
    private ArrayList<RecyclerView.u> j = new ArrayList<>();
    private ArrayList<b> k = new ArrayList<>();
    private ArrayList<a> l = new ArrayList<>();

    /* renamed from: a  reason: collision with root package name */
    ArrayList<ArrayList<RecyclerView.u>> f911a = new ArrayList<>();
    ArrayList<ArrayList<b>> b = new ArrayList<>();
    ArrayList<ArrayList<a>> c = new ArrayList<>();
    ArrayList<RecyclerView.u> d = new ArrayList<>();
    ArrayList<RecyclerView.u> e = new ArrayList<>();
    ArrayList<RecyclerView.u> f = new ArrayList<>();
    ArrayList<RecyclerView.u> g = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public RecyclerView.u f921a;
        public int b;
        public int c;
        public int d;
        public int e;

        b(RecyclerView.u uVar, int i, int i2, int i3, int i4) {
            this.f921a = uVar;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public RecyclerView.u f920a;
        public RecyclerView.u b;
        public int c;
        public int d;
        public int e;
        public int f;

        private a(RecyclerView.u uVar, RecyclerView.u uVar2) {
            this.f920a = uVar;
            this.b = uVar2;
        }

        a(RecyclerView.u uVar, RecyclerView.u uVar2, int i, int i2, int i3, int i4) {
            this(uVar, uVar2);
            this.c = i;
            this.d = i2;
            this.e = i3;
            this.f = i4;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f920a + ", newHolder=" + this.b + ", fromX=" + this.c + ", fromY=" + this.d + ", toX=" + this.e + ", toY=" + this.f + '}';
        }
    }

    @Override // android.support.v7.widget.RecyclerView.e
    public void a() {
        boolean z = !this.i.isEmpty();
        boolean z2 = !this.k.isEmpty();
        boolean z3 = !this.l.isEmpty();
        boolean z4 = !this.j.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.u> it = this.i.iterator();
            while (it.hasNext()) {
                u(it.next());
            }
            this.i.clear();
            if (z2) {
                final ArrayList<b> arrayList = new ArrayList<>();
                arrayList.addAll(this.k);
                this.b.add(arrayList);
                this.k.clear();
                Runnable runnable = new Runnable() { // from class: android.support.v7.widget.v.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            b bVar = (b) it2.next();
                            v.this.b(bVar.f921a, bVar.b, bVar.c, bVar.d, bVar.e);
                        }
                        arrayList.clear();
                        v.this.b.remove(arrayList);
                    }
                };
                if (z) {
                    android.support.v4.view.ai.a(arrayList.get(0).f921a.itemView, runnable, g());
                } else {
                    runnable.run();
                }
            }
            if (z3) {
                final ArrayList<a> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.l);
                this.c.add(arrayList2);
                this.l.clear();
                Runnable runnable2 = new Runnable() { // from class: android.support.v7.widget.v.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            v.this.a((a) it2.next());
                        }
                        arrayList2.clear();
                        v.this.c.remove(arrayList2);
                    }
                };
                if (z) {
                    android.support.v4.view.ai.a(arrayList2.get(0).f920a.itemView, runnable2, g());
                } else {
                    runnable2.run();
                }
            }
            if (z4) {
                final ArrayList<RecyclerView.u> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.j);
                this.f911a.add(arrayList3);
                this.j.clear();
                Runnable runnable3 = new Runnable() { // from class: android.support.v7.widget.v.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList3.iterator();
                        while (it2.hasNext()) {
                            v.this.c((RecyclerView.u) it2.next());
                        }
                        arrayList3.clear();
                        v.this.f911a.remove(arrayList3);
                    }
                };
                if (z || z2 || z3) {
                    android.support.v4.view.ai.a(arrayList3.get(0).itemView, runnable3, (z ? g() : 0L) + Math.max(z2 ? e() : 0L, z3 ? h() : 0L));
                } else {
                    runnable3.run();
                }
            }
        }
    }

    @Override // android.support.v7.widget.ao
    public boolean a(RecyclerView.u uVar) {
        v(uVar);
        this.i.add(uVar);
        return true;
    }

    private void u(final RecyclerView.u uVar) {
        final android.support.v4.view.az r = android.support.v4.view.ai.r(uVar.itemView);
        this.f.add(uVar);
        r.a(g()).a(BitmapDescriptorFactory.HUE_RED).a(new c() { // from class: android.support.v7.widget.v.4
            @Override // android.support.v7.widget.v.c, android.support.v4.view.bd
            public void a(View view) {
                v.this.l(uVar);
            }

            @Override // android.support.v7.widget.v.c, android.support.v4.view.bd
            public void b(View view) {
                r.a((bd) null);
                android.support.v4.view.ai.c(view, 1.0f);
                v.this.i(uVar);
                v.this.f.remove(uVar);
                v.this.c();
            }
        }).c();
    }

    @Override // android.support.v7.widget.ao
    public boolean b(RecyclerView.u uVar) {
        v(uVar);
        android.support.v4.view.ai.c(uVar.itemView, (float) BitmapDescriptorFactory.HUE_RED);
        this.j.add(uVar);
        return true;
    }

    void c(final RecyclerView.u uVar) {
        final android.support.v4.view.az r = android.support.v4.view.ai.r(uVar.itemView);
        this.d.add(uVar);
        r.a(1.0f).a(f()).a(new c() { // from class: android.support.v7.widget.v.5
            @Override // android.support.v7.widget.v.c, android.support.v4.view.bd
            public void a(View view) {
                v.this.n(uVar);
            }

            @Override // android.support.v7.widget.v.c, android.support.v4.view.bd
            public void c(View view) {
                android.support.v4.view.ai.c(view, 1.0f);
            }

            @Override // android.support.v7.widget.v.c, android.support.v4.view.bd
            public void b(View view) {
                r.a((bd) null);
                v.this.k(uVar);
                v.this.d.remove(uVar);
                v.this.c();
            }
        }).c();
    }

    @Override // android.support.v7.widget.ao
    public boolean a(RecyclerView.u uVar, int i, int i2, int i3, int i4) {
        View view = uVar.itemView;
        int m = (int) (i + android.support.v4.view.ai.m(uVar.itemView));
        int n = (int) (i2 + android.support.v4.view.ai.n(uVar.itemView));
        v(uVar);
        int i5 = i3 - m;
        int i6 = i4 - n;
        if (i5 == 0 && i6 == 0) {
            j(uVar);
            return false;
        }
        if (i5 != 0) {
            android.support.v4.view.ai.a(view, -i5);
        }
        if (i6 != 0) {
            android.support.v4.view.ai.b(view, -i6);
        }
        this.k.add(new b(uVar, m, n, i3, i4));
        return true;
    }

    void b(final RecyclerView.u uVar, int i, int i2, int i3, int i4) {
        View view = uVar.itemView;
        final int i5 = i3 - i;
        final int i6 = i4 - i2;
        if (i5 != 0) {
            android.support.v4.view.ai.r(view).b(BitmapDescriptorFactory.HUE_RED);
        }
        if (i6 != 0) {
            android.support.v4.view.ai.r(view).c(BitmapDescriptorFactory.HUE_RED);
        }
        final android.support.v4.view.az r = android.support.v4.view.ai.r(view);
        this.e.add(uVar);
        r.a(e()).a(new c() { // from class: android.support.v7.widget.v.6
            @Override // android.support.v7.widget.v.c, android.support.v4.view.bd
            public void a(View view2) {
                v.this.m(uVar);
            }

            @Override // android.support.v7.widget.v.c, android.support.v4.view.bd
            public void c(View view2) {
                if (i5 != 0) {
                    android.support.v4.view.ai.a(view2, (float) BitmapDescriptorFactory.HUE_RED);
                }
                if (i6 != 0) {
                    android.support.v4.view.ai.b(view2, (float) BitmapDescriptorFactory.HUE_RED);
                }
            }

            @Override // android.support.v7.widget.v.c, android.support.v4.view.bd
            public void b(View view2) {
                r.a((bd) null);
                v.this.j(uVar);
                v.this.e.remove(uVar);
                v.this.c();
            }
        }).c();
    }

    @Override // android.support.v7.widget.ao
    public boolean a(RecyclerView.u uVar, RecyclerView.u uVar2, int i, int i2, int i3, int i4) {
        if (uVar == uVar2) {
            return a(uVar, i, i2, i3, i4);
        }
        float m = android.support.v4.view.ai.m(uVar.itemView);
        float n = android.support.v4.view.ai.n(uVar.itemView);
        float e = android.support.v4.view.ai.e(uVar.itemView);
        v(uVar);
        int i5 = (int) ((i3 - i) - m);
        int i6 = (int) ((i4 - i2) - n);
        android.support.v4.view.ai.a(uVar.itemView, m);
        android.support.v4.view.ai.b(uVar.itemView, n);
        android.support.v4.view.ai.c(uVar.itemView, e);
        if (uVar2 != null) {
            v(uVar2);
            android.support.v4.view.ai.a(uVar2.itemView, -i5);
            android.support.v4.view.ai.b(uVar2.itemView, -i6);
            android.support.v4.view.ai.c(uVar2.itemView, (float) BitmapDescriptorFactory.HUE_RED);
        }
        this.l.add(new a(uVar, uVar2, i, i2, i3, i4));
        return true;
    }

    void a(final a aVar) {
        final View view = null;
        RecyclerView.u uVar = aVar.f920a;
        View view2 = uVar == null ? null : uVar.itemView;
        RecyclerView.u uVar2 = aVar.b;
        if (uVar2 != null) {
            view = uVar2.itemView;
        }
        if (view2 != null) {
            final android.support.v4.view.az a2 = android.support.v4.view.ai.r(view2).a(h());
            this.g.add(aVar.f920a);
            a2.b(aVar.e - aVar.c);
            a2.c(aVar.f - aVar.d);
            a2.a(BitmapDescriptorFactory.HUE_RED).a(new c() { // from class: android.support.v7.widget.v.7
                @Override // android.support.v7.widget.v.c, android.support.v4.view.bd
                public void a(View view3) {
                    v.this.b(aVar.f920a, true);
                }

                @Override // android.support.v7.widget.v.c, android.support.v4.view.bd
                public void b(View view3) {
                    a2.a((bd) null);
                    android.support.v4.view.ai.c(view3, 1.0f);
                    android.support.v4.view.ai.a(view3, (float) BitmapDescriptorFactory.HUE_RED);
                    android.support.v4.view.ai.b(view3, (float) BitmapDescriptorFactory.HUE_RED);
                    v.this.a(aVar.f920a, true);
                    v.this.g.remove(aVar.f920a);
                    v.this.c();
                }
            }).c();
        }
        if (view != null) {
            final android.support.v4.view.az r = android.support.v4.view.ai.r(view);
            this.g.add(aVar.b);
            r.b(BitmapDescriptorFactory.HUE_RED).c(BitmapDescriptorFactory.HUE_RED).a(h()).a(1.0f).a(new c() { // from class: android.support.v7.widget.v.8
                @Override // android.support.v7.widget.v.c, android.support.v4.view.bd
                public void a(View view3) {
                    v.this.b(aVar.b, false);
                }

                @Override // android.support.v7.widget.v.c, android.support.v4.view.bd
                public void b(View view3) {
                    r.a((bd) null);
                    android.support.v4.view.ai.c(view, 1.0f);
                    android.support.v4.view.ai.a(view, (float) BitmapDescriptorFactory.HUE_RED);
                    android.support.v4.view.ai.b(view, (float) BitmapDescriptorFactory.HUE_RED);
                    v.this.a(aVar.b, false);
                    v.this.g.remove(aVar.b);
                    v.this.c();
                }
            }).c();
        }
    }

    private void a(List<a> list, RecyclerView.u uVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            a aVar = list.get(size);
            if (a(aVar, uVar) && aVar.f920a == null && aVar.b == null) {
                list.remove(aVar);
            }
        }
    }

    private void b(a aVar) {
        if (aVar.f920a != null) {
            a(aVar, aVar.f920a);
        }
        if (aVar.b != null) {
            a(aVar, aVar.b);
        }
    }

    private boolean a(a aVar, RecyclerView.u uVar) {
        boolean z = false;
        if (aVar.b == uVar) {
            aVar.b = null;
        } else if (aVar.f920a != uVar) {
            return false;
        } else {
            aVar.f920a = null;
            z = true;
        }
        android.support.v4.view.ai.c(uVar.itemView, 1.0f);
        android.support.v4.view.ai.a(uVar.itemView, (float) BitmapDescriptorFactory.HUE_RED);
        android.support.v4.view.ai.b(uVar.itemView, (float) BitmapDescriptorFactory.HUE_RED);
        a(uVar, z);
        return true;
    }

    @Override // android.support.v7.widget.RecyclerView.e
    public void d(RecyclerView.u uVar) {
        View view = uVar.itemView;
        android.support.v4.view.ai.r(view).b();
        for (int size = this.k.size() - 1; size >= 0; size--) {
            if (this.k.get(size).f921a == uVar) {
                android.support.v4.view.ai.b(view, (float) BitmapDescriptorFactory.HUE_RED);
                android.support.v4.view.ai.a(view, (float) BitmapDescriptorFactory.HUE_RED);
                j(uVar);
                this.k.remove(size);
            }
        }
        a(this.l, uVar);
        if (this.i.remove(uVar)) {
            android.support.v4.view.ai.c(view, 1.0f);
            i(uVar);
        }
        if (this.j.remove(uVar)) {
            android.support.v4.view.ai.c(view, 1.0f);
            k(uVar);
        }
        for (int size2 = this.c.size() - 1; size2 >= 0; size2--) {
            ArrayList<a> arrayList = this.c.get(size2);
            a(arrayList, uVar);
            if (arrayList.isEmpty()) {
                this.c.remove(size2);
            }
        }
        for (int size3 = this.b.size() - 1; size3 >= 0; size3--) {
            ArrayList<b> arrayList2 = this.b.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).f921a != uVar) {
                    size4--;
                } else {
                    android.support.v4.view.ai.b(view, (float) BitmapDescriptorFactory.HUE_RED);
                    android.support.v4.view.ai.a(view, (float) BitmapDescriptorFactory.HUE_RED);
                    j(uVar);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.b.remove(size3);
                    }
                }
            }
        }
        for (int size5 = this.f911a.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.u> arrayList3 = this.f911a.get(size5);
            if (arrayList3.remove(uVar)) {
                android.support.v4.view.ai.c(view, 1.0f);
                k(uVar);
                if (arrayList3.isEmpty()) {
                    this.f911a.remove(size5);
                }
            }
        }
        if (this.f.remove(uVar)) {
        }
        if (this.d.remove(uVar)) {
        }
        if (this.g.remove(uVar)) {
        }
        if (this.e.remove(uVar)) {
        }
        c();
    }

    private void v(RecyclerView.u uVar) {
        android.support.v4.a.a.a(uVar.itemView);
        d(uVar);
    }

    @Override // android.support.v7.widget.RecyclerView.e
    public boolean b() {
        return !this.j.isEmpty() || !this.l.isEmpty() || !this.k.isEmpty() || !this.i.isEmpty() || !this.e.isEmpty() || !this.f.isEmpty() || !this.d.isEmpty() || !this.g.isEmpty() || !this.b.isEmpty() || !this.f911a.isEmpty() || !this.c.isEmpty();
    }

    void c() {
        if (!b()) {
            i();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.e
    public void d() {
        for (int size = this.k.size() - 1; size >= 0; size--) {
            b bVar = this.k.get(size);
            View view = bVar.f921a.itemView;
            android.support.v4.view.ai.b(view, (float) BitmapDescriptorFactory.HUE_RED);
            android.support.v4.view.ai.a(view, (float) BitmapDescriptorFactory.HUE_RED);
            j(bVar.f921a);
            this.k.remove(size);
        }
        for (int size2 = this.i.size() - 1; size2 >= 0; size2--) {
            i(this.i.get(size2));
            this.i.remove(size2);
        }
        for (int size3 = this.j.size() - 1; size3 >= 0; size3--) {
            RecyclerView.u uVar = this.j.get(size3);
            android.support.v4.view.ai.c(uVar.itemView, 1.0f);
            k(uVar);
            this.j.remove(size3);
        }
        for (int size4 = this.l.size() - 1; size4 >= 0; size4--) {
            b(this.l.get(size4));
        }
        this.l.clear();
        if (b()) {
            for (int size5 = this.b.size() - 1; size5 >= 0; size5--) {
                ArrayList<b> arrayList = this.b.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    b bVar2 = arrayList.get(size6);
                    View view2 = bVar2.f921a.itemView;
                    android.support.v4.view.ai.b(view2, (float) BitmapDescriptorFactory.HUE_RED);
                    android.support.v4.view.ai.a(view2, (float) BitmapDescriptorFactory.HUE_RED);
                    j(bVar2.f921a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.b.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f911a.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.u> arrayList2 = this.f911a.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.u uVar2 = arrayList2.get(size8);
                    android.support.v4.view.ai.c(uVar2.itemView, 1.0f);
                    k(uVar2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f911a.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.c.size() - 1; size9 >= 0; size9--) {
                ArrayList<a> arrayList3 = this.c.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    b(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.c.remove(arrayList3);
                    }
                }
            }
            a(this.f);
            a(this.e);
            a(this.d);
            a(this.g);
            i();
        }
    }

    void a(List<RecyclerView.u> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            android.support.v4.view.ai.r(list.get(size).itemView).b();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.e
    public boolean a(RecyclerView.u uVar, List<Object> list) {
        return !list.isEmpty() || super.a(uVar, list);
    }

    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    private static class c implements bd {
        c() {
        }

        @Override // android.support.v4.view.bd
        public void a(View view) {
        }

        @Override // android.support.v4.view.bd
        public void b(View view) {
        }

        @Override // android.support.v4.view.bd
        public void c(View view) {
        }
    }
}
