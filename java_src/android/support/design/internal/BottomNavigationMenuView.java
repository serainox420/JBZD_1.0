package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.v4.f.j;
import android.support.v4.view.ai;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.p;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
@RestrictTo
/* loaded from: classes.dex */
public class BottomNavigationMenuView extends ViewGroup implements p {

    /* renamed from: a  reason: collision with root package name */
    private final int f22a;
    private final int b;
    private final int c;
    private final int d;
    private final View.OnClickListener e;
    private final a f;
    private final j.a<BottomNavigationItemView> g;
    private boolean h;
    private BottomNavigationItemView[] i;
    private int j;
    private int k;
    private ColorStateList l;
    private ColorStateList m;
    private int n;
    private int[] o;
    private BottomNavigationPresenter p;
    private h q;

    public BottomNavigationMenuView(Context context) {
        this(context, null);
    }

    public BottomNavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = new j.c(5);
        this.h = true;
        this.j = 0;
        this.k = 0;
        Resources resources = getResources();
        this.f22a = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
        this.b = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
        this.c = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
        this.d = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_height);
        if (Build.VERSION.SDK_INT >= 14) {
            this.f = new b();
        } else {
            this.f = new a();
        }
        this.e = new View.OnClickListener() { // from class: android.support.design.internal.BottomNavigationMenuView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                android.support.v7.view.menu.j itemData = ((BottomNavigationItemView) view).getItemData();
                if (!BottomNavigationMenuView.this.q.a(itemData, BottomNavigationMenuView.this.p, 0)) {
                    itemData.setChecked(true);
                }
            }
        };
        this.o = new int[5];
    }

    @Override // android.support.v7.view.menu.p
    public void a(h hVar) {
        this.q = hVar;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int size = View.MeasureSpec.getSize(i);
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.d, 1073741824);
        if (this.h) {
            int i4 = childCount - 1;
            int min = Math.min(size - (this.b * i4), this.c);
            int min2 = Math.min((size - min) / i4, this.f22a);
            int i5 = (size - min) - (i4 * min2);
            int i6 = 0;
            while (i6 < childCount) {
                this.o[i6] = i6 == this.k ? min : min2;
                if (i5 > 0) {
                    int[] iArr = this.o;
                    iArr[i6] = iArr[i6] + 1;
                    i3 = i5 - 1;
                } else {
                    i3 = i5;
                }
                i6++;
                i5 = i3;
            }
        } else {
            int min3 = Math.min(size / (childCount == 0 ? 1 : childCount), this.c);
            int i7 = size - (min3 * childCount);
            for (int i8 = 0; i8 < childCount; i8++) {
                this.o[i8] = min3;
                if (i7 > 0) {
                    int[] iArr2 = this.o;
                    iArr2[i8] = iArr2[i8] + 1;
                    i7--;
                }
            }
        }
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.o[i10], 1073741824), makeMeasureSpec);
                childAt.getLayoutParams().width = childAt.getMeasuredWidth();
                i9 += childAt.getMeasuredWidth();
            }
        }
        setMeasuredDimension(ai.a(i9, View.MeasureSpec.makeMeasureSpec(i9, 1073741824), 0), ai.a(this.d, makeMeasureSpec, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                if (ai.g(this) == 1) {
                    childAt.layout((i5 - i7) - childAt.getMeasuredWidth(), 0, i5 - i7, i6);
                } else {
                    childAt.layout(i7, 0, childAt.getMeasuredWidth() + i7, i6);
                }
                i7 += childAt.getMeasuredWidth();
            }
        }
    }

    public int getWindowAnimations() {
        return 0;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.l = colorStateList;
        if (this.i != null) {
            for (BottomNavigationItemView bottomNavigationItemView : this.i) {
                bottomNavigationItemView.setIconTintList(colorStateList);
            }
        }
    }

    public ColorStateList getIconTintList() {
        return this.l;
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.m = colorStateList;
        if (this.i != null) {
            for (BottomNavigationItemView bottomNavigationItemView : this.i) {
                bottomNavigationItemView.setTextColor(colorStateList);
            }
        }
    }

    public ColorStateList getItemTextColor() {
        return this.m;
    }

    public void setItemBackgroundRes(int i) {
        this.n = i;
        if (this.i != null) {
            for (BottomNavigationItemView bottomNavigationItemView : this.i) {
                bottomNavigationItemView.setItemBackground(i);
            }
        }
    }

    public int getItemBackgroundRes() {
        return this.n;
    }

    public void setPresenter(BottomNavigationPresenter bottomNavigationPresenter) {
        this.p = bottomNavigationPresenter;
    }

    public void a() {
        removeAllViews();
        if (this.i != null) {
            for (BottomNavigationItemView bottomNavigationItemView : this.i) {
                this.g.a(bottomNavigationItemView);
            }
        }
        if (this.q.size() == 0) {
            this.j = 0;
            this.k = 0;
            this.i = null;
            return;
        }
        this.i = new BottomNavigationItemView[this.q.size()];
        this.h = this.q.size() > 3;
        for (int i = 0; i < this.q.size(); i++) {
            this.p.b(true);
            this.q.getItem(i).setCheckable(true);
            this.p.b(false);
            BottomNavigationItemView newItem = getNewItem();
            this.i[i] = newItem;
            newItem.setIconTintList(this.l);
            newItem.setTextColor(this.m);
            newItem.setItemBackground(this.n);
            newItem.setShiftingMode(this.h);
            newItem.a((android.support.v7.view.menu.j) this.q.getItem(i), 0);
            newItem.setItemPosition(i);
            newItem.setOnClickListener(this.e);
            addView(newItem);
        }
        this.k = Math.min(this.q.size() - 1, this.k);
        this.q.getItem(this.k).setChecked(true);
    }

    public void b() {
        int size = this.q.size();
        if (size != this.i.length) {
            a();
            return;
        }
        int i = this.j;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.q.getItem(i2);
            if (item.isChecked()) {
                this.j = item.getItemId();
                this.k = i2;
            }
        }
        if (i != this.j) {
            this.f.a(this);
        }
        for (int i3 = 0; i3 < size; i3++) {
            this.p.b(true);
            this.i[i3].a((android.support.v7.view.menu.j) this.q.getItem(i3), 0);
            this.p.b(false);
        }
    }

    private BottomNavigationItemView getNewItem() {
        BottomNavigationItemView a2 = this.g.a();
        if (a2 == null) {
            return new BottomNavigationItemView(getContext());
        }
        return a2;
    }

    public int getSelectedItemId() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        int size = this.q.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.q.getItem(i2);
            if (i == item.getItemId()) {
                this.j = i;
                this.k = i2;
                item.setChecked(true);
                return;
            }
        }
    }
}
