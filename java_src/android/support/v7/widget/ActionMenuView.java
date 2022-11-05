package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.o;
import android.support.v7.widget.LinearLayoutCompat;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements h.b, android.support.v7.view.menu.p {

    /* renamed from: a  reason: collision with root package name */
    h.a f746a;
    d b;
    private android.support.v7.view.menu.h c;
    private Context d;
    private int e;
    private boolean f;
    private ActionMenuPresenter g;
    private o.a h;
    private boolean i;
    private int j;
    private int k;
    private int l;

    @RestrictTo
    /* loaded from: classes.dex */
    public interface a {
        boolean c();

        boolean d();
    }

    /* loaded from: classes.dex */
    public interface d {
        boolean a(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.k = (int) (56.0f * f);
        this.l = (int) (f * 4.0f);
        this.d = context;
        this.e = 0;
    }

    public void setPopupTheme(int i) {
        if (this.e != i) {
            this.e = i;
            if (i == 0) {
                this.d = getContext();
            } else {
                this.d = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public int getPopupTheme() {
        return this.e;
    }

    @RestrictTo
    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.g = actionMenuPresenter;
        this.g.a(this);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.g != null) {
            this.g.a(false);
            if (this.g.j()) {
                this.g.g();
                this.g.f();
            }
        }
    }

    public void setOnMenuItemClickListener(d dVar) {
        this.b = dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        boolean z = this.i;
        this.i = View.MeasureSpec.getMode(i) == 1073741824;
        if (z != this.i) {
            this.j = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.i && this.c != null && size != this.j) {
            this.j = size;
            this.c.a(true);
        }
        int childCount = getChildCount();
        if (this.i && childCount > 0) {
            c(i, i2);
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i3).getLayoutParams();
            layoutParams.rightMargin = 0;
            layoutParams.leftMargin = 0;
        }
        super.onMeasure(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void c(int i, int i2) {
        long j;
        boolean z;
        float f;
        int i3;
        boolean z2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        long j2;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = getChildMeasureSpec(i2, paddingTop, -2);
        int i11 = size - paddingLeft;
        int i12 = i11 / this.k;
        int i13 = i11 % this.k;
        if (i12 == 0) {
            setMeasuredDimension(i11, 0);
            return;
        }
        int i14 = this.k + (i13 / i12);
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        boolean z3 = false;
        long j3 = 0;
        int childCount = getChildCount();
        int i19 = 0;
        while (i19 < childCount) {
            View childAt = getChildAt(i19);
            if (childAt.getVisibility() == 8) {
                i7 = i18;
                j2 = j3;
                i9 = i15;
                i10 = i12;
                i8 = i16;
            } else {
                boolean z4 = childAt instanceof ActionMenuItemView;
                int i20 = i18 + 1;
                if (z4) {
                    childAt.setPadding(this.l, 0, this.l, 0);
                }
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                layoutParams.f = false;
                layoutParams.c = 0;
                layoutParams.b = 0;
                layoutParams.d = false;
                layoutParams.leftMargin = 0;
                layoutParams.rightMargin = 0;
                layoutParams.e = z4 && ((ActionMenuItemView) childAt).b();
                int a2 = a(childAt, i14, layoutParams.f747a ? 1 : i12, childMeasureSpec, paddingTop);
                int max = Math.max(i16, a2);
                int i21 = layoutParams.d ? i17 + 1 : i17;
                boolean z5 = layoutParams.f747a ? true : z3;
                int i22 = i12 - a2;
                int max2 = Math.max(i15, childAt.getMeasuredHeight());
                if (a2 == 1) {
                    long j4 = (1 << i19) | j3;
                    i9 = max2;
                    i10 = i22;
                    i17 = i21;
                    z3 = z5;
                    j2 = j4;
                    i8 = max;
                    i7 = i20;
                } else {
                    i7 = i20;
                    i8 = max;
                    long j5 = j3;
                    i9 = max2;
                    i10 = i22;
                    z3 = z5;
                    i17 = i21;
                    j2 = j5;
                }
            }
            i19++;
            i16 = i8;
            i15 = i9;
            i12 = i10;
            j3 = j2;
            i18 = i7;
        }
        boolean z6 = z3 && i18 == 2;
        boolean z7 = false;
        long j6 = j3;
        int i23 = i12;
        while (i17 > 0 && i23 > 0) {
            int i24 = Integer.MAX_VALUE;
            long j7 = 0;
            int i25 = 0;
            int i26 = 0;
            while (i26 < childCount) {
                LayoutParams layoutParams2 = (LayoutParams) getChildAt(i26).getLayoutParams();
                if (!layoutParams2.d) {
                    i5 = i25;
                    i6 = i24;
                } else if (layoutParams2.b < i24) {
                    i6 = layoutParams2.b;
                    j7 = 1 << i26;
                    i5 = 1;
                } else if (layoutParams2.b == i24) {
                    j7 |= 1 << i26;
                    i5 = i25 + 1;
                    i6 = i24;
                } else {
                    i5 = i25;
                    i6 = i24;
                }
                i26++;
                i24 = i6;
                i25 = i5;
            }
            long j8 = j6 | j7;
            if (i25 > i23) {
                j = j8;
                break;
            }
            int i27 = i24 + 1;
            int i28 = 0;
            int i29 = i23;
            long j9 = j8;
            while (i28 < childCount) {
                View childAt2 = getChildAt(i28);
                LayoutParams layoutParams3 = (LayoutParams) childAt2.getLayoutParams();
                if (((1 << i28) & j7) == 0) {
                    if (layoutParams3.b == i27) {
                        j9 |= 1 << i28;
                        i4 = i29;
                    } else {
                        i4 = i29;
                    }
                } else {
                    if (z6 && layoutParams3.e && i29 == 1) {
                        childAt2.setPadding(this.l + i14, 0, this.l, 0);
                    }
                    layoutParams3.b++;
                    layoutParams3.f = true;
                    i4 = i29 - 1;
                }
                i28++;
                i29 = i4;
            }
            j6 = j9;
            z7 = true;
            i23 = i29;
        }
        j = j6;
        boolean z8 = !z3 && i18 == 1;
        if (i23 <= 0 || j == 0 || (i23 >= i18 - 1 && !z8 && i16 <= 1)) {
            z = z7;
        } else {
            float bitCount = Long.bitCount(j);
            if (!z8) {
                if ((1 & j) != 0 && !((LayoutParams) getChildAt(0).getLayoutParams()).e) {
                    bitCount -= 0.5f;
                }
                if (((1 << (childCount - 1)) & j) != 0 && !((LayoutParams) getChildAt(childCount - 1).getLayoutParams()).e) {
                    f = bitCount - 0.5f;
                    int i30 = f <= BitmapDescriptorFactory.HUE_RED ? (int) ((i23 * i14) / f) : 0;
                    i3 = 0;
                    z = z7;
                    while (i3 < childCount) {
                        if (((1 << i3) & j) == 0) {
                            z2 = z;
                        } else {
                            View childAt3 = getChildAt(i3);
                            LayoutParams layoutParams4 = (LayoutParams) childAt3.getLayoutParams();
                            if (childAt3 instanceof ActionMenuItemView) {
                                layoutParams4.c = i30;
                                layoutParams4.f = true;
                                if (i3 == 0 && !layoutParams4.e) {
                                    layoutParams4.leftMargin = (-i30) / 2;
                                }
                                z2 = true;
                            } else if (layoutParams4.f747a) {
                                layoutParams4.c = i30;
                                layoutParams4.f = true;
                                layoutParams4.rightMargin = (-i30) / 2;
                                z2 = true;
                            } else {
                                if (i3 != 0) {
                                    layoutParams4.leftMargin = i30 / 2;
                                }
                                if (i3 != childCount - 1) {
                                    layoutParams4.rightMargin = i30 / 2;
                                }
                                z2 = z;
                            }
                        }
                        i3++;
                        z = z2;
                    }
                }
            }
            f = bitCount;
            if (f <= BitmapDescriptorFactory.HUE_RED) {
            }
            i3 = 0;
            z = z7;
            while (i3 < childCount) {
            }
        }
        if (z) {
            int i31 = 0;
            while (true) {
                int i32 = i31;
                if (i32 >= childCount) {
                    break;
                }
                View childAt4 = getChildAt(i32);
                LayoutParams layoutParams5 = (LayoutParams) childAt4.getLayoutParams();
                if (layoutParams5.f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec(layoutParams5.c + (layoutParams5.b * i14), 1073741824), childMeasureSpec);
                }
                i31 = i32 + 1;
            }
        }
        if (mode == 1073741824) {
            i15 = size2;
        }
        setMeasuredDimension(i11, i15);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(View view, int i, int i2, int i3, int i4) {
        int i5;
        boolean z = false;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.b();
        if (i2 <= 0 || (z2 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i * i2, Integer.MIN_VALUE), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            i5 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i5++;
            }
            if (z2 && i5 < 2) {
                i5 = 2;
            }
        }
        if (!layoutParams.f747a && z2) {
            z = true;
        }
        layoutParams.d = z;
        layoutParams.b = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i5 * i, 1073741824), makeMeasureSpec);
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z2;
        int width;
        int i10;
        if (!this.i) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i11 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i12 = 0;
        int i13 = 0;
        int paddingRight = ((i3 - i) - getPaddingRight()) - getPaddingLeft();
        boolean z3 = false;
        boolean a2 = ba.a(this);
        int i14 = 0;
        while (i14 < childCount) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() == 8) {
                z2 = z3;
                i8 = i13;
                i7 = paddingRight;
                i9 = i12;
            } else {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f747a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (a(i14)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a2) {
                        i10 = layoutParams.leftMargin + getPaddingLeft();
                        width = i10 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - layoutParams.rightMargin;
                        i10 = width - measuredWidth;
                    }
                    int i15 = i11 - (measuredHeight / 2);
                    childAt.layout(i10, i15, width, measuredHeight + i15);
                    i7 = paddingRight - measuredWidth;
                    z2 = true;
                    i8 = i13;
                    i9 = i12;
                } else {
                    int measuredWidth2 = childAt.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
                    int i16 = i12 + measuredWidth2;
                    int i17 = paddingRight - measuredWidth2;
                    if (a(i14)) {
                        i16 += dividerWidth;
                    }
                    boolean z4 = z3;
                    i7 = i17;
                    i8 = i13 + 1;
                    i9 = i16;
                    z2 = z4;
                }
            }
            i14++;
            i12 = i9;
            paddingRight = i7;
            i13 = i8;
            z3 = z2;
        }
        if (childCount == 1 && !z3) {
            View childAt2 = getChildAt(0);
            int measuredWidth3 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i18 = ((i3 - i) / 2) - (measuredWidth3 / 2);
            int i19 = i11 - (measuredHeight2 / 2);
            childAt2.layout(i18, i19, measuredWidth3 + i18, measuredHeight2 + i19);
            return;
        }
        int i20 = i13 - (z3 ? 0 : 1);
        int max = Math.max(0, i20 > 0 ? paddingRight / i20 : 0);
        if (a2) {
            int width2 = getWidth() - getPaddingRight();
            int i21 = 0;
            while (i21 < childCount) {
                View childAt3 = getChildAt(i21);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() == 8) {
                    i6 = width2;
                } else if (layoutParams2.f747a) {
                    i6 = width2;
                } else {
                    int i22 = width2 - layoutParams2.rightMargin;
                    int measuredWidth4 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i23 = i11 - (measuredHeight3 / 2);
                    childAt3.layout(i22 - measuredWidth4, i23, i22, measuredHeight3 + i23);
                    i6 = i22 - ((layoutParams2.leftMargin + measuredWidth4) + max);
                }
                i21++;
                width2 = i6;
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        int i24 = 0;
        while (i24 < childCount) {
            View childAt4 = getChildAt(i24);
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            if (childAt4.getVisibility() == 8) {
                i5 = paddingLeft;
            } else if (layoutParams3.f747a) {
                i5 = paddingLeft;
            } else {
                int i25 = paddingLeft + layoutParams3.leftMargin;
                int measuredWidth5 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i26 = i11 - (measuredHeight4 / 2);
                childAt4.layout(i25, i26, i25 + measuredWidth5, measuredHeight4 + i26);
                i5 = layoutParams3.rightMargin + measuredWidth5 + max + i25;
            }
            i24++;
            paddingLeft = i5;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        i();
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.g.a(drawable);
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.g.e();
    }

    @RestrictTo
    public boolean a() {
        return this.f;
    }

    @RestrictTo
    public void setOverflowReserved(boolean z) {
        this.f = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.LinearLayoutCompat
    /* renamed from: b */
    public LayoutParams j() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.h = 16;
        return layoutParams;
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    /* renamed from: a */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    /* renamed from: a */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams != null) {
            LayoutParams layoutParams2 = layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : new LayoutParams(layoutParams);
            if (layoutParams2.h <= 0) {
                layoutParams2.h = 16;
                return layoutParams2;
            }
            return layoutParams2;
        }
        return j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof LayoutParams);
    }

    @RestrictTo
    public LayoutParams c() {
        LayoutParams j = j();
        j.f747a = true;
        return j;
    }

    @Override // android.support.v7.view.menu.h.b
    @RestrictTo
    public boolean a(android.support.v7.view.menu.j jVar) {
        return this.c.a(jVar, 0);
    }

    @RestrictTo
    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.support.v7.view.menu.p
    @RestrictTo
    public void a(android.support.v7.view.menu.h hVar) {
        this.c = hVar;
    }

    public Menu getMenu() {
        if (this.c == null) {
            Context context = getContext();
            this.c = new android.support.v7.view.menu.h(context);
            this.c.a(new c());
            this.g = new ActionMenuPresenter(context);
            this.g.c(true);
            this.g.a(this.h != null ? this.h : new b());
            this.c.a(this.g, this.d);
            this.g.a(this);
        }
        return this.c;
    }

    @RestrictTo
    public void a(o.a aVar, h.a aVar2) {
        this.h = aVar;
        this.f746a = aVar2;
    }

    @RestrictTo
    public android.support.v7.view.menu.h d() {
        return this.c;
    }

    public boolean e() {
        return this.g != null && this.g.f();
    }

    public boolean f() {
        return this.g != null && this.g.g();
    }

    public boolean g() {
        return this.g != null && this.g.j();
    }

    @RestrictTo
    public boolean h() {
        return this.g != null && this.g.k();
    }

    public void i() {
        if (this.g != null) {
            this.g.h();
        }
    }

    @RestrictTo
    protected boolean a(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof a)) {
            z = false | ((a) childAt).d();
        }
        return (i <= 0 || !(childAt2 instanceof a)) ? z : ((a) childAt2).c() | z;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @RestrictTo
    public void setExpandedActionViewsExclusive(boolean z) {
        this.g.d(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c implements h.a {
        c() {
        }

        @Override // android.support.v7.view.menu.h.a
        public boolean a(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
            return ActionMenuView.this.b != null && ActionMenuView.this.b.a(menuItem);
        }

        @Override // android.support.v7.view.menu.h.a
        public void a(android.support.v7.view.menu.h hVar) {
            if (ActionMenuView.this.f746a != null) {
                ActionMenuView.this.f746a.a(hVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements o.a {
        b() {
        }

        @Override // android.support.v7.view.menu.o.a
        public void a(android.support.v7.view.menu.h hVar, boolean z) {
        }

        @Override // android.support.v7.view.menu.o.a
        public boolean a(android.support.v7.view.menu.h hVar) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {
        @ViewDebug.ExportedProperty

        /* renamed from: a  reason: collision with root package name */
        public boolean f747a;
        @ViewDebug.ExportedProperty
        public int b;
        @ViewDebug.ExportedProperty
        public int c;
        @ViewDebug.ExportedProperty
        public boolean d;
        @ViewDebug.ExportedProperty
        public boolean e;
        boolean f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.f747a = layoutParams.f747a;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f747a = false;
        }
    }
}
