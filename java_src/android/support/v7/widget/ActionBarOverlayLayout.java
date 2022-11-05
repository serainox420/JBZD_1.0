package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.view.bd;
import android.support.v4.view.be;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.o;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.intentsoftware.addapptr.AATKit;
@RestrictTo
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements android.support.v4.view.x, t {
    static final int[] e = {R.attr.actionBarSize, 16842841};
    private final Runnable A;
    private final android.support.v4.view.y B;

    /* renamed from: a  reason: collision with root package name */
    ActionBarContainer f734a;
    boolean b;
    android.support.v4.view.az c;
    final bd d;
    private int f;
    private int g;
    private ContentFrameLayout h;
    private u i;
    private Drawable j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private final Rect q;
    private final Rect r;
    private final Rect s;
    private final Rect t;
    private final Rect u;
    private final Rect v;
    private a w;
    private final int x;
    private android.support.v4.widget.x y;
    private final Runnable z;

    /* loaded from: classes.dex */
    public interface a {
        void c(int i);

        void i(boolean z);

        void l();

        void m();

        void n();

        void o();
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = 0;
        this.q = new Rect();
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        this.u = new Rect();
        this.v = new Rect();
        this.x = AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS;
        this.d = new be() { // from class: android.support.v7.widget.ActionBarOverlayLayout.1
            @Override // android.support.v4.view.be, android.support.v4.view.bd
            public void b(View view) {
                ActionBarOverlayLayout.this.c = null;
                ActionBarOverlayLayout.this.b = false;
            }

            @Override // android.support.v4.view.be, android.support.v4.view.bd
            public void c(View view) {
                ActionBarOverlayLayout.this.c = null;
                ActionBarOverlayLayout.this.b = false;
            }
        };
        this.z = new Runnable() { // from class: android.support.v7.widget.ActionBarOverlayLayout.2
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.d();
                ActionBarOverlayLayout.this.c = android.support.v4.view.ai.r(ActionBarOverlayLayout.this.f734a).c(BitmapDescriptorFactory.HUE_RED).a(ActionBarOverlayLayout.this.d);
            }
        };
        this.A = new Runnable() { // from class: android.support.v7.widget.ActionBarOverlayLayout.3
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.d();
                ActionBarOverlayLayout.this.c = android.support.v4.view.ai.r(ActionBarOverlayLayout.this.f734a).c(-ActionBarOverlayLayout.this.f734a.getHeight()).a(ActionBarOverlayLayout.this.d);
            }
        };
        a(context);
        this.B = new android.support.v4.view.y(this);
    }

    private void a(Context context) {
        boolean z = true;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(e);
        this.f = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.j = obtainStyledAttributes.getDrawable(1);
        setWillNotDraw(this.j == null);
        obtainStyledAttributes.recycle();
        if (context.getApplicationInfo().targetSdkVersion >= 19) {
            z = false;
        }
        this.k = z;
        this.y = android.support.v4.widget.x.a(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d();
    }

    public void setActionBarVisibilityCallback(a aVar) {
        this.w = aVar;
        if (getWindowToken() != null) {
            this.w.c(this.g);
            if (this.p != 0) {
                onWindowSystemUiVisibilityChanged(this.p);
                android.support.v4.view.ai.w(this);
            }
        }
    }

    public void setOverlayMode(boolean z) {
        this.l = z;
        this.k = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public boolean a() {
        return this.l;
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.m = z;
    }

    public void setShowingForActionMode(boolean z) {
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a(getContext());
        android.support.v4.view.ai.w(this);
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        c();
        int i2 = this.p ^ i;
        this.p = i;
        boolean z2 = (i & 4) == 0;
        boolean z3 = (i & 256) != 0;
        if (this.w != null) {
            a aVar = this.w;
            if (z3) {
                z = false;
            }
            aVar.i(z);
            if (z2 || !z3) {
                this.w.l();
            } else {
                this.w.m();
            }
        }
        if ((i2 & 256) != 0 && this.w != null) {
            android.support.v4.view.ai.w(this);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.g = i;
        if (this.w != null) {
            this.w.c(i);
        }
    }

    private boolean a(View view, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5 = false;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (z && layoutParams.leftMargin != rect.left) {
            layoutParams.leftMargin = rect.left;
            z5 = true;
        }
        if (z2 && layoutParams.topMargin != rect.top) {
            layoutParams.topMargin = rect.top;
            z5 = true;
        }
        if (z4 && layoutParams.rightMargin != rect.right) {
            layoutParams.rightMargin = rect.right;
            z5 = true;
        }
        if (!z3 || layoutParams.bottomMargin == rect.bottom) {
            return z5;
        }
        layoutParams.bottomMargin = rect.bottom;
        return true;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        c();
        if ((android.support.v4.view.ai.v(this) & 256) != 0) {
        }
        boolean a2 = a(this.f734a, rect, true, true, false, true);
        this.t.set(rect);
        ba.a(this, this.t, this.q);
        if (!this.r.equals(this.q)) {
            this.r.set(this.q);
            a2 = true;
        }
        if (a2) {
            requestLayout();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: b */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    /* renamed from: a */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredHeight;
        c();
        measureChildWithMargins(this.f734a, i, 0, i2, 0);
        LayoutParams layoutParams = (LayoutParams) this.f734a.getLayoutParams();
        int max = Math.max(0, this.f734a.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
        int max2 = Math.max(0, layoutParams.bottomMargin + this.f734a.getMeasuredHeight() + layoutParams.topMargin);
        int a2 = ba.a(0, android.support.v4.view.ai.j(this.f734a));
        boolean z = (android.support.v4.view.ai.v(this) & 256) != 0;
        if (z) {
            measuredHeight = this.f;
            if (this.m && this.f734a.getTabContainer() != null) {
                measuredHeight += this.f;
            }
        } else {
            measuredHeight = this.f734a.getVisibility() != 8 ? this.f734a.getMeasuredHeight() : 0;
        }
        this.s.set(this.q);
        this.u.set(this.t);
        if (!this.l && !z) {
            Rect rect = this.s;
            rect.top = measuredHeight + rect.top;
            this.s.bottom += 0;
        } else {
            Rect rect2 = this.u;
            rect2.top = measuredHeight + rect2.top;
            this.u.bottom += 0;
        }
        a(this.h, this.s, true, true, true, true);
        if (!this.v.equals(this.u)) {
            this.v.set(this.u);
            this.h.a(this.u);
        }
        measureChildWithMargins(this.h, i, 0, i2, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.h.getLayoutParams();
        int max3 = Math.max(max, this.h.getMeasuredWidth() + layoutParams2.leftMargin + layoutParams2.rightMargin);
        int max4 = Math.max(max2, layoutParams2.bottomMargin + this.h.getMeasuredHeight() + layoutParams2.topMargin);
        int a3 = ba.a(a2, android.support.v4.view.ai.j(this.h));
        setMeasuredDimension(android.support.v4.view.ai.a(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, a3), android.support.v4.view.ai.a(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, a3 << 16));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i3 - i) - getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = layoutParams.leftMargin + paddingLeft;
                int i7 = layoutParams.topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.j != null && !this.k) {
            int bottom = this.f734a.getVisibility() == 0 ? (int) (this.f734a.getBottom() + android.support.v4.view.ai.n(this.f734a) + 0.5f) : 0;
            this.j.setBounds(0, bottom, getWidth(), this.j.getIntrinsicHeight() + bottom);
            this.j.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f734a.getVisibility() != 0) {
            return false;
        }
        return this.n;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.B.a(view, view2, i);
        this.o = getActionBarHideOffset();
        d();
        if (this.w != null) {
            this.w.n();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        this.o += i2;
        setActionBarHideOffset(this.o);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public void onStopNestedScroll(View view) {
        if (this.n && !this.b) {
            if (this.o <= this.f734a.getHeight()) {
                l();
            } else {
                m();
            }
        }
        if (this.w != null) {
            this.w.o();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.n || !z) {
            return false;
        }
        if (a(f, f2)) {
            o();
        } else {
            n();
        }
        this.b = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.B.a();
    }

    void c() {
        if (this.h == null) {
            this.h = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f734a = (ActionBarContainer) findViewById(R.id.action_bar_container);
            this.i = a(findViewById(R.id.action_bar));
        }
    }

    private u a(View view) {
        if (view instanceof u) {
            return (u) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.n) {
            this.n = z;
            if (!z) {
                d();
                setActionBarHideOffset(0);
            }
        }
    }

    public int getActionBarHideOffset() {
        if (this.f734a != null) {
            return -((int) android.support.v4.view.ai.n(this.f734a));
        }
        return 0;
    }

    public void setActionBarHideOffset(int i) {
        d();
        android.support.v4.view.ai.b(this.f734a, -Math.max(0, Math.min(i, this.f734a.getHeight())));
    }

    void d() {
        removeCallbacks(this.z);
        removeCallbacks(this.A);
        if (this.c != null) {
            this.c.b();
        }
    }

    private void l() {
        d();
        postDelayed(this.z, 600L);
    }

    private void m() {
        d();
        postDelayed(this.A, 600L);
    }

    private void n() {
        d();
        this.z.run();
    }

    private void o() {
        d();
        this.A.run();
    }

    private boolean a(float f, float f2) {
        this.y.a(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.y.e() > this.f734a.getHeight();
    }

    @Override // android.support.v7.widget.t
    public void setWindowCallback(Window.Callback callback) {
        c();
        this.i.a(callback);
    }

    @Override // android.support.v7.widget.t
    public void setWindowTitle(CharSequence charSequence) {
        c();
        this.i.a(charSequence);
    }

    public CharSequence getTitle() {
        c();
        return this.i.e();
    }

    @Override // android.support.v7.widget.t
    public void a(int i) {
        c();
        switch (i) {
            case 2:
                this.i.f();
                return;
            case 5:
                this.i.g();
                return;
            case 109:
                setOverlayMode(true);
                return;
            default:
                return;
        }
    }

    public void setUiOptions(int i) {
    }

    public void setIcon(int i) {
        c();
        this.i.a(i);
    }

    public void setIcon(Drawable drawable) {
        c();
        this.i.a(drawable);
    }

    public void setLogo(int i) {
        c();
        this.i.b(i);
    }

    @Override // android.support.v7.widget.t
    public boolean e() {
        c();
        return this.i.h();
    }

    @Override // android.support.v7.widget.t
    public boolean f() {
        c();
        return this.i.i();
    }

    @Override // android.support.v7.widget.t
    public boolean g() {
        c();
        return this.i.j();
    }

    @Override // android.support.v7.widget.t
    public boolean h() {
        c();
        return this.i.k();
    }

    @Override // android.support.v7.widget.t
    public boolean i() {
        c();
        return this.i.l();
    }

    @Override // android.support.v7.widget.t
    public void j() {
        c();
        this.i.m();
    }

    @Override // android.support.v7.widget.t
    public void a(Menu menu, o.a aVar) {
        c();
        this.i.a(menu, aVar);
    }

    @Override // android.support.v7.widget.t
    public void k() {
        c();
        this.i.n();
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }
}
