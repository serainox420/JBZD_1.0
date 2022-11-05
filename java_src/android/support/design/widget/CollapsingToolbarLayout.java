package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.design.R;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.r;
import android.support.v4.view.ai;
import android.support.v4.view.bg;
import android.support.v4.view.z;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.intentsoftware.addapptr.AATKit;
/* loaded from: classes.dex */
public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    final e f52a;
    Drawable b;
    int c;
    bg d;
    private boolean e;
    private int f;
    private Toolbar g;
    private View h;
    private View i;
    private int j;
    private int k;
    private int l;
    private int m;
    private final Rect n;
    private boolean o;
    private boolean p;
    private Drawable q;
    private int r;
    private boolean s;
    private r t;
    private long u;
    private int v;
    private AppBarLayout.a w;

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = true;
        this.n = new Rect();
        this.v = -1;
        q.a(context);
        this.f52a = new e(this);
        this.f52a.a(android.support.design.widget.a.e);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CollapsingToolbarLayout, i, R.style.Widget_Design_CollapsingToolbar);
        this.f52a.a(obtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
        this.f52a.b(obtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.m = dimensionPixelSize;
        this.l = dimensionPixelSize;
        this.k = dimensionPixelSize;
        this.j = dimensionPixelSize;
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart)) {
            this.j = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
            this.l = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop)) {
            this.k = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
            this.m = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
        }
        this.o = obtainStyledAttributes.getBoolean(R.styleable.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(obtainStyledAttributes.getText(R.styleable.CollapsingToolbarLayout_title));
        this.f52a.d(R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
        this.f52a.c(android.support.v7.appcompat.R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
            this.f52a.d(obtainStyledAttributes.getResourceId(R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
            this.f52a.c(obtainStyledAttributes.getResourceId(R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
        }
        this.v = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        this.u = obtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_scrimAnimationDuration, AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS);
        setContentScrim(obtainStyledAttributes.getDrawable(R.styleable.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(obtainStyledAttributes.getDrawable(R.styleable.CollapsingToolbarLayout_statusBarScrim));
        this.f = obtainStyledAttributes.getResourceId(R.styleable.CollapsingToolbarLayout_toolbarId, -1);
        obtainStyledAttributes.recycle();
        setWillNotDraw(false);
        ai.a(this, new z() { // from class: android.support.design.widget.CollapsingToolbarLayout.1
            @Override // android.support.v4.view.z
            public bg a(View view, bg bgVar) {
                return CollapsingToolbarLayout.this.a(bgVar);
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            ai.a((View) this, ai.x((View) parent));
            if (this.w == null) {
                this.w = new a();
            }
            ((AppBarLayout) parent).a(this.w);
            ai.w(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ViewParent parent = getParent();
        if (this.w != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).b(this.w);
        }
        super.onDetachedFromWindow();
    }

    bg a(bg bgVar) {
        bg bgVar2 = null;
        if (ai.x(this)) {
            bgVar2 = bgVar;
        }
        if (!x.a(this.d, bgVar2)) {
            this.d = bgVar2;
            requestLayout();
        }
        return bgVar.g();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        c();
        if (this.g == null && this.q != null && this.r > 0) {
            this.q.mutate().setAlpha(this.r);
            this.q.draw(canvas);
        }
        if (this.o && this.p) {
            this.f52a.a(canvas);
        }
        if (this.b != null && this.r > 0) {
            int b = this.d != null ? this.d.b() : 0;
            if (b > 0) {
                this.b.setBounds(0, -this.c, getWidth(), b - this.c);
                this.b.mutate().setAlpha(this.r);
                this.b.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        if (this.q == null || this.r <= 0 || !c(view)) {
            z = false;
        } else {
            this.q.mutate().setAlpha(this.r);
            this.q.draw(canvas);
            z = true;
        }
        return super.drawChild(canvas, view, j) || z;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.q != null) {
            this.q.setBounds(0, 0, i, i2);
        }
    }

    private void c() {
        Toolbar toolbar;
        if (this.e) {
            this.g = null;
            this.h = null;
            if (this.f != -1) {
                this.g = (Toolbar) findViewById(this.f);
                if (this.g != null) {
                    this.h = d(this.g);
                }
            }
            if (this.g == null) {
                int childCount = getChildCount();
                int i = 0;
                while (true) {
                    if (i >= childCount) {
                        toolbar = null;
                        break;
                    }
                    View childAt = getChildAt(i);
                    if (!(childAt instanceof Toolbar)) {
                        i++;
                    } else {
                        toolbar = (Toolbar) childAt;
                        break;
                    }
                }
                this.g = toolbar;
            }
            d();
            this.e = false;
        }
    }

    private boolean c(View view) {
        return (this.h == null || this.h == this) ? view == this.g : view == this.h;
    }

    private View d(View view) {
        View view2 = view;
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view2 = (View) parent;
            }
        }
        return view2;
    }

    private void d() {
        if (!this.o && this.i != null) {
            ViewParent parent = this.i.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.i);
            }
        }
        if (this.o && this.g != null) {
            if (this.i == null) {
                this.i = new View(getContext());
            }
            if (this.i.getParent() == null) {
                this.g.addView(this.i, -1, -1);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        c();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int titleMarginStart;
        int titleMarginEnd;
        boolean z2 = true;
        super.onLayout(z, i, i2, i3, i4);
        if (this.d != null) {
            int b = this.d.b();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (!ai.x(childAt) && childAt.getTop() < b) {
                    ai.e(childAt, b);
                }
            }
        }
        if (this.o && this.i != null) {
            this.p = ai.H(this.i) && this.i.getVisibility() == 0;
            if (this.p) {
                if (ai.g(this) != 1) {
                    z2 = false;
                }
                int b2 = b(this.h != null ? this.h : this.g);
                u.b(this, this.i, this.n);
                e eVar = this.f52a;
                int i6 = this.n.left;
                if (z2) {
                    titleMarginStart = this.g.getTitleMarginEnd();
                } else {
                    titleMarginStart = this.g.getTitleMarginStart();
                }
                int i7 = i6 + titleMarginStart;
                int titleMarginTop = this.g.getTitleMarginTop() + this.n.top + b2;
                int i8 = this.n.right;
                if (z2) {
                    titleMarginEnd = this.g.getTitleMarginStart();
                } else {
                    titleMarginEnd = this.g.getTitleMarginEnd();
                }
                eVar.b(i7, titleMarginTop, titleMarginEnd + i8, (b2 + this.n.bottom) - this.g.getTitleMarginBottom());
                this.f52a.a(z2 ? this.l : this.j, this.n.top + this.k, (i3 - i) - (z2 ? this.j : this.l), (i4 - i2) - this.m);
                this.f52a.i();
            }
        }
        int childCount2 = getChildCount();
        for (int i9 = 0; i9 < childCount2; i9++) {
            a(getChildAt(i9)).a();
        }
        if (this.g != null) {
            if (this.o && TextUtils.isEmpty(this.f52a.j())) {
                this.f52a.a(this.g.getTitle());
            }
            if (this.h == null || this.h == this) {
                setMinimumHeight(e(this.g));
            } else {
                setMinimumHeight(e(this.h));
            }
        }
        b();
    }

    private static int e(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return marginLayoutParams.bottomMargin + view.getHeight() + marginLayoutParams.topMargin;
        }
        return view.getHeight();
    }

    static w a(View view) {
        w wVar = (w) view.getTag(R.id.view_offset_helper);
        if (wVar == null) {
            w wVar2 = new w(view);
            view.setTag(R.id.view_offset_helper, wVar2);
            return wVar2;
        }
        return wVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.f52a.a(charSequence);
    }

    public CharSequence getTitle() {
        if (this.o) {
            return this.f52a.j();
        }
        return null;
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.o) {
            this.o = z;
            d();
            requestLayout();
        }
    }

    public void setScrimsShown(boolean z) {
        a(z, ai.F(this) && !isInEditMode());
    }

    public void a(boolean z, boolean z2) {
        int i = 255;
        if (this.s != z) {
            if (z2) {
                if (!z) {
                    i = 0;
                }
                a(i);
            } else {
                if (!z) {
                    i = 0;
                }
                setScrimAlpha(i);
            }
            this.s = z;
        }
    }

    private void a(int i) {
        c();
        if (this.t == null) {
            this.t = x.a();
            this.t.a(this.u);
            this.t.a(i > this.r ? android.support.design.widget.a.c : android.support.design.widget.a.d);
            this.t.a(new r.c() { // from class: android.support.design.widget.CollapsingToolbarLayout.2
                @Override // android.support.design.widget.r.c
                public void a(r rVar) {
                    CollapsingToolbarLayout.this.setScrimAlpha(rVar.c());
                }
            });
        } else if (this.t.b()) {
            this.t.e();
        }
        this.t.a(this.r, i);
        this.t.a();
    }

    void setScrimAlpha(int i) {
        if (i != this.r) {
            if (this.q != null && this.g != null) {
                ai.c(this.g);
            }
            this.r = i;
            ai.c(this);
        }
    }

    int getScrimAlpha() {
        return this.r;
    }

    public void setContentScrim(Drawable drawable) {
        Drawable drawable2 = null;
        if (this.q != drawable) {
            if (this.q != null) {
                this.q.setCallback(null);
            }
            if (drawable != null) {
                drawable2 = drawable.mutate();
            }
            this.q = drawable2;
            if (this.q != null) {
                this.q.setBounds(0, 0, getWidth(), getHeight());
                this.q.setCallback(this);
                this.q.setAlpha(this.r);
            }
            ai.c(this);
        }
    }

    public void setContentScrimColor(int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(int i) {
        setContentScrim(android.support.v4.content.b.a(getContext(), i));
    }

    public Drawable getContentScrim() {
        return this.q;
    }

    public void setStatusBarScrim(Drawable drawable) {
        Drawable drawable2 = null;
        if (this.b != drawable) {
            if (this.b != null) {
                this.b.setCallback(null);
            }
            if (drawable != null) {
                drawable2 = drawable.mutate();
            }
            this.b = drawable2;
            if (this.b != null) {
                if (this.b.isStateful()) {
                    this.b.setState(getDrawableState());
                }
                android.support.v4.b.a.a.b(this.b, ai.g(this));
                this.b.setVisible(getVisibility() == 0, false);
                this.b.setCallback(this);
                this.b.setAlpha(this.r);
            }
            ai.c(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        boolean z = false;
        Drawable drawable = this.b;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.q;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        if (this.f52a != null) {
            z |= this.f52a.a(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.q || drawable == this.b;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        if (this.b != null && this.b.isVisible() != z) {
            this.b.setVisible(z, false);
        }
        if (this.q != null && this.q.isVisible() != z) {
            this.q.setVisible(z, false);
        }
    }

    public void setStatusBarScrimColor(int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(int i) {
        setStatusBarScrim(android.support.v4.content.b.a(getContext(), i));
    }

    public Drawable getStatusBarScrim() {
        return this.b;
    }

    public void setCollapsedTitleTextAppearance(int i) {
        this.f52a.c(i);
    }

    public void setCollapsedTitleTextColor(int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) {
        this.f52a.a(colorStateList);
    }

    public void setCollapsedTitleGravity(int i) {
        this.f52a.b(i);
    }

    public int getCollapsedTitleGravity() {
        return this.f52a.c();
    }

    public void setExpandedTitleTextAppearance(int i) {
        this.f52a.d(i);
    }

    public void setExpandedTitleColor(int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) {
        this.f52a.b(colorStateList);
    }

    public void setExpandedTitleGravity(int i) {
        this.f52a.a(i);
    }

    public int getExpandedTitleGravity() {
        return this.f52a.b();
    }

    public void setCollapsedTitleTypeface(Typeface typeface) {
        this.f52a.a(typeface);
    }

    public Typeface getCollapsedTitleTypeface() {
        return this.f52a.d();
    }

    public void setExpandedTitleTypeface(Typeface typeface) {
        this.f52a.b(typeface);
    }

    public Typeface getExpandedTitleTypeface() {
        return this.f52a.e();
    }

    public int getExpandedTitleMarginStart() {
        return this.j;
    }

    public void setExpandedTitleMarginStart(int i) {
        this.j = i;
        requestLayout();
    }

    public int getExpandedTitleMarginTop() {
        return this.k;
    }

    public void setExpandedTitleMarginTop(int i) {
        this.k = i;
        requestLayout();
    }

    public int getExpandedTitleMarginEnd() {
        return this.l;
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.l = i;
        requestLayout();
    }

    public int getExpandedTitleMarginBottom() {
        return this.m;
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.m = i;
        requestLayout();
    }

    public void setScrimVisibleHeightTrigger(int i) {
        if (this.v != i) {
            this.v = i;
            b();
        }
    }

    public int getScrimVisibleHeightTrigger() {
        if (this.v >= 0) {
            return this.v;
        }
        int b = this.d != null ? this.d.b() : 0;
        int q = ai.q(this);
        if (q > 0) {
            return Math.min(b + (q * 2), getHeight());
        }
        return getHeight() / 3;
    }

    public void setScrimAnimationDuration(long j) {
        this.u = j;
    }

    public long getScrimAnimationDuration() {
        return this.u;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* renamed from: a */
    public LayoutParams mo3generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* renamed from: a */
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends FrameLayout.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        int f55a;
        float b;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f55a = 0;
            this.b = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CollapsingToolbarLayout_Layout);
            this.f55a = obtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            a(obtainStyledAttributes.getFloat(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f55a = 0;
            this.b = 0.5f;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f55a = 0;
            this.b = 0.5f;
        }

        public void a(float f) {
            this.b = f;
        }
    }

    final void b() {
        if (this.q != null || this.b != null) {
            setScrimsShown(getHeight() + this.c < getScrimVisibleHeightTrigger());
        }
    }

    final int b(View view) {
        return ((getHeight() - a(view).c()) - view.getHeight()) - ((LayoutParams) view.getLayoutParams()).bottomMargin;
    }

    /* loaded from: classes.dex */
    private class a implements AppBarLayout.a {
        a() {
        }

        @Override // android.support.design.widget.AppBarLayout.a
        public void a(AppBarLayout appBarLayout, int i) {
            CollapsingToolbarLayout.this.c = i;
            int b = CollapsingToolbarLayout.this.d != null ? CollapsingToolbarLayout.this.d.b() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                w a2 = CollapsingToolbarLayout.a(childAt);
                switch (layoutParams.f55a) {
                    case 1:
                        a2.a(l.a(-i, 0, CollapsingToolbarLayout.this.b(childAt)));
                        break;
                    case 2:
                        a2.a(Math.round(layoutParams.b * (-i)));
                        break;
                }
            }
            CollapsingToolbarLayout.this.b();
            if (CollapsingToolbarLayout.this.b != null && b > 0) {
                ai.c(CollapsingToolbarLayout.this);
            }
            CollapsingToolbarLayout.this.f52a.b(Math.abs(i) / ((CollapsingToolbarLayout.this.getHeight() - ai.q(CollapsingToolbarLayout.this)) - b));
        }
    }
}
