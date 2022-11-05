package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.design.R;
import android.support.design.widget.r;
import android.support.v4.f.j;
import android.support.v4.view.ViewPager;
import android.support.v4.view.aa;
import android.support.v4.view.ac;
import android.support.v4.view.ai;
import android.support.v4.widget.z;
import android.support.v7.app.ActionBar;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
@ViewPager.a
/* loaded from: classes.dex */
public class TabLayout extends HorizontalScrollView {
    private static final j.a<e> n = new j.c(16);
    private DataSetObserver A;
    private f B;
    private a C;
    private boolean D;
    private final j.a<g> E;

    /* renamed from: a  reason: collision with root package name */
    int f76a;
    int b;
    int c;
    int d;
    int e;
    ColorStateList f;
    float g;
    float h;
    final int i;
    int j;
    int k;
    int l;
    ViewPager m;
    private final ArrayList<e> o;
    private e p;
    private final d q;
    private final int r;
    private final int s;
    private final int t;
    private int u;
    private b v;
    private final ArrayList<b> w;
    private b x;
    private r y;
    private aa z;

    /* loaded from: classes.dex */
    public interface b {
        void a(e eVar);

        void b(e eVar);

        void c(e eVar);
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.o = new ArrayList<>();
        this.j = Integer.MAX_VALUE;
        this.w = new ArrayList<>();
        this.E = new j.b(12);
        q.a(context);
        setHorizontalScrollBarEnabled(false);
        this.q = new d(context);
        super.addView(this.q, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TabLayout, i, R.style.Widget_Design_TabLayout);
        this.q.b(obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, 0));
        this.q.a(obtainStyledAttributes.getColor(R.styleable.TabLayout_tabIndicatorColor, 0));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
        this.d = dimensionPixelSize;
        this.c = dimensionPixelSize;
        this.b = dimensionPixelSize;
        this.f76a = dimensionPixelSize;
        this.f76a = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, this.f76a);
        this.b = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, this.b);
        this.c = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, this.c);
        this.d = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, this.d);
        this.e = obtainStyledAttributes.getResourceId(R.styleable.TabLayout_tabTextAppearance, R.style.TextAppearance_Design_Tab);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(this.e, android.support.v7.appcompat.R.styleable.TextAppearance);
        try {
            this.g = obtainStyledAttributes2.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.TextAppearance_android_textSize, 0);
            this.f = obtainStyledAttributes2.getColorStateList(android.support.v7.appcompat.R.styleable.TextAppearance_android_textColor);
            obtainStyledAttributes2.recycle();
            if (obtainStyledAttributes.hasValue(R.styleable.TabLayout_tabTextColor)) {
                this.f = obtainStyledAttributes.getColorStateList(R.styleable.TabLayout_tabTextColor);
            }
            if (obtainStyledAttributes.hasValue(R.styleable.TabLayout_tabSelectedTextColor)) {
                this.f = a(this.f.getDefaultColor(), obtainStyledAttributes.getColor(R.styleable.TabLayout_tabSelectedTextColor, 0));
            }
            this.r = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabMinWidth, -1);
            this.s = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, -1);
            this.i = obtainStyledAttributes.getResourceId(R.styleable.TabLayout_tabBackground, 0);
            this.u = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabContentStart, 0);
            this.l = obtainStyledAttributes.getInt(R.styleable.TabLayout_tabMode, 1);
            this.k = obtainStyledAttributes.getInt(R.styleable.TabLayout_tabGravity, 0);
            obtainStyledAttributes.recycle();
            Resources resources = getResources();
            this.h = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.t = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            g();
        } catch (Throwable th) {
            obtainStyledAttributes2.recycle();
            throw th;
        }
    }

    public void setSelectedTabIndicatorColor(int i) {
        this.q.a(i);
    }

    public void setSelectedTabIndicatorHeight(int i) {
        this.q.b(i);
    }

    public void a(int i, float f2, boolean z) {
        a(i, f2, z, true);
    }

    void a(int i, float f2, boolean z, boolean z2) {
        int round = Math.round(i + f2);
        if (round >= 0 && round < this.q.getChildCount()) {
            if (z2) {
                this.q.a(i, f2);
            }
            if (this.y != null && this.y.b()) {
                this.y.e();
            }
            scrollTo(a(i, f2), 0);
            if (z) {
                setSelectedTabView(round);
            }
        }
    }

    private float getScrollPosition() {
        return this.q.b();
    }

    public void a(e eVar) {
        a(eVar, this.o.isEmpty());
    }

    public void a(e eVar, boolean z) {
        a(eVar, this.o.size(), z);
    }

    public void a(e eVar, int i, boolean z) {
        if (eVar.f83a != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        a(eVar, i);
        d(eVar);
        if (z) {
            eVar.e();
        }
    }

    private void a(TabItem tabItem) {
        e a2 = a();
        if (tabItem.f75a != null) {
            a2.a(tabItem.f75a);
        }
        if (tabItem.b != null) {
            a2.a(tabItem.b);
        }
        if (tabItem.c != 0) {
            a2.a(tabItem.c);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            a2.b(tabItem.getContentDescription());
        }
        a(a2);
    }

    @Deprecated
    public void setOnTabSelectedListener(b bVar) {
        if (this.v != null) {
            b(this.v);
        }
        this.v = bVar;
        if (bVar != null) {
            a(bVar);
        }
    }

    public void a(b bVar) {
        if (!this.w.contains(bVar)) {
            this.w.add(bVar);
        }
    }

    public void b(b bVar) {
        this.w.remove(bVar);
    }

    public e a() {
        e a2 = n.a();
        if (a2 == null) {
            a2 = new e();
        }
        a2.f83a = this;
        a2.b = c(a2);
        return a2;
    }

    public int getTabCount() {
        return this.o.size();
    }

    public e a(int i) {
        if (i < 0 || i >= getTabCount()) {
            return null;
        }
        return this.o.get(i);
    }

    public int getSelectedTabPosition() {
        if (this.p != null) {
            return this.p.c();
        }
        return -1;
    }

    public void b() {
        for (int childCount = this.q.getChildCount() - 1; childCount >= 0; childCount--) {
            c(childCount);
        }
        Iterator<e> it = this.o.iterator();
        while (it.hasNext()) {
            e next = it.next();
            it.remove();
            next.i();
            n.a(next);
        }
        this.p = null;
    }

    public void setTabMode(int i) {
        if (i != this.l) {
            this.l = i;
            g();
        }
    }

    public int getTabMode() {
        return this.l;
    }

    public void setTabGravity(int i) {
        if (this.k != i) {
            this.k = i;
            g();
        }
    }

    public int getTabGravity() {
        return this.k;
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f != colorStateList) {
            this.f = colorStateList;
            d();
        }
    }

    public ColorStateList getTabTextColors() {
        return this.f;
    }

    public void setupWithViewPager(ViewPager viewPager) {
        a(viewPager, true);
    }

    public void a(ViewPager viewPager, boolean z) {
        a(viewPager, z, false);
    }

    private void a(ViewPager viewPager, boolean z, boolean z2) {
        if (this.m != null) {
            if (this.B != null) {
                this.m.removeOnPageChangeListener(this.B);
            }
            if (this.C != null) {
                this.m.removeOnAdapterChangeListener(this.C);
            }
        }
        if (this.x != null) {
            b(this.x);
            this.x = null;
        }
        if (viewPager != null) {
            this.m = viewPager;
            if (this.B == null) {
                this.B = new f(this);
            }
            this.B.a();
            viewPager.addOnPageChangeListener(this.B);
            this.x = new h(viewPager);
            a(this.x);
            aa adapter = viewPager.getAdapter();
            if (adapter != null) {
                a(adapter, z);
            }
            if (this.C == null) {
                this.C = new a();
            }
            this.C.a(z);
            viewPager.addOnAdapterChangeListener(this.C);
            a(viewPager.getCurrentItem(), BitmapDescriptorFactory.HUE_RED, true);
        } else {
            this.m = null;
            a((aa) null, false);
        }
        this.D = z2;
    }

    @Deprecated
    public void setTabsFromPagerAdapter(aa aaVar) {
        a(aaVar, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.m == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                a((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.D) {
            setupWithViewPager(null);
            this.D = false;
        }
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.q.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    void a(aa aaVar, boolean z) {
        if (this.z != null && this.A != null) {
            this.z.unregisterDataSetObserver(this.A);
        }
        this.z = aaVar;
        if (z && aaVar != null) {
            if (this.A == null) {
                this.A = new c();
            }
            aaVar.registerDataSetObserver(this.A);
        }
        c();
    }

    void c() {
        int currentItem;
        b();
        if (this.z != null) {
            int count = this.z.getCount();
            for (int i = 0; i < count; i++) {
                a(a().a(this.z.getPageTitle(i)), false);
            }
            if (this.m != null && count > 0 && (currentItem = this.m.getCurrentItem()) != getSelectedTabPosition() && currentItem < getTabCount()) {
                b(a(currentItem));
            }
        }
    }

    private void d() {
        int size = this.o.size();
        for (int i = 0; i < size; i++) {
            this.o.get(i).h();
        }
    }

    private g c(e eVar) {
        g a2 = this.E != null ? this.E.a() : null;
        if (a2 == null) {
            a2 = new g(getContext());
        }
        a2.a(eVar);
        a2.setFocusable(true);
        a2.setMinimumWidth(getTabMinWidth());
        return a2;
    }

    private void a(e eVar, int i) {
        eVar.b(i);
        this.o.add(i, eVar);
        int size = this.o.size();
        for (int i2 = i + 1; i2 < size; i2++) {
            this.o.get(i2).b(i2);
        }
    }

    private void d(e eVar) {
        this.q.addView(eVar.b, eVar.c(), e());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    private void a(View view) {
        if (view instanceof TabItem) {
            a((TabItem) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    private LinearLayout.LayoutParams e() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        a(layoutParams);
        return layoutParams;
    }

    private void a(LinearLayout.LayoutParams layoutParams) {
        if (this.l == 1 && this.k == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = BitmapDescriptorFactory.HUE_RED;
    }

    int b(int i) {
        return Math.round(getResources().getDisplayMetrics().density * i);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z;
        boolean z2 = true;
        int b2 = b(getDefaultHeight()) + getPaddingTop() + getPaddingBottom();
        switch (View.MeasureSpec.getMode(i2)) {
            case Integer.MIN_VALUE:
                i2 = View.MeasureSpec.makeMeasureSpec(Math.min(b2, View.MeasureSpec.getSize(i2)), 1073741824);
                break;
            case 0:
                i2 = View.MeasureSpec.makeMeasureSpec(b2, 1073741824);
                break;
        }
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) != 0) {
            this.j = this.s > 0 ? this.s : size - b(56);
        }
        super.onMeasure(i, i2);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            switch (this.l) {
                case 0:
                    if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 1:
                    if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                        z2 = false;
                    }
                    z = z2;
                    break;
                default:
                    z = false;
                    break;
            }
            if (z) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
            }
        }
    }

    private void c(int i) {
        g gVar = (g) this.q.getChildAt(i);
        this.q.removeViewAt(i);
        if (gVar != null) {
            gVar.a();
            this.E.a(gVar);
        }
        requestLayout();
    }

    private void d(int i) {
        if (i != -1) {
            if (getWindowToken() == null || !ai.F(this) || this.q.a()) {
                a(i, BitmapDescriptorFactory.HUE_RED, true);
                return;
            }
            int scrollX = getScrollX();
            int a2 = a(i, BitmapDescriptorFactory.HUE_RED);
            if (scrollX != a2) {
                f();
                this.y.a(scrollX, a2);
                this.y.a();
            }
            this.q.b(i, 300);
        }
    }

    private void f() {
        if (this.y == null) {
            this.y = x.a();
            this.y.a(android.support.design.widget.a.b);
            this.y.a(300L);
            this.y.a(new r.c() { // from class: android.support.design.widget.TabLayout.1
                @Override // android.support.design.widget.r.c
                public void a(r rVar) {
                    TabLayout.this.scrollTo(rVar.c(), 0);
                }
            });
        }
    }

    void setScrollAnimatorListener(r.a aVar) {
        f();
        this.y.a(aVar);
    }

    private void setSelectedTabView(int i) {
        int childCount = this.q.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                this.q.getChildAt(i2).setSelected(i2 == i);
                i2++;
            }
        }
    }

    void b(e eVar) {
        b(eVar, true);
    }

    void b(e eVar, boolean z) {
        e eVar2 = this.p;
        if (eVar2 == eVar) {
            if (eVar2 != null) {
                g(eVar);
                d(eVar.c());
                return;
            }
            return;
        }
        int c2 = eVar != null ? eVar.c() : -1;
        if (z) {
            if ((eVar2 == null || eVar2.c() == -1) && c2 != -1) {
                a(c2, BitmapDescriptorFactory.HUE_RED, true);
            } else {
                d(c2);
            }
            if (c2 != -1) {
                setSelectedTabView(c2);
            }
        }
        if (eVar2 != null) {
            f(eVar2);
        }
        this.p = eVar;
        if (eVar != null) {
            e(eVar);
        }
    }

    private void e(e eVar) {
        for (int size = this.w.size() - 1; size >= 0; size--) {
            this.w.get(size).a(eVar);
        }
    }

    private void f(e eVar) {
        for (int size = this.w.size() - 1; size >= 0; size--) {
            this.w.get(size).b(eVar);
        }
    }

    private void g(e eVar) {
        for (int size = this.w.size() - 1; size >= 0; size--) {
            this.w.get(size).c(eVar);
        }
    }

    private int a(int i, float f2) {
        int i2 = 0;
        if (this.l == 0) {
            View childAt = this.q.getChildAt(i);
            View childAt2 = i + 1 < this.q.getChildCount() ? this.q.getChildAt(i + 1) : null;
            int width = childAt != null ? childAt.getWidth() : 0;
            if (childAt2 != null) {
                i2 = childAt2.getWidth();
            }
            int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
            int i3 = (int) ((i2 + width) * 0.5f * f2);
            return ai.g(this) == 0 ? i3 + left : left - i3;
        }
        return 0;
    }

    private void g() {
        ai.b(this.q, this.l == 0 ? Math.max(0, this.u - this.f76a) : 0, 0, 0, 0);
        switch (this.l) {
            case 0:
                this.q.setGravity(8388611);
                break;
            case 1:
                this.q.setGravity(1);
                break;
        }
        a(true);
    }

    void a(boolean z) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.q.getChildCount()) {
                View childAt = this.q.getChildAt(i2);
                childAt.setMinimumWidth(getTabMinWidth());
                a((LinearLayout.LayoutParams) childAt.getLayoutParams());
                if (z) {
                    childAt.requestLayout();
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        TabLayout f83a;
        g b;
        private Object c;
        private Drawable d;
        private CharSequence e;
        private CharSequence f;
        private int g = -1;
        private View h;

        e() {
        }

        public View a() {
            return this.h;
        }

        public e a(View view) {
            this.h = view;
            h();
            return this;
        }

        public e a(int i) {
            return a(LayoutInflater.from(this.b.getContext()).inflate(i, (ViewGroup) this.b, false));
        }

        public Drawable b() {
            return this.d;
        }

        public int c() {
            return this.g;
        }

        void b(int i) {
            this.g = i;
        }

        public CharSequence d() {
            return this.e;
        }

        public e a(Drawable drawable) {
            this.d = drawable;
            h();
            return this;
        }

        public e a(CharSequence charSequence) {
            this.e = charSequence;
            h();
            return this;
        }

        public void e() {
            if (this.f83a == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            this.f83a.b(this);
        }

        public boolean f() {
            if (this.f83a == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return this.f83a.getSelectedTabPosition() == this.g;
        }

        public e b(CharSequence charSequence) {
            this.f = charSequence;
            h();
            return this;
        }

        public CharSequence g() {
            return this.f;
        }

        void h() {
            if (this.b != null) {
                this.b.b();
            }
        }

        void i() {
            this.f83a = null;
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = null;
            this.f = null;
            this.g = -1;
            this.h = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class g extends LinearLayout implements View.OnLongClickListener {
        private e b;
        private TextView c;
        private ImageView d;
        private View e;
        private TextView f;
        private ImageView g;
        private int h;

        public g(Context context) {
            super(context);
            this.h = 2;
            if (TabLayout.this.i != 0) {
                ai.a(this, android.support.v7.a.a.b.b(context, TabLayout.this.i));
            }
            ai.b(this, TabLayout.this.f76a, TabLayout.this.b, TabLayout.this.c, TabLayout.this.d);
            setGravity(17);
            setOrientation(1);
            setClickable(true);
            ai.a(this, ac.a(getContext(), 1002));
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean performClick = super.performClick();
            if (this.b != null) {
                if (!performClick) {
                    playSoundEffect(0);
                }
                this.b.e();
                return true;
            }
            return performClick;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            if (this.c != null) {
                this.c.setSelected(z);
            }
            if (this.d != null) {
                this.d.setSelected(z);
            }
            if (this.e != null) {
                this.e.setSelected(z);
            }
        }

        @Override // android.view.View
        @TargetApi(14)
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(ActionBar.b.class.getName());
        }

        @Override // android.view.View
        @TargetApi(14)
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(ActionBar.b.class.getName());
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            Layout layout;
            boolean z = true;
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i = View.MeasureSpec.makeMeasureSpec(TabLayout.this.j, Integer.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.c != null) {
                getResources();
                float f = TabLayout.this.g;
                int i3 = this.h;
                if (this.d != null && this.d.getVisibility() == 0) {
                    i3 = 1;
                } else if (this.c != null && this.c.getLineCount() > 1) {
                    f = TabLayout.this.h;
                }
                float textSize = this.c.getTextSize();
                int lineCount = this.c.getLineCount();
                int a2 = z.a(this.c);
                if (f != textSize || (a2 >= 0 && i3 != a2)) {
                    if (TabLayout.this.l == 1 && f > textSize && lineCount == 1 && ((layout = this.c.getLayout()) == null || a(layout, 0, f) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        z = false;
                    }
                    if (z) {
                        this.c.setTextSize(0, f);
                        this.c.setMaxLines(i3);
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        void a(e eVar) {
            if (eVar != this.b) {
                this.b = eVar;
                b();
            }
        }

        void a() {
            a(null);
            setSelected(false);
        }

        final void b() {
            e eVar = this.b;
            View a2 = eVar != null ? eVar.a() : null;
            if (a2 != null) {
                ViewParent parent = a2.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(a2);
                    }
                    addView(a2);
                }
                this.e = a2;
                if (this.c != null) {
                    this.c.setVisibility(8);
                }
                if (this.d != null) {
                    this.d.setVisibility(8);
                    this.d.setImageDrawable(null);
                }
                this.f = (TextView) a2.findViewById(16908308);
                if (this.f != null) {
                    this.h = z.a(this.f);
                }
                this.g = (ImageView) a2.findViewById(16908294);
            } else {
                if (this.e != null) {
                    removeView(this.e);
                    this.e = null;
                }
                this.f = null;
                this.g = null;
            }
            if (this.e == null) {
                if (this.d == null) {
                    ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                    addView(imageView, 0);
                    this.d = imageView;
                }
                if (this.c == null) {
                    TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, (ViewGroup) this, false);
                    addView(textView);
                    this.c = textView;
                    this.h = z.a(this.c);
                }
                z.a(this.c, TabLayout.this.e);
                if (TabLayout.this.f != null) {
                    this.c.setTextColor(TabLayout.this.f);
                }
                a(this.c, this.d);
            } else if (this.f != null || this.g != null) {
                a(this.f, this.g);
            }
            setSelected(eVar != null && eVar.f());
        }

        private void a(TextView textView, ImageView imageView) {
            Drawable b = this.b != null ? this.b.b() : null;
            CharSequence d = this.b != null ? this.b.d() : null;
            CharSequence g = this.b != null ? this.b.g() : null;
            if (imageView != null) {
                if (b != null) {
                    imageView.setImageDrawable(b);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
                imageView.setContentDescription(g);
            }
            boolean z = !TextUtils.isEmpty(d);
            if (textView != null) {
                if (z) {
                    textView.setText(d);
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
                textView.setContentDescription(g);
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int b2 = (!z || imageView.getVisibility() != 0) ? 0 : TabLayout.this.b(8);
                if (b2 != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = b2;
                    imageView.requestLayout();
                }
            }
            if (!z && !TextUtils.isEmpty(g)) {
                setOnLongClickListener(this);
                return;
            }
            setOnLongClickListener(null);
            setLongClickable(false);
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            int[] iArr = new int[2];
            Rect rect = new Rect();
            getLocationOnScreen(iArr);
            getWindowVisibleDisplayFrame(rect);
            Context context = getContext();
            int width = getWidth();
            int height = getHeight();
            int i = iArr[1] + (height / 2);
            int i2 = (width / 2) + iArr[0];
            if (ai.g(view) == 0) {
                i2 = context.getResources().getDisplayMetrics().widthPixels - i2;
            }
            Toast makeText = Toast.makeText(context, this.b.g(), 0);
            if (i < rect.height()) {
                makeText.setGravity(8388661, i2, (iArr[1] + height) - rect.top);
            } else {
                makeText.setGravity(81, 0, height);
            }
            makeText.show();
            return true;
        }

        private float a(Layout layout, int i, float f) {
            return layout.getLineWidth(i) * (f / layout.getPaint().getTextSize());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d extends LinearLayout {

        /* renamed from: a  reason: collision with root package name */
        int f80a;
        float b;
        private int d;
        private final Paint e;
        private int f;
        private int g;
        private r h;

        d(Context context) {
            super(context);
            this.f80a = -1;
            this.f = -1;
            this.g = -1;
            setWillNotDraw(false);
            this.e = new Paint();
        }

        void a(int i) {
            if (this.e.getColor() != i) {
                this.e.setColor(i);
                ai.c(this);
            }
        }

        void b(int i) {
            if (this.d != i) {
                this.d = i;
                ai.c(this);
            }
        }

        boolean a() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        void a(int i, float f) {
            if (this.h != null && this.h.b()) {
                this.h.e();
            }
            this.f80a = i;
            this.b = f;
            c();
        }

        float b() {
            return this.f80a + this.b;
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            boolean z;
            boolean z2 = false;
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) == 1073741824 && TabLayout.this.l == 1 && TabLayout.this.k == 1) {
                int childCount = getChildCount();
                int i3 = 0;
                int i4 = 0;
                while (i3 < childCount) {
                    View childAt = getChildAt(i3);
                    i3++;
                    i4 = childAt.getVisibility() == 0 ? Math.max(i4, childAt.getMeasuredWidth()) : i4;
                }
                if (i4 > 0) {
                    if (i4 * childCount <= getMeasuredWidth() - (TabLayout.this.b(16) * 2)) {
                        int i5 = 0;
                        while (i5 < childCount) {
                            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i5).getLayoutParams();
                            if (layoutParams.width == i4 && layoutParams.weight == BitmapDescriptorFactory.HUE_RED) {
                                z = z2;
                            } else {
                                layoutParams.width = i4;
                                layoutParams.weight = BitmapDescriptorFactory.HUE_RED;
                                z = true;
                            }
                            i5++;
                            z2 = z;
                        }
                    } else {
                        TabLayout.this.k = 0;
                        TabLayout.this.a(false);
                        z2 = true;
                    }
                    if (z2) {
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.h != null && this.h.b()) {
                this.h.e();
                b(this.f80a, Math.round(((float) this.h.h()) * (1.0f - this.h.f())));
                return;
            }
            c();
        }

        private void c() {
            int i;
            int i2;
            View childAt = getChildAt(this.f80a);
            if (childAt != null && childAt.getWidth() > 0) {
                i2 = childAt.getLeft();
                i = childAt.getRight();
                if (this.b > BitmapDescriptorFactory.HUE_RED && this.f80a < getChildCount() - 1) {
                    View childAt2 = getChildAt(this.f80a + 1);
                    i2 = (int) ((i2 * (1.0f - this.b)) + (this.b * childAt2.getLeft()));
                    i = (int) ((i * (1.0f - this.b)) + (childAt2.getRight() * this.b));
                }
            } else {
                i = -1;
                i2 = -1;
            }
            a(i2, i);
        }

        void a(int i, int i2) {
            if (i != this.f || i2 != this.g) {
                this.f = i;
                this.g = i2;
                ai.c(this);
            }
        }

        void b(final int i, int i2) {
            final int i3;
            final int i4;
            if (this.h != null && this.h.b()) {
                this.h.e();
            }
            boolean z = ai.g(this) == 1;
            View childAt = getChildAt(i);
            if (childAt == null) {
                c();
                return;
            }
            final int left = childAt.getLeft();
            final int right = childAt.getRight();
            if (Math.abs(i - this.f80a) <= 1) {
                i4 = this.f;
                i3 = this.g;
            } else {
                int b = TabLayout.this.b(24);
                if (i < this.f80a) {
                    if (z) {
                        i3 = left - b;
                        i4 = i3;
                    } else {
                        i3 = right + b;
                        i4 = i3;
                    }
                } else if (z) {
                    i3 = right + b;
                    i4 = i3;
                } else {
                    i3 = left - b;
                    i4 = i3;
                }
            }
            if (i4 != left || i3 != right) {
                r a2 = x.a();
                this.h = a2;
                a2.a(android.support.design.widget.a.b);
                a2.a(i2);
                a2.a(BitmapDescriptorFactory.HUE_RED, 1.0f);
                a2.a(new r.c() { // from class: android.support.design.widget.TabLayout.d.1
                    @Override // android.support.design.widget.r.c
                    public void a(r rVar) {
                        float f = rVar.f();
                        d.this.a(android.support.design.widget.a.a(i4, left, f), android.support.design.widget.a.a(i3, right, f));
                    }
                });
                a2.a(new r.b() { // from class: android.support.design.widget.TabLayout.d.2
                    @Override // android.support.design.widget.r.b, android.support.design.widget.r.a
                    public void b(r rVar) {
                        d.this.f80a = i;
                        d.this.b = BitmapDescriptorFactory.HUE_RED;
                    }
                });
                a2.a();
            }
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            super.draw(canvas);
            if (this.f >= 0 && this.g > this.f) {
                canvas.drawRect(this.f, getHeight() - this.d, this.g, getHeight(), this.e);
            }
        }
    }

    private static ColorStateList a(int i, int i2) {
        return new ColorStateList(new int[][]{SELECTED_STATE_SET, EMPTY_STATE_SET}, new int[]{i2, i});
    }

    private int getDefaultHeight() {
        boolean z;
        int size = this.o.size();
        int i = 0;
        while (true) {
            if (i < size) {
                e eVar = this.o.get(i);
                if (eVar == null || eVar.b() == null || TextUtils.isEmpty(eVar.d())) {
                    i++;
                } else {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        return z ? 72 : 48;
    }

    private int getTabMinWidth() {
        if (this.r != -1) {
            return this.r;
        }
        if (this.l != 0) {
            return 0;
        }
        return this.t;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    int getTabMaxWidth() {
        return this.j;
    }

    /* loaded from: classes.dex */
    public static class f implements ViewPager.e {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<TabLayout> f84a;
        private int b;
        private int c;

        public f(TabLayout tabLayout) {
            this.f84a = new WeakReference<>(tabLayout);
        }

        @Override // android.support.v4.view.ViewPager.e
        public void a(int i) {
            this.b = this.c;
            this.c = i;
        }

        @Override // android.support.v4.view.ViewPager.e
        public void a(int i, float f, int i2) {
            boolean z = false;
            TabLayout tabLayout = this.f84a.get();
            if (tabLayout != null) {
                boolean z2 = this.c != 2 || this.b == 1;
                if (this.c != 2 || this.b != 0) {
                    z = true;
                }
                tabLayout.a(i, f, z2, z);
            }
        }

        @Override // android.support.v4.view.ViewPager.e
        public void b(int i) {
            TabLayout tabLayout = this.f84a.get();
            if (tabLayout != null && tabLayout.getSelectedTabPosition() != i && i < tabLayout.getTabCount()) {
                tabLayout.b(tabLayout.a(i), this.c == 0 || (this.c == 2 && this.b == 0));
            }
        }

        void a() {
            this.c = 0;
            this.b = 0;
        }
    }

    /* loaded from: classes.dex */
    public static class h implements b {

        /* renamed from: a  reason: collision with root package name */
        private final ViewPager f86a;

        public h(ViewPager viewPager) {
            this.f86a = viewPager;
        }

        @Override // android.support.design.widget.TabLayout.b
        public void a(e eVar) {
            this.f86a.setCurrentItem(eVar.c());
        }

        @Override // android.support.design.widget.TabLayout.b
        public void b(e eVar) {
        }

        @Override // android.support.design.widget.TabLayout.b
        public void c(e eVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends DataSetObserver {
        c() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.c();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements ViewPager.d {
        private boolean b;

        a() {
        }

        @Override // android.support.v4.view.ViewPager.d
        public void a(ViewPager viewPager, aa aaVar, aa aaVar2) {
            if (TabLayout.this.m == viewPager) {
                TabLayout.this.a(aaVar2, this.b);
            }
        }

        void a(boolean z) {
            this.b = z;
        }
    }
}
