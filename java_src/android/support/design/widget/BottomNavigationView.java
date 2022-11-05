package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.design.R;
import android.support.design.internal.BottomNavigationMenuView;
import android.support.design.internal.BottomNavigationPresenter;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ai;
import android.support.v7.view.menu.h;
import android.support.v7.widget.av;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
/* loaded from: classes.dex */
public class BottomNavigationView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f43a = {16842912};
    private static final int[] b = {-16842910};
    private final android.support.v7.view.menu.h c;
    private final BottomNavigationMenuView d;
    private final BottomNavigationPresenter e;
    private MenuInflater f;
    private b g;
    private a h;

    /* loaded from: classes.dex */
    public interface a {
        void a(MenuItem menuItem);
    }

    /* loaded from: classes.dex */
    public interface b {
        boolean a(MenuItem menuItem);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new BottomNavigationPresenter();
        q.a(context);
        this.c = new android.support.design.internal.c(context);
        this.d = new BottomNavigationMenuView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.d.setLayoutParams(layoutParams);
        this.e.a(this.d);
        this.e.a(1);
        this.d.setPresenter(this.e);
        this.c.a(this.e);
        this.e.a(getContext(), this.c);
        av a2 = av.a(context, attributeSet, R.styleable.BottomNavigationView, i, R.style.Widget_Design_BottomNavigationView);
        if (a2.g(R.styleable.BottomNavigationView_itemIconTint)) {
            this.d.setIconTintList(a2.e(R.styleable.BottomNavigationView_itemIconTint));
        } else {
            this.d.setIconTintList(b(16842808));
        }
        if (a2.g(R.styleable.BottomNavigationView_itemTextColor)) {
            this.d.setItemTextColor(a2.e(R.styleable.BottomNavigationView_itemTextColor));
        } else {
            this.d.setItemTextColor(b(16842808));
        }
        if (a2.g(R.styleable.BottomNavigationView_elevation)) {
            ai.h(this, a2.e(R.styleable.BottomNavigationView_elevation, 0));
        }
        this.d.setItemBackgroundRes(a2.g(R.styleable.BottomNavigationView_itemBackground, 0));
        if (a2.g(R.styleable.BottomNavigationView_menu)) {
            a(a2.g(R.styleable.BottomNavigationView_menu, 0));
        }
        a2.a();
        addView(this.d, layoutParams);
        if (Build.VERSION.SDK_INT < 21) {
            a(context);
        }
        this.c.a(new h.a() { // from class: android.support.design.widget.BottomNavigationView.1
            @Override // android.support.v7.view.menu.h.a
            public boolean a(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
                if (BottomNavigationView.this.h == null || menuItem.getItemId() != BottomNavigationView.this.getSelectedItemId()) {
                    return BottomNavigationView.this.g != null && !BottomNavigationView.this.g.a(menuItem);
                }
                BottomNavigationView.this.h.a(menuItem);
                return true;
            }

            @Override // android.support.v7.view.menu.h.a
            public void a(android.support.v7.view.menu.h hVar) {
            }
        });
    }

    public void setOnNavigationItemSelectedListener(b bVar) {
        this.g = bVar;
    }

    public void setOnNavigationItemReselectedListener(a aVar) {
        this.h = aVar;
    }

    public Menu getMenu() {
        return this.c;
    }

    public void a(int i) {
        this.e.b(true);
        getMenuInflater().inflate(i, this.c);
        this.e.b(false);
        this.e.a(true);
    }

    public int getMaxItemCount() {
        return 5;
    }

    public ColorStateList getItemIconTintList() {
        return this.d.getIconTintList();
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.d.setIconTintList(colorStateList);
    }

    public ColorStateList getItemTextColor() {
        return this.d.getItemTextColor();
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.d.setItemTextColor(colorStateList);
    }

    public int getItemBackgroundResource() {
        return this.d.getItemBackgroundRes();
    }

    public void setItemBackgroundResource(int i) {
        this.d.setItemBackgroundRes(i);
    }

    public int getSelectedItemId() {
        return this.d.getSelectedItemId();
    }

    public void setSelectedItemId(int i) {
        MenuItem findItem = this.c.findItem(i);
        if (findItem != null && !this.c.a(findItem, this.e, 0)) {
            findItem.setChecked(true);
        }
    }

    private void a(Context context) {
        View view = new View(context);
        view.setBackgroundColor(android.support.v4.content.b.c(context, R.color.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.design_bottom_navigation_shadow_height)));
        addView(view);
    }

    private MenuInflater getMenuInflater() {
        if (this.f == null) {
            this.f = new android.support.v7.view.g(getContext());
        }
        return this.f;
    }

    private ColorStateList b(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList a2 = android.support.v7.a.a.b.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = a2.getDefaultColor();
        return new ColorStateList(new int[][]{b, f43a, EMPTY_STATE_SET}, new int[]{a2.getColorForState(b, defaultColor), i2, defaultColor});
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f45a = new Bundle();
        this.c.a(savedState.f45a);
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        this.c.b(savedState.f45a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = android.support.v4.os.e.a(new android.support.v4.os.f<SavedState>() { // from class: android.support.design.widget.BottomNavigationView.SavedState.1
            @Override // android.support.v4.os.f
            /* renamed from: a */
            public SavedState b(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.support.v4.os.f
            /* renamed from: a */
            public SavedState[] b(int i) {
                return new SavedState[i];
            }
        });

        /* renamed from: a  reason: collision with root package name */
        Bundle f45a;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader);
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f45a);
        }

        private void a(Parcel parcel, ClassLoader classLoader) {
            this.f45a = parcel.readBundle(classLoader);
        }
    }
}
