package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.a.c;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.Arrays;
/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: a  reason: collision with root package name */
    boolean f785a;
    int b;
    int[] c;
    View[] d;
    final SparseIntArray e;
    final SparseIntArray f;
    b g;
    final Rect h;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f785a = false;
        this.b = -1;
        this.e = new SparseIntArray();
        this.f = new SparseIntArray();
        this.g = new a();
        this.h = new Rect();
        a(getProperties(context, attributeSet, i, i2).b);
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        this.f785a = false;
        this.b = -1;
        this.e = new SparseIntArray();
        this.f = new SparseIntArray();
        this.g = new a();
        this.h = new Rect();
        a(i);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        this.f785a = false;
        this.b = -1;
        this.e = new SparseIntArray();
        this.f = new SparseIntArray();
        this.g = new a();
        this.h = new Rect();
        a(i);
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int getRowCountForAccessibility(RecyclerView.n nVar, RecyclerView.r rVar) {
        if (this.mOrientation == 0) {
            return this.b;
        }
        if (rVar.e() < 1) {
            return 0;
        }
        return a(nVar, rVar, rVar.e() - 1) + 1;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int getColumnCountForAccessibility(RecyclerView.n nVar, RecyclerView.r rVar) {
        if (this.mOrientation == 1) {
            return this.b;
        }
        if (rVar.e() < 1) {
            return 0;
        }
        return a(nVar, rVar, rVar.e() - 1) + 1;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.n nVar, RecyclerView.r rVar, View view, android.support.v4.view.a.c cVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, cVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int a2 = a(nVar, rVar, layoutParams2.f());
        if (this.mOrientation == 0) {
            cVar.c(c.n.a(layoutParams2.a(), layoutParams2.b(), a2, 1, this.b > 1 && layoutParams2.b() == this.b, false));
        } else {
            cVar.c(c.n.a(a2, 1, layoutParams2.a(), layoutParams2.b(), this.b > 1 && layoutParams2.b() == this.b, false));
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.h
    public void onLayoutChildren(RecyclerView.n nVar, RecyclerView.r rVar) {
        if (rVar.a()) {
            c();
        }
        super.onLayoutChildren(nVar, rVar);
        b();
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.h
    public void onLayoutCompleted(RecyclerView.r rVar) {
        super.onLayoutCompleted(rVar);
        this.f785a = false;
    }

    private void b() {
        this.e.clear();
        this.f.clear();
    }

    private void c() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            int f = layoutParams.f();
            this.e.put(f, layoutParams.b());
            this.f.put(f, layoutParams.a());
        }
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        this.g.a();
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onItemsChanged(RecyclerView recyclerView) {
        this.g.a();
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        this.g.a();
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.g.a();
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        this.g.a();
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.h
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    private void d() {
        int height;
        if (getOrientation() == 1) {
            height = (getWidth() - getPaddingRight()) - getPaddingLeft();
        } else {
            height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        }
        b(height);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int chooseSize;
        int chooseSize2;
        if (this.c == null) {
            super.setMeasuredDimension(rect, i, i2);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            chooseSize2 = chooseSize(i2, paddingTop + rect.height(), getMinimumHeight());
            chooseSize = chooseSize(i, paddingRight + this.c[this.c.length - 1], getMinimumWidth());
        } else {
            chooseSize = chooseSize(i, paddingRight + rect.width(), getMinimumWidth());
            chooseSize2 = chooseSize(i2, paddingTop + this.c[this.c.length - 1], getMinimumHeight());
        }
        setMeasuredDimension(chooseSize, chooseSize2);
    }

    private void b(int i) {
        this.c = a(this.c, this.b, i);
    }

    static int[] a(int[] iArr, int i, int i2) {
        int i3;
        int i4 = 0;
        if (iArr == null || iArr.length != i + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i + 1];
        }
        iArr[0] = 0;
        int i5 = i2 / i;
        int i6 = i2 % i;
        int i7 = 0;
        for (int i8 = 1; i8 <= i; i8++) {
            i4 += i6;
            if (i4 <= 0 || i - i4 >= i6) {
                i3 = i5;
            } else {
                i3 = i5 + 1;
                i4 -= i;
            }
            i7 += i3;
            iArr[i8] = i7;
        }
        return iArr;
    }

    int a(int i, int i2) {
        return (this.mOrientation != 1 || !isLayoutRTL()) ? this.c[i + i2] - this.c[i] : this.c[this.b - i] - this.c[(this.b - i) - i2];
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    void onAnchorReady(RecyclerView.n nVar, RecyclerView.r rVar, LinearLayoutManager.a aVar, int i) {
        super.onAnchorReady(nVar, rVar, aVar, i);
        d();
        if (rVar.e() > 0 && !rVar.a()) {
            a(nVar, rVar, aVar, i);
        }
        e();
    }

    private void e() {
        if (this.d == null || this.d.length != this.b) {
            this.d = new View[this.b];
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.h
    public int scrollHorizontallyBy(int i, RecyclerView.n nVar, RecyclerView.r rVar) {
        d();
        e();
        return super.scrollHorizontallyBy(i, nVar, rVar);
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.h
    public int scrollVerticallyBy(int i, RecyclerView.n nVar, RecyclerView.r rVar) {
        d();
        e();
        return super.scrollVerticallyBy(i, nVar, rVar);
    }

    private void a(RecyclerView.n nVar, RecyclerView.r rVar, LinearLayoutManager.a aVar, int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        int b2 = b(nVar, rVar, aVar.f790a);
        if (z) {
            while (b2 > 0 && aVar.f790a > 0) {
                aVar.f790a--;
                b2 = b(nVar, rVar, aVar.f790a);
            }
            return;
        }
        int e = rVar.e() - 1;
        int i2 = aVar.f790a;
        int i3 = b2;
        while (i2 < e) {
            int b3 = b(nVar, rVar, i2 + 1);
            if (b3 <= i3) {
                break;
            }
            i2++;
            i3 = b3;
        }
        aVar.f790a = i2;
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    View findReferenceChild(RecyclerView.n nVar, RecyclerView.r rVar, int i, int i2, int i3) {
        View view;
        View view2 = null;
        ensureLayoutState();
        int c = this.mOrientationHelper.c();
        int d = this.mOrientationHelper.d();
        int i4 = i2 > i ? 1 : -1;
        View view3 = null;
        while (i != i2) {
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            if (position >= 0 && position < i3) {
                if (b(nVar, rVar, position) != 0) {
                    view = view2;
                    childAt = view3;
                } else if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).d()) {
                    if (view3 == null) {
                        view = view2;
                    }
                } else if (this.mOrientationHelper.a(childAt) < d && this.mOrientationHelper.b(childAt) >= c) {
                    return childAt;
                } else {
                    if (view2 == null) {
                        view = childAt;
                        childAt = view3;
                    }
                }
                i += i4;
                view2 = view;
                view3 = childAt;
            }
            view = view2;
            childAt = view3;
            i += i4;
            view2 = view;
            view3 = childAt;
        }
        if (view2 == null) {
            view2 = view3;
        }
        return view2;
    }

    private int a(RecyclerView.n nVar, RecyclerView.r rVar, int i) {
        if (!rVar.a()) {
            return this.g.c(i, this.b);
        }
        int b2 = nVar.b(i);
        if (b2 == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
            return 0;
        }
        return this.g.c(b2, this.b);
    }

    private int b(RecyclerView.n nVar, RecyclerView.r rVar, int i) {
        if (!rVar.a()) {
            return this.g.b(i, this.b);
        }
        int i2 = this.f.get(i, -1);
        if (i2 == -1) {
            int b2 = nVar.b(i);
            if (b2 == -1) {
                Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
                return 0;
            }
            return this.g.b(b2, this.b);
        }
        return i2;
    }

    private int c(RecyclerView.n nVar, RecyclerView.r rVar, int i) {
        if (!rVar.a()) {
            return this.g.a(i);
        }
        int i2 = this.e.get(i, -1);
        if (i2 == -1) {
            int b2 = nVar.b(i);
            if (b2 == -1) {
                Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
                return 1;
            }
            return this.g.a(b2);
        }
        return i2;
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    void collectPrefetchPositionsForLayoutState(RecyclerView.r rVar, LinearLayoutManager.c cVar, RecyclerView.h.a aVar) {
        int i = this.b;
        for (int i2 = 0; i2 < this.b && cVar.a(rVar) && i > 0; i2++) {
            int i3 = cVar.d;
            aVar.b(i3, Math.max(0, cVar.g));
            i -= this.g.a(i3);
            cVar.d += cVar.e;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a9, code lost:
        r19.b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ae, code lost:
        return;
     */
    @Override // android.support.v7.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void layoutChunk(RecyclerView.n nVar, RecyclerView.r rVar, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i;
        int i2;
        int i3;
        int makeMeasureSpec;
        int childMeasureSpec;
        View a2;
        int i4 = this.mOrientationHelper.i();
        boolean z = i4 != 1073741824;
        int i5 = getChildCount() > 0 ? this.c[this.b] : 0;
        if (z) {
            d();
        }
        boolean z2 = cVar.e == 1;
        int i6 = 0;
        int i7 = 0;
        int i8 = this.b;
        if (!z2) {
            i8 = b(nVar, rVar, cVar.d) + c(nVar, rVar, cVar.d);
        }
        while (i6 < this.b && cVar.a(rVar) && i8 > 0) {
            int i9 = cVar.d;
            int c = c(nVar, rVar, i9);
            if (c > this.b) {
                throw new IllegalArgumentException("Item at position " + i9 + " requires " + c + " spans but GridLayoutManager has only " + this.b + " spans.");
            }
            i8 -= c;
            if (i8 < 0 || (a2 = cVar.a(nVar)) == null) {
                break;
            }
            i7 += c;
            this.d[i6] = a2;
            i6++;
        }
        a(nVar, rVar, i6, i7, z2);
        int i10 = 0;
        float f = 0.0f;
        int i11 = 0;
        while (i10 < i6) {
            View view = this.d[i10];
            if (cVar.k == null) {
                if (z2) {
                    addView(view);
                } else {
                    addView(view, 0);
                }
            } else if (z2) {
                addDisappearingView(view);
            } else {
                addDisappearingView(view, 0);
            }
            calculateItemDecorationsForChild(view, this.h);
            a(view, i4, false);
            int e = this.mOrientationHelper.e(view);
            if (e > i11) {
                i11 = e;
            }
            float f2 = (this.mOrientationHelper.f(view) * 1.0f) / ((LayoutParams) view.getLayoutParams()).b;
            if (f2 <= f) {
                f2 = f;
            }
            i10++;
            f = f2;
        }
        if (z) {
            a(f, i5);
            i11 = 0;
            int i12 = 0;
            while (i12 < i6) {
                View view2 = this.d[i12];
                a(view2, 1073741824, true);
                int e2 = this.mOrientationHelper.e(view2);
                if (e2 <= i11) {
                    e2 = i11;
                }
                i12++;
                i11 = e2;
            }
        }
        for (int i13 = 0; i13 < i6; i13++) {
            View view3 = this.d[i13];
            if (this.mOrientationHelper.e(view3) != i11) {
                LayoutParams layoutParams = (LayoutParams) view3.getLayoutParams();
                Rect rect = layoutParams.d;
                int i14 = rect.top + rect.bottom + layoutParams.topMargin + layoutParams.bottomMargin;
                int i15 = rect.right + rect.left + layoutParams.leftMargin + layoutParams.rightMargin;
                int a3 = a(layoutParams.f786a, layoutParams.b);
                if (this.mOrientation == 1) {
                    makeMeasureSpec = getChildMeasureSpec(a3, 1073741824, i15, layoutParams.width, false);
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec(i11 - i14, 1073741824);
                } else {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i11 - i15, 1073741824);
                    childMeasureSpec = getChildMeasureSpec(a3, 1073741824, i14, layoutParams.height, false);
                }
                a(view3, makeMeasureSpec, childMeasureSpec, true);
            }
        }
        bVar.f791a = i11;
        int i16 = 0;
        if (this.mOrientation == 1) {
            if (cVar.f == -1) {
                i16 = cVar.b;
                i3 = i16 - i11;
                i2 = 0;
                i = 0;
            } else {
                int i17 = cVar.b;
                i16 = i17 + i11;
                i3 = i17;
                i2 = 0;
                i = 0;
            }
        } else if (cVar.f == -1) {
            int i18 = cVar.b;
            i2 = i18;
            i = i18 - i11;
            i3 = 0;
        } else {
            i = cVar.b;
            i2 = i11 + i;
            i3 = 0;
        }
        int i19 = i16;
        int i20 = i3;
        int i21 = i2;
        int i22 = i;
        for (int i23 = 0; i23 < i6; i23++) {
            View view4 = this.d[i23];
            LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
            if (this.mOrientation == 1) {
                if (isLayoutRTL()) {
                    i21 = getPaddingLeft() + this.c[this.b - layoutParams2.f786a];
                    i22 = i21 - this.mOrientationHelper.f(view4);
                } else {
                    i22 = getPaddingLeft() + this.c[layoutParams2.f786a];
                    i21 = i22 + this.mOrientationHelper.f(view4);
                }
            } else {
                i20 = getPaddingTop() + this.c[layoutParams2.f786a];
                i19 = i20 + this.mOrientationHelper.f(view4);
            }
            layoutDecoratedWithMargins(view4, i22, i20, i21, i19);
            if (layoutParams2.d() || layoutParams2.e()) {
                bVar.c = true;
            }
            bVar.d |= view4.hasFocusable();
        }
        Arrays.fill(this.d, (Object) null);
    }

    private void a(View view, int i, boolean z) {
        int childMeasureSpec;
        int i2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.d;
        int i3 = rect.top + rect.bottom + layoutParams.topMargin + layoutParams.bottomMargin;
        int i4 = layoutParams.rightMargin + rect.right + rect.left + layoutParams.leftMargin;
        int a2 = a(layoutParams.f786a, layoutParams.b);
        if (this.mOrientation == 1) {
            childMeasureSpec = getChildMeasureSpec(a2, i, i4, layoutParams.width, false);
            i2 = getChildMeasureSpec(this.mOrientationHelper.f(), getHeightMode(), i3, layoutParams.height, true);
        } else {
            int childMeasureSpec2 = getChildMeasureSpec(a2, i, i3, layoutParams.height, false);
            childMeasureSpec = getChildMeasureSpec(this.mOrientationHelper.f(), getWidthMode(), i4, layoutParams.width, true);
            i2 = childMeasureSpec2;
        }
        a(view, childMeasureSpec, i2, z);
    }

    private void a(float f, int i) {
        b(Math.max(Math.round(this.b * f), i));
    }

    private void a(View view, int i, int i2, boolean z) {
        boolean shouldMeasureChild;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z) {
            shouldMeasureChild = shouldReMeasureChild(view, i, i2, layoutParams);
        } else {
            shouldMeasureChild = shouldMeasureChild(view, i, i2, layoutParams);
        }
        if (shouldMeasureChild) {
            view.measure(i, i2);
        }
    }

    private void a(RecyclerView.n nVar, RecyclerView.r rVar, int i, int i2, boolean z) {
        int i3;
        int i4;
        if (z) {
            i4 = 1;
            i3 = 0;
        } else {
            int i5 = i - 1;
            i = -1;
            i3 = i5;
            i4 = -1;
        }
        int i6 = 0;
        for (int i7 = i3; i7 != i; i7 += i4) {
            View view = this.d[i7];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.b = c(nVar, rVar, getPosition(view));
            layoutParams.f786a = i6;
            i6 += layoutParams.b;
        }
    }

    public int a() {
        return this.b;
    }

    public void a(int i) {
        if (i != this.b) {
            this.f785a = true;
            if (i < 1) {
                throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
            }
            this.b = i;
            this.g.a();
            requestLayout();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        final SparseIntArray f787a = new SparseIntArray();
        private boolean b = false;

        public abstract int a(int i);

        public void a() {
            this.f787a.clear();
        }

        int b(int i, int i2) {
            if (!this.b) {
                return a(i, i2);
            }
            int i3 = this.f787a.get(i, -1);
            if (i3 == -1) {
                int a2 = a(i, i2);
                this.f787a.put(i, a2);
                return a2;
            }
            return i3;
        }

        public int a(int i, int i2) {
            int i3;
            int i4;
            int b;
            int a2 = a(i);
            if (a2 == i2) {
                return 0;
            }
            if (!this.b || this.f787a.size() <= 0 || (b = b(i)) < 0) {
                i3 = 0;
                i4 = 0;
            } else {
                i4 = this.f787a.get(b) + a(b);
                i3 = b + 1;
            }
            int i5 = i3;
            while (i5 < i) {
                int a3 = a(i5);
                int i6 = i4 + a3;
                if (i6 == i2) {
                    a3 = 0;
                } else if (i6 <= i2) {
                    a3 = i6;
                }
                i5++;
                i4 = a3;
            }
            if (i4 + a2 > i2) {
                return 0;
            }
            return i4;
        }

        int b(int i) {
            int i2 = 0;
            int size = this.f787a.size() - 1;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (this.f787a.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= this.f787a.size()) {
                return -1;
            }
            return this.f787a.keyAt(i4);
        }

        public int c(int i, int i2) {
            int a2 = a(i);
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i3 < i) {
                int a3 = a(i3);
                int i6 = i5 + a3;
                if (i6 == i2) {
                    i4++;
                    a3 = 0;
                } else if (i6 > i2) {
                    i4++;
                } else {
                    a3 = i6;
                }
                i3++;
                i5 = a3;
            }
            if (i5 + a2 > i2) {
                return i4 + 1;
            }
            return i4;
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.h
    public View onFocusSearchFailed(View view, int i, RecyclerView.n nVar, RecyclerView.r rVar) {
        int i2;
        int i3;
        int childCount;
        int i4;
        int min;
        View view2;
        int i5;
        int i6;
        View view3;
        View findContainingItemView = findContainingItemView(view);
        if (findContainingItemView == null) {
            return null;
        }
        LayoutParams layoutParams = (LayoutParams) findContainingItemView.getLayoutParams();
        int i7 = layoutParams.f786a;
        int i8 = layoutParams.f786a + layoutParams.b;
        if (super.onFocusSearchFailed(view, i, nVar, rVar) == null) {
            return null;
        }
        if ((convertFocusDirectionToLayoutDirection(i) == 1) != this.mShouldReverseLayout) {
            i2 = getChildCount() - 1;
            i3 = -1;
            childCount = -1;
        } else {
            i2 = 0;
            i3 = 1;
            childCount = getChildCount();
        }
        boolean z = this.mOrientation == 1 && isLayoutRTL();
        View view4 = null;
        int i9 = -1;
        int i10 = 0;
        View view5 = null;
        int i11 = -1;
        int i12 = 0;
        int a2 = a(nVar, rVar, i2);
        int i13 = i2;
        while (i13 != childCount) {
            int a3 = a(nVar, rVar, i13);
            View childAt = getChildAt(i13);
            if (childAt == findContainingItemView) {
                break;
            }
            if (childAt.hasFocusable() && a3 != a2) {
                if (view4 != null) {
                    break;
                }
            } else {
                LayoutParams layoutParams2 = (LayoutParams) childAt.getLayoutParams();
                int i14 = layoutParams2.f786a;
                int i15 = layoutParams2.f786a + layoutParams2.b;
                if (!childAt.hasFocusable() || i14 != i7 || i15 != i8) {
                    boolean z2 = false;
                    if ((childAt.hasFocusable() && view4 == null) || (!childAt.hasFocusable() && view5 == null)) {
                        z2 = true;
                    } else {
                        int min2 = Math.min(i15, i8) - Math.max(i14, i7);
                        if (childAt.hasFocusable()) {
                            if (min2 > i10) {
                                z2 = true;
                            } else if (min2 == i10) {
                                if (z == (i14 > i9)) {
                                    z2 = true;
                                }
                            }
                        } else if (view4 == null && isViewPartiallyVisible(childAt, false, true)) {
                            if (min2 > i12) {
                                z2 = true;
                            } else if (min2 == i12) {
                                if (z == (i14 > i11)) {
                                    z2 = true;
                                }
                            }
                        }
                    }
                    if (z2) {
                        if (childAt.hasFocusable()) {
                            int i16 = layoutParams2.f786a;
                            int i17 = i12;
                            i4 = i11;
                            view2 = view5;
                            i5 = Math.min(i15, i8) - Math.max(i14, i7);
                            min = i17;
                            view3 = childAt;
                            i6 = i16;
                        } else {
                            i4 = layoutParams2.f786a;
                            min = Math.min(i15, i8) - Math.max(i14, i7);
                            view2 = childAt;
                            i5 = i10;
                            i6 = i9;
                            view3 = view4;
                        }
                        i13 += i3;
                        view4 = view3;
                        i10 = i5;
                        i9 = i6;
                        view5 = view2;
                        i11 = i4;
                        i12 = min;
                    }
                } else {
                    return childAt;
                }
            }
            min = i12;
            i6 = i9;
            i4 = i11;
            view2 = view5;
            i5 = i10;
            view3 = view4;
            i13 += i3;
            view4 = view3;
            i10 = i5;
            i9 = i6;
            view5 = view2;
            i11 = i4;
            i12 = min;
        }
        if (view4 == null) {
            view4 = view5;
        }
        return view4;
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.h
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.f785a;
    }

    /* loaded from: classes.dex */
    public static final class a extends b {
        @Override // android.support.v7.widget.GridLayoutManager.b
        public int a(int i) {
            return 1;
        }

        @Override // android.support.v7.widget.GridLayoutManager.b
        public int a(int i, int i2) {
            return i % i2;
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        int f786a;
        int b;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f786a = -1;
            this.b = 0;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f786a = -1;
            this.b = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f786a = -1;
            this.b = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f786a = -1;
            this.b = 0;
        }

        public int a() {
            return this.f786a;
        }

        public int b() {
            return this.b;
        }
    }
}
