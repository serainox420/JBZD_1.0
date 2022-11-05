package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.design.R;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.r;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ai;
import android.support.v4.view.bg;
import android.support.v4.view.z;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.intentsoftware.addapptr.AATKit;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
@CoordinatorLayout.a(a = Behavior.class)
/* loaded from: classes.dex */
public class AppBarLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f38a;
    private int b;
    private int c;
    private boolean d;
    private int e;
    private bg f;
    private List<a> g;
    private boolean h;
    private boolean i;
    private final int[] j;

    /* loaded from: classes.dex */
    public interface a {
        void a(AppBarLayout appBarLayout, int i);
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38a = -1;
        this.b = -1;
        this.c = -1;
        this.e = 0;
        this.j = new int[2];
        setOrientation(1);
        q.a(context);
        if (Build.VERSION.SDK_INT >= 21) {
            y.a(this);
            y.a(this, attributeSet, 0, R.style.Widget_Design_AppBarLayout);
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout, 0, R.style.Widget_Design_AppBarLayout);
        ai.a(this, obtainStyledAttributes.getDrawable(R.styleable.AppBarLayout_android_background));
        if (obtainStyledAttributes.hasValue(R.styleable.AppBarLayout_expanded)) {
            a(obtainStyledAttributes.getBoolean(R.styleable.AppBarLayout_expanded, false), false, false);
        }
        if (Build.VERSION.SDK_INT >= 21 && obtainStyledAttributes.hasValue(R.styleable.AppBarLayout_elevation)) {
            y.a(this, obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppBarLayout_elevation, 0));
        }
        obtainStyledAttributes.recycle();
        ai.a(this, new z() { // from class: android.support.design.widget.AppBarLayout.1
            @Override // android.support.v4.view.z
            public bg a(View view, bg bgVar) {
                return AppBarLayout.this.a(bgVar);
            }
        });
    }

    public void a(a aVar) {
        if (this.g == null) {
            this.g = new ArrayList();
        }
        if (aVar != null && !this.g.contains(aVar)) {
            this.g.add(aVar);
        }
    }

    public void b(a aVar) {
        if (this.g != null && aVar != null) {
            this.g.remove(aVar);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        f();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        f();
        this.d = false;
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount) {
                break;
            } else if (((LayoutParams) getChildAt(i5).getLayoutParams()).b() == null) {
                i5++;
            } else {
                this.d = true;
                break;
            }
        }
        e();
    }

    private void e() {
        boolean z;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                z = false;
                break;
            } else if (!((LayoutParams) getChildAt(i).getLayoutParams()).c()) {
                i++;
            } else {
                z = true;
                break;
            }
        }
        b(z);
    }

    private void f() {
        this.f38a = -1;
        this.b = -1;
        this.c = -1;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    public void setExpanded(boolean z) {
        a(z, ai.F(this));
    }

    public void a(boolean z, boolean z2) {
        a(z, z2, true);
    }

    private void a(boolean z, boolean z2, boolean z3) {
        int i = 0;
        int i2 = (z2 ? 4 : 0) | (z ? 1 : 2);
        if (z3) {
            i = 8;
        }
        this.e = i | i2;
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: a */
    public LayoutParams mo0generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: a */
    public LayoutParams mo1generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: a */
    public LayoutParams mo2generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (Build.VERSION.SDK_INT >= 19 && (layoutParams instanceof LinearLayout.LayoutParams)) {
            return new LayoutParams((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    boolean b() {
        return this.d;
    }

    public final int getTotalScrollRange() {
        int i;
        if (this.f38a != -1) {
            return this.f38a;
        }
        int childCount = getChildCount();
        int i2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i4 = layoutParams.f42a;
            if ((i4 & 1) == 0) {
                break;
            }
            i2 += layoutParams.bottomMargin + measuredHeight + layoutParams.topMargin;
            if ((i4 & 2) != 0) {
                i = i2 - ai.q(childAt);
                break;
            }
        }
        i = i2;
        int max = Math.max(0, i - getTopInset());
        this.f38a = max;
        return max;
    }

    boolean c() {
        return getTotalScrollRange() != 0;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    int getDownNestedPreScrollRange() {
        int i;
        if (this.b != -1) {
            return this.b;
        }
        int childCount = getChildCount() - 1;
        int i2 = 0;
        while (childCount >= 0) {
            View childAt = getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = layoutParams.f42a;
            if ((i3 & 5) == 5) {
                int i4 = layoutParams.bottomMargin + layoutParams.topMargin + i2;
                if ((i3 & 8) != 0) {
                    i = i4 + ai.q(childAt);
                } else if ((i3 & 2) != 0) {
                    i = i4 + (measuredHeight - ai.q(childAt));
                } else {
                    i = i4 + (measuredHeight - getTopInset());
                }
            } else if (i2 > 0) {
                break;
            } else {
                i = i2;
            }
            childCount--;
            i2 = i;
        }
        int max = Math.max(0, i2);
        this.b = max;
        return max;
    }

    int getDownNestedScrollRange() {
        int i;
        if (this.c != -1) {
            return this.c;
        }
        int childCount = getChildCount();
        int i2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int i4 = layoutParams.f42a;
            if ((i4 & 1) == 0) {
                break;
            }
            i2 += measuredHeight;
            if ((i4 & 2) != 0) {
                i = i2 - (ai.q(childAt) + getTopInset());
                break;
            }
        }
        i = i2;
        int max = Math.max(0, i);
        this.c = max;
        return max;
    }

    void a(int i) {
        if (this.g != null) {
            int size = this.g.size();
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = this.g.get(i2);
                if (aVar != null) {
                    aVar.a(this, i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int q = ai.q(this);
        if (q != 0) {
            return (q * 2) + topInset;
        }
        int childCount = getChildCount();
        int q2 = childCount >= 1 ? ai.q(getChildAt(childCount - 1)) : 0;
        if (q2 != 0) {
            return (q2 * 2) + topInset;
        }
        return getHeight() / 3;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArr = this.j;
        int[] onCreateDrawableState = super.onCreateDrawableState(iArr.length + i);
        iArr[0] = this.h ? R.attr.state_collapsible : -R.attr.state_collapsible;
        iArr[1] = (!this.h || !this.i) ? -R.attr.state_collapsed : R.attr.state_collapsed;
        return mergeDrawableStates(onCreateDrawableState, iArr);
    }

    private boolean b(boolean z) {
        if (this.h != z) {
            this.h = z;
            refreshDrawableState();
            return true;
        }
        return false;
    }

    boolean a(boolean z) {
        if (this.i != z) {
            this.i = z;
            refreshDrawableState();
            return true;
        }
        return false;
    }

    @Deprecated
    public void setTargetElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            y.a(this, f);
        }
    }

    @Deprecated
    public float getTargetElevation() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    int getPendingAction() {
        return this.e;
    }

    void d() {
        this.e = 0;
    }

    final int getTopInset() {
        if (this.f != null) {
            return this.f.b();
        }
        return 0;
    }

    bg a(bg bgVar) {
        bg bgVar2 = null;
        if (ai.x(this)) {
            bgVar2 = bgVar;
        }
        if (!x.a(this.f, bgVar2)) {
            this.f = bgVar2;
            f();
        }
        return bgVar;
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        int f42a;
        Interpolator b;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f42a = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout_Layout);
            this.f42a = obtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f42a = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f42a = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f42a = 1;
        }

        @TargetApi(19)
        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f42a = 1;
        }

        public int a() {
            return this.f42a;
        }

        public Interpolator b() {
            return this.b;
        }

        boolean c() {
            return (this.f42a & 1) == 1 && (this.f42a & 10) != 0;
        }
    }

    /* loaded from: classes.dex */
    public static class Behavior extends HeaderBehavior<AppBarLayout> {
        private int b;
        private boolean c;
        private boolean d;
        private r e;
        private int f;
        private boolean g;
        private float h;
        private WeakReference<View> i;
        private a j;

        /* loaded from: classes.dex */
        public static abstract class a {
            public abstract boolean a(AppBarLayout appBarLayout);
        }

        @Override // android.support.design.widget.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean a(int i) {
            return super.a(i);
        }

        @Override // android.support.design.widget.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int b() {
            return super.b();
        }

        public Behavior() {
            this.f = -1;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f = -1;
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i) {
            boolean z = (i & 2) != 0 && appBarLayout.c() && coordinatorLayout.getHeight() - view.getHeight() <= appBarLayout.getHeight();
            if (z && this.e != null) {
                this.e.e();
            }
            this.i = null;
            return z;
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr) {
            int i3;
            int i4;
            if (i2 != 0 && !this.c) {
                if (i2 < 0) {
                    i3 = -appBarLayout.getTotalScrollRange();
                    i4 = i3 + appBarLayout.getDownNestedPreScrollRange();
                } else {
                    i3 = -appBarLayout.getUpNestedPreScrollRange();
                    i4 = 0;
                }
                iArr[1] = b(coordinatorLayout, (CoordinatorLayout) appBarLayout, i2, i3, i4);
            }
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4) {
            if (i4 < 0) {
                b(coordinatorLayout, (CoordinatorLayout) appBarLayout, i4, -appBarLayout.getDownNestedScrollRange(), 0);
                this.c = true;
                return;
            }
            this.c = false;
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view) {
            if (!this.d) {
                c(coordinatorLayout, appBarLayout);
            }
            this.c = false;
            this.d = false;
            this.i = new WeakReference<>(view);
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, float f, float f2, boolean z) {
            boolean z2 = false;
            if (!z) {
                z2 = a(coordinatorLayout, (CoordinatorLayout) appBarLayout, -appBarLayout.getTotalScrollRange(), 0, -f2);
            } else if (f2 < BitmapDescriptorFactory.HUE_RED) {
                int downNestedPreScrollRange = (-appBarLayout.getTotalScrollRange()) + appBarLayout.getDownNestedPreScrollRange();
                if (a() < downNestedPreScrollRange) {
                    a(coordinatorLayout, appBarLayout, downNestedPreScrollRange, f2);
                    z2 = true;
                }
            } else {
                int i = -appBarLayout.getUpNestedPreScrollRange();
                if (a() > i) {
                    a(coordinatorLayout, appBarLayout, i, f2);
                    z2 = true;
                }
            }
            this.d = z2;
            return z2;
        }

        private void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, float f) {
            int height;
            int abs = Math.abs(a() - i);
            float abs2 = Math.abs(f);
            if (abs2 > BitmapDescriptorFactory.HUE_RED) {
                height = Math.round((abs / abs2) * 1000.0f) * 3;
            } else {
                height = (int) (((abs / appBarLayout.getHeight()) + 1.0f) * 150.0f);
            }
            a(coordinatorLayout, appBarLayout, i, height);
        }

        private void a(final CoordinatorLayout coordinatorLayout, final AppBarLayout appBarLayout, int i, int i2) {
            int a2 = a();
            if (a2 == i) {
                if (this.e != null && this.e.b()) {
                    this.e.e();
                    return;
                }
                return;
            }
            if (this.e == null) {
                this.e = x.a();
                this.e.a(android.support.design.widget.a.e);
                this.e.a(new r.c() { // from class: android.support.design.widget.AppBarLayout.Behavior.1
                    @Override // android.support.design.widget.r.c
                    public void a(r rVar) {
                        Behavior.this.a_(coordinatorLayout, appBarLayout, rVar.c());
                    }
                });
            } else {
                this.e.e();
            }
            this.e.a(Math.min(i2, (int) AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS));
            this.e.a(a2, i);
            this.e.a();
        }

        private int a(AppBarLayout appBarLayout, int i) {
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                if (childAt.getTop() <= (-i) && childAt.getBottom() >= (-i)) {
                    return i2;
                }
            }
            return -1;
        }

        private void c(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            int i;
            int a2 = a();
            int a3 = a(appBarLayout, a2);
            if (a3 >= 0) {
                View childAt = appBarLayout.getChildAt(a3);
                int a4 = ((LayoutParams) childAt.getLayoutParams()).a();
                if ((a4 & 17) == 17) {
                    int i2 = -childAt.getTop();
                    int i3 = -childAt.getBottom();
                    if (a3 == appBarLayout.getChildCount() - 1) {
                        i3 += appBarLayout.getTopInset();
                    }
                    if (a(a4, 2)) {
                        i3 += ai.q(childAt);
                        i = i2;
                    } else if (a(a4, 5)) {
                        i = ai.q(childAt) + i3;
                        if (a2 >= i) {
                            i3 = i;
                            i = i2;
                        }
                    } else {
                        i = i2;
                    }
                    if (a2 >= (i3 + i) / 2) {
                        i3 = i;
                    }
                    a(coordinatorLayout, appBarLayout, l.a(i3, -appBarLayout.getTotalScrollRange(), 0), BitmapDescriptorFactory.HUE_RED);
                }
            }
        }

        private static boolean a(int i, int i2) {
            return (i & i2) == i2;
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            if (((CoordinatorLayout.c) appBarLayout.getLayoutParams()).height == -2) {
                coordinatorLayout.a(appBarLayout, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
                return true;
            }
            return super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, i, i2, i3, i4);
        }

        @Override // android.support.design.widget.ViewOffsetBehavior, android.support.design.widget.CoordinatorLayout.Behavior
        public boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            int round;
            boolean a2 = super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, i);
            int pendingAction = appBarLayout.getPendingAction();
            if (this.f >= 0 && (pendingAction & 8) == 0) {
                View childAt = appBarLayout.getChildAt(this.f);
                int i2 = -childAt.getBottom();
                if (this.g) {
                    round = ai.q(childAt) + appBarLayout.getTopInset() + i2;
                } else {
                    round = Math.round(childAt.getHeight() * this.h) + i2;
                }
                a_(coordinatorLayout, appBarLayout, round);
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i3 = -appBarLayout.getUpNestedPreScrollRange();
                    if (z) {
                        a(coordinatorLayout, appBarLayout, i3, BitmapDescriptorFactory.HUE_RED);
                    } else {
                        a_(coordinatorLayout, appBarLayout, i3);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        a(coordinatorLayout, appBarLayout, 0, BitmapDescriptorFactory.HUE_RED);
                    } else {
                        a_(coordinatorLayout, appBarLayout, 0);
                    }
                }
            }
            appBarLayout.d();
            this.f = -1;
            a(l.a(b(), -appBarLayout.getTotalScrollRange(), 0));
            a(coordinatorLayout, appBarLayout, b(), 0, true);
            appBarLayout.a(b());
            return a2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // android.support.design.widget.HeaderBehavior
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean c(AppBarLayout appBarLayout) {
            if (this.j != null) {
                return this.j.a(appBarLayout);
            }
            if (this.i == null) {
                return true;
            }
            View view = this.i.get();
            return view != null && view.isShown() && !ai.b(view, -1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // android.support.design.widget.HeaderBehavior
        public void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            c(coordinatorLayout, appBarLayout);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // android.support.design.widget.HeaderBehavior
        public int b(AppBarLayout appBarLayout) {
            return -appBarLayout.getDownNestedScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // android.support.design.widget.HeaderBehavior
        /* renamed from: c  reason: avoid collision after fix types in other method */
        public int a(AppBarLayout appBarLayout) {
            return appBarLayout.getTotalScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // android.support.design.widget.HeaderBehavior
        public int a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3) {
            int a2 = a();
            if (i2 != 0 && a2 >= i2 && a2 <= i3) {
                int a3 = l.a(i, i2, i3);
                if (a2 == a3) {
                    return 0;
                }
                int b = appBarLayout.b() ? b(appBarLayout, a3) : a3;
                boolean a4 = a(b);
                int i4 = a2 - a3;
                this.b = a3 - b;
                if (!a4 && appBarLayout.b()) {
                    coordinatorLayout.b(appBarLayout);
                }
                appBarLayout.a(b());
                a(coordinatorLayout, appBarLayout, a3, a3 < a2 ? -1 : 1, false);
                return i4;
            }
            this.b = 0;
            return 0;
        }

        private int b(AppBarLayout appBarLayout, int i) {
            int i2;
            int abs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = appBarLayout.getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Interpolator b = layoutParams.b();
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    if (b != null) {
                        int a2 = layoutParams.a();
                        if ((a2 & 1) != 0) {
                            i2 = layoutParams.bottomMargin + childAt.getHeight() + layoutParams.topMargin + 0;
                            if ((a2 & 2) != 0) {
                                i2 -= ai.q(childAt);
                            }
                        } else {
                            i2 = 0;
                        }
                        if (ai.x(childAt)) {
                            i2 -= appBarLayout.getTopInset();
                        }
                        if (i2 > 0) {
                            return Integer.signum(i) * (Math.round(b.getInterpolation((abs - childAt.getTop()) / i2) * i2) + childAt.getTop());
                        }
                        return i;
                    } else {
                        return i;
                    }
                }
            }
            return i;
        }

        private void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, boolean z) {
            boolean z2 = true;
            boolean z3 = false;
            View c = c(appBarLayout, i);
            if (c != null) {
                int a2 = ((LayoutParams) c.getLayoutParams()).a();
                if ((a2 & 1) != 0) {
                    int q = ai.q(c);
                    if (i2 > 0 && (a2 & 12) != 0) {
                        z3 = (-i) >= (c.getBottom() - q) - appBarLayout.getTopInset();
                    } else if ((a2 & 2) != 0) {
                        if ((-i) < (c.getBottom() - q) - appBarLayout.getTopInset()) {
                            z2 = false;
                        }
                        z3 = z2;
                    }
                }
                boolean a3 = appBarLayout.a(z3);
                if (Build.VERSION.SDK_INT >= 11) {
                    if (z || (a3 && d(coordinatorLayout, appBarLayout))) {
                        appBarLayout.jumpDrawablesToCurrentState();
                    }
                }
            }
        }

        private boolean d(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            List<View> d = coordinatorLayout.d(appBarLayout);
            int size = d.size();
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.Behavior b = ((CoordinatorLayout.c) d.get(i).getLayoutParams()).b();
                if (b instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) b).d() != 0;
                }
            }
            return false;
        }

        private static View c(AppBarLayout appBarLayout, int i) {
            int abs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        @Override // android.support.design.widget.HeaderBehavior
        int a() {
            return b() + this.b;
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public Parcelable b(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            boolean z = false;
            Parcelable b = super.b(coordinatorLayout, (CoordinatorLayout) appBarLayout);
            int b2 = b();
            int childCount = appBarLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = appBarLayout.getChildAt(i);
                int bottom = childAt.getBottom() + b2;
                if (childAt.getTop() + b2 <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(b);
                    savedState.f41a = i;
                    if (bottom == ai.q(childAt) + appBarLayout.getTopInset()) {
                        z = true;
                    }
                    savedState.c = z;
                    savedState.b = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return b;
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, savedState.a());
                this.f = savedState.f41a;
                this.h = savedState.b;
                this.g = savedState.c;
                return;
            }
            super.a(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
            this.f = -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* loaded from: classes.dex */
        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = android.support.v4.os.e.a(new android.support.v4.os.f<SavedState>() { // from class: android.support.design.widget.AppBarLayout.Behavior.SavedState.1
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
            int f41a;
            float b;
            boolean c;

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f41a = parcel.readInt();
                this.b = parcel.readFloat();
                this.c = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.f41a);
                parcel.writeFloat(this.b);
                parcel.writeByte((byte) (this.c ? 1 : 0));
            }
        }
    }

    /* loaded from: classes.dex */
    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        @Override // android.support.design.widget.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean a(int i) {
            return super.a(i);
        }

        @Override // android.support.design.widget.ViewOffsetBehavior, android.support.design.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.a(coordinatorLayout, (CoordinatorLayout) view, i);
        }

        @Override // android.support.design.widget.HeaderScrollingViewBehavior, android.support.design.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return super.a(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // android.support.design.widget.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int b() {
            return super.b();
        }

        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollingViewBehavior_Layout);
            b(obtainStyledAttributes.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public boolean c(CoordinatorLayout coordinatorLayout, View view, View view2) {
            e(coordinatorLayout, view, view2);
            return false;
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public boolean a(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout b = b(coordinatorLayout.c(view));
            if (b != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f69a;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    b.a(false, !z);
                    return true;
                }
            }
            return false;
        }

        private void e(CoordinatorLayout coordinatorLayout, View view, View view2) {
            CoordinatorLayout.Behavior b = ((CoordinatorLayout.c) view2.getLayoutParams()).b();
            if (b instanceof Behavior) {
                ai.e(view, ((((Behavior) b).b + (view2.getBottom() - view.getTop())) + a()) - c(view2));
            }
        }

        @Override // android.support.design.widget.HeaderScrollingViewBehavior
        float a(View view) {
            int i;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int a2 = a(appBarLayout);
                return ((downNestedPreScrollRange == 0 || totalScrollRange + a2 > downNestedPreScrollRange) && (i = totalScrollRange - downNestedPreScrollRange) != 0) ? 1.0f + (a2 / i) : BitmapDescriptorFactory.HUE_RED;
            }
            return BitmapDescriptorFactory.HUE_RED;
        }

        private static int a(AppBarLayout appBarLayout) {
            CoordinatorLayout.Behavior b = ((CoordinatorLayout.c) appBarLayout.getLayoutParams()).b();
            if (b instanceof Behavior) {
                return ((Behavior) b).a();
            }
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // android.support.design.widget.HeaderScrollingViewBehavior
        /* renamed from: a */
        public AppBarLayout b(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // android.support.design.widget.HeaderScrollingViewBehavior
        public int b(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.b(view);
        }
    }
}
