package pl.jbzd.app.view.feed;

import android.support.v4.app.Fragment;
import android.support.v4.app.u;
import android.support.v4.app.x;
import android.util.SparseArray;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
/* compiled from: SmartFragmentStatePagerAdapter.java */
/* loaded from: classes3.dex */
abstract class b<T extends Fragment> extends x {

    /* renamed from: a  reason: collision with root package name */
    private SparseArray<WeakReference<T>> f6025a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(u uVar) {
        super(uVar);
        this.f6025a = new SparseArray<>();
    }

    @Override // android.support.v4.app.x, android.support.v4.view.aa
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragment = (Fragment) super.instantiateItem(viewGroup, i);
        this.f6025a.put(i, new WeakReference<>(fragment));
        return fragment;
    }

    @Override // android.support.v4.app.x, android.support.v4.view.aa
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        this.f6025a.remove(i);
        super.destroyItem(viewGroup, i, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T b(int i) {
        WeakReference<T> weakReference = this.f6025a.get(i, null);
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return weakReference.get();
    }
}
