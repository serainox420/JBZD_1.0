package pl.jbzd.core.ui.view.lce;

import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.StaggeredGridLayoutManager;
/* compiled from: LayoutManagerWrapper.java */
/* loaded from: classes3.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final RecyclerView.h f6117a;

    public b(RecyclerView.h hVar) {
        this.f6117a = hVar;
    }

    @Override // pl.jbzd.core.ui.view.lce.a
    public int a() {
        if (this.f6117a instanceof StaggeredGridLayoutManager) {
            int[] b = ((StaggeredGridLayoutManager) this.f6117a).b((int[]) null);
            int i = b[0];
            for (int i2 = 1; i2 < b.length; i2++) {
                if (i < b[i2]) {
                    i = b[i2];
                }
            }
            return i;
        } else if (this.f6117a instanceof GridLayoutManager) {
            return ((GridLayoutManager) this.f6117a).findLastVisibleItemPosition();
        } else {
            if (!(this.f6117a instanceof LinearLayoutManager)) {
                return 0;
            }
            return ((LinearLayoutManager) this.f6117a).findLastVisibleItemPosition();
        }
    }

    @Override // pl.jbzd.core.ui.view.lce.a
    public int b() {
        if (this.f6117a instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) this.f6117a).c();
        }
        if (this.f6117a instanceof GridLayoutManager) {
            return ((GridLayoutManager) this.f6117a).a();
        }
        return 1;
    }
}
