package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
/* compiled from: FragmentStatePagerAdapter.java */
/* loaded from: classes.dex */
public abstract class x extends android.support.v4.view.aa {

    /* renamed from: a  reason: collision with root package name */
    private final u f271a;
    private y b = null;
    private ArrayList<Fragment.SavedState> c = new ArrayList<>();
    private ArrayList<Fragment> d = new ArrayList<>();
    private Fragment e = null;

    public abstract Fragment a(int i);

    public x(u uVar) {
        this.f271a = uVar;
    }

    @Override // android.support.v4.view.aa
    public void startUpdate(ViewGroup viewGroup) {
        if (viewGroup.getId() == -1) {
            throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
        }
    }

    @Override // android.support.v4.view.aa
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.d.size() <= i || (fragment = this.d.get(i)) == null) {
            if (this.b == null) {
                this.b = this.f271a.a();
            }
            Fragment a2 = a(i);
            if (this.c.size() > i && (savedState = this.c.get(i)) != null) {
                a2.setInitialSavedState(savedState);
            }
            while (this.d.size() <= i) {
                this.d.add(null);
            }
            a2.setMenuVisibility(false);
            a2.setUserVisibleHint(false);
            this.d.set(i, a2);
            this.b.a(viewGroup.getId(), a2);
            return a2;
        }
        return fragment;
    }

    @Override // android.support.v4.view.aa
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.b == null) {
            this.b = this.f271a.a();
        }
        while (this.c.size() <= i) {
            this.c.add(null);
        }
        this.c.set(i, fragment.isAdded() ? this.f271a.a(fragment) : null);
        this.d.set(i, null);
        this.b.a(fragment);
    }

    @Override // android.support.v4.view.aa
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (fragment != this.e) {
            if (this.e != null) {
                this.e.setMenuVisibility(false);
                this.e.setUserVisibleHint(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            this.e = fragment;
        }
    }

    @Override // android.support.v4.view.aa
    public void finishUpdate(ViewGroup viewGroup) {
        if (this.b != null) {
            this.b.d();
            this.b = null;
        }
    }

    @Override // android.support.v4.view.aa
    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // android.support.v4.view.aa
    public Parcelable saveState() {
        Bundle bundle = null;
        if (this.c.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[this.c.size()];
            this.c.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        }
        Bundle bundle2 = bundle;
        for (int i = 0; i < this.d.size(); i++) {
            Fragment fragment = this.d.get(i);
            if (fragment != null && fragment.isAdded()) {
                if (bundle2 == null) {
                    bundle2 = new Bundle();
                }
                this.f271a.a(bundle2, "f" + i, fragment);
            }
        }
        return bundle2;
    }

    @Override // android.support.v4.view.aa
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.c.clear();
            this.d.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.c.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    Fragment a2 = this.f271a.a(bundle, str);
                    if (a2 != null) {
                        while (this.d.size() <= parseInt) {
                            this.d.add(null);
                        }
                        a2.setMenuVisibility(false);
                        this.d.set(parseInt, a2);
                    } else {
                        Log.w("FragmentStatePagerAdapter", "Bad fragment at key " + str);
                    }
                }
            }
        }
    }
}
