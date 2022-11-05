package pl.jbzd.core.ui.adapter;

import android.content.Context;
import android.support.v4.view.aa;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import butterknife.ButterKnife;
import java.util.List;
/* compiled from: PagerAdapter.java */
/* loaded from: classes3.dex */
public abstract class a<T> extends aa {
    public final SparseArray<AbstractC0604a> b = new SparseArray<>();
    protected final Context c;
    protected final List<T> d;

    public abstract AbstractC0604a a(ViewGroup viewGroup, int i, int i2);

    /* compiled from: PagerAdapter.java */
    /* renamed from: pl.jbzd.core.ui.adapter.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC0604a<T> {
        public final View d;

        public abstract void a(T t, int i);

        public AbstractC0604a(View view) {
            this.d = view;
            ButterKnife.a(this, view);
        }
    }

    public a(Context context, List<T> list) {
        this.c = context;
        this.d = list;
    }

    public int a(int i) {
        return 0;
    }

    @Override // android.support.v4.view.aa
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        AbstractC0604a a2 = a(viewGroup, i, a(i));
        viewGroup.addView(a2.d, -1, -1);
        this.b.put(i, a2);
        a2.a((i < 0 || i >= this.d.size()) ? null : this.d.get(i), i);
        return a2.d;
    }

    @Override // android.support.v4.view.aa
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        this.b.remove(i);
        viewGroup.removeView((View) obj);
    }

    @Override // android.support.v4.view.aa
    public int getCount() {
        return this.d.size();
    }

    @Override // android.support.v4.view.aa
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public AbstractC0604a b(int i) {
        return this.b.get(i, null);
    }
}
