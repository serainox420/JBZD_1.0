package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.design.R;
import android.support.v4.f.j;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ai;
import android.support.v4.view.bg;
import android.support.v4.view.z;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements android.support.v4.view.x {

    /* renamed from: a  reason: collision with root package name */
    static final String f57a;
    static final Class<?>[] b;
    static final ThreadLocal<Map<String, Constructor<Behavior>>> c;
    static final Comparator<View> d;
    private static final j.a<Rect> f;
    ViewGroup.OnHierarchyChangeListener e;
    private final List<View> g;
    private final f<View> h;
    private final List<View> i;
    private final List<View> j;
    private final int[] k;
    private Paint l;
    private boolean m;
    private boolean n;
    private int[] o;
    private View p;
    private View q;
    private View r;
    private d s;
    private boolean t;
    private bg u;
    private boolean v;
    private Drawable w;
    private z x;
    private final android.support.v4.view.y y;

    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface a {
        Class<? extends Behavior> a();
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f57a = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            d = new e();
        } else {
            d = null;
        }
        b = new Class[]{Context.class, AttributeSet.class};
        c = new ThreadLocal<>();
        f = new j.c(12);
    }

    private static Rect e() {
        Rect a2 = f.a();
        if (a2 == null) {
            return new Rect();
        }
        return a2;
    }

    private static void a(Rect rect) {
        rect.setEmpty();
        f.a(rect);
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = new ArrayList();
        this.h = new f<>();
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.k = new int[2];
        this.y = new android.support.v4.view.y(this);
        q.a(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, i, R.style.Widget_Design_CoordinatorLayout);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.o = resources.getIntArray(resourceId);
            float f2 = resources.getDisplayMetrics().density;
            int length = this.o.length;
            for (int i2 = 0; i2 < length; i2++) {
                int[] iArr = this.o;
                iArr[i2] = (int) (iArr[i2] * f2);
            }
        }
        this.w = obtainStyledAttributes.getDrawable(R.styleable.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        h();
        super.setOnHierarchyChangeListener(new b());
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.e = onHierarchyChangeListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        f();
        if (this.t) {
            if (this.s == null) {
                this.s = new d();
            }
            getViewTreeObserver().addOnPreDrawListener(this.s);
        }
        if (this.u == null && ai.x(this)) {
            ai.w(this);
        }
        this.n = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        f();
        if (this.t && this.s != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.s);
        }
        if (this.r != null) {
            onStopNestedScroll(this.r);
        }
        this.n = false;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = null;
        if (this.w != drawable) {
            if (this.w != null) {
                this.w.setCallback(null);
            }
            if (drawable != null) {
                drawable2 = drawable.mutate();
            }
            this.w = drawable2;
            if (this.w != null) {
                if (this.w.isStateful()) {
                    this.w.setState(getDrawableState());
                }
                android.support.v4.b.a.a.b(this.w, ai.g(this));
                this.w.setVisible(getVisibility() == 0, false);
                this.w.setCallback(this);
            }
            ai.c(this);
        }
    }

    public Drawable getStatusBarBackground() {
        return this.w;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        boolean z = false;
        Drawable drawable = this.w;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.w;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        if (this.w != null && this.w.isVisible() != z) {
            this.w.setVisible(z, false);
        }
    }

    public void setStatusBarBackgroundResource(int i) {
        setStatusBarBackground(i != 0 ? android.support.v4.content.b.a(getContext(), i) : null);
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    final bg a(bg bgVar) {
        boolean z = true;
        if (!x.a(this.u, bgVar)) {
            this.u = bgVar;
            this.v = bgVar != null && bgVar.b() > 0;
            if (this.v || getBackground() != null) {
                z = false;
            }
            setWillNotDraw(z);
            bg b2 = b(bgVar);
            requestLayout();
            return b2;
        }
        return bgVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final bg getLastWindowInsets() {
        return this.u;
    }

    private void f() {
        if (this.p != null) {
            Behavior b2 = ((c) this.p.getLayoutParams()).b();
            if (b2 != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                b2.b(this, (CoordinatorLayout) this.p, obtain);
                obtain.recycle();
            }
            this.p = null;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ((c) getChildAt(i).getLayoutParams()).f();
        }
        this.m = false;
    }

    private void a(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i) : i));
        }
        if (d != null) {
            Collections.sort(list, d);
        }
    }

    private boolean a(MotionEvent motionEvent, int i) {
        boolean z;
        MotionEvent motionEvent2;
        boolean z2;
        boolean z3 = false;
        boolean z4 = false;
        MotionEvent motionEvent3 = null;
        int a2 = android.support.v4.view.t.a(motionEvent);
        List<View> list = this.i;
        a(list);
        int size = list.size();
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                View view = list.get(i2);
                c cVar = (c) view.getLayoutParams();
                Behavior b2 = cVar.b();
                if ((z3 || z4) && a2 != 0) {
                    if (b2 != null) {
                        if (motionEvent3 == null) {
                            long uptimeMillis = SystemClock.uptimeMillis();
                            motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                        } else {
                            motionEvent2 = motionEvent3;
                        }
                        switch (i) {
                            case 0:
                                b2.a(this, (CoordinatorLayout) view, motionEvent2);
                                break;
                            case 1:
                                b2.b(this, (CoordinatorLayout) view, motionEvent2);
                                break;
                        }
                        z2 = z4;
                        z = z3;
                    } else {
                        motionEvent2 = motionEvent3;
                        z = z3;
                        z2 = z4;
                    }
                } else {
                    if (!z3 && b2 != null) {
                        switch (i) {
                            case 0:
                                z3 = b2.a(this, (CoordinatorLayout) view, motionEvent);
                                break;
                            case 1:
                                z3 = b2.b(this, (CoordinatorLayout) view, motionEvent);
                                break;
                        }
                        if (z3) {
                            this.p = view;
                        }
                    }
                    z = z3;
                    boolean e2 = cVar.e();
                    boolean a3 = cVar.a(this, view);
                    boolean z5 = a3 && !e2;
                    if (!a3 || z5) {
                        MotionEvent motionEvent4 = motionEvent3;
                        z2 = z5;
                        motionEvent2 = motionEvent4;
                    }
                }
                i2++;
                z4 = z2;
                z3 = z;
                motionEvent3 = motionEvent2;
            } else {
                z = z3;
            }
        }
        list.clear();
        return z;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = null;
        int a2 = android.support.v4.view.t.a(motionEvent);
        if (a2 == 0) {
            f();
        }
        boolean a3 = a(motionEvent, 0);
        if (0 != 0) {
            motionEvent2.recycle();
        }
        if (a2 == 1 || a2 == 3) {
            f();
        }
        return a3;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0043  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        MotionEvent motionEvent2;
        MotionEvent motionEvent3 = null;
        int a2 = android.support.v4.view.t.a(motionEvent);
        if (this.p == null) {
            boolean a3 = a(motionEvent, 1);
            if (!a3) {
                z = a3;
                z2 = false;
                if (this.p != null) {
                    z2 |= super.onTouchEvent(motionEvent);
                } else if (z) {
                    if (0 != 0) {
                        motionEvent2 = null;
                    } else {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                    }
                    super.onTouchEvent(motionEvent2);
                    motionEvent3 = motionEvent2;
                }
                if (!z2 || a2 == 0) {
                }
                if (motionEvent3 != null) {
                    motionEvent3.recycle();
                }
                if (a2 != 1 || a2 == 3) {
                    f();
                }
                return z2;
            }
            z = a3;
        } else {
            z = false;
        }
        Behavior b2 = ((c) this.p.getLayoutParams()).b();
        z2 = b2 != null ? b2.b(this, (CoordinatorLayout) this.p, motionEvent) : false;
        if (this.p != null) {
        }
        if (!z2) {
        }
        if (motionEvent3 != null) {
        }
        if (a2 != 1) {
        }
        f();
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z && !this.m) {
            f();
            this.m = true;
        }
    }

    private int b(int i) {
        if (this.o == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        } else if (i < 0 || i >= this.o.length) {
            Log.e("CoordinatorLayout", "Keyline index " + i + " out of range for " + this);
            return 0;
        } else {
            return this.o[i];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static Behavior a(Context context, AttributeSet attributeSet, String str) {
        HashMap hashMap;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0 && !TextUtils.isEmpty(f57a)) {
            str = f57a + '.' + str;
        }
        try {
            Map<String, Constructor<Behavior>> map = c.get();
            if (map == null) {
                HashMap hashMap2 = new HashMap();
                c.set(hashMap2);
                hashMap = hashMap2;
            } else {
                hashMap = map;
            }
            Constructor<Behavior> constructor = hashMap.get(str);
            if (constructor == null) {
                constructor = Class.forName(str, true, context.getClassLoader()).getConstructor(b);
                constructor.setAccessible(true);
                hashMap.put(str, constructor);
            }
            return constructor.newInstance(context, attributeSet);
        } catch (Exception e2) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e2);
        }
    }

    c a(View view) {
        c cVar = (c) view.getLayoutParams();
        if (!cVar.b) {
            a aVar = null;
            for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                aVar = (a) cls.getAnnotation(a.class);
                if (aVar != null) {
                    break;
                }
            }
            a aVar2 = aVar;
            if (aVar2 != null) {
                try {
                    cVar.a(aVar2.a().newInstance());
                } catch (Exception e2) {
                    Log.e("CoordinatorLayout", "Default behavior class " + aVar2.a().getName() + " could not be instantiated. Did you forget a default constructor?", e2);
                }
            }
            cVar.b = true;
        }
        return cVar;
    }

    private void g() {
        this.g.clear();
        this.h.a();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            a(childAt).b(this, childAt);
            this.h.a((f<View>) childAt);
            for (int i2 = 0; i2 < childCount; i2++) {
                if (i2 != i) {
                    View childAt2 = getChildAt(i2);
                    if (a(childAt2).a(this, childAt2, childAt)) {
                        if (!this.h.b(childAt2)) {
                            this.h.a((f<View>) childAt2);
                        }
                        this.h.a(childAt, childAt2);
                    }
                }
            }
        }
        this.g.addAll(this.h.b());
        Collections.reverse(this.g);
    }

    void a(View view, Rect rect) {
        u.b(this, view, rect);
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    public void a(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int max;
        int a2;
        int i5;
        g();
        a();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int g = ai.g(this);
        boolean z = g == 1;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int i6 = paddingLeft + paddingRight;
        int i7 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        int i8 = 0;
        boolean z2 = this.u != null && ai.x(this);
        int size3 = this.g.size();
        int i9 = 0;
        while (i9 < size3) {
            View view = this.g.get(i9);
            if (view.getVisibility() == 8) {
                a2 = i8;
                max = suggestedMinimumHeight;
                i5 = suggestedMinimumWidth;
            } else {
                c cVar = (c) view.getLayoutParams();
                int i10 = 0;
                if (cVar.e >= 0 && mode != 0) {
                    int b2 = b(cVar.e);
                    int a3 = android.support.v4.view.f.a(d(cVar.c), g) & 7;
                    if ((a3 == 3 && !z) || (a3 == 5 && z)) {
                        i10 = Math.max(0, (size - paddingRight) - b2);
                    } else if ((a3 == 5 && !z) || (a3 == 3 && z)) {
                        i10 = Math.max(0, b2 - paddingLeft);
                    }
                }
                if (!z2 || ai.x(view)) {
                    i3 = i2;
                    i4 = i;
                } else {
                    int a4 = this.u.a() + this.u.c();
                    int b3 = this.u.b() + this.u.d();
                    i4 = View.MeasureSpec.makeMeasureSpec(size - a4, mode);
                    i3 = View.MeasureSpec.makeMeasureSpec(size2 - b3, mode2);
                }
                Behavior b4 = cVar.b();
                if (b4 == null || !b4.a(this, (CoordinatorLayout) view, i4, i10, i3, 0)) {
                    a(view, i4, i10, i3, 0);
                }
                int max2 = Math.max(suggestedMinimumWidth, view.getMeasuredWidth() + i6 + cVar.leftMargin + cVar.rightMargin);
                max = Math.max(suggestedMinimumHeight, view.getMeasuredHeight() + i7 + cVar.topMargin + cVar.bottomMargin);
                a2 = ai.a(i8, ai.j(view));
                i5 = max2;
            }
            i9++;
            i8 = a2;
            suggestedMinimumHeight = max;
            suggestedMinimumWidth = i5;
        }
        setMeasuredDimension(ai.a(suggestedMinimumWidth, i, (-16777216) & i8), ai.a(suggestedMinimumHeight, i2, i8 << 16));
    }

    private bg b(bg bgVar) {
        bg bgVar2;
        Behavior b2;
        if (!bgVar.f()) {
            int childCount = getChildCount();
            int i = 0;
            bg bgVar3 = bgVar;
            while (true) {
                if (i >= childCount) {
                    bgVar2 = bgVar3;
                    break;
                }
                View childAt = getChildAt(i);
                if (!ai.x(childAt) || (b2 = ((c) childAt.getLayoutParams()).b()) == null) {
                    bgVar2 = bgVar3;
                } else {
                    bgVar2 = b2.a(this, (CoordinatorLayout) childAt, bgVar3);
                    if (bgVar2.f()) {
                        break;
                    }
                }
                i++;
                bgVar3 = bgVar2;
            }
            return bgVar2;
        }
        return bgVar;
    }

    public void a(View view, int i) {
        c cVar = (c) view.getLayoutParams();
        if (cVar.d()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        if (cVar.k != null) {
            a(view, cVar.k, i);
        } else if (cVar.e >= 0) {
            b(view, cVar.e, i);
        } else {
            c(view, i);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Behavior b2;
        int g = ai.g(this);
        int size = this.g.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.g.get(i5);
            if (view.getVisibility() != 8 && ((b2 = ((c) view.getLayoutParams()).b()) == null || !b2.a(this, (CoordinatorLayout) view, g))) {
                a(view, g);
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.v && this.w != null) {
            int b2 = this.u != null ? this.u.b() : 0;
            if (b2 > 0) {
                this.w.setBounds(0, 0, getWidth(), b2);
                this.w.draw(canvas);
            }
        }
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        h();
    }

    void b(View view, Rect rect) {
        ((c) view.getLayoutParams()).a(rect);
    }

    void c(View view, Rect rect) {
        rect.set(((c) view.getLayoutParams()).c());
    }

    void a(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            a(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    private void a(View view, int i, Rect rect, Rect rect2, c cVar, int i2, int i3) {
        int width;
        int height;
        int a2 = android.support.v4.view.f.a(e(cVar.c), i);
        int a3 = android.support.v4.view.f.a(c(cVar.d), i);
        int i4 = a2 & 7;
        int i5 = a2 & 112;
        int i6 = a3 & 112;
        switch (a3 & 7) {
            case 1:
                width = (rect.width() / 2) + rect.left;
                break;
            case 5:
                width = rect.right;
                break;
            default:
                width = rect.left;
                break;
        }
        switch (i6) {
            case 16:
                height = rect.top + (rect.height() / 2);
                break;
            case 80:
                height = rect.bottom;
                break;
            default:
                height = rect.top;
                break;
        }
        switch (i4) {
            case 1:
                width -= i2 / 2;
                break;
            case 5:
                break;
            default:
                width -= i2;
                break;
        }
        switch (i5) {
            case 16:
                height -= i3 / 2;
                break;
            case 80:
                break;
            default:
                height -= i3;
                break;
        }
        rect2.set(width, height, width + i2, height + i3);
    }

    private void a(c cVar, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + cVar.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - cVar.rightMargin));
        int max2 = Math.max(getPaddingTop() + cVar.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - cVar.bottomMargin));
        rect.set(max, max2, max + i, max2 + i2);
    }

    void a(View view, int i, Rect rect, Rect rect2) {
        c cVar = (c) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        a(view, i, rect, rect2, cVar, measuredWidth, measuredHeight);
        a(cVar, rect2, measuredWidth, measuredHeight);
    }

    private void a(View view, View view2, int i) {
        c cVar = (c) view.getLayoutParams();
        Rect e2 = e();
        Rect e3 = e();
        try {
            a(view2, e2);
            a(view, i, e2, e3);
            view.layout(e3.left, e3.top, e3.right, e3.bottom);
        } finally {
            a(e2);
            a(e3);
        }
    }

    private void b(View view, int i, int i2) {
        c cVar = (c) view.getLayoutParams();
        int a2 = android.support.v4.view.f.a(d(cVar.c), i2);
        int i3 = a2 & 7;
        int i4 = a2 & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i2 == 1) {
            i = width - i;
        }
        int b2 = b(i) - measuredWidth;
        int i5 = 0;
        switch (i3) {
            case 1:
                b2 += measuredWidth / 2;
                break;
            case 5:
                b2 += measuredWidth;
                break;
        }
        switch (i4) {
            case 16:
                i5 = 0 + (measuredHeight / 2);
                break;
            case 80:
                i5 = 0 + measuredHeight;
                break;
        }
        int max = Math.max(getPaddingLeft() + cVar.leftMargin, Math.min(b2, ((width - getPaddingRight()) - measuredWidth) - cVar.rightMargin));
        int max2 = Math.max(getPaddingTop() + cVar.topMargin, Math.min(i5, ((height - getPaddingBottom()) - measuredHeight) - cVar.bottomMargin));
        view.layout(max, max2, max + measuredWidth, max2 + measuredHeight);
    }

    private void c(View view, int i) {
        c cVar = (c) view.getLayoutParams();
        Rect e2 = e();
        e2.set(getPaddingLeft() + cVar.leftMargin, getPaddingTop() + cVar.topMargin, (getWidth() - getPaddingRight()) - cVar.rightMargin, (getHeight() - getPaddingBottom()) - cVar.bottomMargin);
        if (this.u != null && ai.x(this) && !ai.x(view)) {
            e2.left += this.u.a();
            e2.top += this.u.b();
            e2.right -= this.u.c();
            e2.bottom -= this.u.d();
        }
        Rect e3 = e();
        android.support.v4.view.f.a(c(cVar.c), view.getMeasuredWidth(), view.getMeasuredHeight(), e2, e3, i);
        view.layout(e3.left, e3.top, e3.right, e3.bottom);
        a(e2);
        a(e3);
    }

    private static int c(int i) {
        int i2 = (i & 7) == 0 ? 8388611 | i : i;
        if ((i2 & 112) == 0) {
            return i2 | 48;
        }
        return i2;
    }

    private static int d(int i) {
        if (i == 0) {
            return 8388661;
        }
        return i;
    }

    private static int e(int i) {
        if (i == 0) {
            return 17;
        }
        return i;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        c cVar = (c) view.getLayoutParams();
        if (cVar.f61a != null) {
            float d2 = cVar.f61a.d(this, view);
            if (d2 > BitmapDescriptorFactory.HUE_RED) {
                if (this.l == null) {
                    this.l = new Paint();
                }
                this.l.setColor(cVar.f61a.c(this, view));
                this.l.setAlpha(l.a(Math.round(d2 * 255.0f), 0, 255));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.l);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j);
    }

    final void a(int i) {
        boolean z;
        int g = ai.g(this);
        int size = this.g.size();
        Rect e2 = e();
        Rect e3 = e();
        Rect e4 = e();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.g.get(i2);
            c cVar = (c) view.getLayoutParams();
            if (i != 0 || view.getVisibility() != 8) {
                for (int i3 = 0; i3 < i2; i3++) {
                    if (cVar.l == this.g.get(i3)) {
                        b(view, g);
                    }
                }
                a(view, true, e3);
                if (cVar.g != 0 && !e3.isEmpty()) {
                    int a2 = android.support.v4.view.f.a(cVar.g, g);
                    switch (a2 & 112) {
                        case 48:
                            e2.top = Math.max(e2.top, e3.bottom);
                            break;
                        case 80:
                            e2.bottom = Math.max(e2.bottom, getHeight() - e3.top);
                            break;
                    }
                    switch (a2 & 7) {
                        case 3:
                            e2.left = Math.max(e2.left, e3.right);
                            break;
                        case 5:
                            e2.right = Math.max(e2.right, getWidth() - e3.left);
                            break;
                    }
                }
                if (cVar.h != 0 && view.getVisibility() == 0) {
                    a(view, e2, g);
                }
                if (i != 2) {
                    c(view, e4);
                    if (!e4.equals(e3)) {
                        b(view, e3);
                    }
                }
                for (int i4 = i2 + 1; i4 < size; i4++) {
                    View view2 = this.g.get(i4);
                    c cVar2 = (c) view2.getLayoutParams();
                    Behavior b2 = cVar2.b();
                    if (b2 != null && b2.b(this, (CoordinatorLayout) view2, view)) {
                        if (i == 0 && cVar2.i()) {
                            cVar2.j();
                        } else {
                            switch (i) {
                                case 2:
                                    b2.d(this, view2, view);
                                    z = true;
                                    break;
                                default:
                                    z = b2.c(this, view2, view);
                                    break;
                            }
                            if (i == 1) {
                                cVar2.b(z);
                            }
                        }
                    }
                }
            }
        }
        a(e2);
        a(e3);
        a(e4);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(View view, Rect rect, int i) {
        boolean z;
        boolean z2;
        boolean z3;
        int i2;
        int height;
        int i3;
        if (ai.F(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            c cVar = (c) view.getLayoutParams();
            Behavior b2 = cVar.b();
            Rect e2 = e();
            Rect e3 = e();
            e3.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (b2 != null && b2.a(this, (CoordinatorLayout) view, e2)) {
                if (!e3.contains(e2)) {
                    throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + e2.toShortString() + " | Bounds:" + e3.toShortString());
                }
            } else {
                e2.set(e3);
            }
            a(e3);
            if (e2.isEmpty()) {
                a(e2);
                return;
            }
            int a2 = android.support.v4.view.f.a(cVar.h, i);
            if ((a2 & 48) != 48 || (i3 = (e2.top - cVar.topMargin) - cVar.j) >= rect.top) {
                z = false;
            } else {
                e(view, rect.top - i3);
                z = true;
            }
            if ((a2 & 80) == 80 && (height = ((getHeight() - e2.bottom) - cVar.bottomMargin) + cVar.j) < rect.bottom) {
                e(view, height - rect.bottom);
                z = true;
            }
            if (!z) {
                e(view, 0);
            }
            if ((a2 & 3) != 3 || (i2 = (e2.left - cVar.leftMargin) - cVar.i) >= rect.left) {
                z2 = false;
            } else {
                d(view, rect.left - i2);
                z2 = true;
            }
            if ((a2 & 5) == 5) {
                int width = cVar.i + ((getWidth() - e2.right) - cVar.rightMargin);
                if (width < rect.right) {
                    d(view, width - rect.right);
                    z3 = true;
                    if (!z3) {
                        d(view, 0);
                    }
                    a(e2);
                }
            }
            z3 = z2;
            if (!z3) {
            }
            a(e2);
        }
    }

    private void d(View view, int i) {
        c cVar = (c) view.getLayoutParams();
        if (cVar.i != i) {
            ai.f(view, i - cVar.i);
            cVar.i = i;
        }
    }

    private void e(View view, int i) {
        c cVar = (c) view.getLayoutParams();
        if (cVar.j != i) {
            ai.e(view, i - cVar.j);
            cVar.j = i;
        }
    }

    public void b(View view) {
        List c2 = this.h.c(view);
        if (c2 != null && !c2.isEmpty()) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < c2.size()) {
                    View view2 = (View) c2.get(i2);
                    Behavior b2 = ((c) view2.getLayoutParams()).b();
                    if (b2 != null) {
                        b2.c(this, view2, view);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public List<View> c(View view) {
        List d2 = this.h.d(view);
        this.j.clear();
        if (d2 != null) {
            this.j.addAll(d2);
        }
        return this.j;
    }

    public List<View> d(View view) {
        List c2 = this.h.c(view);
        this.j.clear();
        if (c2 != null) {
            this.j.addAll(c2);
        }
        return this.j;
    }

    final List<View> getDependencySortedChildren() {
        g();
        return Collections.unmodifiableList(this.g);
    }

    void a() {
        boolean z = false;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            } else if (!e(getChildAt(i))) {
                i++;
            } else {
                z = true;
                break;
            }
        }
        if (z != this.t) {
            if (z) {
                b();
            } else {
                c();
            }
        }
    }

    private boolean e(View view) {
        return this.h.e(view);
    }

    void b() {
        if (this.n) {
            if (this.s == null) {
                this.s = new d();
            }
            getViewTreeObserver().addOnPreDrawListener(this.s);
        }
        this.t = true;
    }

    void c() {
        if (this.n && this.s != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.s);
        }
        this.t = false;
    }

    void b(View view, int i) {
        Behavior b2;
        c cVar = (c) view.getLayoutParams();
        if (cVar.k != null) {
            Rect e2 = e();
            Rect e3 = e();
            Rect e4 = e();
            a(cVar.k, e2);
            a(view, false, e3);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            a(view, i, e2, e4, cVar, measuredWidth, measuredHeight);
            boolean z = (e4.left == e3.left && e4.top == e3.top) ? false : true;
            a(cVar, e4, measuredWidth, measuredHeight);
            int i2 = e4.left - e3.left;
            int i3 = e4.top - e3.top;
            if (i2 != 0) {
                ai.f(view, i2);
            }
            if (i3 != 0) {
                ai.e(view, i3);
            }
            if (z && (b2 = cVar.b()) != null) {
                b2.c(this, view, cVar.k);
            }
            a(e2);
            a(e3);
            a(e4);
        }
    }

    public boolean a(View view, int i, int i2) {
        Rect e2 = e();
        a(view, e2);
        try {
            return e2.contains(i, i2);
        } finally {
            a(e2);
        }
    }

    @Override // android.view.ViewGroup
    /* renamed from: a */
    public c generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: a */
    public c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof c) {
            return new c((c) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new c((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new c(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: d */
    public c generateDefaultLayoutParams() {
        return new c(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof c) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public boolean onStartNestedScroll(View view, View view2, int i) {
        boolean z;
        int childCount = getChildCount();
        int i2 = 0;
        boolean z2 = false;
        while (i2 < childCount) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 8) {
                z = z2;
            } else {
                c cVar = (c) childAt.getLayoutParams();
                Behavior b2 = cVar.b();
                if (b2 != null) {
                    boolean a2 = b2.a(this, (CoordinatorLayout) childAt, view, view2, i);
                    z = z2 | a2;
                    cVar.a(a2);
                } else {
                    cVar.a(false);
                    z = z2;
                }
            }
            i2++;
            z2 = z;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public void onNestedScrollAccepted(View view, View view2, int i) {
        Behavior b2;
        this.y.a(view, view2, i);
        this.q = view;
        this.r = view2;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            c cVar = (c) childAt.getLayoutParams();
            if (cVar.h() && (b2 = cVar.b()) != null) {
                b2.b(this, childAt, view, view2, i);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public void onStopNestedScroll(View view) {
        this.y.a(view);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            c cVar = (c) childAt.getLayoutParams();
            if (cVar.h()) {
                Behavior b2 = cVar.b();
                if (b2 != null) {
                    b2.a(this, (CoordinatorLayout) childAt, view);
                }
                cVar.g();
                cVar.j();
            }
        }
        this.q = null;
        this.r = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        boolean z;
        int childCount = getChildCount();
        boolean z2 = false;
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() == 8) {
                z = z2;
            } else {
                c cVar = (c) childAt.getLayoutParams();
                if (!cVar.h()) {
                    z = z2;
                } else {
                    Behavior b2 = cVar.b();
                    if (b2 != null) {
                        b2.a(this, childAt, view, i, i2, i3, i4);
                        z = true;
                    } else {
                        z = z2;
                    }
                }
            }
            i5++;
            z2 = z;
        }
        if (z2) {
            a(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        boolean z;
        int i3;
        int i4;
        int i5 = 0;
        int i6 = 0;
        boolean z2 = false;
        int childCount = getChildCount();
        int i7 = 0;
        while (i7 < childCount) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() == 8) {
                z = z2;
                i3 = i5;
                i4 = i6;
            } else {
                c cVar = (c) childAt.getLayoutParams();
                if (!cVar.h()) {
                    z = z2;
                    i3 = i5;
                    i4 = i6;
                } else {
                    Behavior b2 = cVar.b();
                    if (b2 != null) {
                        int[] iArr2 = this.k;
                        this.k[1] = 0;
                        iArr2[0] = 0;
                        b2.a(this, (CoordinatorLayout) childAt, view, i, i2, this.k);
                        i3 = i > 0 ? Math.max(i5, this.k[0]) : Math.min(i5, this.k[0]);
                        i4 = i2 > 0 ? Math.max(i6, this.k[1]) : Math.min(i6, this.k[1]);
                        z = true;
                    } else {
                        z = z2;
                        i3 = i5;
                        i4 = i6;
                    }
                }
            }
            i7++;
            i6 = i4;
            i5 = i3;
            z2 = z;
        }
        iArr[0] = i5;
        iArr[1] = i6;
        if (z2) {
            a(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        boolean a2;
        int childCount = getChildCount();
        int i = 0;
        boolean z2 = false;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 8) {
                a2 = z2;
            } else {
                c cVar = (c) childAt.getLayoutParams();
                if (!cVar.h()) {
                    a2 = z2;
                } else {
                    Behavior b2 = cVar.b();
                    a2 = b2 != null ? b2.a(this, (CoordinatorLayout) childAt, view, f2, f3, z) | z2 : z2;
                }
            }
            i++;
            z2 = a2;
        }
        if (z2) {
            a(1);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.x
    public boolean onNestedPreFling(View view, float f2, float f3) {
        boolean a2;
        int childCount = getChildCount();
        int i = 0;
        boolean z = false;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 8) {
                a2 = z;
            } else {
                c cVar = (c) childAt.getLayoutParams();
                if (!cVar.h()) {
                    a2 = z;
                } else {
                    Behavior b2 = cVar.b();
                    a2 = b2 != null ? b2.a(this, (CoordinatorLayout) childAt, view, f2, f3) | z : z;
                }
            }
            i++;
            z = a2;
        }
        return z;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.y.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements ViewTreeObserver.OnPreDrawListener {
        d() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.a(0);
            return true;
        }
    }

    /* loaded from: classes.dex */
    static class e implements Comparator<View> {
        e() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(View view, View view2) {
            float G = ai.G(view);
            float G2 = ai.G(view2);
            if (G > G2) {
                return -1;
            }
            if (G < G2) {
                return 1;
            }
            return 0;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }

        public void a(c cVar) {
        }

        public void c() {
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public int c(CoordinatorLayout coordinatorLayout, V v) {
            return DrawableConstants.CtaButton.BACKGROUND_COLOR;
        }

        public float d(CoordinatorLayout coordinatorLayout, V v) {
            return BitmapDescriptorFactory.HUE_RED;
        }

        public boolean e(CoordinatorLayout coordinatorLayout, V v) {
            return d(coordinatorLayout, v) > BitmapDescriptorFactory.HUE_RED;
        }

        public boolean b(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public boolean c(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public void d(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
            return false;
        }

        public void b(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2, boolean z) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        public bg a(CoordinatorLayout coordinatorLayout, V v, bg bgVar) {
            return bgVar;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        public Parcelable b(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class c extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        Behavior f61a;
        boolean b;
        public int c;
        public int d;
        public int e;
        int f;
        public int g;
        public int h;
        int i;
        int j;
        View k;
        View l;
        final Rect m;
        Object n;
        private boolean o;
        private boolean p;
        private boolean q;

        public c(int i, int i2) {
            super(i, i2);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout_Layout);
            this.c = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f = obtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.d = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.e = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.g = obtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.h = obtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            this.b = obtainStyledAttributes.hasValue(R.styleable.CoordinatorLayout_Layout_layout_behavior);
            if (this.b) {
                this.f61a = CoordinatorLayout.a(context, attributeSet, obtainStyledAttributes.getString(R.styleable.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            if (this.f61a != null) {
                this.f61a.a(this);
            }
        }

        public c(c cVar) {
            super((ViewGroup.MarginLayoutParams) cVar);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        public int a() {
            return this.f;
        }

        public Behavior b() {
            return this.f61a;
        }

        public void a(Behavior behavior) {
            if (this.f61a != behavior) {
                if (this.f61a != null) {
                    this.f61a.c();
                }
                this.f61a = behavior;
                this.n = null;
                this.b = true;
                if (behavior != null) {
                    behavior.a(this);
                }
            }
        }

        void a(Rect rect) {
            this.m.set(rect);
        }

        Rect c() {
            return this.m;
        }

        boolean d() {
            return this.k == null && this.f != -1;
        }

        boolean e() {
            if (this.f61a == null) {
                this.o = false;
            }
            return this.o;
        }

        boolean a(CoordinatorLayout coordinatorLayout, View view) {
            if (this.o) {
                return true;
            }
            boolean e = (this.f61a != null ? this.f61a.e(coordinatorLayout, view) : false) | this.o;
            this.o = e;
            return e;
        }

        void f() {
            this.o = false;
        }

        void g() {
            this.p = false;
        }

        void a(boolean z) {
            this.p = z;
        }

        boolean h() {
            return this.p;
        }

        boolean i() {
            return this.q;
        }

        void b(boolean z) {
            this.q = z;
        }

        void j() {
            this.q = false;
        }

        boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 == this.l || a(view2, ai.g(coordinatorLayout)) || (this.f61a != null && this.f61a.b(coordinatorLayout, (CoordinatorLayout) view, view2));
        }

        View b(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f == -1) {
                this.l = null;
                this.k = null;
                return null;
            }
            if (this.k == null || !b(view, coordinatorLayout)) {
                a(view, coordinatorLayout);
            }
            return this.k;
        }

        private void a(View view, CoordinatorLayout coordinatorLayout) {
            this.k = coordinatorLayout.findViewById(this.f);
            if (this.k != null) {
                if (this.k == coordinatorLayout) {
                    if (coordinatorLayout.isInEditMode()) {
                        this.l = null;
                        this.k = null;
                        return;
                    }
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                View view2 = this.k;
                for (ViewParent parent = this.k.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                    if (parent == view) {
                        if (coordinatorLayout.isInEditMode()) {
                            this.l = null;
                            this.k = null;
                            return;
                        }
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                    if (parent instanceof View) {
                        view2 = (View) parent;
                    }
                }
                this.l = view2;
            } else if (coordinatorLayout.isInEditMode()) {
                this.l = null;
                this.k = null;
            } else {
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f) + " to anchor view " + view);
            }
        }

        private boolean b(View view, CoordinatorLayout coordinatorLayout) {
            if (this.k.getId() != this.f) {
                return false;
            }
            View view2 = this.k;
            for (ViewParent parent = this.k.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.l = null;
                    this.k = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = (View) parent;
                }
            }
            this.l = view2;
            return true;
        }

        private boolean a(View view, int i) {
            int a2 = android.support.v4.view.f.a(((c) view.getLayoutParams()).g, i);
            return a2 != 0 && (android.support.v4.view.f.a(this.h, i) & a2) == a2;
        }
    }

    /* loaded from: classes.dex */
    private class b implements ViewGroup.OnHierarchyChangeListener {
        b() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (CoordinatorLayout.this.e != null) {
                CoordinatorLayout.this.e.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.a(2);
            if (CoordinatorLayout.this.e != null) {
                CoordinatorLayout.this.e.onChildViewRemoved(view, view2);
            }
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        SparseArray<Parcelable> sparseArray = savedState.f59a;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior b2 = a(childAt).b();
            if (id != -1 && b2 != null && (parcelable2 = sparseArray.get(id)) != null) {
                b2.a(this, (CoordinatorLayout) childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable b2;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior b3 = ((c) childAt.getLayoutParams()).b();
            if (id != -1 && b3 != null && (b2 = b3.b(this, childAt)) != null) {
                sparseArray.append(id, b2);
            }
        }
        savedState.f59a = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        Behavior b2 = ((c) view.getLayoutParams()).b();
        if (b2 == null || !b2.a(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    private void h() {
        if (Build.VERSION.SDK_INT >= 21) {
            if (ai.x(this)) {
                if (this.x == null) {
                    this.x = new z() { // from class: android.support.design.widget.CoordinatorLayout.1
                        @Override // android.support.v4.view.z
                        public bg a(View view, bg bgVar) {
                            return CoordinatorLayout.this.a(bgVar);
                        }
                    };
                }
                ai.a(this, this.x);
                setSystemUiVisibility(1280);
                return;
            }
            ai.a(this, (z) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = android.support.v4.os.e.a(new android.support.v4.os.f<SavedState>() { // from class: android.support.design.widget.CoordinatorLayout.SavedState.1
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
        SparseArray<Parcelable> f59a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f59a = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.f59a.append(iArr[i], readParcelableArray[i]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            int size = this.f59a != null ? this.f59a.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f59a.keyAt(i2);
                parcelableArr[i2] = this.f59a.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }
}
