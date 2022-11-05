package io.realm;

import io.realm.internal.InvalidRow;
import io.realm.internal.UncheckedRow;
import io.realm.t;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: ProxyState.java */
/* loaded from: classes3.dex */
public final class k<E extends t> {
    private E b;
    private io.realm.internal.n d;
    private b e;
    private boolean f;
    private List<String> g;
    private boolean c = true;
    private final List<o<E>> h = new CopyOnWriteArrayList();

    /* renamed from: a  reason: collision with root package name */
    protected long f5801a = -1;

    public k() {
    }

    public k(E e) {
        this.b = e;
    }

    public b a() {
        return this.e;
    }

    public void a(b bVar) {
        this.e = bVar;
    }

    public io.realm.internal.n b() {
        return this.d;
    }

    public void a(io.realm.internal.n nVar) {
        this.d = nVar;
    }

    public boolean c() {
        return this.f;
    }

    public void a(boolean z) {
        this.f = z;
    }

    public List<String> d() {
        return this.g;
    }

    public void a(List<String> list) {
        this.g = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (!this.h.isEmpty()) {
            for (o<E> oVar : this.h) {
                if (this.e.e != null && !this.e.e.k()) {
                    oVar.a(this.b);
                } else {
                    return;
                }
            }
        }
    }

    public void a(o<E> oVar) {
        if (!this.h.contains(oVar)) {
            this.h.add(oVar);
        }
        if (this.d instanceof UncheckedRow) {
            l();
        }
    }

    public void b(o<E> oVar) {
        this.h.remove(oVar);
        if (this.h.isEmpty() && (this.d instanceof UncheckedRow)) {
            this.e.e.f5776a.removeChangeListeners(this);
        }
    }

    public void e() {
        this.h.clear();
        if (this.d instanceof UncheckedRow) {
            this.e.e.f5776a.removeChangeListeners(this);
        }
    }

    public void f() {
        if (this.d.getTable() != null) {
            this.f5801a = this.d.getTable().i();
        }
    }

    public boolean g() {
        return this.c;
    }

    public void h() {
        this.c = false;
        this.g = null;
    }

    private void l() {
        if (this.e.e != null && !this.e.e.k()) {
            this.e.e.f5776a.addChangeListener(this, new o<k<E>>() { // from class: io.realm.k.1
                @Override // io.realm.o
                public /* bridge */ /* synthetic */ void a(Object obj) {
                    a((k) ((k) obj));
                }

                public void a(k<E> kVar) {
                    long j = -1;
                    if (k.this.d.isAttached()) {
                        j = k.this.d.getTable().i();
                    }
                    if (k.this.f5801a != j) {
                        k.this.f5801a = j;
                        k.this.k();
                    }
                }
            });
        }
    }

    public boolean i() {
        return !(this.d instanceof io.realm.internal.j);
    }

    public void j() {
        if (this.d instanceof io.realm.internal.j) {
            this.d = ((io.realm.internal.j) this.d).a();
            if (!(this.d instanceof InvalidRow)) {
                l();
            }
            k();
        }
    }
}
