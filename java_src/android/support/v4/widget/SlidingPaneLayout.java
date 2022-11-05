package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ai;
import android.support.v4.widget.ag;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class SlidingPaneLayout extends ViewGroup {
    static final e h;

    /* renamed from: a  reason: collision with root package name */
    View f485a;
    float b;
    int c;
    boolean d;
    final ag e;
    boolean f;
    final ArrayList<b> g;
    private int i;
    private int j;
    private Drawable k;
    private Drawable l;
    private final int m;
    private boolean n;
    private float o;
    private int p;
    private float q;
    private float r;
    private d s;
    private boolean t;
    private final Rect u;

    /* loaded from: classes.dex */
    public interface d {
        void a(View view);

        void a(View view, float f);

        void b(View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface e {
        void a(SlidingPaneLayout slidingPaneLayout, View view);
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            h = new h();
        } else if (i >= 16) {
            h = new g();
        } else {
            h = new f();
        }
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.i = -858993460;
        this.t = true;
        this.u = new Rect();
        this.g = new ArrayList<>();
        float f2 = context.getResources().getDisplayMetrics().density;
        this.m = (int) ((32.0f * f2) + 0.5f);
        ViewConfiguration.get(context);
        setWillNotDraw(false);
        ai.a(this, new a());
        ai.c((View) this, 1);
        this.e = ag.a(this, 0.5f, new c());
        this.e.a(f2 * 400.0f);
    }

    public void setParallaxDistance(int i) {
        this.p = i;
        requestLayout();
    }

    public int getParallaxDistance() {
        return this.p;
    }

    public void setSliderFadeColor(int i) {
        this.i = i;
    }

    public int getSliderFadeColor() {
        return this.i;
    }

    public void setCoveredFadeColor(int i) {
        this.j = i;
    }

    public int getCoveredFadeColor() {
        return this.j;
    }

    public void setPanelSlideListener(d dVar) {
        this.s = dVar;
    }

    void a(View view) {
        if (this.s != null) {
            this.s.a(view, this.b);
        }
    }

    void b(View view) {
        if (this.s != null) {
            this.s.a(view);
        }
        sendAccessibilityEvent(32);
    }

    void c(View view) {
        if (this.s != null) {
            this.s.b(view);
        }
        sendAccessibilityEvent(32);
    }

    void d(View view) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean f2 = f();
        int width = f2 ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = f2 ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view != null && g(view)) {
            i4 = view.getLeft();
            i3 = view.getRight();
            i2 = view.getTop();
            i = view.getBottom();
        } else {
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        }
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt != view) {
                if (childAt.getVisibility() != 8) {
                    int max = Math.max(f2 ? paddingLeft : width, childAt.getLeft());
                    int max2 = Math.max(paddingTop, childAt.getTop());
                    int min = Math.min(f2 ? width : paddingLeft, childAt.getRight());
                    int min2 = Math.min(height, childAt.getBottom());
                    if (max >= i4 && max2 >= i2 && min <= i3 && min2 <= i) {
                        i5 = 4;
                    } else {
                        i5 = 0;
                    }
                    childAt.setVisibility(i5);
                }
            } else {
                return;
            }
        }
    }

    void a() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    private static boolean g(View view) {
        Drawable background;
        if (view.isOpaque()) {
            return true;
        }
        return Build.VERSION.SDK_INT < 18 && (background = view.getBackground()) != null && background.getOpacity() == -1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.t = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.t = true;
        int size = this.g.size();
        for (int i = 0; i < size; i++) {
            this.g.get(i).run();
        }
        this.g.clear();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int paddingTop;
        int makeMeasureSpec;
        int makeMeasureSpec2;
        int makeMeasureSpec3;
        int makeMeasureSpec4;
        int i7;
        int i8;
        boolean z;
        float f2;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            if (isInEditMode()) {
                if (mode == Integer.MIN_VALUE) {
                    i3 = mode2;
                    i4 = size;
                    i5 = size2;
                } else {
                    if (mode == 0) {
                        i3 = mode2;
                        i4 = 300;
                        i5 = size2;
                    }
                    i3 = mode2;
                    i4 = size;
                    i5 = size2;
                }
            } else {
                throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
            }
        } else {
            if (mode2 == 0) {
                if (isInEditMode()) {
                    if (mode2 == 0) {
                        i3 = Integer.MIN_VALUE;
                        i4 = size;
                        i5 = 300;
                    }
                } else {
                    throw new IllegalStateException("Height must not be UNSPECIFIED");
                }
            }
            i3 = mode2;
            i4 = size;
            i5 = size2;
        }
        switch (i3) {
            case Integer.MIN_VALUE:
                i6 = 0;
                paddingTop = (i5 - getPaddingTop()) - getPaddingBottom();
                break;
            case 1073741824:
                i6 = (i5 - getPaddingTop()) - getPaddingBottom();
                paddingTop = i6;
                break;
            default:
                i6 = 0;
                paddingTop = -1;
                break;
        }
        boolean z2 = false;
        int paddingLeft = (i4 - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        this.f485a = null;
        int i9 = 0;
        int i10 = paddingLeft;
        int i11 = i6;
        float f3 = 0.0f;
        while (i9 < childCount) {
            View childAt = getChildAt(i9);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.c = false;
                i7 = i10;
                f2 = f3;
                i8 = i11;
                z = z2;
            } else {
                if (layoutParams.f486a > BitmapDescriptorFactory.HUE_RED) {
                    f3 += layoutParams.f486a;
                    if (layoutParams.width == 0) {
                        i7 = i10;
                        f2 = f3;
                        i8 = i11;
                        z = z2;
                    }
                }
                int i12 = layoutParams.leftMargin + layoutParams.rightMargin;
                if (layoutParams.width == -2) {
                    makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(paddingLeft - i12, Integer.MIN_VALUE);
                } else if (layoutParams.width == -1) {
                    makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(paddingLeft - i12, 1073741824);
                } else {
                    makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824);
                }
                if (layoutParams.height == -2) {
                    makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                } else if (layoutParams.height == -1) {
                    makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                } else {
                    makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
                }
                childAt.measure(makeMeasureSpec3, makeMeasureSpec4);
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (i3 == Integer.MIN_VALUE && measuredHeight > i11) {
                    i11 = Math.min(measuredHeight, paddingTop);
                }
                int i13 = i10 - measuredWidth;
                boolean z3 = i13 < 0;
                layoutParams.b = z3;
                boolean z4 = z3 | z2;
                if (layoutParams.b) {
                    this.f485a = childAt;
                }
                i7 = i13;
                i8 = i11;
                float f4 = f3;
                z = z4;
                f2 = f4;
            }
            i9++;
            z2 = z;
            i11 = i8;
            f3 = f2;
            i10 = i7;
        }
        if (z2 || f3 > BitmapDescriptorFactory.HUE_RED) {
            int i14 = paddingLeft - this.m;
            for (int i15 = 0; i15 < childCount; i15++) {
                View childAt2 = getChildAt(i15);
                if (childAt2.getVisibility() != 8) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != 8) {
                        boolean z5 = layoutParams2.width == 0 && layoutParams2.f486a > BitmapDescriptorFactory.HUE_RED;
                        int measuredWidth2 = z5 ? 0 : childAt2.getMeasuredWidth();
                        if (z2 && childAt2 != this.f485a) {
                            if (layoutParams2.width < 0 && (measuredWidth2 > i14 || layoutParams2.f486a > BitmapDescriptorFactory.HUE_RED)) {
                                if (z5) {
                                    if (layoutParams2.height == -2) {
                                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                                    } else if (layoutParams2.height == -1) {
                                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                                    } else {
                                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824);
                                    }
                                } else {
                                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                }
                                childAt2.measure(View.MeasureSpec.makeMeasureSpec(i14, 1073741824), makeMeasureSpec2);
                            }
                        } else if (layoutParams2.f486a > BitmapDescriptorFactory.HUE_RED) {
                            if (layoutParams2.width == 0) {
                                if (layoutParams2.height == -2) {
                                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                                } else if (layoutParams2.height == -1) {
                                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                                } else {
                                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824);
                                }
                            } else {
                                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                            }
                            if (z2) {
                                int i16 = paddingLeft - (layoutParams2.rightMargin + layoutParams2.leftMargin);
                                int makeMeasureSpec5 = View.MeasureSpec.makeMeasureSpec(i16, 1073741824);
                                if (measuredWidth2 != i16) {
                                    childAt2.measure(makeMeasureSpec5, makeMeasureSpec);
                                }
                            } else {
                                childAt2.measure(View.MeasureSpec.makeMeasureSpec(((int) ((layoutParams2.f486a * Math.max(0, i10)) / f3)) + measuredWidth2, 1073741824), makeMeasureSpec);
                            }
                        }
                    }
                }
            }
        }
        setMeasuredDimension(i4, getPaddingTop() + i11 + getPaddingBottom());
        this.n = z2;
        if (this.e.a() != 0 && !z2) {
            this.e.f();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int width;
        int i9;
        boolean f2 = f();
        if (f2) {
            this.e.a(2);
        } else {
            this.e.a(1);
        }
        int i10 = i3 - i;
        int paddingRight = f2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = f2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.t) {
            this.b = (!this.n || !this.f) ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        }
        int i11 = 0;
        int i12 = paddingRight;
        while (i11 < childCount) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 8) {
                width = paddingRight;
                i9 = i12;
            } else {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.b) {
                    int min = (Math.min(paddingRight, (i10 - paddingLeft) - this.m) - i12) - (layoutParams.leftMargin + layoutParams.rightMargin);
                    this.c = min;
                    int i13 = f2 ? layoutParams.rightMargin : layoutParams.leftMargin;
                    layoutParams.c = ((i12 + i13) + min) + (measuredWidth / 2) > i10 - paddingLeft;
                    int i14 = (int) (min * this.b);
                    i6 = i12 + i13 + i14;
                    this.b = i14 / this.c;
                    i5 = 0;
                } else if (!this.n || this.p == 0) {
                    i5 = 0;
                    i6 = paddingRight;
                } else {
                    i5 = (int) ((1.0f - this.b) * this.p);
                    i6 = paddingRight;
                }
                if (f2) {
                    i8 = (i10 - i6) + i5;
                    i7 = i8 - measuredWidth;
                } else {
                    i7 = i6 - i5;
                    i8 = i7 + measuredWidth;
                }
                childAt.layout(i7, paddingTop, i8, childAt.getMeasuredHeight() + paddingTop);
                width = childAt.getWidth() + paddingRight;
                i9 = i6;
            }
            i11++;
            paddingRight = width;
            i12 = i9;
        }
        if (this.t) {
            if (this.n) {
                if (this.p != 0) {
                    a(this.b);
                }
                if (((LayoutParams) this.f485a.getLayoutParams()).c) {
                    a(this.f485a, this.b, this.i);
                }
            } else {
                for (int i15 = 0; i15 < childCount; i15++) {
                    a(getChildAt(i15), BitmapDescriptorFactory.HUE_RED, this.i);
                }
            }
            d(this.f485a);
        }
        this.t = false;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.t = true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.n) {
            this.f = view == this.f485a;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View childAt;
        int a2 = android.support.v4.view.t.a(motionEvent);
        if (!this.n && a2 == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.f = !this.e.b(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.n || (this.d && a2 != 0)) {
            this.e.e();
            return super.onInterceptTouchEvent(motionEvent);
        } else if (a2 == 3 || a2 == 1) {
            this.e.e();
            return false;
        } else {
            switch (a2) {
                case 0:
                    this.d = false;
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    this.q = x;
                    this.r = y;
                    if (this.e.b(this.f485a, (int) x, (int) y) && f(this.f485a)) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                case 1:
                default:
                    z = false;
                    break;
                case 2:
                    float x2 = motionEvent.getX();
                    float y2 = motionEvent.getY();
                    float abs = Math.abs(x2 - this.q);
                    float abs2 = Math.abs(y2 - this.r);
                    if (abs > this.e.d() && abs2 > abs) {
                        this.e.e();
                        this.d = true;
                        return false;
                    }
                    z = false;
                    break;
            }
            return this.e.a(motionEvent) || z;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.n) {
            return super.onTouchEvent(motionEvent);
        }
        this.e.b(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.q = x;
                this.r = y;
                return true;
            case 1:
                if (!f(this.f485a)) {
                    return true;
                }
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                float f2 = x2 - this.q;
                float f3 = y2 - this.r;
                int d2 = this.e.d();
                if ((f2 * f2) + (f3 * f3) >= d2 * d2 || !this.e.b(this.f485a, (int) x2, (int) y2)) {
                    return true;
                }
                a(this.f485a, 0);
                return true;
            default:
                return true;
        }
    }

    private boolean a(View view, int i) {
        if (this.t || a(BitmapDescriptorFactory.HUE_RED, i)) {
            this.f = false;
            return true;
        }
        return false;
    }

    private boolean b(View view, int i) {
        if (this.t || a(1.0f, i)) {
            this.f = true;
            return true;
        }
        return false;
    }

    public boolean b() {
        return b(this.f485a, 0);
    }

    public boolean c() {
        return a(this.f485a, 0);
    }

    public boolean d() {
        return !this.n || this.b == 1.0f;
    }

    public boolean e() {
        return this.n;
    }

    void a(int i) {
        if (this.f485a == null) {
            this.b = BitmapDescriptorFactory.HUE_RED;
            return;
        }
        boolean f2 = f();
        LayoutParams layoutParams = (LayoutParams) this.f485a.getLayoutParams();
        int width = this.f485a.getWidth();
        if (f2) {
            i = (getWidth() - i) - width;
        }
        this.b = (i - ((f2 ? layoutParams.rightMargin : layoutParams.leftMargin) + (f2 ? getPaddingRight() : getPaddingLeft()))) / this.c;
        if (this.p != 0) {
            a(this.b);
        }
        if (layoutParams.c) {
            a(this.f485a, this.b, this.i);
        }
        a(this.f485a);
    }

    private void a(View view, float f2, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f2 > BitmapDescriptorFactory.HUE_RED && i != 0) {
            int i2 = (((int) ((((-16777216) & i) >>> 24) * f2)) << 24) | (16777215 & i);
            if (layoutParams.d == null) {
                layoutParams.d = new Paint();
            }
            layoutParams.d.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_OVER));
            if (ai.f(view) != 2) {
                ai.a(view, 2, layoutParams.d);
            }
            e(view);
        } else if (ai.f(view) != 0) {
            if (layoutParams.d != null) {
                layoutParams.d.setColorFilter(null);
            }
            b bVar = new b(view);
            this.g.add(bVar);
            ai.a(this, bVar);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean drawChild;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save(2);
        if (this.n && !layoutParams.b && this.f485a != null) {
            canvas.getClipBounds(this.u);
            if (f()) {
                this.u.left = Math.max(this.u.left, this.f485a.getRight());
            } else {
                this.u.right = Math.min(this.u.right, this.f485a.getLeft());
            }
            canvas.clipRect(this.u);
        }
        if (Build.VERSION.SDK_INT >= 11) {
            drawChild = super.drawChild(canvas, view, j);
        } else if (layoutParams.c && this.b > BitmapDescriptorFactory.HUE_RED) {
            if (!view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(true);
            }
            Bitmap drawingCache = view.getDrawingCache();
            if (drawingCache != null) {
                canvas.drawBitmap(drawingCache, view.getLeft(), view.getTop(), layoutParams.d);
                drawChild = false;
            } else {
                Log.e("SlidingPaneLayout", "drawChild: child view " + view + " returned null drawing cache");
                drawChild = super.drawChild(canvas, view, j);
            }
        } else {
            if (view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(false);
            }
            drawChild = super.drawChild(canvas, view, j);
        }
        canvas.restoreToCount(save);
        return drawChild;
    }

    void e(View view) {
        h.a(this, view);
    }

    boolean a(float f2, int i) {
        int paddingLeft;
        if (!this.n) {
            return false;
        }
        boolean f3 = f();
        LayoutParams layoutParams = (LayoutParams) this.f485a.getLayoutParams();
        if (f3) {
            paddingLeft = (int) (getWidth() - (((layoutParams.rightMargin + getPaddingRight()) + (this.c * f2)) + this.f485a.getWidth()));
        } else {
            paddingLeft = (int) (layoutParams.leftMargin + getPaddingLeft() + (this.c * f2));
        }
        if (!this.e.a(this.f485a, paddingLeft, this.f485a.getTop())) {
            return false;
        }
        a();
        ai.c(this);
        return true;
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.e.a(true)) {
            if (!this.n) {
                this.e.f();
            } else {
                ai.c(this);
            }
        }
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable) {
        this.k = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable) {
        this.l = drawable;
    }

    @Deprecated
    public void setShadowResource(int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        setShadowDrawableLeft(android.support.v4.content.b.a(getContext(), i));
    }

    public void setShadowResourceRight(int i) {
        setShadowDrawableRight(android.support.v4.content.b.a(getContext(), i));
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        int left;
        int i;
        super.draw(canvas);
        if (f()) {
            drawable = this.l;
        } else {
            drawable = this.k;
        }
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt != null && drawable != null) {
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (f()) {
                i = childAt.getRight();
                left = i + intrinsicWidth;
            } else {
                left = childAt.getLeft();
                i = left - intrinsicWidth;
            }
            drawable.setBounds(i, top, left, bottom);
            drawable.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(float f2) {
        boolean z;
        int childCount;
        int i;
        boolean f3 = f();
        LayoutParams layoutParams = (LayoutParams) this.f485a.getLayoutParams();
        if (layoutParams.c) {
            if ((f3 ? layoutParams.rightMargin : layoutParams.leftMargin) <= 0) {
                z = true;
                childCount = getChildCount();
                for (i = 0; i < childCount; i++) {
                    View childAt = getChildAt(i);
                    if (childAt != this.f485a) {
                        this.o = f2;
                        int i2 = ((int) ((1.0f - this.o) * this.p)) - ((int) ((1.0f - f2) * this.p));
                        if (f3) {
                            i2 = -i2;
                        }
                        childAt.offsetLeftAndRight(i2);
                        if (z) {
                            a(childAt, f3 ? this.o - 1.0f : 1.0f - this.o, this.j);
                        }
                    }
                }
            }
        }
        z = false;
        childCount = getChildCount();
        while (i < childCount) {
        }
    }

    boolean f(View view) {
        if (view == null) {
            return false;
        }
        return this.n && ((LayoutParams) view.getLayoutParams()).c && this.b > BitmapDescriptorFactory.HUE_RED;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f487a = e() ? d() : this.f;
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
        if (savedState.f487a) {
            b();
        } else {
            c();
        }
        this.f = savedState.f487a;
    }

    /* loaded from: classes.dex */
    private class c extends ag.a {
        c() {
        }

        @Override // android.support.v4.widget.ag.a
        public boolean a(View view, int i) {
            if (SlidingPaneLayout.this.d) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).b;
        }

        @Override // android.support.v4.widget.ag.a
        public void a(int i) {
            if (SlidingPaneLayout.this.e.a() == 0) {
                if (SlidingPaneLayout.this.b == BitmapDescriptorFactory.HUE_RED) {
                    SlidingPaneLayout.this.d(SlidingPaneLayout.this.f485a);
                    SlidingPaneLayout.this.c(SlidingPaneLayout.this.f485a);
                    SlidingPaneLayout.this.f = false;
                    return;
                }
                SlidingPaneLayout.this.b(SlidingPaneLayout.this.f485a);
                SlidingPaneLayout.this.f = true;
            }
        }

        @Override // android.support.v4.widget.ag.a
        public void b(View view, int i) {
            SlidingPaneLayout.this.a();
        }

        @Override // android.support.v4.widget.ag.a
        public void a(View view, int i, int i2, int i3, int i4) {
            SlidingPaneLayout.this.a(i);
            SlidingPaneLayout.this.invalidate();
        }

        @Override // android.support.v4.widget.ag.a
        public void a(View view, float f, float f2) {
            int paddingLeft;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (SlidingPaneLayout.this.f()) {
                int paddingRight = layoutParams.rightMargin + SlidingPaneLayout.this.getPaddingRight();
                if (f < BitmapDescriptorFactory.HUE_RED || (f == BitmapDescriptorFactory.HUE_RED && SlidingPaneLayout.this.b > 0.5f)) {
                    paddingRight += SlidingPaneLayout.this.c;
                }
                paddingLeft = (SlidingPaneLayout.this.getWidth() - paddingRight) - SlidingPaneLayout.this.f485a.getWidth();
            } else {
                paddingLeft = layoutParams.leftMargin + SlidingPaneLayout.this.getPaddingLeft();
                if (f > BitmapDescriptorFactory.HUE_RED || (f == BitmapDescriptorFactory.HUE_RED && SlidingPaneLayout.this.b > 0.5f)) {
                    paddingLeft += SlidingPaneLayout.this.c;
                }
            }
            SlidingPaneLayout.this.e.a(paddingLeft, view.getTop());
            SlidingPaneLayout.this.invalidate();
        }

        @Override // android.support.v4.widget.ag.a
        public int b(View view) {
            return SlidingPaneLayout.this.c;
        }

        @Override // android.support.v4.widget.ag.a
        public int b(View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.f485a.getLayoutParams();
            if (SlidingPaneLayout.this.f()) {
                int width = SlidingPaneLayout.this.getWidth() - ((layoutParams.rightMargin + SlidingPaneLayout.this.getPaddingRight()) + SlidingPaneLayout.this.f485a.getWidth());
                return Math.max(Math.min(i, width), width - SlidingPaneLayout.this.c);
            }
            int paddingLeft = layoutParams.leftMargin + SlidingPaneLayout.this.getPaddingLeft();
            return Math.min(Math.max(i, paddingLeft), SlidingPaneLayout.this.c + paddingLeft);
        }

        @Override // android.support.v4.widget.ag.a
        public int a(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // android.support.v4.widget.ag.a
        public void b(int i, int i2) {
            SlidingPaneLayout.this.e.a(SlidingPaneLayout.this.f485a, i2);
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        private static final int[] e = {16843137};

        /* renamed from: a  reason: collision with root package name */
        public float f486a;
        boolean b;
        boolean c;
        Paint d;

        public LayoutParams() {
            super(-1, -1);
            this.f486a = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f486a = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f486a = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f486a = BitmapDescriptorFactory.HUE_RED;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e);
            this.f486a = obtainStyledAttributes.getFloat(0, BitmapDescriptorFactory.HUE_RED);
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = android.support.v4.os.e.a(new android.support.v4.os.f<SavedState>() { // from class: android.support.v4.widget.SlidingPaneLayout.SavedState.1
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
        boolean f487a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f487a = parcel.readInt() != 0;
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f487a ? 1 : 0);
        }
    }

    /* loaded from: classes.dex */
    static class f implements e {
        f() {
        }

        @Override // android.support.v4.widget.SlidingPaneLayout.e
        public void a(SlidingPaneLayout slidingPaneLayout, View view) {
            ai.a(slidingPaneLayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    /* loaded from: classes.dex */
    static class g extends f {

        /* renamed from: a  reason: collision with root package name */
        private Method f491a;
        private Field b;

        g() {
            try {
                this.f491a = View.class.getDeclaredMethod("getDisplayList", null);
            } catch (NoSuchMethodException e) {
                Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
            }
            try {
                this.b = View.class.getDeclaredField("mRecreateDisplayList");
                this.b.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
            }
        }

        @Override // android.support.v4.widget.SlidingPaneLayout.f, android.support.v4.widget.SlidingPaneLayout.e
        public void a(SlidingPaneLayout slidingPaneLayout, View view) {
            if (this.f491a != null && this.b != null) {
                try {
                    this.b.setBoolean(view, true);
                    this.f491a.invoke(view, null);
                } catch (Exception e) {
                    Log.e("SlidingPaneLayout", "Error refreshing display list state", e);
                }
                super.a(slidingPaneLayout, view);
                return;
            }
            view.invalidate();
        }
    }

    /* loaded from: classes.dex */
    static class h extends f {
        h() {
        }

        @Override // android.support.v4.widget.SlidingPaneLayout.f, android.support.v4.widget.SlidingPaneLayout.e
        public void a(SlidingPaneLayout slidingPaneLayout, View view) {
            ai.a(view, ((LayoutParams) view.getLayoutParams()).d);
        }
    }

    /* loaded from: classes.dex */
    class a extends android.support.v4.view.a {
        private final Rect c = new Rect();

        a() {
        }

        @Override // android.support.v4.view.a
        public void a(View view, android.support.v4.view.a.c cVar) {
            android.support.v4.view.a.c a2 = android.support.v4.view.a.c.a(cVar);
            super.a(view, a2);
            a(cVar, a2);
            a2.t();
            cVar.b((CharSequence) SlidingPaneLayout.class.getName());
            cVar.a(view);
            ViewParent h = ai.h(view);
            if (h instanceof View) {
                cVar.c((View) h);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i);
                if (!b(childAt) && childAt.getVisibility() == 0) {
                    ai.c(childAt, 1);
                    cVar.b(childAt);
                }
            }
        }

        @Override // android.support.v4.view.a
        public void a(View view, AccessibilityEvent accessibilityEvent) {
            super.a(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }

        @Override // android.support.v4.view.a
        public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (!b(view)) {
                return super.a(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        public boolean b(View view) {
            return SlidingPaneLayout.this.f(view);
        }

        private void a(android.support.v4.view.a.c cVar, android.support.v4.view.a.c cVar2) {
            Rect rect = this.c;
            cVar2.a(rect);
            cVar.b(rect);
            cVar2.c(rect);
            cVar.d(rect);
            cVar.e(cVar2.h());
            cVar.a(cVar2.p());
            cVar.b(cVar2.q());
            cVar.d(cVar2.s());
            cVar.j(cVar2.m());
            cVar.h(cVar2.k());
            cVar.c(cVar2.f());
            cVar.d(cVar2.g());
            cVar.f(cVar2.i());
            cVar.g(cVar2.j());
            cVar.i(cVar2.l());
            cVar.a(cVar2.b());
            cVar.b(cVar2.c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final View f489a;

        b(View view) {
            this.f489a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f489a.getParent() == SlidingPaneLayout.this) {
                ai.a(this.f489a, 0, (Paint) null);
                SlidingPaneLayout.this.e(this.f489a);
            }
            SlidingPaneLayout.this.g.remove(this);
        }
    }

    boolean f() {
        return ai.g(this) == 1;
    }
}
