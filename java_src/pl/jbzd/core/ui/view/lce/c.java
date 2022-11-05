package pl.jbzd.core.ui.view.lce;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.u;
import android.view.ViewGroup;
import java.util.List;
/* compiled from: LceRecyclerViewAdapter.java */
/* loaded from: classes3.dex */
public abstract class c<T, VH extends RecyclerView.u> extends RecyclerView.a<VH> {

    /* renamed from: a  reason: collision with root package name */
    private int f6118a;
    private boolean b = false;
    private boolean c = false;
    private boolean d = false;
    protected LceRecyclerView e;
    protected final List<T> f;

    public abstract int a(int i);

    public abstract VH a(ViewGroup viewGroup, int i);

    public abstract void a(VH vh, int i, int i2);

    public abstract VH b(ViewGroup viewGroup, int i);

    public abstract int[] c();

    public c(List<T> list) {
        int[] c;
        this.f6118a = 0;
        this.f = list;
        this.f6118a = 0;
        for (int i : c()) {
            if (c(i)) {
                this.f6118a = i | this.f6118a;
            }
        }
        if (list == null) {
            throw new IllegalArgumentException("Items cannot be empty");
        }
        if ((this.f6118a & 2) != 2) {
            throw new IllegalArgumentException("getAllowedViewTypes must contain LOADING_FIST");
        }
        if ((this.f6118a & 4) != 4) {
            throw new IllegalArgumentException("getAllowedViewTypes must contain LOADING_PAGE");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(LceRecyclerView lceRecyclerView) {
        this.e = lceRecyclerView;
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public VH onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i >= 1000) {
            return a(viewGroup, i);
        }
        return b(viewGroup, b(i));
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void onBindViewHolder(VH vh, int i) {
        int itemViewType = getItemViewType(i);
        if (itemViewType >= 1000) {
            a((c<T, VH>) vh, itemViewType, i);
        } else {
            b(vh, b(itemViewType), i);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public int getItemCount() {
        int size = this.f.size();
        if (size > 0) {
            if (this.c) {
                return size + 1;
            }
            if (this.b) {
                return size + 1;
            }
            return size;
        } else if (this.c || this.b || (this.f6118a & 1) == 1) {
            return 1;
        } else {
            return size;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public final int getItemViewType(int i) {
        int i2 = 8;
        int i3 = 1;
        int size = this.f.size();
        if (size == 0) {
            if (this.c) {
                if ((this.f6118a & 8) != 8) {
                    i2 = (this.f6118a & 1) == 1 ? 1 : 2;
                }
            } else if (this.b) {
                i2 = 2;
            } else {
                if ((this.f6118a & 1) != 1) {
                    i3 = 2;
                }
                i2 = i3;
            }
        } else if (i == size) {
            i2 = (!this.c || (this.f6118a & 16) != 16) ? 4 : 16;
        } else {
            i2 = 1000;
        }
        if (i2 == 1000) {
            return a(i);
        }
        return i2;
    }

    public void b(VH vh, int i, int i2) {
    }

    public boolean g() {
        return this.c;
    }

    public boolean h() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return !this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j() {
        return getItemCount() > this.f.size();
    }

    private int b(int i) {
        return (this.f6118a & i) == i ? i : this.f.isEmpty() ? 2 : 4;
    }

    private boolean c(int i) {
        return i == 1 || i == 2 || i == 4 || i == 8 || i == 16;
    }

    public boolean k() {
        this.b = this.e.getLceRecyclerViewScrollListener() != null && this.e.getLceRecyclerViewScrollListener().a(this.e);
        if (this.b) {
            this.d = false;
        }
        return this.b;
    }

    public void a(List<T> list) {
        if (list == null || list.isEmpty()) {
            if (!this.f.isEmpty()) {
                this.e.post(new Runnable() { // from class: pl.jbzd.core.ui.view.lce.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.notifyDataSetChanged();
                    }
                });
            }
        } else if (this.f.isEmpty()) {
            this.f.addAll(list);
            this.e.post(new Runnable() { // from class: pl.jbzd.core.ui.view.lce.c.2
                @Override // java.lang.Runnable
                public void run() {
                    c.this.notifyDataSetChanged();
                }
            });
        } else {
            this.f.addAll(0, list);
            notifyItemRangeInserted(0, list.size());
        }
    }

    public void b(final List<T> list) {
        b(this.e, false);
        a(this.e, false);
        if (list == null || list.isEmpty()) {
            if (!this.f.isEmpty()) {
                this.e.post(new Runnable() { // from class: pl.jbzd.core.ui.view.lce.c.3
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.notifyDataSetChanged();
                    }
                });
            }
        } else if (this.f.isEmpty()) {
            this.f.addAll(list);
            this.e.post(new Runnable() { // from class: pl.jbzd.core.ui.view.lce.c.4
                @Override // java.lang.Runnable
                public void run() {
                    c.this.notifyDataSetChanged();
                }
            });
        } else {
            final int size = this.f.size() + 1;
            this.f.addAll(list);
            this.e.post(new Runnable() { // from class: pl.jbzd.core.ui.view.lce.c.5
                @Override // java.lang.Runnable
                public void run() {
                    c.this.notifyItemRangeInserted(size, list.size());
                }
            });
        }
    }

    public void l() {
        b(this.e);
    }

    public void m() {
        c(this.e);
    }

    void b(LceRecyclerView lceRecyclerView) {
        a(lceRecyclerView, false, false);
        if (lceRecyclerView.getLceRecyclerViewScrollListener() != null) {
            lceRecyclerView.getLceRecyclerViewScrollListener().a(lceRecyclerView, (c) lceRecyclerView.getAdapter(), false);
        }
        this.d = true;
    }

    void c(LceRecyclerView lceRecyclerView) {
        a(lceRecyclerView, false, true);
        if (lceRecyclerView.getLceRecyclerViewScrollListener() != null) {
            lceRecyclerView.getLceRecyclerViewScrollListener().a(lceRecyclerView, (c) lceRecyclerView.getAdapter(), false);
        }
    }

    void d(LceRecyclerView lceRecyclerView) {
        a(lceRecyclerView, true, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        this.d = false;
        if (this.f != null) {
            this.f.clear();
        }
        this.e.post(new Runnable() { // from class: pl.jbzd.core.ui.view.lce.c.6
            @Override // java.lang.Runnable
            public void run() {
                c.this.notifyDataSetChanged();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(LceRecyclerView lceRecyclerView, boolean z) {
        this.c = z;
        if (this.c) {
            this.b = false;
            c(lceRecyclerView);
        } else if (!h()) {
            e(lceRecyclerView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(LceRecyclerView lceRecyclerView, boolean z) {
        this.b = z;
        if (this.b) {
            this.c = false;
            d(lceRecyclerView);
            return;
        }
        if (lceRecyclerView.getLceRecyclerViewScrollListener() != null) {
            lceRecyclerView.getLceRecyclerViewScrollListener().a(lceRecyclerView, (c) lceRecyclerView.getAdapter(), false);
        }
        if (!g()) {
            e(lceRecyclerView);
        }
    }

    private void a(LceRecyclerView lceRecyclerView, boolean z, boolean z2) {
        this.b = z;
        this.c = z2;
        if (this.b || this.c) {
            lceRecyclerView.post(new Runnable() { // from class: pl.jbzd.core.ui.view.lce.c.7
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.getItemCount() > c.this.f.size()) {
                        c.this.notifyItemChanged(c.this.f.size());
                    } else {
                        c.this.notifyItemInserted(c.this.f.size());
                    }
                }
            });
        } else {
            e(lceRecyclerView);
        }
    }

    private void e(LceRecyclerView lceRecyclerView) {
        if (j()) {
            this.c = false;
            this.b = false;
            lceRecyclerView.post(new Runnable() { // from class: pl.jbzd.core.ui.view.lce.c.8
                @Override // java.lang.Runnable
                public void run() {
                    c.this.notifyItemRemoved(c.this.f.size());
                }
            });
        }
    }
}
