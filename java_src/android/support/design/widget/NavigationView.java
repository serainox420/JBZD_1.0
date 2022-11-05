package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.design.internal.ScrimInsetsFrameLayout;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ai;
import android.support.v4.view.bg;
import android.support.v7.view.menu.h;
import android.support.v7.widget.av;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public class NavigationView extends ScrimInsetsFrameLayout {
    private static final int[] d = {16842912};
    private static final int[] e = {-16842910};
    a c;
    private final android.support.design.internal.d f;
    private final android.support.design.internal.e g;
    private int h;
    private MenuInflater i;

    /* loaded from: classes.dex */
    public interface a {
        boolean a(MenuItem menuItem);
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList c;
        int i2;
        boolean z;
        this.g = new android.support.design.internal.e();
        q.a(context);
        this.f = new android.support.design.internal.d(context);
        av a2 = av.a(context, attributeSet, R.styleable.NavigationView, i, R.style.Widget_Design_NavigationView);
        ai.a(this, a2.a(R.styleable.NavigationView_android_background));
        if (a2.g(R.styleable.NavigationView_elevation)) {
            ai.h(this, a2.e(R.styleable.NavigationView_elevation, 0));
        }
        ai.a((View) this, a2.a(R.styleable.NavigationView_android_fitsSystemWindows, false));
        this.h = a2.e(R.styleable.NavigationView_android_maxWidth, 0);
        if (a2.g(R.styleable.NavigationView_itemIconTint)) {
            c = a2.e(R.styleable.NavigationView_itemIconTint);
        } else {
            c = c(16842808);
        }
        if (a2.g(R.styleable.NavigationView_itemTextAppearance)) {
            i2 = a2.g(R.styleable.NavigationView_itemTextAppearance, 0);
            z = true;
        } else {
            i2 = 0;
            z = false;
        }
        ColorStateList e2 = a2.g(R.styleable.NavigationView_itemTextColor) ? a2.e(R.styleable.NavigationView_itemTextColor) : null;
        if (!z && e2 == null) {
            e2 = c(16842806);
        }
        Drawable a3 = a2.a(R.styleable.NavigationView_itemBackground);
        this.f.a(new h.a() { // from class: android.support.design.widget.NavigationView.1
            @Override // android.support.v7.view.menu.h.a
            public boolean a(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
                return NavigationView.this.c != null && NavigationView.this.c.a(menuItem);
            }

            @Override // android.support.v7.view.menu.h.a
            public void a(android.support.v7.view.menu.h hVar) {
            }
        });
        this.g.a(1);
        this.g.a(context, this.f);
        this.g.a(c);
        if (z) {
            this.g.c(i2);
        }
        this.g.b(e2);
        this.g.a(a3);
        this.f.a(this.g);
        addView((View) this.g.a((ViewGroup) this));
        if (a2.g(R.styleable.NavigationView_menu)) {
            a(a2.g(R.styleable.NavigationView_menu, 0));
        }
        if (a2.g(R.styleable.NavigationView_headerLayout)) {
            b(a2.g(R.styleable.NavigationView_headerLayout, 0));
        }
        a2.a();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f71a = new Bundle();
        this.f.a(savedState.f71a);
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
        this.f.b(savedState.f71a);
    }

    public void setNavigationItemSelectedListener(a aVar) {
        this.c = aVar;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        switch (View.MeasureSpec.getMode(i)) {
            case Integer.MIN_VALUE:
                i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.h), 1073741824);
                break;
            case 0:
                i = View.MeasureSpec.makeMeasureSpec(this.h, 1073741824);
                break;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.support.design.internal.ScrimInsetsFrameLayout
    @RestrictTo
    protected void a(bg bgVar) {
        this.g.a(bgVar);
    }

    public void a(int i) {
        this.g.b(true);
        getMenuInflater().inflate(i, this.f);
        this.g.b(false);
        this.g.a(false);
    }

    public Menu getMenu() {
        return this.f;
    }

    public View b(int i) {
        return this.g.b(i);
    }

    public int getHeaderCount() {
        return this.g.d();
    }

    public ColorStateList getItemIconTintList() {
        return this.g.e();
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.g.a(colorStateList);
    }

    public ColorStateList getItemTextColor() {
        return this.g.f();
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.g.b(colorStateList);
    }

    public Drawable getItemBackground() {
        return this.g.g();
    }

    public void setItemBackgroundResource(int i) {
        setItemBackground(android.support.v4.content.b.a(getContext(), i));
    }

    public void setItemBackground(Drawable drawable) {
        this.g.a(drawable);
    }

    public void setCheckedItem(int i) {
        MenuItem findItem = this.f.findItem(i);
        if (findItem != null) {
            this.g.a((android.support.v7.view.menu.j) findItem);
        }
    }

    public void setItemTextAppearance(int i) {
        this.g.c(i);
    }

    private MenuInflater getMenuInflater() {
        if (this.i == null) {
            this.i = new android.support.v7.view.g(getContext());
        }
        return this.i;
    }

    private ColorStateList c(int i) {
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
        return new ColorStateList(new int[][]{e, d, EMPTY_STATE_SET}, new int[]{a2.getColorForState(e, defaultColor), i2, defaultColor});
    }

    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = android.support.v4.os.e.a(new android.support.v4.os.f<SavedState>() { // from class: android.support.design.widget.NavigationView.SavedState.1
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
        public Bundle f71a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f71a = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f71a);
        }
    }
}
