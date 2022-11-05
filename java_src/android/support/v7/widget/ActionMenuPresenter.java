package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.d;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.o;
import android.support.v7.view.menu.p;
import android.support.v7.widget.ActionMenuView;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ActionMenuPresenter extends android.support.v7.view.menu.b implements d.a {
    private b A;
    d g;
    e h;
    a i;
    c j;
    final f k;
    int l;
    private Drawable m;
    private boolean n;
    private boolean o;
    private boolean p;
    private int q;
    private int r;
    private int s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private int x;
    private final SparseBooleanArray y;
    private View z;

    public ActionMenuPresenter(Context context) {
        super(context, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
        this.y = new SparseBooleanArray();
        this.k = new f();
    }

    @Override // android.support.v7.view.menu.b, android.support.v7.view.menu.o
    public void a(Context context, android.support.v7.view.menu.h hVar) {
        super.a(context, hVar);
        Resources resources = context.getResources();
        android.support.v7.view.a a2 = android.support.v7.view.a.a(context);
        if (!this.p) {
            this.o = a2.b();
        }
        if (!this.v) {
            this.q = a2.c();
        }
        if (!this.t) {
            this.s = a2.a();
        }
        int i = this.q;
        if (this.o) {
            if (this.g == null) {
                this.g = new d(this.f709a);
                if (this.n) {
                    this.g.setImageDrawable(this.m);
                    this.m = null;
                    this.n = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.g.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.g.getMeasuredWidth();
        } else {
            this.g = null;
        }
        this.r = i;
        this.x = (int) (56.0f * resources.getDisplayMetrics().density);
        this.z = null;
    }

    public void a(Configuration configuration) {
        if (!this.t) {
            this.s = android.support.v7.view.a.a(this.b).a();
        }
        if (this.c != null) {
            this.c.a(true);
        }
    }

    public void c(boolean z) {
        this.o = z;
        this.p = true;
    }

    public void d(boolean z) {
        this.w = z;
    }

    public void a(Drawable drawable) {
        if (this.g != null) {
            this.g.setImageDrawable(drawable);
            return;
        }
        this.n = true;
        this.m = drawable;
    }

    public Drawable e() {
        if (this.g != null) {
            return this.g.getDrawable();
        }
        if (this.n) {
            return this.m;
        }
        return null;
    }

    @Override // android.support.v7.view.menu.b
    public android.support.v7.view.menu.p a(ViewGroup viewGroup) {
        android.support.v7.view.menu.p pVar = this.f;
        android.support.v7.view.menu.p a2 = super.a(viewGroup);
        if (pVar != a2) {
            ((ActionMenuView) a2).setPresenter(this);
        }
        return a2;
    }

    @Override // android.support.v7.view.menu.b
    public View a(android.support.v7.view.menu.j jVar, View view, ViewGroup viewGroup) {
        View actionView = jVar.getActionView();
        if (actionView == null || jVar.n()) {
            actionView = super.a(jVar, view, viewGroup);
        }
        actionView.setVisibility(jVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // android.support.v7.view.menu.b
    public void a(android.support.v7.view.menu.j jVar, p.a aVar) {
        aVar.a(jVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f);
        if (this.A == null) {
            this.A = new b();
        }
        actionMenuItemView.setPopupCallback(this.A);
    }

    @Override // android.support.v7.view.menu.b
    public boolean a(int i, android.support.v7.view.menu.j jVar) {
        return jVar.j();
    }

    @Override // android.support.v7.view.menu.b, android.support.v7.view.menu.o
    public void a(boolean z) {
        boolean z2 = true;
        boolean z3 = false;
        ViewGroup viewGroup = (ViewGroup) ((View) this.f).getParent();
        if (viewGroup != null) {
            android.support.v7.d.a.a(viewGroup);
        }
        super.a(z);
        ((View) this.f).requestLayout();
        if (this.c != null) {
            ArrayList<android.support.v7.view.menu.j> k = this.c.k();
            int size = k.size();
            for (int i = 0; i < size; i++) {
                android.support.v4.view.d a2 = k.get(i).a();
                if (a2 != null) {
                    a2.a(this);
                }
            }
        }
        ArrayList<android.support.v7.view.menu.j> l = this.c != null ? this.c.l() : null;
        if (this.o && l != null) {
            int size2 = l.size();
            if (size2 == 1) {
                z3 = !l.get(0).isActionViewExpanded();
            } else {
                if (size2 <= 0) {
                    z2 = false;
                }
                z3 = z2;
            }
        }
        if (z3) {
            if (this.g == null) {
                this.g = new d(this.f709a);
            }
            ViewGroup viewGroup2 = (ViewGroup) this.g.getParent();
            if (viewGroup2 != this.f) {
                if (viewGroup2 != null) {
                    viewGroup2.removeView(this.g);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f;
                actionMenuView.addView(this.g, actionMenuView.c());
            }
        } else if (this.g != null && this.g.getParent() == this.f) {
            ((ViewGroup) this.f).removeView(this.g);
        }
        ((ActionMenuView) this.f).setOverflowReserved(this.o);
    }

    @Override // android.support.v7.view.menu.b
    public boolean a(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.g) {
            return false;
        }
        return super.a(viewGroup, i);
    }

    @Override // android.support.v7.view.menu.b, android.support.v7.view.menu.o
    public boolean a(android.support.v7.view.menu.u uVar) {
        boolean z;
        if (!uVar.hasVisibleItems()) {
            return false;
        }
        android.support.v7.view.menu.u uVar2 = uVar;
        while (uVar2.s() != this.c) {
            uVar2 = (android.support.v7.view.menu.u) uVar2.s();
        }
        View a2 = a(uVar2.getItem());
        if (a2 == null) {
            return false;
        }
        this.l = uVar.getItem().getItemId();
        int size = uVar.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            }
            MenuItem item = uVar.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        this.i = new a(this.b, uVar, a2);
        this.i.a(z);
        this.i.a();
        super.a(uVar);
        return true;
    }

    private View a(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof p.a) && ((p.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public boolean f() {
        if (!this.o || j() || this.c == null || this.f == null || this.j != null || this.c.l().isEmpty()) {
            return false;
        }
        this.j = new c(new e(this.b, this.c, this.g, true));
        ((View) this.f).post(this.j);
        super.a((android.support.v7.view.menu.u) null);
        return true;
    }

    public boolean g() {
        if (this.j != null && this.f != null) {
            ((View) this.f).removeCallbacks(this.j);
            this.j = null;
            return true;
        }
        e eVar = this.h;
        if (eVar != null) {
            eVar.d();
            return true;
        }
        return false;
    }

    public boolean h() {
        return g() | i();
    }

    public boolean i() {
        if (this.i != null) {
            this.i.d();
            return true;
        }
        return false;
    }

    public boolean j() {
        return this.h != null && this.h.f();
    }

    public boolean k() {
        return this.j != null || j();
    }

    @Override // android.support.v7.view.menu.b, android.support.v7.view.menu.o
    public boolean a() {
        int i;
        ArrayList<android.support.v7.view.menu.j> arrayList;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z2;
        if (this.c != null) {
            ArrayList<android.support.v7.view.menu.j> i10 = this.c.i();
            i = i10.size();
            arrayList = i10;
        } else {
            i = 0;
            arrayList = null;
        }
        int i11 = this.s;
        int i12 = this.r;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.f;
        int i13 = 0;
        int i14 = 0;
        boolean z3 = false;
        int i15 = 0;
        while (i15 < i) {
            android.support.v7.view.menu.j jVar = arrayList.get(i15);
            if (jVar.l()) {
                i13++;
            } else if (jVar.k()) {
                i14++;
            } else {
                z3 = true;
            }
            i15++;
            i11 = (!this.w || !jVar.isActionViewExpanded()) ? i11 : 0;
        }
        if (this.o && (z3 || i13 + i14 > i11)) {
            i11--;
        }
        int i16 = i11 - i13;
        SparseBooleanArray sparseBooleanArray = this.y;
        sparseBooleanArray.clear();
        int i17 = 0;
        if (!this.u) {
            i2 = 0;
        } else {
            i17 = i12 / this.x;
            i2 = ((i12 % this.x) / i17) + this.x;
        }
        int i18 = 0;
        int i19 = 0;
        int i20 = i17;
        while (i18 < i) {
            android.support.v7.view.menu.j jVar2 = arrayList.get(i18);
            if (jVar2.l()) {
                View a2 = a(jVar2, this.z, viewGroup);
                if (this.z == null) {
                    this.z = a2;
                }
                if (this.u) {
                    i20 -= ActionMenuView.a(a2, i2, i20, makeMeasureSpec, 0);
                } else {
                    a2.measure(makeMeasureSpec, makeMeasureSpec);
                }
                i3 = a2.getMeasuredWidth();
                int i21 = i12 - i3;
                if (i19 != 0) {
                    i3 = i19;
                }
                int groupId = jVar2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                jVar2.d(true);
                i4 = i21;
                i5 = i16;
            } else if (jVar2.k()) {
                int groupId2 = jVar2.getGroupId();
                boolean z4 = sparseBooleanArray.get(groupId2);
                boolean z5 = (i16 > 0 || z4) && i12 > 0 && (!this.u || i20 > 0);
                if (z5) {
                    View a3 = a(jVar2, this.z, viewGroup);
                    if (this.z == null) {
                        this.z = a3;
                    }
                    if (this.u) {
                        int a4 = ActionMenuView.a(a3, i2, i20, makeMeasureSpec, 0);
                        int i22 = i20 - a4;
                        z2 = a4 == 0 ? false : z5;
                        i9 = i22;
                    } else {
                        a3.measure(makeMeasureSpec, makeMeasureSpec);
                        boolean z6 = z5;
                        i9 = i20;
                        z2 = z6;
                    }
                    int measuredWidth = a3.getMeasuredWidth();
                    i12 -= measuredWidth;
                    if (i19 == 0) {
                        i19 = measuredWidth;
                    }
                    if (this.u) {
                        z = z2 & (i12 >= 0);
                        i6 = i19;
                        i7 = i9;
                    } else {
                        z = z2 & (i12 + i19 > 0);
                        i6 = i19;
                        i7 = i9;
                    }
                } else {
                    z = z5;
                    i6 = i19;
                    i7 = i20;
                }
                if (z && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                    i8 = i16;
                } else if (z4) {
                    sparseBooleanArray.put(groupId2, false);
                    int i23 = i16;
                    for (int i24 = 0; i24 < i18; i24++) {
                        android.support.v7.view.menu.j jVar3 = arrayList.get(i24);
                        if (jVar3.getGroupId() == groupId2) {
                            if (jVar3.j()) {
                                i23++;
                            }
                            jVar3.d(false);
                        }
                    }
                    i8 = i23;
                } else {
                    i8 = i16;
                }
                if (z) {
                    i8--;
                }
                jVar2.d(z);
                i3 = i6;
                i4 = i12;
                int i25 = i7;
                i5 = i8;
                i20 = i25;
            } else {
                jVar2.d(false);
                i3 = i19;
                i4 = i12;
                i5 = i16;
            }
            i18++;
            i12 = i4;
            i16 = i5;
            i19 = i3;
        }
        return true;
    }

    @Override // android.support.v7.view.menu.b, android.support.v7.view.menu.o
    public void a(android.support.v7.view.menu.h hVar, boolean z) {
        h();
        super.a(hVar, z);
    }

    @Override // android.support.v7.view.menu.o
    public Parcelable c() {
        SavedState savedState = new SavedState();
        savedState.f738a = this.l;
        return savedState;
    }

    @Override // android.support.v7.view.menu.o
    public void a(Parcelable parcelable) {
        MenuItem findItem;
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            if (savedState.f738a > 0 && (findItem = this.c.findItem(savedState.f738a)) != null) {
                a((android.support.v7.view.menu.u) findItem.getSubMenu());
            }
        }
    }

    @Override // android.support.v4.view.d.a
    public void b(boolean z) {
        if (z) {
            super.a((android.support.v7.view.menu.u) null);
        } else if (this.c != null) {
            this.c.b(false);
        }
    }

    public void a(ActionMenuView actionMenuView) {
        this.f = actionMenuView;
        actionMenuView.a(this.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v7.widget.ActionMenuPresenter.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public int f738a;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f738a = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f738a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d extends AppCompatImageView implements ActionMenuView.a {
        private final float[] b;

        public d(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            this.b = new float[2];
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            setOnTouchListener(new z(this) { // from class: android.support.v7.widget.ActionMenuPresenter.d.1
                @Override // android.support.v7.widget.z
                public android.support.v7.view.menu.s a() {
                    if (ActionMenuPresenter.this.h == null) {
                        return null;
                    }
                    return ActionMenuPresenter.this.h.b();
                }

                @Override // android.support.v7.widget.z
                public boolean b() {
                    ActionMenuPresenter.this.f();
                    return true;
                }

                @Override // android.support.v7.widget.z
                public boolean c() {
                    if (ActionMenuPresenter.this.j != null) {
                        return false;
                    }
                    ActionMenuPresenter.this.g();
                    return true;
                }
            });
        }

        @Override // android.view.View
        public boolean performClick() {
            if (!super.performClick()) {
                playSoundEffect(0);
                ActionMenuPresenter.this.f();
            }
            return true;
        }

        @Override // android.support.v7.widget.ActionMenuView.a
        public boolean c() {
            return false;
        }

        @Override // android.support.v7.widget.ActionMenuView.a
        public boolean d() {
            return false;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                android.support.v4.b.a.a.a(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class e extends android.support.v7.view.menu.n {
        public e(Context context, android.support.v7.view.menu.h hVar, View view, boolean z) {
            super(context, hVar, view, z, R.attr.actionOverflowMenuStyle);
            a(8388613);
            a(ActionMenuPresenter.this.k);
        }

        @Override // android.support.v7.view.menu.n
        protected void e() {
            if (ActionMenuPresenter.this.c != null) {
                ActionMenuPresenter.this.c.close();
            }
            ActionMenuPresenter.this.h = null;
            super.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends android.support.v7.view.menu.n {
        public a(Context context, android.support.v7.view.menu.u uVar, View view) {
            super(context, uVar, view, false, R.attr.actionOverflowMenuStyle);
            View view2;
            if (!((android.support.v7.view.menu.j) uVar.getItem()).j()) {
                if (ActionMenuPresenter.this.g == null) {
                    view2 = (View) ActionMenuPresenter.this.f;
                } else {
                    view2 = ActionMenuPresenter.this.g;
                }
                a(view2);
            }
            a(ActionMenuPresenter.this.k);
        }

        @Override // android.support.v7.view.menu.n
        protected void e() {
            ActionMenuPresenter.this.i = null;
            ActionMenuPresenter.this.l = 0;
            super.e();
        }
    }

    /* loaded from: classes.dex */
    private class f implements o.a {
        f() {
        }

        @Override // android.support.v7.view.menu.o.a
        public boolean a(android.support.v7.view.menu.h hVar) {
            if (hVar == null) {
                return false;
            }
            ActionMenuPresenter.this.l = ((android.support.v7.view.menu.u) hVar).getItem().getItemId();
            o.a d = ActionMenuPresenter.this.d();
            return d != null ? d.a(hVar) : false;
        }

        @Override // android.support.v7.view.menu.o.a
        public void a(android.support.v7.view.menu.h hVar, boolean z) {
            if (hVar instanceof android.support.v7.view.menu.u) {
                hVar.p().b(false);
            }
            o.a d = ActionMenuPresenter.this.d();
            if (d != null) {
                d.a(hVar, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c implements Runnable {
        private e b;

        public c(e eVar) {
            this.b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ActionMenuPresenter.this.c != null) {
                ActionMenuPresenter.this.c.f();
            }
            View view = (View) ActionMenuPresenter.this.f;
            if (view != null && view.getWindowToken() != null && this.b.c()) {
                ActionMenuPresenter.this.h = this.b;
            }
            ActionMenuPresenter.this.j = null;
        }
    }

    /* loaded from: classes.dex */
    private class b extends ActionMenuItemView.b {
        b() {
        }

        @Override // android.support.v7.view.menu.ActionMenuItemView.b
        public android.support.v7.view.menu.s a() {
            if (ActionMenuPresenter.this.i != null) {
                return ActionMenuPresenter.this.i.b();
            }
            return null;
        }
    }
}
