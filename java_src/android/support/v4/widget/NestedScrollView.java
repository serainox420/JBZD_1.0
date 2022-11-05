package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ai;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import com.facebook.internal.Utility;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements android.support.v4.view.ae, android.support.v4.view.v, android.support.v4.view.x {
    private static final a v = new a();
    private static final int[] w = {16843130};
    private b A;

    /* renamed from: a  reason: collision with root package name */
    private long f483a;
    private final Rect b;
    private x c;
    private k d;
    private k e;
    private int f;
    private boolean g;
    private boolean h;
    private View i;
    private boolean j;
    private VelocityTracker k;
    private boolean l;
    private boolean m;
    private int n;
    private int o;
    private int p;
    private int q;
    private final int[] r;
    private final int[] s;
    private int t;
    private SavedState u;
    private final android.support.v4.view.y x;
    private final android.support.v4.view.w y;
    private float z;

    /* loaded from: classes.dex */
    public interface b {
        void a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4);
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new Rect();
        this.g = true;
        this.h = false;
        this.i = null;
        this.j = false;
        this.m = true;
        this.q = -1;
        this.r = new int[2];
        this.s = new int[2];
        a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, w, i, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.x = new android.support.v4.view.y(this);
        this.y = new android.support.v4.view.w(this);
        setNestedScrollingEnabled(true);
        ai.a(this, v);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.y.a(z);
    }

    @Override // android.view.View, android.support.v4.view.v
    public boolean isNestedScrollingEnabled() {
        return this.y.a();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.y.a(i);
    }

    @Override // android.view.View, android.support.v4.view.v
    public void stopNestedScroll() {
        this.y.c();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.y.b();
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.y.a(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.y.a(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.y.a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.y.a(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.x.a(view, view2, i);
        startNestedScroll(2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public void onStopNestedScroll(View view) {
        this.x.a(view);
        stopNestedScroll();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int scrollY = getScrollY();
        scrollBy(0, i4);
        int scrollY2 = getScrollY() - scrollY;
        dispatchNestedScroll(0, scrollY2, 0, i4 - scrollY2, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        dispatchNestedPreScroll(i, i2, iArr, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!z) {
            f((int) f2);
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.x.a();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = (getChildAt(0).getBottom() - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (0.5f * getHeight());
    }

    private void a() {
        this.c = x.a(getContext(), null);
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.n = viewConfiguration.getScaledTouchSlop();
        this.o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.p = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i, layoutParams);
    }

    public void setOnScrollChangeListener(b bVar) {
        this.A = bVar;
    }

    private boolean b() {
        View childAt = getChildAt(0);
        if (childAt != null) {
            return getHeight() < (childAt.getHeight() + getPaddingTop()) + getPaddingBottom();
        }
        return false;
    }

    public void setFillViewport(boolean z) {
        if (z != this.l) {
            this.l = z;
            requestLayout();
        }
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.m = z;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.A != null) {
            this.A.a(this, i, i2, i3, i4);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.l && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            int measuredHeight = getMeasuredHeight();
            if (childAt.getMeasuredHeight() < measuredHeight) {
                childAt.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), ((FrameLayout.LayoutParams) childAt.getLayoutParams()).width), View.MeasureSpec.makeMeasureSpec((measuredHeight - getPaddingTop()) - getPaddingBottom(), 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || a(keyEvent);
    }

    public boolean a(KeyEvent keyEvent) {
        int i = 33;
        this.b.setEmpty();
        if (!b()) {
            if (!isFocused() || keyEvent.getKeyCode() == 4) {
                return false;
            }
            View findFocus = findFocus();
            if (findFocus == this) {
                findFocus = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
            return (findNextFocus == null || findNextFocus == this || !findNextFocus.requestFocus(130)) ? false : true;
        } else if (keyEvent.getAction() != 0) {
            return false;
        } else {
            switch (keyEvent.getKeyCode()) {
                case 19:
                    if (!keyEvent.isAltPressed()) {
                        return c(33);
                    }
                    return b(33);
                case 20:
                    if (!keyEvent.isAltPressed()) {
                        return c(130);
                    }
                    return b(130);
                case 62:
                    if (!keyEvent.isShiftPressed()) {
                        i = 130;
                    }
                    a(i);
                    return false;
                default:
                    return false;
            }
        }
    }

    private boolean c(int i, int i2) {
        if (getChildCount() > 0) {
            int scrollY = getScrollY();
            View childAt = getChildAt(0);
            return i2 >= childAt.getTop() - scrollY && i2 < childAt.getBottom() - scrollY && i >= childAt.getLeft() && i < childAt.getRight();
        }
        return false;
    }

    private void c() {
        if (this.k == null) {
            this.k = VelocityTracker.obtain();
        } else {
            this.k.clear();
        }
    }

    private void d() {
        if (this.k == null) {
            this.k = VelocityTracker.obtain();
        }
    }

    private void e() {
        if (this.k != null) {
            this.k.recycle();
            this.k = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            e();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        int action = motionEvent.getAction();
        if (action != 2 || !this.j) {
            switch (action & 255) {
                case 0:
                    int y = (int) motionEvent.getY();
                    if (!c((int) motionEvent.getX(), y)) {
                        this.j = false;
                        e();
                        break;
                    } else {
                        this.f = y;
                        this.q = motionEvent.getPointerId(0);
                        c();
                        this.k.addMovement(motionEvent);
                        this.c.g();
                        if (!this.c.a()) {
                            z = true;
                        }
                        this.j = z;
                        startNestedScroll(2);
                        break;
                    }
                case 1:
                case 3:
                    this.j = false;
                    this.q = -1;
                    e();
                    if (this.c.a(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                        ai.c(this);
                    }
                    stopNestedScroll();
                    break;
                case 2:
                    int i = this.q;
                    if (i != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i);
                        if (findPointerIndex == -1) {
                            Log.e("NestedScrollView", "Invalid pointerId=" + i + " in onInterceptTouchEvent");
                            break;
                        } else {
                            int y2 = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(y2 - this.f) > this.n && (getNestedScrollAxes() & 2) == 0) {
                                this.j = true;
                                this.f = y2;
                                d();
                                this.k.addMovement(motionEvent);
                                this.t = 0;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                    break;
                                }
                            }
                        }
                    }
                    break;
                case 6:
                    a(motionEvent);
                    break;
            }
            return this.j;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        ViewParent parent;
        d();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        int a2 = android.support.v4.view.t.a(motionEvent);
        if (a2 == 0) {
            this.t = 0;
        }
        obtain.offsetLocation(BitmapDescriptorFactory.HUE_RED, this.t);
        switch (a2) {
            case 0:
                if (getChildCount() == 0) {
                    return false;
                }
                boolean z = !this.c.a();
                this.j = z;
                if (z && (parent = getParent()) != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                if (!this.c.a()) {
                    this.c.h();
                }
                this.f = (int) motionEvent.getY();
                this.q = motionEvent.getPointerId(0);
                startNestedScroll(2);
                break;
            case 1:
                if (this.j) {
                    VelocityTracker velocityTracker = this.k;
                    velocityTracker.computeCurrentVelocity(1000, this.p);
                    int b2 = (int) android.support.v4.view.ag.b(velocityTracker, this.q);
                    if (Math.abs(b2) > this.o) {
                        f(-b2);
                    } else if (this.c.a(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                        ai.c(this);
                    }
                }
                this.q = -1;
                f();
                break;
            case 2:
                int findPointerIndex = motionEvent.findPointerIndex(this.q);
                if (findPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.q + " in onTouchEvent");
                    break;
                } else {
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int i2 = this.f - y;
                    if (dispatchNestedPreScroll(0, i2, this.s, this.r)) {
                        i2 -= this.s[1];
                        obtain.offsetLocation(BitmapDescriptorFactory.HUE_RED, this.r[1]);
                        this.t += this.r[1];
                    }
                    if (this.j || Math.abs(i2) <= this.n) {
                        i = i2;
                    } else {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.j = true;
                        if (i2 > 0) {
                            i = i2 - this.n;
                        } else {
                            i = i2 + this.n;
                        }
                    }
                    if (this.j) {
                        this.f = y - this.r[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        int overScrollMode = getOverScrollMode();
                        boolean z2 = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                        if (a(0, i, 0, getScrollY(), 0, scrollRange, 0, 0, true) && !hasNestedScrollingParent()) {
                            this.k.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        if (dispatchNestedScroll(0, scrollY2, 0, i - scrollY2, this.r)) {
                            this.f -= this.r[1];
                            obtain.offsetLocation(BitmapDescriptorFactory.HUE_RED, this.r[1]);
                            this.t += this.r[1];
                            break;
                        } else if (z2) {
                            g();
                            int i3 = scrollY + i;
                            if (i3 < 0) {
                                this.d.a(i / getHeight(), motionEvent.getX(findPointerIndex) / getWidth());
                                if (!this.e.a()) {
                                    this.e.c();
                                }
                            } else if (i3 > scrollRange) {
                                this.e.a(i / getHeight(), 1.0f - (motionEvent.getX(findPointerIndex) / getWidth()));
                                if (!this.d.a()) {
                                    this.d.c();
                                }
                            }
                            if (this.d != null && (!this.d.a() || !this.e.a())) {
                                ai.c(this);
                                break;
                            }
                        }
                    }
                }
                break;
            case 3:
                if (this.j && getChildCount() > 0 && this.c.a(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    ai.c(this);
                }
                this.q = -1;
                f();
                break;
            case 5:
                int b3 = android.support.v4.view.t.b(motionEvent);
                this.f = (int) motionEvent.getY(b3);
                this.q = motionEvent.getPointerId(b3);
                break;
            case 6:
                a(motionEvent);
                this.f = (int) motionEvent.getY(motionEvent.findPointerIndex(this.q));
                break;
        }
        if (this.k != null) {
            this.k.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    private void a(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.q) {
            int i = action == 0 ? 1 : 0;
            this.f = (int) motionEvent.getY(i);
            this.q = motionEvent.getPointerId(i);
            if (this.k != null) {
                this.k.clear();
            }
        }
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0) {
            switch (motionEvent.getAction()) {
                case 8:
                    if (this.j) {
                        return false;
                    }
                    float e = android.support.v4.view.t.e(motionEvent, 9);
                    if (e == BitmapDescriptorFactory.HUE_RED) {
                        return false;
                    }
                    int verticalScrollFactorCompat = (int) (e * getVerticalScrollFactorCompat());
                    int scrollRange = getScrollRange();
                    int scrollY = getScrollY();
                    int i = scrollY - verticalScrollFactorCompat;
                    if (i < 0) {
                        scrollRange = 0;
                    } else if (i <= scrollRange) {
                        scrollRange = i;
                    }
                    if (scrollRange == scrollY) {
                        return false;
                    }
                    super.scrollTo(getScrollX(), scrollRange);
                    return true;
                default:
                    return false;
            }
        }
        return false;
    }

    private float getVerticalScrollFactorCompat() {
        if (this.z == BitmapDescriptorFactory.HUE_RED) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.z = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.z;
    }

    @Override // android.view.View
    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    boolean a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        boolean z2;
        boolean z3;
        int overScrollMode = getOverScrollMode();
        boolean z4 = computeHorizontalScrollRange() > computeHorizontalScrollExtent();
        boolean z5 = computeVerticalScrollRange() > computeVerticalScrollExtent();
        boolean z6 = overScrollMode == 0 || (overScrollMode == 1 && z4);
        boolean z7 = overScrollMode == 0 || (overScrollMode == 1 && z5);
        int i9 = i3 + i;
        if (!z6) {
            i7 = 0;
        }
        int i10 = i4 + i2;
        if (!z7) {
            i8 = 0;
        }
        int i11 = -i7;
        int i12 = i7 + i5;
        int i13 = -i8;
        int i14 = i8 + i6;
        if (i9 > i12) {
            z2 = true;
        } else if (i9 >= i11) {
            z2 = false;
            i12 = i9;
        } else {
            z2 = true;
            i12 = i11;
        }
        if (i10 > i14) {
            z3 = true;
        } else if (i10 >= i13) {
            z3 = false;
            i14 = i10;
        } else {
            z3 = true;
            i14 = i13;
        }
        if (z3) {
            this.c.a(i12, i14, 0, 0, 0, getScrollRange());
        }
        onOverScrolled(i12, i14, z2, z3);
        return z2 || z3;
    }

    int getScrollRange() {
        if (getChildCount() > 0) {
            return Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
        }
        return 0;
    }

    private View a(boolean z, int i, int i2) {
        boolean z2;
        View view;
        ArrayList focusables = getFocusables(2);
        View view2 = null;
        boolean z3 = false;
        int size = focusables.size();
        int i3 = 0;
        while (i3 < size) {
            View view3 = (View) focusables.get(i3);
            int top = view3.getTop();
            int bottom = view3.getBottom();
            if (i < bottom && top < i2) {
                boolean z4 = i < top && bottom < i2;
                if (view2 == null) {
                    boolean z5 = z4;
                    view = view3;
                    z2 = z5;
                } else {
                    boolean z6 = (z && top < view2.getTop()) || (!z && bottom > view2.getBottom());
                    if (z3) {
                        if (z4 && z6) {
                            view = view3;
                            z2 = z3;
                        }
                    } else if (z4) {
                        view = view3;
                        z2 = true;
                    } else if (z6) {
                        view = view3;
                        z2 = z3;
                    }
                }
                i3++;
                view2 = view;
                z3 = z2;
            }
            z2 = z3;
            view = view2;
            i3++;
            view2 = view;
            z3 = z2;
        }
        return view2;
    }

    public boolean a(int i) {
        boolean z = i == 130;
        int height = getHeight();
        if (z) {
            this.b.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                if (this.b.top + height > childAt.getBottom()) {
                    this.b.top = childAt.getBottom() - height;
                }
            }
        } else {
            this.b.top = getScrollY() - height;
            if (this.b.top < 0) {
                this.b.top = 0;
            }
        }
        this.b.bottom = this.b.top + height;
        return a(i, this.b.top, this.b.bottom);
    }

    public boolean b(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        this.b.top = 0;
        this.b.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            this.b.bottom = getChildAt(childCount - 1).getBottom() + getPaddingBottom();
            this.b.top = this.b.bottom - height;
        }
        return a(i, this.b.top, this.b.bottom);
    }

    private boolean a(int i, int i2, int i3) {
        boolean z = false;
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = scrollY + height;
        boolean z2 = i == 33;
        View a2 = a(z2, i2, i3);
        if (a2 == null) {
            a2 = this;
        }
        if (i2 < scrollY || i3 > i4) {
            e(z2 ? i2 - scrollY : i3 - i4);
            z = true;
        }
        if (a2 != findFocus()) {
            a2.requestFocus(i);
        }
        return z;
    }

    public boolean c(int i) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus != null && a(findNextFocus, maxScrollAmount, getHeight())) {
            findNextFocus.getDrawingRect(this.b);
            offsetDescendantRectToMyCoords(findNextFocus, this.b);
            e(a(this.b));
            findNextFocus.requestFocus(i);
        } else {
            if (i == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i == 130 && getChildCount() > 0) {
                int bottom = getChildAt(0).getBottom();
                int scrollY = (getScrollY() + getHeight()) - getPaddingBottom();
                if (bottom - scrollY < maxScrollAmount) {
                    maxScrollAmount = bottom - scrollY;
                }
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            e(maxScrollAmount);
        }
        if (findFocus != null && findFocus.isFocused() && a(findFocus)) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(MetadataChangeSet.INDEXABLE_TEXT_SIZE_LIMIT_BYTES);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    private boolean a(View view) {
        return !a(view, 0, getHeight());
    }

    private boolean a(View view, int i, int i2) {
        view.getDrawingRect(this.b);
        offsetDescendantRectToMyCoords(view, this.b);
        return this.b.bottom + i >= getScrollY() && this.b.top - i <= getScrollY() + i2;
    }

    private void e(int i) {
        if (i != 0) {
            if (this.m) {
                a(0, i);
            } else {
                scrollBy(0, i);
            }
        }
    }

    public final void a(int i, int i2) {
        if (getChildCount() != 0) {
            if (AnimationUtils.currentAnimationTimeMillis() - this.f483a > 250) {
                int max = Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
                int scrollY = getScrollY();
                this.c.a(getScrollX(), scrollY, 0, Math.max(0, Math.min(scrollY + i2, max)) - scrollY);
                ai.c(this);
            } else {
                if (!this.c.a()) {
                    this.c.h();
                }
                scrollBy(i, i2);
            }
            this.f483a = AnimationUtils.currentAnimationTimeMillis();
        }
    }

    public final void b(int i, int i2) {
        a(i - getScrollX(), i2 - getScrollY());
    }

    @Override // android.view.View, android.support.v4.view.ae
    @RestrictTo
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        int bottom = getChildAt(0).getBottom();
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        if (scrollY > max) {
            return bottom + (scrollY - max);
        }
        return bottom;
    }

    @Override // android.view.View, android.support.v4.view.ae
    @RestrictTo
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View, android.support.v4.view.ae
    @RestrictTo
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View, android.support.v4.view.ae
    @RestrictTo
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View, android.support.v4.view.ae
    @RestrictTo
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View, android.support.v4.view.ae
    @RestrictTo
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.ViewGroup
    protected void measureChild(View view, int i, int i2) {
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.bottomMargin + marginLayoutParams.topMargin, 0));
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.c.g()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int b2 = this.c.b();
            int c = this.c.c();
            if (scrollX != b2 || scrollY != c) {
                int scrollRange = getScrollRange();
                int overScrollMode = getOverScrollMode();
                boolean z = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                a(b2 - scrollX, c - scrollY, scrollX, scrollY, 0, scrollRange, 0, 0, false);
                if (z) {
                    g();
                    if (c <= 0 && scrollY > 0) {
                        this.d.a((int) this.c.f());
                    } else if (c >= scrollRange && scrollY < scrollRange) {
                        this.e.a((int) this.c.f());
                    }
                }
            }
        }
    }

    private void b(View view) {
        view.getDrawingRect(this.b);
        offsetDescendantRectToMyCoords(view, this.b);
        int a2 = a(this.b);
        if (a2 != 0) {
            scrollBy(0, a2);
        }
    }

    private boolean a(Rect rect, boolean z) {
        int a2 = a(rect);
        boolean z2 = a2 != 0;
        if (z2) {
            if (z) {
                scrollBy(0, a2);
            } else {
                a(0, a2);
            }
        }
        return z2;
    }

    protected int a(Rect rect) {
        int i;
        int i2;
        int i3;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        if (rect.bottom < getChildAt(0).getHeight()) {
            i4 -= verticalFadingEdgeLength;
        }
        if (rect.bottom > i4 && rect.top > scrollY) {
            if (rect.height() > height) {
                i3 = (rect.top - scrollY) + 0;
            } else {
                i3 = (rect.bottom - i4) + 0;
            }
            i = Math.min(i3, getChildAt(0).getBottom() - i4);
        } else if (rect.top >= scrollY || rect.bottom >= i4) {
            i = 0;
        } else {
            if (rect.height() > height) {
                i2 = 0 - (i4 - rect.bottom);
            } else {
                i2 = 0 - (scrollY - rect.top);
            }
            i = Math.max(i2, -getScrollY());
        }
        return i;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.g) {
            b(view2);
        } else {
            this.i = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        View findNextFocusFromRect;
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        if (rect == null) {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocus(this, null, i);
        } else {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        }
        if (findNextFocusFromRect != null && !a(findNextFocusFromRect)) {
            return findNextFocusFromRect.requestFocus(i, rect);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return a(rect, z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.g = true;
        super.requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.g = false;
        if (this.i != null && a(this.i, this)) {
            b(this.i);
        }
        this.i = null;
        if (!this.h) {
            if (this.u != null) {
                scrollTo(getScrollX(), this.u.f484a);
                this.u = null;
            }
            int max = Math.max(0, (getChildCount() > 0 ? getChildAt(0).getMeasuredHeight() : 0) - (((i4 - i2) - getPaddingBottom()) - getPaddingTop()));
            if (getScrollY() > max) {
                scrollTo(getScrollX(), max);
            } else if (getScrollY() < 0) {
                scrollTo(getScrollX(), 0);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.h = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.h = false;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus != null && this != findFocus && a(findFocus, 0, i4)) {
            findFocus.getDrawingRect(this.b);
            offsetDescendantRectToMyCoords(findFocus, this.b);
            e(a(this.b));
        }
    }

    private static boolean a(View view, View view2) {
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        return (parent instanceof ViewGroup) && a((View) parent, view2);
    }

    public void d(int i) {
        if (getChildCount() > 0) {
            int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
            this.c.a(getScrollX(), getScrollY(), 0, i, 0, 0, 0, Math.max(0, getChildAt(0).getHeight() - height), 0, height / 2);
            ai.c(this);
        }
    }

    private void f(int i) {
        int scrollY = getScrollY();
        boolean z = (scrollY > 0 || i > 0) && (scrollY < getScrollRange() || i < 0);
        if (!dispatchNestedPreFling(BitmapDescriptorFactory.HUE_RED, i)) {
            dispatchNestedFling(BitmapDescriptorFactory.HUE_RED, i, z);
            if (z) {
                d(i);
            }
        }
    }

    private void f() {
        this.j = false;
        e();
        stopNestedScroll();
        if (this.d != null) {
            this.d.c();
            this.e.c();
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            int b2 = b(i, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth());
            int b3 = b(i2, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight());
            if (b2 != getScrollX() || b3 != getScrollY()) {
                super.scrollTo(b2, b3);
            }
        }
    }

    private void g() {
        if (getOverScrollMode() != 2) {
            if (this.d == null) {
                Context context = getContext();
                this.d = new k(context);
                this.e = new k(context);
                return;
            }
            return;
        }
        this.d = null;
        this.e = null;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.d != null) {
            int scrollY = getScrollY();
            if (!this.d.a()) {
                int save = canvas.save();
                int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                canvas.translate(getPaddingLeft(), Math.min(0, scrollY));
                this.d.a(width, getHeight());
                if (this.d.a(canvas)) {
                    ai.c(this);
                }
                canvas.restoreToCount(save);
            }
            if (!this.e.a()) {
                int save2 = canvas.save();
                int width2 = (getWidth() - getPaddingLeft()) - getPaddingRight();
                int height = getHeight();
                canvas.translate((-width2) + getPaddingLeft(), Math.max(getScrollRange(), scrollY) + height);
                canvas.rotate(180.0f, width2, BitmapDescriptorFactory.HUE_RED);
                this.e.a(width2, height);
                if (this.e.a(canvas)) {
                    ai.c(this);
                }
                canvas.restoreToCount(save2);
            }
        }
    }

    private static int b(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        if (i2 + i > i3) {
            return i3 - i2;
        }
        return i;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.u = savedState;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f484a = getScrollY();
        return savedState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v4.widget.NestedScrollView.SavedState.1
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
        public int f484a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f484a = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f484a);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f484a + "}";
        }
    }

    /* loaded from: classes.dex */
    static class a extends android.support.v4.view.a {
        a() {
        }

        @Override // android.support.v4.view.a
        public boolean a(View view, int i, Bundle bundle) {
            if (super.a(view, i, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            switch (i) {
                case 4096:
                    int min = Math.min(((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()) + nestedScrollView.getScrollY(), nestedScrollView.getScrollRange());
                    if (min == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.b(0, min);
                    return true;
                case Utility.DEFAULT_STREAM_BUFFER_SIZE /* 8192 */:
                    int max = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (max == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.b(0, max);
                    return true;
                default:
                    return false;
            }
        }

        @Override // android.support.v4.view.a
        public void a(View view, android.support.v4.view.a.c cVar) {
            int scrollRange;
            super.a(view, cVar);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            cVar.b((CharSequence) ScrollView.class.getName());
            if (nestedScrollView.isEnabled() && (scrollRange = nestedScrollView.getScrollRange()) > 0) {
                cVar.k(true);
                if (nestedScrollView.getScrollY() > 0) {
                    cVar.a(Utility.DEFAULT_STREAM_BUFFER_SIZE);
                }
                if (nestedScrollView.getScrollY() < scrollRange) {
                    cVar.a(4096);
                }
            }
        }

        @Override // android.support.v4.view.a
        public void a(View view, AccessibilityEvent accessibilityEvent) {
            super.a(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            android.support.v4.view.a.o a2 = android.support.v4.view.a.a.a(accessibilityEvent);
            a2.a(nestedScrollView.getScrollRange() > 0);
            a2.d(nestedScrollView.getScrollX());
            a2.e(nestedScrollView.getScrollY());
            a2.f(nestedScrollView.getScrollX());
            a2.g(nestedScrollView.getScrollRange());
        }
    }
}
