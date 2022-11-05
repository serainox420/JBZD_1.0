package android.support.v7.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.o;
import android.support.v7.view.menu.p;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import java.util.ArrayList;
/* compiled from: ListMenuPresenter.java */
@RestrictTo
/* loaded from: classes.dex */
public class f implements o, AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    Context f716a;
    LayoutInflater b;
    h c;
    ExpandedMenuView d;
    int e;
    int f;
    int g;
    a h;
    private o.a i;
    private int j;

    public f(Context context, int i) {
        this(i, 0);
        this.f716a = context;
        this.b = LayoutInflater.from(this.f716a);
    }

    public f(int i, int i2) {
        this.g = i;
        this.f = i2;
    }

    @Override // android.support.v7.view.menu.o
    public void a(Context context, h hVar) {
        if (this.f != 0) {
            this.f716a = new ContextThemeWrapper(context, this.f);
            this.b = LayoutInflater.from(this.f716a);
        } else if (this.f716a != null) {
            this.f716a = context;
            if (this.b == null) {
                this.b = LayoutInflater.from(this.f716a);
            }
        }
        this.c = hVar;
        if (this.h != null) {
            this.h.notifyDataSetChanged();
        }
    }

    public p a(ViewGroup viewGroup) {
        if (this.d == null) {
            this.d = (ExpandedMenuView) this.b.inflate(R.layout.abc_expanded_menu_layout, viewGroup, false);
            if (this.h == null) {
                this.h = new a();
            }
            this.d.setAdapter((ListAdapter) this.h);
            this.d.setOnItemClickListener(this);
        }
        return this.d;
    }

    public ListAdapter d() {
        if (this.h == null) {
            this.h = new a();
        }
        return this.h;
    }

    @Override // android.support.v7.view.menu.o
    public void a(boolean z) {
        if (this.h != null) {
            this.h.notifyDataSetChanged();
        }
    }

    @Override // android.support.v7.view.menu.o
    public void a(o.a aVar) {
        this.i = aVar;
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(u uVar) {
        if (!uVar.hasVisibleItems()) {
            return false;
        }
        new i(uVar).a((IBinder) null);
        if (this.i != null) {
            this.i.a(uVar);
        }
        return true;
    }

    @Override // android.support.v7.view.menu.o
    public void a(h hVar, boolean z) {
        if (this.i != null) {
            this.i.a(hVar, z);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.c.a(this.h.getItem(i), this, 0);
    }

    @Override // android.support.v7.view.menu.o
    public boolean a() {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(h hVar, j jVar) {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public boolean b(h hVar, j jVar) {
        return false;
    }

    public void a(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        if (this.d != null) {
            this.d.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    public void b(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // android.support.v7.view.menu.o
    public int b() {
        return this.j;
    }

    @Override // android.support.v7.view.menu.o
    public Parcelable c() {
        if (this.d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        a(bundle);
        return bundle;
    }

    @Override // android.support.v7.view.menu.o
    public void a(Parcelable parcelable) {
        b((Bundle) parcelable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ListMenuPresenter.java */
    /* loaded from: classes.dex */
    public class a extends BaseAdapter {
        private int b = -1;

        public a() {
            a();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = f.this.c.l().size() - f.this.e;
            return this.b < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        /* renamed from: a */
        public j getItem(int i) {
            ArrayList<j> l = f.this.c.l();
            int i2 = f.this.e + i;
            if (this.b >= 0 && i2 >= this.b) {
                i2++;
            }
            return l.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = view == null ? f.this.b.inflate(f.this.g, viewGroup, false) : view;
            ((p.a) inflate).a(getItem(i), 0);
            return inflate;
        }

        void a() {
            j r = f.this.c.r();
            if (r != null) {
                ArrayList<j> l = f.this.c.l();
                int size = l.size();
                for (int i = 0; i < size; i++) {
                    if (l.get(i) == r) {
                        this.b = i;
                        return;
                    }
                }
            }
            this.b = -1;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }
}
