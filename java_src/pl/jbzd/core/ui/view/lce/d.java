package pl.jbzd.core.ui.view.lce;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import pl.jbzd.core.ui.view.lce.LceRecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LceRecyclerViewScrollListener.java */
/* loaded from: classes3.dex */
public class d extends RecyclerView.l {

    /* renamed from: a  reason: collision with root package name */
    private final a f6127a;
    private int c = 0;
    private int d = 5;
    private int e = 0;
    private int f = 0;
    private boolean g = false;
    private boolean h = false;
    private LceRecyclerView.a b = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(a aVar) {
        this.f6127a = aVar;
        this.d *= this.f6127a.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Bundle bundle) {
        if (bundle != null) {
            this.e = bundle.getInt("LceScroll.ARG_CURRENT_PAGE", 0);
            this.f = bundle.getInt("LceScroll.ARG_PREVIOUS_TOTAL_ITEM_COUNT", 0);
            this.h = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(LceRecyclerView.a aVar) {
        this.b = aVar;
    }

    @Override // android.support.v7.widget.RecyclerView.l
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        c cVar = (c) recyclerView.getAdapter();
        if (cVar.i()) {
            int a2 = this.f6127a.a();
            int itemCount = cVar.getItemCount() - (cVar.j() ? 1 : 0);
            if (itemCount < this.f) {
                ((LceRecyclerView) recyclerView).a();
            } else if (itemCount > this.f) {
                a((LceRecyclerView) recyclerView, cVar, true);
            }
            if (!this.h && this.d + a2 > itemCount) {
                this.h = a((LceRecyclerView) recyclerView);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(LceRecyclerView lceRecyclerView) {
        c cVar = (c) lceRecyclerView.getAdapter();
        int itemCount = cVar.getItemCount() - (cVar.j() ? 1 : 0);
        if (cVar.g()) {
            this.e = this.e <= this.c ? this.c : this.e - 1;
            cVar.a(lceRecyclerView, false);
        }
        if (cVar.h()) {
            cVar.b(lceRecyclerView, false);
        }
        if (this.b != null) {
            LceRecyclerView.a aVar = this.b;
            int i = this.e + 1;
            this.e = i;
            this.h = aVar.a(lceRecyclerView, i, itemCount);
            if (this.h) {
                cVar.b(lceRecyclerView, true);
            } else if (!cVar.g()) {
                this.e = this.e <= this.c ? this.c : this.e - 1;
            }
        }
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        this.d = this.f6127a.b() * i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.g = z;
        this.h = !this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(LceRecyclerView lceRecyclerView, c cVar, boolean z) {
        int i = 0;
        if (z) {
            cVar.b(lceRecyclerView, false);
        }
        this.h = false;
        int itemCount = cVar.getItemCount();
        if (cVar.j()) {
            i = 1;
        }
        this.f = itemCount - i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        boolean z = false;
        this.e = this.c;
        this.f = 0;
        if (!this.g) {
            z = true;
        }
        this.h = z;
    }
}
