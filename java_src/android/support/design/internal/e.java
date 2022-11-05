package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.v4.view.ai;
import android.support.v4.view.bg;
import android.support.v7.view.menu.o;
import android.support.v7.view.menu.p;
import android.support.v7.view.menu.u;
import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
/* compiled from: NavigationMenuPresenter.java */
@RestrictTo
/* loaded from: classes.dex */
public class e implements o {

    /* renamed from: a  reason: collision with root package name */
    LinearLayout f32a;
    android.support.v7.view.menu.h b;
    b c;
    LayoutInflater d;
    int e;
    boolean f;
    ColorStateList g;
    ColorStateList h;
    Drawable i;
    int j;
    final View.OnClickListener k = new View.OnClickListener() { // from class: android.support.design.internal.e.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.b(true);
            android.support.v7.view.menu.j itemData = ((NavigationMenuItemView) view).getItemData();
            boolean a2 = e.this.b.a(itemData, e.this, 0);
            if (itemData != null && itemData.isCheckable() && a2) {
                e.this.c.a(itemData);
            }
            e.this.b(false);
            e.this.a(false);
        }
    };
    private NavigationMenuView l;
    private o.a m;
    private int n;
    private int o;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public interface d {
    }

    @Override // android.support.v7.view.menu.o
    public void a(Context context, android.support.v7.view.menu.h hVar) {
        this.d = LayoutInflater.from(context);
        this.b = hVar;
        this.j = context.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
    }

    public p a(ViewGroup viewGroup) {
        if (this.l == null) {
            this.l = (NavigationMenuView) this.d.inflate(R.layout.design_navigation_menu, viewGroup, false);
            if (this.c == null) {
                this.c = new b();
            }
            this.f32a = (LinearLayout) this.d.inflate(R.layout.design_navigation_item_header, (ViewGroup) this.l, false);
            this.l.setAdapter(this.c);
        }
        return this.l;
    }

    @Override // android.support.v7.view.menu.o
    public void a(boolean z) {
        if (this.c != null) {
            this.c.a();
        }
    }

    @Override // android.support.v7.view.menu.o
    public void a(o.a aVar) {
        this.m = aVar;
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(u uVar) {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public void a(android.support.v7.view.menu.h hVar, boolean z) {
        if (this.m != null) {
            this.m.a(hVar, z);
        }
    }

    @Override // android.support.v7.view.menu.o
    public boolean a() {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(android.support.v7.view.menu.h hVar, android.support.v7.view.menu.j jVar) {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public boolean b(android.support.v7.view.menu.h hVar, android.support.v7.view.menu.j jVar) {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public int b() {
        return this.n;
    }

    public void a(int i2) {
        this.n = i2;
    }

    @Override // android.support.v7.view.menu.o
    public Parcelable c() {
        if (Build.VERSION.SDK_INT >= 11) {
            Bundle bundle = new Bundle();
            if (this.l != null) {
                SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
                this.l.saveHierarchyState(sparseArray);
                bundle.putSparseParcelableArray("android:menu:list", sparseArray);
            }
            if (this.c != null) {
                bundle.putBundle("android:menu:adapter", this.c.b());
            }
            if (this.f32a != null) {
                SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
                this.f32a.saveHierarchyState(sparseArray2);
                bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
                return bundle;
            }
            return bundle;
        }
        return null;
    }

    @Override // android.support.v7.view.menu.o
    public void a(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.l.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                this.c.a(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray2 != null) {
                this.f32a.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    public void a(android.support.v7.view.menu.j jVar) {
        this.c.a(jVar);
    }

    public View b(int i2) {
        View inflate = this.d.inflate(i2, (ViewGroup) this.f32a, false);
        a(inflate);
        return inflate;
    }

    public void a(View view) {
        this.f32a.addView(view);
        this.l.setPadding(0, 0, 0, this.l.getPaddingBottom());
    }

    public int d() {
        return this.f32a.getChildCount();
    }

    public ColorStateList e() {
        return this.h;
    }

    public void a(ColorStateList colorStateList) {
        this.h = colorStateList;
        a(false);
    }

    public ColorStateList f() {
        return this.g;
    }

    public void b(ColorStateList colorStateList) {
        this.g = colorStateList;
        a(false);
    }

    public void c(int i2) {
        this.e = i2;
        this.f = true;
        a(false);
    }

    public Drawable g() {
        return this.i;
    }

    public void a(Drawable drawable) {
        this.i = drawable;
        a(false);
    }

    public void b(boolean z) {
        if (this.c != null) {
            this.c.a(z);
        }
    }

    public void a(bg bgVar) {
        int b2 = bgVar.b();
        if (this.o != b2) {
            this.o = b2;
            if (this.f32a.getChildCount() == 0) {
                this.l.setPadding(0, this.o, 0, this.l.getPaddingBottom());
            }
        }
        ai.b(this.f32a, bgVar);
    }

    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    private static abstract class j extends RecyclerView.u {
        public j(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public static class g extends j {
        public g(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(R.layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public static class i extends j {
        public i(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public static class h extends j {
        public h(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public static class a extends j {
        public a(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public class b extends RecyclerView.a<j> {
        private final ArrayList<d> b = new ArrayList<>();
        private android.support.v7.view.menu.j c;
        private boolean d;

        b() {
            c();
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public long getItemId(int i) {
            return i;
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public int getItemCount() {
            return this.b.size();
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public int getItemViewType(int i) {
            d dVar = this.b.get(i);
            if (dVar instanceof C0004e) {
                return 2;
            }
            if (dVar instanceof c) {
                return 3;
            }
            if (dVar instanceof f) {
                if (((f) dVar).a().hasSubMenu()) {
                    return 1;
                }
                return 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @Override // android.support.v7.widget.RecyclerView.a
        /* renamed from: a */
        public j onCreateViewHolder(ViewGroup viewGroup, int i) {
            switch (i) {
                case 0:
                    return new g(e.this.d, viewGroup, e.this.k);
                case 1:
                    return new i(e.this.d, viewGroup);
                case 2:
                    return new h(e.this.d, viewGroup);
                case 3:
                    return new a(e.this.f32a);
                default:
                    return null;
            }
        }

        @Override // android.support.v7.widget.RecyclerView.a
        /* renamed from: a */
        public void onBindViewHolder(j jVar, int i) {
            switch (getItemViewType(i)) {
                case 0:
                    NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) jVar.itemView;
                    navigationMenuItemView.setIconTintList(e.this.h);
                    if (e.this.f) {
                        navigationMenuItemView.setTextAppearance(e.this.e);
                    }
                    if (e.this.g != null) {
                        navigationMenuItemView.setTextColor(e.this.g);
                    }
                    ai.a(navigationMenuItemView, e.this.i != null ? e.this.i.getConstantState().newDrawable() : null);
                    f fVar = (f) this.b.get(i);
                    navigationMenuItemView.setNeedsEmptyIcon(fVar.f36a);
                    navigationMenuItemView.a(fVar.a(), 0);
                    return;
                case 1:
                    ((TextView) jVar.itemView).setText(((f) this.b.get(i)).a().getTitle());
                    return;
                case 2:
                    C0004e c0004e = (C0004e) this.b.get(i);
                    jVar.itemView.setPadding(0, c0004e.a(), 0, c0004e.b());
                    return;
                default:
                    return;
            }
        }

        @Override // android.support.v7.widget.RecyclerView.a
        /* renamed from: a */
        public void onViewRecycled(j jVar) {
            if (jVar instanceof g) {
                ((NavigationMenuItemView) jVar.itemView).b();
            }
        }

        public void a() {
            c();
            notifyDataSetChanged();
        }

        private void c() {
            boolean z;
            int i;
            int i2;
            if (!this.d) {
                this.d = true;
                this.b.clear();
                this.b.add(new c());
                int i3 = -1;
                int i4 = 0;
                boolean z2 = false;
                int size = e.this.b.i().size();
                int i5 = 0;
                while (i5 < size) {
                    android.support.v7.view.menu.j jVar = e.this.b.i().get(i5);
                    if (jVar.isChecked()) {
                        a(jVar);
                    }
                    if (jVar.isCheckable()) {
                        jVar.a(false);
                    }
                    if (jVar.hasSubMenu()) {
                        SubMenu subMenu = jVar.getSubMenu();
                        if (subMenu.hasVisibleItems()) {
                            if (i5 != 0) {
                                this.b.add(new C0004e(e.this.j, 0));
                            }
                            this.b.add(new f(jVar));
                            boolean z3 = false;
                            int size2 = this.b.size();
                            int size3 = subMenu.size();
                            for (int i6 = 0; i6 < size3; i6++) {
                                android.support.v7.view.menu.j jVar2 = (android.support.v7.view.menu.j) subMenu.getItem(i6);
                                if (jVar2.isVisible()) {
                                    if (!z3 && jVar2.getIcon() != null) {
                                        z3 = true;
                                    }
                                    if (jVar2.isCheckable()) {
                                        jVar2.a(false);
                                    }
                                    if (jVar.isChecked()) {
                                        a(jVar);
                                    }
                                    this.b.add(new f(jVar2));
                                }
                            }
                            if (z3) {
                                a(size2, this.b.size());
                            }
                        }
                        i2 = i3;
                    } else {
                        int groupId = jVar.getGroupId();
                        if (groupId != i3) {
                            i = this.b.size();
                            z = jVar.getIcon() != null;
                            if (i5 != 0) {
                                i++;
                                this.b.add(new C0004e(e.this.j, e.this.j));
                            }
                        } else if (z2 || jVar.getIcon() == null) {
                            z = z2;
                            i = i4;
                        } else {
                            z = true;
                            a(i4, this.b.size());
                            i = i4;
                        }
                        f fVar = new f(jVar);
                        fVar.f36a = z;
                        this.b.add(fVar);
                        z2 = z;
                        i4 = i;
                        i2 = groupId;
                    }
                    i5++;
                    i3 = i2;
                }
                this.d = false;
            }
        }

        private void a(int i, int i2) {
            while (i < i2) {
                ((f) this.b.get(i)).f36a = true;
                i++;
            }
        }

        public void a(android.support.v7.view.menu.j jVar) {
            if (this.c != jVar && jVar.isCheckable()) {
                if (this.c != null) {
                    this.c.setChecked(false);
                }
                this.c = jVar;
                jVar.setChecked(true);
            }
        }

        public Bundle b() {
            Bundle bundle = new Bundle();
            if (this.c != null) {
                bundle.putInt("android:menu:checked", this.c.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                d dVar = this.b.get(i);
                if (dVar instanceof f) {
                    android.support.v7.view.menu.j a2 = ((f) dVar).a();
                    View actionView = a2 != null ? a2.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(a2.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }

        public void a(Bundle bundle) {
            android.support.v7.view.menu.j a2;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            android.support.v7.view.menu.j a3;
            int i = bundle.getInt("android:menu:checked", 0);
            if (i != 0) {
                this.d = true;
                int size = this.b.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    d dVar = this.b.get(i2);
                    if (!(dVar instanceof f) || (a3 = ((f) dVar).a()) == null || a3.getItemId() != i) {
                        i2++;
                    } else {
                        a(a3);
                        break;
                    }
                }
                this.d = false;
                c();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:action_views");
            if (sparseParcelableArray != null) {
                int size2 = this.b.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    d dVar2 = this.b.get(i3);
                    if ((dVar2 instanceof f) && (a2 = ((f) dVar2).a()) != null && (actionView = a2.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(a2.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        public void a(boolean z) {
            this.d = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public static class f implements d {

        /* renamed from: a  reason: collision with root package name */
        boolean f36a;
        private final android.support.v7.view.menu.j b;

        f(android.support.v7.view.menu.j jVar) {
            this.b = jVar;
        }

        public android.support.v7.view.menu.j a() {
            return this.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* renamed from: android.support.design.internal.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0004e implements d {

        /* renamed from: a  reason: collision with root package name */
        private final int f35a;
        private final int b;

        public C0004e(int i, int i2) {
            this.f35a = i;
            this.b = i2;
        }

        public int a() {
            return this.f35a;
        }

        public int b() {
            return this.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public static class c implements d {
        c() {
        }
    }
}
