package pl.jbzd.core.ui.b;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.StaggeredGridLayoutManager;
import pl.jbzd.core.ui.adapter.EndlessRecyclerViewAdapter;
/* compiled from: EndlessRecyclerViewScrollListener.java */
/* loaded from: classes3.dex */
public abstract class a extends RecyclerView.l {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6098a = a.class.getSimpleName();
    private final RecyclerView.h b;
    private int c = 5;
    private int d = 0;
    private int e = 0;
    private int f = 0;
    private boolean g = false;
    private boolean h = false;

    public abstract void a(int i, int i2);

    public a(Context context, LinearLayoutManager linearLayoutManager) {
        if (linearLayoutManager == null) {
            throw new IllegalArgumentException("LinearLayoutManager cannot be empty");
        }
        a(context);
        this.b = linearLayoutManager;
    }

    public Bundle a(Bundle bundle) {
        bundle.putInt("ARG_CURRENT_PAGE", this.d);
        bundle.putInt("ARG_PREVIOUS_TOTAL_ITEM_COUNT", this.e);
        bundle.putParcelable("ARG_LAYOUT_MANAGER_STATE", this.b.onSaveInstanceState());
        return bundle;
    }

    public void b(Bundle bundle) {
        if (bundle != null) {
            try {
                this.d = bundle.getInt("ARG_CURRENT_PAGE", 0);
                this.e = bundle.getInt("ARG_PREVIOUS_TOTAL_ITEM_COUNT", 0);
                this.b.onRestoreInstanceState(bundle.getParcelable("ARG_LAYOUT_MANAGER_STATE"));
            } catch (Exception e) {
                this.e = 0;
                this.d = 0;
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.l
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        int i3 = 0;
        if (!this.g) {
            EndlessRecyclerViewAdapter<?> endlessRecyclerViewAdapter = (EndlessRecyclerViewAdapter) recyclerView.getAdapter();
            boolean b = endlessRecyclerViewAdapter.b();
            int itemCount = endlessRecyclerViewAdapter.getItemCount() - (b ? 1 : 0);
            if (this.b instanceof StaggeredGridLayoutManager) {
                int[] b2 = ((StaggeredGridLayoutManager) this.b).b((int[]) null);
                int length = b2.length;
                int i4 = 0;
                while (i4 < length) {
                    int i5 = b2[i4];
                    if (i5 <= i3) {
                        i5 = i3;
                    }
                    i4++;
                    i3 = i5;
                }
            } else if (this.b instanceof LinearLayoutManager) {
                i3 = ((LinearLayoutManager) this.b).findLastVisibleItemPosition();
            }
            if (itemCount < this.e) {
                a(endlessRecyclerViewAdapter, itemCount);
            }
            if (!this.g && this.c + i3 > itemCount) {
                a(endlessRecyclerViewAdapter, itemCount, b);
            }
        }
    }

    public void a(EndlessRecyclerViewAdapter<?> endlessRecyclerViewAdapter, int i) {
        this.h = false;
        this.d = this.f;
        this.e = i;
        endlessRecyclerViewAdapter.g();
        c(this.d, i);
    }

    private boolean a(EndlessRecyclerViewAdapter<?> endlessRecyclerViewAdapter, int i, boolean z) {
        int i2;
        if (!this.g) {
            if (this.h) {
                if (this.d <= this.f) {
                    i2 = this.f;
                } else {
                    i2 = this.d - 1;
                    this.d = i2;
                }
                this.d = i2;
                this.h = false;
            }
            int i3 = this.d + 1;
            this.d = i3;
            if (b(i3, i)) {
                this.g = true;
                endlessRecyclerViewAdapter.d();
                a(this.d, i);
            }
            return this.g;
        }
        return false;
    }

    public boolean a(EndlessRecyclerViewAdapter<?> endlessRecyclerViewAdapter) {
        boolean b = endlessRecyclerViewAdapter.b();
        return a(endlessRecyclerViewAdapter, this.b.getItemCount() - (b ? 1 : 0), b);
    }

    public void b(EndlessRecyclerViewAdapter<?> endlessRecyclerViewAdapter) {
        this.g = false;
        this.h = false;
        int itemCount = endlessRecyclerViewAdapter.getItemCount() - (endlessRecyclerViewAdapter.b() ? 1 : 0);
        a(this.d, this.e, itemCount);
        this.e = itemCount;
        endlessRecyclerViewAdapter.a(false);
    }

    public void c(EndlessRecyclerViewAdapter<?> endlessRecyclerViewAdapter) {
        this.g = false;
        this.h = false;
    }

    public void d(EndlessRecyclerViewAdapter<?> endlessRecyclerViewAdapter) {
        this.h = true;
        this.g = false;
    }

    public boolean b() {
        return this.g;
    }

    public boolean c() {
        return this.h;
    }

    public int d() {
        return this.f;
    }

    public int a() {
        return this.c;
    }

    private void a(Context context) {
        this.f = d();
        this.c = a();
    }

    public boolean b(int i, int i2) {
        return true;
    }

    public void c(int i, int i2) {
    }

    public void a(int i, int i2, int i3) {
    }
}
