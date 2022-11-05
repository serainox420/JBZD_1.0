package pl.jbzd.core.ui.adapter;

import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class EndlessRecyclerViewAdapter<T> extends RecyclerView.a<RecyclerView.u> {
    private static final String c = EndlessRecyclerViewAdapter.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    protected final pl.jbzd.core.ui.b.a f6094a;
    protected ArrayList<T> b;
    private final RecyclerView d;
    private final List<ViewType> e = Arrays.asList(a());
    private boolean f;

    public abstract int a(int i);

    public abstract RecyclerView.u a(ViewGroup viewGroup, int i);

    public abstract RecyclerView.u a(ViewGroup viewGroup, ViewType viewType, int i);

    public abstract void a(RecyclerView.u uVar, int i, int i2);

    public abstract void a(RecyclerView.u uVar, ViewType viewType, int i, int i2);

    public abstract ViewType[] a();

    /* loaded from: classes3.dex */
    public enum ViewType {
        EMPTY(-10),
        LOADING_FIST(-20),
        LOADING_PAGE(-30),
        ERROR_FIRST(-40),
        ERROR_PAGE(-50);
        

        /* renamed from: a  reason: collision with root package name */
        private static final SparseArray<ViewType> f6097a = new SparseArray<>();
        public int id;

        static {
            ViewType[] values;
            for (ViewType viewType : values()) {
                f6097a.put(viewType.id, viewType);
            }
        }

        ViewType(int i) {
            this.id = i;
        }

        public static ViewType getById(int i, ViewType viewType) {
            return f6097a.get(i, viewType);
        }
    }

    public EndlessRecyclerViewAdapter(RecyclerView recyclerView, pl.jbzd.core.ui.b.a aVar, ArrayList<T> arrayList) {
        this.b = null;
        this.d = recyclerView;
        this.f6094a = aVar;
        this.b = arrayList;
        if (aVar == null) {
            throw new IllegalArgumentException("EndlessRecyclerViewScrollListener cannot be empty");
        }
        if (!this.e.contains(ViewType.LOADING_FIST)) {
            throw new IllegalArgumentException("getAllowedViewTypes must contain LOADING_FIST");
        }
        if (!this.e.contains(ViewType.LOADING_PAGE)) {
            throw new IllegalArgumentException("getAllowedViewTypes must contain LOADING_PAGE");
        }
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public RecyclerView.u onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i >= 0) {
            return a(viewGroup, i);
        }
        return a(viewGroup, ViewType.getById(i, this.b.isEmpty() ? ViewType.LOADING_FIST : ViewType.LOADING_PAGE), i);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void onBindViewHolder(RecyclerView.u uVar, int i) {
        int itemViewType = getItemViewType(i);
        if (itemViewType >= 0) {
            a(uVar, itemViewType, i);
        } else {
            a(uVar, ViewType.getById(itemViewType, this.b.isEmpty() ? ViewType.LOADING_FIST : ViewType.LOADING_PAGE), itemViewType, i);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public int getItemCount() {
        int size = this.b.size();
        if (size > 0) {
            if (h()) {
                return size + 1;
            }
            if (this.f6094a.b()) {
                return size + 1;
            }
            return size;
        } else if (h() || this.f6094a.b() || this.e.contains(ViewType.EMPTY)) {
            return 1;
        } else {
            return size;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public final int getItemViewType(int i) {
        int i2 = 0;
        if (this.b.isEmpty()) {
            if (h()) {
                if (this.e.contains(ViewType.ERROR_FIRST)) {
                    i2 = ViewType.ERROR_FIRST.id;
                } else {
                    i2 = this.e.contains(ViewType.EMPTY) ? ViewType.EMPTY.id : ViewType.LOADING_FIST.id;
                }
            } else if (this.f6094a.b()) {
                i2 = ViewType.LOADING_FIST.id;
            } else {
                i2 = this.e.contains(ViewType.EMPTY) ? ViewType.EMPTY.id : ViewType.LOADING_FIST.id;
            }
        } else if (i == this.b.size()) {
            i2 = h() ? ViewType.ERROR_PAGE.id : ViewType.LOADING_PAGE.id;
        }
        if (i2 == 0) {
            return this.b.get(i) == null ? ViewType.LOADING_PAGE.id : a(i);
        }
        return i2;
    }

    public boolean b() {
        return getItemCount() > this.b.size();
    }

    private boolean h() {
        return this.f6094a.c() || this.f;
    }

    public void c() {
        this.f6094a.a((EndlessRecyclerViewAdapter<?>) this);
        if (this.f) {
            notifyItemChanged(this.b.size());
            this.f = false;
        }
    }

    public void d() {
        if (getItemCount() > this.b.size()) {
            this.d.post(new Runnable() { // from class: pl.jbzd.core.ui.adapter.EndlessRecyclerViewAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    EndlessRecyclerViewAdapter.this.notifyItemChanged(EndlessRecyclerViewAdapter.this.b.size());
                }
            });
        } else {
            this.d.post(new Runnable() { // from class: pl.jbzd.core.ui.adapter.EndlessRecyclerViewAdapter.2
                @Override // java.lang.Runnable
                public void run() {
                    EndlessRecyclerViewAdapter.this.notifyItemInserted(EndlessRecyclerViewAdapter.this.b.size());
                }
            });
        }
        this.f = false;
    }

    public void e() {
        if (getItemCount() > this.b.size()) {
            this.f = true;
            this.f6094a.d(this);
            notifyItemChanged(this.b.size());
            return;
        }
        this.f = true;
        this.f6094a.d(this);
        notifyItemInserted(this.b.size());
    }

    public void f() {
        a(true);
    }

    public void a(boolean z) {
        if (getItemCount() > this.b.size()) {
            this.f = false;
            if (z) {
                this.f6094a.c(this);
            }
            notifyItemRemoved(this.b.size());
            return;
        }
        this.f = false;
        if (z) {
            this.f6094a.c(this);
        }
    }

    public void a(List<T> list) {
        this.f6094a.b((EndlessRecyclerViewAdapter<?>) this);
        if (list == null || list.isEmpty()) {
            if (!this.b.isEmpty()) {
                notifyDataSetChanged();
            }
        } else if (this.b.isEmpty()) {
            this.b.addAll(list);
            notifyDataSetChanged();
        } else {
            this.b.addAll(list);
            notifyItemRangeInserted(this.b.size() + 1, list.size());
        }
    }

    public void g() {
        b(true);
    }

    public void b(boolean z) {
        this.f = false;
        if (z) {
            notifyDataSetChanged();
        }
    }
}
