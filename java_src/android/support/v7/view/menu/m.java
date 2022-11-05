package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MenuPopup.java */
/* loaded from: classes.dex */
public abstract class m implements o, s, AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Rect f727a;

    public abstract void a(int i);

    public abstract void a(h hVar);

    public abstract void a(View view);

    public abstract void a(PopupWindow.OnDismissListener onDismissListener);

    public abstract void b(int i);

    public abstract void b(boolean z);

    public abstract void c(int i);

    public abstract void c(boolean z);

    public void a(Rect rect) {
        this.f727a = rect;
    }

    public Rect i() {
        return this.f727a;
    }

    @Override // android.support.v7.view.menu.o
    public void a(Context context, h hVar) {
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(h hVar, j jVar) {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public boolean b(h hVar, j jVar) {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public int b() {
        return 0;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        a(listAdapter).b.a((MenuItem) listAdapter.getItem(i), this, h() ? 0 : 4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int a(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i2 = 0;
        int i3 = 0;
        View view = null;
        int i4 = 0;
        ViewGroup viewGroup2 = viewGroup;
        while (i2 < count) {
            int itemViewType = listAdapter.getItemViewType(i2);
            if (itemViewType != i3) {
                i3 = itemViewType;
                view = null;
            }
            FrameLayout frameLayout = viewGroup2 == null ? new FrameLayout(context) : viewGroup2;
            view = listAdapter.getView(i2, view, frameLayout);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth < i) {
                if (measuredWidth <= i4) {
                    measuredWidth = i4;
                }
                i2++;
                i4 = measuredWidth;
                viewGroup2 = frameLayout;
            } else {
                return i;
            }
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static g a(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (g) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (g) listAdapter;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean b(h hVar) {
        int size = hVar.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = hVar.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    protected boolean h() {
        return true;
    }
}
