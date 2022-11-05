package android.support.v7.widget;

import android.support.v7.widget.RecyclerView;
import android.view.View;
/* compiled from: SimpleItemAnimator.java */
/* loaded from: classes.dex */
public abstract class ao extends RecyclerView.e {
    boolean h = true;

    public abstract boolean a(RecyclerView.u uVar);

    public abstract boolean a(RecyclerView.u uVar, int i, int i2, int i3, int i4);

    public abstract boolean a(RecyclerView.u uVar, RecyclerView.u uVar2, int i, int i2, int i3, int i4);

    public abstract boolean b(RecyclerView.u uVar);

    @Override // android.support.v7.widget.RecyclerView.e
    public boolean h(RecyclerView.u uVar) {
        return !this.h || uVar.isInvalid();
    }

    @Override // android.support.v7.widget.RecyclerView.e
    public boolean a(RecyclerView.u uVar, RecyclerView.e.c cVar, RecyclerView.e.c cVar2) {
        int i = cVar.f810a;
        int i2 = cVar.b;
        View view = uVar.itemView;
        int left = cVar2 == null ? view.getLeft() : cVar2.f810a;
        int top = cVar2 == null ? view.getTop() : cVar2.b;
        if (!uVar.isRemoved() && (i != left || i2 != top)) {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            return a(uVar, i, i2, left, top);
        }
        return a(uVar);
    }

    @Override // android.support.v7.widget.RecyclerView.e
    public boolean b(RecyclerView.u uVar, RecyclerView.e.c cVar, RecyclerView.e.c cVar2) {
        return (cVar == null || (cVar.f810a == cVar2.f810a && cVar.b == cVar2.b)) ? b(uVar) : a(uVar, cVar.f810a, cVar.b, cVar2.f810a, cVar2.b);
    }

    @Override // android.support.v7.widget.RecyclerView.e
    public boolean c(RecyclerView.u uVar, RecyclerView.e.c cVar, RecyclerView.e.c cVar2) {
        if (cVar.f810a != cVar2.f810a || cVar.b != cVar2.b) {
            return a(uVar, cVar.f810a, cVar.b, cVar2.f810a, cVar2.b);
        }
        j(uVar);
        return false;
    }

    @Override // android.support.v7.widget.RecyclerView.e
    public boolean a(RecyclerView.u uVar, RecyclerView.u uVar2, RecyclerView.e.c cVar, RecyclerView.e.c cVar2) {
        int i;
        int i2;
        int i3 = cVar.f810a;
        int i4 = cVar.b;
        if (uVar2.shouldIgnore()) {
            i = cVar.f810a;
            i2 = cVar.b;
        } else {
            i = cVar2.f810a;
            i2 = cVar2.b;
        }
        return a(uVar, uVar2, i3, i4, i, i2);
    }

    public final void i(RecyclerView.u uVar) {
        p(uVar);
        f(uVar);
    }

    public final void j(RecyclerView.u uVar) {
        t(uVar);
        f(uVar);
    }

    public final void k(RecyclerView.u uVar) {
        r(uVar);
        f(uVar);
    }

    public final void a(RecyclerView.u uVar, boolean z) {
        d(uVar, z);
        f(uVar);
    }

    public final void l(RecyclerView.u uVar) {
        o(uVar);
    }

    public final void m(RecyclerView.u uVar) {
        s(uVar);
    }

    public final void n(RecyclerView.u uVar) {
        q(uVar);
    }

    public final void b(RecyclerView.u uVar, boolean z) {
        c(uVar, z);
    }

    public void o(RecyclerView.u uVar) {
    }

    public void p(RecyclerView.u uVar) {
    }

    public void q(RecyclerView.u uVar) {
    }

    public void r(RecyclerView.u uVar) {
    }

    public void s(RecyclerView.u uVar) {
    }

    public void t(RecyclerView.u uVar) {
    }

    public void c(RecyclerView.u uVar, boolean z) {
    }

    public void d(RecyclerView.u uVar, boolean z) {
    }
}
