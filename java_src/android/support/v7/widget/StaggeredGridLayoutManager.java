package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.a.c;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.h implements RecyclerView.q.b {

    /* renamed from: a  reason: collision with root package name */
    b[] f839a;
    ag b;
    ag c;
    private int j;
    private int k;
    private final ab l;
    private BitSet m;
    private boolean o;
    private boolean p;
    private SavedState q;
    private int r;
    private int[] w;
    private int i = -1;
    boolean d = false;
    boolean e = false;
    int f = -1;
    int g = Integer.MIN_VALUE;
    LazySpanLookup h = new LazySpanLookup();
    private int n = 2;
    private final Rect s = new Rect();
    private final a t = new a();
    private boolean u = false;
    private boolean v = true;
    private final Runnable x = new Runnable() { // from class: android.support.v7.widget.StaggeredGridLayoutManager.1
        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.a();
        }
    };

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        boolean z = true;
        RecyclerView.h.b properties = getProperties(context, attributeSet, i, i2);
        b(properties.f814a);
        a(properties.b);
        a(properties.c);
        setAutoMeasureEnabled(this.n == 0 ? false : z);
        this.l = new ab();
        l();
    }

    public StaggeredGridLayoutManager(int i, int i2) {
        boolean z = true;
        this.j = i2;
        a(i);
        setAutoMeasureEnabled(this.n == 0 ? false : z);
        this.l = new ab();
        l();
    }

    private void l() {
        this.b = ag.a(this, this.j);
        this.c = ag.a(this, 1 - this.j);
    }

    boolean a() {
        int j;
        int i;
        if (getChildCount() == 0 || this.n == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.e) {
            j = i();
            i = j();
        } else {
            j = j();
            i = i();
        }
        if (j == 0 && b() != null) {
            this.h.a();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        } else if (!this.u) {
            return false;
        } else {
            int i2 = this.e ? -1 : 1;
            LazySpanLookup.FullSpanItem a2 = this.h.a(j, i + 1, i2, true);
            if (a2 == null) {
                this.u = false;
                this.h.a(i + 1);
                return false;
            }
            LazySpanLookup.FullSpanItem a3 = this.h.a(j, a2.f843a, i2 * (-1), true);
            if (a3 == null) {
                this.h.a(a2.f843a);
            } else {
                this.h.a(a3.f843a + 1);
            }
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onScrollStateChanged(int i) {
        if (i == 0) {
            a();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.n nVar) {
        removeCallbacks(this.x);
        for (int i = 0; i < this.i; i++) {
            this.f839a[i].e();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x005d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    View b() {
        int i;
        boolean z;
        int childCount = getChildCount() - 1;
        BitSet bitSet = new BitSet(this.i);
        bitSet.set(0, this.i, true);
        char c = (this.j != 1 || !e()) ? (char) 65535 : (char) 1;
        if (this.e) {
            i = -1;
        } else {
            i = childCount + 1;
            childCount = 0;
        }
        int i2 = childCount < i ? 1 : -1;
        for (int i3 = childCount; i3 != i; i3 += i2) {
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (bitSet.get(layoutParams.f841a.e)) {
                if (a(layoutParams.f841a)) {
                    return childAt;
                }
                bitSet.clear(layoutParams.f841a.e);
            }
            if (!layoutParams.b && i3 + i2 != i) {
                View childAt2 = getChildAt(i3 + i2);
                if (this.e) {
                    int b2 = this.b.b(childAt);
                    int b3 = this.b.b(childAt2);
                    if (b2 < b3) {
                        return childAt;
                    }
                    if (b2 == b3) {
                        z = true;
                        if (!z) {
                            continue;
                        } else {
                            if ((layoutParams.f841a.e - ((LayoutParams) childAt2.getLayoutParams()).f841a.e < 0) != (c < 0)) {
                                return childAt;
                            }
                        }
                    }
                    z = false;
                    if (!z) {
                    }
                } else {
                    int a2 = this.b.a(childAt);
                    int a3 = this.b.a(childAt2);
                    if (a2 > a3) {
                        return childAt;
                    }
                    if (a2 == a3) {
                        z = true;
                        if (!z) {
                        }
                    }
                    z = false;
                    if (!z) {
                    }
                }
            }
        }
        return null;
    }

    private boolean a(b bVar) {
        boolean z = true;
        if (this.e) {
            if (bVar.d() < this.b.d()) {
                return !bVar.c(bVar.f846a.get(bVar.f846a.size() + (-1))).b;
            }
        } else if (bVar.b() > this.b.c()) {
            if (bVar.c(bVar.f846a.get(0)).b) {
                z = false;
            }
            return z;
        }
        return false;
    }

    public void a(int i) {
        assertNotInLayoutOrScroll(null);
        if (i != this.i) {
            d();
            this.i = i;
            this.m = new BitSet(this.i);
            this.f839a = new b[this.i];
            for (int i2 = 0; i2 < this.i; i2++) {
                this.f839a[i2] = new b(i2);
            }
            requestLayout();
        }
    }

    public void b(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i != this.j) {
            this.j = i;
            ag agVar = this.b;
            this.b = this.c;
            this.c = agVar;
            requestLayout();
        }
    }

    public void a(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.q != null && this.q.h != z) {
            this.q.h = z;
        }
        this.d = z;
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void assertNotInLayoutOrScroll(String str) {
        if (this.q == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public int c() {
        return this.i;
    }

    public void d() {
        this.h.a();
        requestLayout();
    }

    private void m() {
        boolean z = true;
        if (this.j == 1 || !e()) {
            this.e = this.d;
            return;
        }
        if (this.d) {
            z = false;
        }
        this.e = z;
    }

    boolean e() {
        return getLayoutDirection() == 1;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int chooseSize;
        int chooseSize2;
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.j == 1) {
            chooseSize2 = chooseSize(i2, paddingTop + rect.height(), getMinimumHeight());
            chooseSize = chooseSize(i, paddingRight + (this.k * this.i), getMinimumWidth());
        } else {
            chooseSize = chooseSize(i, paddingRight + rect.width(), getMinimumWidth());
            chooseSize2 = chooseSize(i2, paddingTop + (this.k * this.i), getMinimumHeight());
        }
        setMeasuredDimension(chooseSize, chooseSize2);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onLayoutChildren(RecyclerView.n nVar, RecyclerView.r rVar) {
        a(nVar, rVar, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(RecyclerView.n nVar, RecyclerView.r rVar, boolean z) {
        boolean z2;
        a aVar = this.t;
        if ((this.q != null || this.f != -1) && rVar.e() == 0) {
            removeAndRecycleAllViews(nVar);
            aVar.a();
            return;
        }
        boolean z3 = (aVar.e && this.f == -1 && this.q == null) ? false : true;
        if (z3) {
            aVar.a();
            if (this.q != null) {
                a(aVar);
            } else {
                m();
                aVar.c = this.e;
            }
            a(rVar, aVar);
            aVar.e = true;
        }
        if (this.q == null && this.f == -1 && (aVar.c != this.o || e() != this.p)) {
            this.h.a();
            aVar.d = true;
        }
        if (getChildCount() > 0 && (this.q == null || this.q.c < 1)) {
            if (aVar.d) {
                for (int i = 0; i < this.i; i++) {
                    this.f839a[i].e();
                    if (aVar.b != Integer.MIN_VALUE) {
                        this.f839a[i].c(aVar.b);
                    }
                }
            } else if (z3 || this.t.f == null) {
                for (int i2 = 0; i2 < this.i; i2++) {
                    this.f839a[i2].a(this.e, aVar.b);
                }
                this.t.a(this.f839a);
            } else {
                for (int i3 = 0; i3 < this.i; i3++) {
                    b bVar = this.f839a[i3];
                    bVar.e();
                    bVar.c(this.t.f[i3]);
                }
            }
        }
        detachAndScrapAttachedViews(nVar);
        this.l.f862a = false;
        this.u = false;
        c(this.c.f());
        b(aVar.f845a, rVar);
        if (aVar.c) {
            d(-1);
            a(nVar, this.l, rVar);
            d(1);
            this.l.c = aVar.f845a + this.l.d;
            a(nVar, this.l, rVar);
        } else {
            d(1);
            a(nVar, this.l, rVar);
            d(-1);
            this.l.c = aVar.f845a + this.l.d;
            a(nVar, this.l, rVar);
        }
        n();
        if (getChildCount() > 0) {
            if (this.e) {
                b(nVar, rVar, true);
                c(nVar, rVar, false);
            } else {
                c(nVar, rVar, true);
                b(nVar, rVar, false);
            }
        }
        if (z && !rVar.a()) {
            if (this.n != 0 && getChildCount() > 0 && (this.u || b() != null)) {
                removeCallbacks(this.x);
                if (a()) {
                    z2 = true;
                    if (rVar.a()) {
                        this.t.a();
                    }
                    this.o = aVar.c;
                    this.p = e();
                    if (!z2) {
                        this.t.a();
                        a(nVar, rVar, false);
                        return;
                    }
                    return;
                }
            }
        }
        z2 = false;
        if (rVar.a()) {
        }
        this.o = aVar.c;
        this.p = e();
        if (!z2) {
        }
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onLayoutCompleted(RecyclerView.r rVar) {
        super.onLayoutCompleted(rVar);
        this.f = -1;
        this.g = Integer.MIN_VALUE;
        this.q = null;
        this.t.a();
    }

    private void n() {
        float max;
        if (this.c.h() != 1073741824) {
            float f = BitmapDescriptorFactory.HUE_RED;
            int childCount = getChildCount();
            int i = 0;
            while (i < childCount) {
                View childAt = getChildAt(i);
                float e = this.c.e(childAt);
                if (e < f) {
                    max = f;
                } else {
                    max = Math.max(f, ((LayoutParams) childAt.getLayoutParams()).a() ? (1.0f * e) / this.i : e);
                }
                i++;
                f = max;
            }
            int i2 = this.k;
            int round = Math.round(this.i * f);
            if (this.c.h() == Integer.MIN_VALUE) {
                round = Math.min(round, this.c.f());
            }
            c(round);
            if (this.k != i2) {
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt2 = getChildAt(i3);
                    LayoutParams layoutParams = (LayoutParams) childAt2.getLayoutParams();
                    if (!layoutParams.b) {
                        if (e() && this.j == 1) {
                            childAt2.offsetLeftAndRight(((-((this.i - 1) - layoutParams.f841a.e)) * this.k) - ((-((this.i - 1) - layoutParams.f841a.e)) * i2));
                        } else {
                            int i4 = layoutParams.f841a.e * this.k;
                            int i5 = layoutParams.f841a.e * i2;
                            if (this.j == 1) {
                                childAt2.offsetLeftAndRight(i4 - i5);
                            } else {
                                childAt2.offsetTopAndBottom(i4 - i5);
                            }
                        }
                    }
                }
            }
        }
    }

    private void a(a aVar) {
        if (this.q.c > 0) {
            if (this.q.c == this.i) {
                for (int i = 0; i < this.i; i++) {
                    this.f839a[i].e();
                    int i2 = this.q.d[i];
                    if (i2 != Integer.MIN_VALUE) {
                        if (this.q.i) {
                            i2 += this.b.d();
                        } else {
                            i2 += this.b.c();
                        }
                    }
                    this.f839a[i].c(i2);
                }
            } else {
                this.q.a();
                this.q.f844a = this.q.b;
            }
        }
        this.p = this.q.j;
        a(this.q.h);
        m();
        if (this.q.f844a != -1) {
            this.f = this.q.f844a;
            aVar.c = this.q.i;
        } else {
            aVar.c = this.e;
        }
        if (this.q.e > 1) {
            this.h.f842a = this.q.f;
            this.h.b = this.q.g;
        }
    }

    void a(RecyclerView.r rVar, a aVar) {
        if (!b(rVar, aVar) && !c(rVar, aVar)) {
            aVar.b();
            aVar.f845a = 0;
        }
    }

    private boolean c(RecyclerView.r rVar, a aVar) {
        int m;
        if (this.o) {
            m = n(rVar.e());
        } else {
            m = m(rVar.e());
        }
        aVar.f845a = m;
        aVar.b = Integer.MIN_VALUE;
        return true;
    }

    boolean b(RecyclerView.r rVar, a aVar) {
        int c;
        boolean z = false;
        if (rVar.a() || this.f == -1) {
            return false;
        }
        if (this.f < 0 || this.f >= rVar.e()) {
            this.f = -1;
            this.g = Integer.MIN_VALUE;
            return false;
        } else if (this.q == null || this.q.f844a == -1 || this.q.c < 1) {
            View findViewByPosition = findViewByPosition(this.f);
            if (findViewByPosition != null) {
                aVar.f845a = this.e ? i() : j();
                if (this.g != Integer.MIN_VALUE) {
                    if (aVar.c) {
                        aVar.b = (this.b.d() - this.g) - this.b.b(findViewByPosition);
                        return true;
                    }
                    aVar.b = (this.b.c() + this.g) - this.b.a(findViewByPosition);
                    return true;
                } else if (this.b.e(findViewByPosition) > this.b.f()) {
                    if (aVar.c) {
                        c = this.b.d();
                    } else {
                        c = this.b.c();
                    }
                    aVar.b = c;
                    return true;
                } else {
                    int a2 = this.b.a(findViewByPosition) - this.b.c();
                    if (a2 < 0) {
                        aVar.b = -a2;
                        return true;
                    }
                    int d = this.b.d() - this.b.b(findViewByPosition);
                    if (d < 0) {
                        aVar.b = d;
                        return true;
                    }
                    aVar.b = Integer.MIN_VALUE;
                    return true;
                }
            }
            aVar.f845a = this.f;
            if (this.g == Integer.MIN_VALUE) {
                if (l(aVar.f845a) == 1) {
                    z = true;
                }
                aVar.c = z;
                aVar.b();
            } else {
                aVar.a(this.g);
            }
            aVar.d = true;
            return true;
        } else {
            aVar.b = Integer.MIN_VALUE;
            aVar.f845a = this.f;
            return true;
        }
    }

    void c(int i) {
        this.k = i / this.i;
        this.r = View.MeasureSpec.makeMeasureSpec(i, this.c.h());
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public boolean supportsPredictiveItemAnimations() {
        return this.q == null;
    }

    public int[] a(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.i];
        } else if (iArr.length < this.i) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.i + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.i; i++) {
            iArr[i] = this.f839a[i].j();
        }
        return iArr;
    }

    public int[] b(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.i];
        } else if (iArr.length < this.i) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.i + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.i; i++) {
            iArr[i] = this.f839a[i].l();
        }
        return iArr;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int computeHorizontalScrollOffset(RecyclerView.r rVar) {
        return a(rVar);
    }

    private int a(RecyclerView.r rVar) {
        boolean z = true;
        if (getChildCount() == 0) {
            return 0;
        }
        ag agVar = this.b;
        View b2 = b(!this.v);
        if (this.v) {
            z = false;
        }
        return am.a(rVar, agVar, b2, c(z), this, this.v, this.e);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int computeVerticalScrollOffset(RecyclerView.r rVar) {
        return a(rVar);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int computeHorizontalScrollExtent(RecyclerView.r rVar) {
        return b(rVar);
    }

    private int b(RecyclerView.r rVar) {
        boolean z = true;
        if (getChildCount() == 0) {
            return 0;
        }
        ag agVar = this.b;
        View b2 = b(!this.v);
        if (this.v) {
            z = false;
        }
        return am.a(rVar, agVar, b2, c(z), this, this.v);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int computeVerticalScrollExtent(RecyclerView.r rVar) {
        return b(rVar);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int computeHorizontalScrollRange(RecyclerView.r rVar) {
        return c(rVar);
    }

    private int c(RecyclerView.r rVar) {
        boolean z = true;
        if (getChildCount() == 0) {
            return 0;
        }
        ag agVar = this.b;
        View b2 = b(!this.v);
        if (this.v) {
            z = false;
        }
        return am.b(rVar, agVar, b2, c(z), this, this.v);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int computeVerticalScrollRange(RecyclerView.r rVar) {
        return c(rVar);
    }

    private void a(View view, LayoutParams layoutParams, boolean z) {
        if (layoutParams.b) {
            if (this.j == 1) {
                a(view, this.r, getChildMeasureSpec(getHeight(), getHeightMode(), 0, layoutParams.height, true), z);
            } else {
                a(view, getChildMeasureSpec(getWidth(), getWidthMode(), 0, layoutParams.width, true), this.r, z);
            }
        } else if (this.j == 1) {
            a(view, getChildMeasureSpec(this.k, getWidthMode(), 0, layoutParams.width, false), getChildMeasureSpec(getHeight(), getHeightMode(), 0, layoutParams.height, true), z);
        } else {
            a(view, getChildMeasureSpec(getWidth(), getWidthMode(), 0, layoutParams.width, true), getChildMeasureSpec(this.k, getHeightMode(), 0, layoutParams.height, false), z);
        }
    }

    private void a(View view, int i, int i2, boolean z) {
        boolean shouldMeasureChild;
        calculateItemDecorationsForChild(view, this.s);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int a2 = a(i, layoutParams.leftMargin + this.s.left, layoutParams.rightMargin + this.s.right);
        int a3 = a(i2, layoutParams.topMargin + this.s.top, layoutParams.bottomMargin + this.s.bottom);
        if (z) {
            shouldMeasureChild = shouldReMeasureChild(view, a2, a3, layoutParams);
        } else {
            shouldMeasureChild = shouldMeasureChild(view, a2, a3, layoutParams);
        }
        if (shouldMeasureChild) {
            view.measure(a2, a3);
        }
    }

    private int a(int i, int i2, int i3) {
        if (i2 != 0 || i3 != 0) {
            int mode = View.MeasureSpec.getMode(i);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                return View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode);
            }
            return i;
        }
        return i;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.q = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public Parcelable onSaveInstanceState() {
        int a2;
        if (this.q != null) {
            return new SavedState(this.q);
        }
        SavedState savedState = new SavedState();
        savedState.h = this.d;
        savedState.i = this.o;
        savedState.j = this.p;
        if (this.h != null && this.h.f842a != null) {
            savedState.f = this.h.f842a;
            savedState.e = savedState.f.length;
            savedState.g = this.h.b;
        } else {
            savedState.e = 0;
        }
        if (getChildCount() > 0) {
            savedState.f844a = this.o ? i() : j();
            savedState.b = f();
            savedState.c = this.i;
            savedState.d = new int[this.i];
            for (int i = 0; i < this.i; i++) {
                if (this.o) {
                    a2 = this.f839a[i].b(Integer.MIN_VALUE);
                    if (a2 != Integer.MIN_VALUE) {
                        a2 -= this.b.d();
                    }
                } else {
                    a2 = this.f839a[i].a(Integer.MIN_VALUE);
                    if (a2 != Integer.MIN_VALUE) {
                        a2 -= this.b.c();
                    }
                }
                savedState.d[i] = a2;
            }
        } else {
            savedState.f844a = -1;
            savedState.b = -1;
            savedState.c = 0;
        }
        return savedState;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.n nVar, RecyclerView.r rVar, View view, android.support.v4.view.a.c cVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, cVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        if (this.j == 0) {
            cVar.c(c.n.a(layoutParams2.b(), layoutParams2.b ? this.i : 1, -1, -1, layoutParams2.b, false));
        } else {
            cVar.c(c.n.a(-1, -1, layoutParams2.b(), layoutParams2.b ? this.i : 1, layoutParams2.b, false));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            android.support.v4.view.a.o a2 = android.support.v4.view.a.a.a(accessibilityEvent);
            View b2 = b(false);
            View c = c(false);
            if (b2 != null && c != null) {
                int position = getPosition(b2);
                int position2 = getPosition(c);
                if (position < position2) {
                    a2.b(position);
                    a2.c(position2);
                    return;
                }
                a2.b(position2);
                a2.c(position);
            }
        }
    }

    int f() {
        View c = this.e ? c(true) : b(true);
        if (c == null) {
            return -1;
        }
        return getPosition(c);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int getRowCountForAccessibility(RecyclerView.n nVar, RecyclerView.r rVar) {
        return this.j == 0 ? this.i : super.getRowCountForAccessibility(nVar, rVar);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int getColumnCountForAccessibility(RecyclerView.n nVar, RecyclerView.r rVar) {
        return this.j == 1 ? this.i : super.getColumnCountForAccessibility(nVar, rVar);
    }

    View b(boolean z) {
        int c = this.b.c();
        int d = this.b.d();
        int childCount = getChildCount();
        View view = null;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int a2 = this.b.a(childAt);
            if (this.b.b(childAt) > c && a2 < d) {
                if (a2 < c && z) {
                    if (view == null) {
                        view = childAt;
                    }
                } else {
                    return childAt;
                }
            }
        }
        return view;
    }

    View c(boolean z) {
        int c = this.b.c();
        int d = this.b.d();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int a2 = this.b.a(childAt);
            int b2 = this.b.b(childAt);
            if (b2 > c && a2 < d) {
                if (b2 > d && z) {
                    if (view == null) {
                        view = childAt;
                    }
                } else {
                    return childAt;
                }
            }
        }
        return view;
    }

    private void b(RecyclerView.n nVar, RecyclerView.r rVar, boolean z) {
        int d;
        int i = i(Integer.MIN_VALUE);
        if (i != Integer.MIN_VALUE && (d = this.b.d() - i) > 0) {
            int i2 = d - (-a(-d, nVar, rVar));
            if (z && i2 > 0) {
                this.b.a(i2);
            }
        }
    }

    private void c(RecyclerView.n nVar, RecyclerView.r rVar, boolean z) {
        int c;
        int h = h(Integer.MAX_VALUE);
        if (h != Integer.MAX_VALUE && (c = h - this.b.c()) > 0) {
            int a2 = c - a(c, nVar, rVar);
            if (z && a2 > 0) {
                this.b.a(-a2);
            }
        }
    }

    private void b(int i, RecyclerView.r rVar) {
        int i2;
        int i3;
        int c;
        boolean z = false;
        this.l.b = 0;
        this.l.c = i;
        if (!isSmoothScrolling() || (c = rVar.c()) == -1) {
            i2 = 0;
            i3 = 0;
        } else {
            if (this.e == (c < i)) {
                i2 = this.b.f();
                i3 = 0;
            } else {
                i3 = this.b.f();
                i2 = 0;
            }
        }
        if (getClipToPadding()) {
            this.l.f = this.b.c() - i3;
            this.l.g = i2 + this.b.d();
        } else {
            this.l.g = i2 + this.b.e();
            this.l.f = -i3;
        }
        this.l.h = false;
        this.l.f862a = true;
        ab abVar = this.l;
        if (this.b.h() == 0 && this.b.e() == 0) {
            z = true;
        }
        abVar.i = z;
    }

    private void d(int i) {
        int i2 = 1;
        this.l.e = i;
        ab abVar = this.l;
        if (this.e != (i == -1)) {
            i2 = -1;
        }
        abVar.d = i2;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void offsetChildrenHorizontal(int i) {
        super.offsetChildrenHorizontal(i);
        for (int i2 = 0; i2 < this.i; i2++) {
            this.f839a[i2].d(i);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void offsetChildrenVertical(int i) {
        super.offsetChildrenVertical(i);
        for (int i2 = 0; i2 < this.i; i2++) {
            this.f839a[i2].d(i);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        b(i, i2, 2);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        b(i, i2, 1);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onItemsChanged(RecyclerView recyclerView) {
        this.h.a();
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        b(i, i2, 8);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        b(i, i2, 4);
    }

    private void b(int i, int i2, int i3) {
        int i4;
        int i5;
        int i6 = this.e ? i() : j();
        if (i3 == 8) {
            if (i < i2) {
                i4 = i2 + 1;
                i5 = i;
            } else {
                i4 = i + 1;
                i5 = i2;
            }
        } else {
            i4 = i + i2;
            i5 = i;
        }
        this.h.b(i5);
        switch (i3) {
            case 1:
                this.h.b(i, i2);
                break;
            case 2:
                this.h.a(i, i2);
                break;
            case 8:
                this.h.a(i, 1);
                this.h.b(i2, 1);
                break;
        }
        if (i4 > i6) {
            if (i5 <= (this.e ? j() : i())) {
                requestLayout();
            }
        }
    }

    private int a(RecyclerView.n nVar, ab abVar, RecyclerView.r rVar) {
        int i;
        int c;
        int i2;
        b bVar;
        int e;
        int i3;
        int e2;
        int i4;
        boolean z;
        this.m.set(0, this.i, true);
        if (this.l.i) {
            if (abVar.e == 1) {
                i = Integer.MAX_VALUE;
            } else {
                i = Integer.MIN_VALUE;
            }
        } else if (abVar.e == 1) {
            i = abVar.g + abVar.b;
        } else {
            i = abVar.f - abVar.b;
        }
        a(abVar.e, i);
        if (this.e) {
            c = this.b.d();
        } else {
            c = this.b.c();
        }
        boolean z2 = false;
        while (abVar.a(rVar) && (this.l.i || !this.m.isEmpty())) {
            View a2 = abVar.a(nVar);
            LayoutParams layoutParams = (LayoutParams) a2.getLayoutParams();
            int f = layoutParams.f();
            int c2 = this.h.c(f);
            boolean z3 = c2 == -1;
            if (z3) {
                b a3 = layoutParams.b ? this.f839a[0] : a(abVar);
                this.h.a(f, a3);
                bVar = a3;
            } else {
                bVar = this.f839a[c2];
            }
            layoutParams.f841a = bVar;
            if (abVar.e == 1) {
                addView(a2);
            } else {
                addView(a2, 0);
            }
            a(a2, layoutParams, false);
            if (abVar.e == 1) {
                int i5 = layoutParams.b ? i(c) : bVar.b(c);
                i3 = i5 + this.b.e(a2);
                if (!z3 || !layoutParams.b) {
                    e = i5;
                } else {
                    LazySpanLookup.FullSpanItem e3 = e(i5);
                    e3.b = -1;
                    e3.f843a = f;
                    this.h.a(e3);
                    e = i5;
                }
            } else {
                int h = layoutParams.b ? h(c) : bVar.a(c);
                e = h - this.b.e(a2);
                if (z3 && layoutParams.b) {
                    LazySpanLookup.FullSpanItem f2 = f(h);
                    f2.b = 1;
                    f2.f843a = f;
                    this.h.a(f2);
                }
                i3 = h;
            }
            if (layoutParams.b && abVar.d == -1) {
                if (z3) {
                    this.u = true;
                } else {
                    if (abVar.e == 1) {
                        z = !g();
                    } else {
                        z = !h();
                    }
                    if (z) {
                        LazySpanLookup.FullSpanItem f3 = this.h.f(f);
                        if (f3 != null) {
                            f3.d = true;
                        }
                        this.u = true;
                    }
                }
            }
            a(a2, layoutParams, abVar);
            if (e() && this.j == 1) {
                int d = layoutParams.b ? this.c.d() : this.c.d() - (((this.i - 1) - bVar.e) * this.k);
                i4 = d - this.c.e(a2);
                e2 = d;
            } else {
                int c3 = layoutParams.b ? this.c.c() : (bVar.e * this.k) + this.c.c();
                e2 = c3 + this.c.e(a2);
                i4 = c3;
            }
            if (this.j == 1) {
                layoutDecoratedWithMargins(a2, i4, e, e2, i3);
            } else {
                layoutDecoratedWithMargins(a2, e, i4, i3, e2);
            }
            if (layoutParams.b) {
                a(this.l.e, i);
            } else {
                a(bVar, this.l.e, i);
            }
            a(nVar, this.l);
            if (this.l.h && a2.hasFocusable()) {
                if (layoutParams.b) {
                    this.m.clear();
                } else {
                    this.m.set(bVar.e, false);
                }
            }
            z2 = true;
        }
        if (!z2) {
            a(nVar, this.l);
        }
        if (this.l.e == -1) {
            i2 = this.b.c() - h(this.b.c());
        } else {
            i2 = i(this.b.d()) - this.b.d();
        }
        if (i2 > 0) {
            return Math.min(abVar.b, i2);
        }
        return 0;
    }

    private LazySpanLookup.FullSpanItem e(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.c = new int[this.i];
        for (int i2 = 0; i2 < this.i; i2++) {
            fullSpanItem.c[i2] = i - this.f839a[i2].b(i);
        }
        return fullSpanItem;
    }

    private LazySpanLookup.FullSpanItem f(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.c = new int[this.i];
        for (int i2 = 0; i2 < this.i; i2++) {
            fullSpanItem.c[i2] = this.f839a[i2].a(i) - i;
        }
        return fullSpanItem;
    }

    private void a(View view, LayoutParams layoutParams, ab abVar) {
        if (abVar.e == 1) {
            if (layoutParams.b) {
                a(view);
            } else {
                layoutParams.f841a.b(view);
            }
        } else if (layoutParams.b) {
            b(view);
        } else {
            layoutParams.f841a.a(view);
        }
    }

    private void a(RecyclerView.n nVar, ab abVar) {
        int min;
        int min2;
        if (abVar.f862a && !abVar.i) {
            if (abVar.b == 0) {
                if (abVar.e == -1) {
                    b(nVar, abVar.g);
                } else {
                    a(nVar, abVar.f);
                }
            } else if (abVar.e == -1) {
                int g = abVar.f - g(abVar.f);
                if (g < 0) {
                    min2 = abVar.g;
                } else {
                    min2 = abVar.g - Math.min(g, abVar.b);
                }
                b(nVar, min2);
            } else {
                int j = j(abVar.g) - abVar.g;
                if (j < 0) {
                    min = abVar.f;
                } else {
                    min = Math.min(j, abVar.b) + abVar.f;
                }
                a(nVar, min);
            }
        }
    }

    private void a(View view) {
        for (int i = this.i - 1; i >= 0; i--) {
            this.f839a[i].b(view);
        }
    }

    private void b(View view) {
        for (int i = this.i - 1; i >= 0; i--) {
            this.f839a[i].a(view);
        }
    }

    private void a(int i, int i2) {
        for (int i3 = 0; i3 < this.i; i3++) {
            if (!this.f839a[i3].f846a.isEmpty()) {
                a(this.f839a[i3], i, i2);
            }
        }
    }

    private void a(b bVar, int i, int i2) {
        int i3 = bVar.i();
        if (i == -1) {
            if (i3 + bVar.b() <= i2) {
                this.m.set(bVar.e, false);
            }
        } else if (bVar.d() - i3 >= i2) {
            this.m.set(bVar.e, false);
        }
    }

    private int g(int i) {
        int a2 = this.f839a[0].a(i);
        for (int i2 = 1; i2 < this.i; i2++) {
            int a3 = this.f839a[i2].a(i);
            if (a3 > a2) {
                a2 = a3;
            }
        }
        return a2;
    }

    private int h(int i) {
        int a2 = this.f839a[0].a(i);
        for (int i2 = 1; i2 < this.i; i2++) {
            int a3 = this.f839a[i2].a(i);
            if (a3 < a2) {
                a2 = a3;
            }
        }
        return a2;
    }

    boolean g() {
        int b2 = this.f839a[0].b(Integer.MIN_VALUE);
        for (int i = 1; i < this.i; i++) {
            if (this.f839a[i].b(Integer.MIN_VALUE) != b2) {
                return false;
            }
        }
        return true;
    }

    boolean h() {
        int a2 = this.f839a[0].a(Integer.MIN_VALUE);
        for (int i = 1; i < this.i; i++) {
            if (this.f839a[i].a(Integer.MIN_VALUE) != a2) {
                return false;
            }
        }
        return true;
    }

    private int i(int i) {
        int b2 = this.f839a[0].b(i);
        for (int i2 = 1; i2 < this.i; i2++) {
            int b3 = this.f839a[i2].b(i);
            if (b3 > b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    private int j(int i) {
        int b2 = this.f839a[0].b(i);
        for (int i2 = 1; i2 < this.i; i2++) {
            int b3 = this.f839a[i2].b(i);
            if (b3 < b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    private void a(RecyclerView.n nVar, int i) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.b.b(childAt) <= i && this.b.c(childAt) <= i) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.b) {
                    for (int i2 = 0; i2 < this.i; i2++) {
                        if (this.f839a[i2].f846a.size() == 1) {
                            return;
                        }
                    }
                    for (int i3 = 0; i3 < this.i; i3++) {
                        this.f839a[i3].h();
                    }
                } else if (layoutParams.f841a.f846a.size() != 1) {
                    layoutParams.f841a.h();
                } else {
                    return;
                }
                removeAndRecycleView(childAt, nVar);
            } else {
                return;
            }
        }
    }

    private void b(RecyclerView.n nVar, int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.b.a(childAt) >= i && this.b.d(childAt) >= i) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.b) {
                    for (int i2 = 0; i2 < this.i; i2++) {
                        if (this.f839a[i2].f846a.size() == 1) {
                            return;
                        }
                    }
                    for (int i3 = 0; i3 < this.i; i3++) {
                        this.f839a[i3].g();
                    }
                } else if (layoutParams.f841a.f846a.size() != 1) {
                    layoutParams.f841a.g();
                } else {
                    return;
                }
                removeAndRecycleView(childAt, nVar);
            } else {
                return;
            }
        }
    }

    private boolean k(int i) {
        if (this.j == 0) {
            return (i == -1) != this.e;
        }
        return ((i == -1) == this.e) == e();
    }

    private b a(ab abVar) {
        int i;
        int i2;
        b bVar;
        b bVar2;
        b bVar3 = null;
        int i3 = -1;
        if (k(abVar.e)) {
            i = this.i - 1;
            i2 = -1;
        } else {
            i = 0;
            i2 = this.i;
            i3 = 1;
        }
        if (abVar.e == 1) {
            int c = this.b.c();
            int i4 = i;
            int i5 = Integer.MAX_VALUE;
            while (i4 != i2) {
                b bVar4 = this.f839a[i4];
                int b2 = bVar4.b(c);
                if (b2 < i5) {
                    bVar2 = bVar4;
                } else {
                    b2 = i5;
                    bVar2 = bVar3;
                }
                i4 += i3;
                bVar3 = bVar2;
                i5 = b2;
            }
        } else {
            int d = this.b.d();
            int i6 = i;
            int i7 = Integer.MIN_VALUE;
            while (i6 != i2) {
                b bVar5 = this.f839a[i6];
                int a2 = bVar5.a(d);
                if (a2 > i7) {
                    bVar = bVar5;
                } else {
                    a2 = i7;
                    bVar = bVar3;
                }
                i6 += i3;
                bVar3 = bVar;
                i7 = a2;
            }
        }
        return bVar3;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public boolean canScrollVertically() {
        return this.j == 1;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public boolean canScrollHorizontally() {
        return this.j == 0;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int scrollHorizontallyBy(int i, RecyclerView.n nVar, RecyclerView.r rVar) {
        return a(i, nVar, rVar);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int scrollVerticallyBy(int i, RecyclerView.n nVar, RecyclerView.r rVar) {
        return a(i, nVar, rVar);
    }

    private int l(int i) {
        int i2 = -1;
        if (getChildCount() == 0) {
            return this.e ? 1 : -1;
        }
        if ((i < j()) == this.e) {
            i2 = 1;
        }
        return i2;
    }

    @Override // android.support.v7.widget.RecyclerView.q.b
    public PointF computeScrollVectorForPosition(int i) {
        int l = l(i);
        PointF pointF = new PointF();
        if (l == 0) {
            return null;
        }
        if (this.j == 0) {
            pointF.x = l;
            pointF.y = BitmapDescriptorFactory.HUE_RED;
            return pointF;
        }
        pointF.x = BitmapDescriptorFactory.HUE_RED;
        pointF.y = l;
        return pointF;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.r rVar, int i) {
        ac acVar = new ac(recyclerView.getContext());
        acVar.setTargetPosition(i);
        startSmoothScroll(acVar);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void scrollToPosition(int i) {
        if (this.q != null && this.q.f844a != i) {
            this.q.b();
        }
        this.f = i;
        this.g = Integer.MIN_VALUE;
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.r rVar, RecyclerView.h.a aVar) {
        int b2;
        if (this.j != 0) {
            i = i2;
        }
        if (getChildCount() != 0 && i != 0) {
            a(i, rVar);
            if (this.w == null || this.w.length < this.i) {
                this.w = new int[this.i];
            }
            int i3 = 0;
            for (int i4 = 0; i4 < this.i; i4++) {
                if (this.l.d == -1) {
                    b2 = this.l.f - this.f839a[i4].a(this.l.f);
                } else {
                    b2 = this.f839a[i4].b(this.l.g) - this.l.g;
                }
                if (b2 >= 0) {
                    this.w[i3] = b2;
                    i3++;
                }
            }
            Arrays.sort(this.w, 0, i3);
            for (int i5 = 0; i5 < i3 && this.l.a(rVar); i5++) {
                aVar.b(this.l.c, this.w[i5]);
                this.l.c += this.l.d;
            }
        }
    }

    void a(int i, RecyclerView.r rVar) {
        int i2;
        int j;
        if (i > 0) {
            j = i();
            i2 = 1;
        } else {
            i2 = -1;
            j = j();
        }
        this.l.f862a = true;
        b(j, rVar);
        d(i2);
        this.l.c = this.l.d + j;
        this.l.b = Math.abs(i);
    }

    int a(int i, RecyclerView.n nVar, RecyclerView.r rVar) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        a(i, rVar);
        int a2 = a(nVar, this.l, rVar);
        if (this.l.b >= a2) {
            i = i < 0 ? -a2 : a2;
        }
        this.b.a(-i);
        this.o = this.e;
        this.l.b = 0;
        a(nVar, this.l);
        return i;
    }

    int i() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    int j() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    private int m(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            int position = getPosition(getChildAt(i2));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return 0;
    }

    private int n(int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return 0;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.j == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
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

    public int k() {
        return this.j;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public View onFocusSearchFailed(View view, int i, RecyclerView.n nVar, RecyclerView.r rVar) {
        View findContainingItemView;
        int j;
        int m;
        int m2;
        int m3;
        View a2;
        if (getChildCount() != 0 && (findContainingItemView = findContainingItemView(view)) != null) {
            m();
            int o = o(i);
            if (o == Integer.MIN_VALUE) {
                return null;
            }
            LayoutParams layoutParams = (LayoutParams) findContainingItemView.getLayoutParams();
            boolean z = layoutParams.b;
            b bVar = layoutParams.f841a;
            if (o == 1) {
                j = i();
            } else {
                j = j();
            }
            b(j, rVar);
            d(o);
            this.l.c = this.l.d + j;
            this.l.b = (int) (0.33333334f * this.b.f());
            this.l.h = true;
            this.l.f862a = false;
            a(nVar, this.l, rVar);
            this.o = this.e;
            if (!z && (a2 = bVar.a(j, o)) != null && a2 != findContainingItemView) {
                return a2;
            }
            if (k(o)) {
                for (int i2 = this.i - 1; i2 >= 0; i2--) {
                    View a3 = this.f839a[i2].a(j, o);
                    if (a3 != null && a3 != findContainingItemView) {
                        return a3;
                    }
                }
            } else {
                for (int i3 = 0; i3 < this.i; i3++) {
                    View a4 = this.f839a[i3].a(j, o);
                    if (a4 != null && a4 != findContainingItemView) {
                        return a4;
                    }
                }
            }
            boolean z2 = (!this.d) == (o == -1);
            if (!z) {
                if (z2) {
                    m3 = bVar.k();
                } else {
                    m3 = bVar.m();
                }
                View findViewByPosition = findViewByPosition(m3);
                if (findViewByPosition != null && findViewByPosition != findContainingItemView) {
                    return findViewByPosition;
                }
            }
            if (k(o)) {
                for (int i4 = this.i - 1; i4 >= 0; i4--) {
                    if (i4 != bVar.e) {
                        if (z2) {
                            m2 = this.f839a[i4].k();
                        } else {
                            m2 = this.f839a[i4].m();
                        }
                        View findViewByPosition2 = findViewByPosition(m2);
                        if (findViewByPosition2 != null && findViewByPosition2 != findContainingItemView) {
                            return findViewByPosition2;
                        }
                    }
                }
            } else {
                for (int i5 = 0; i5 < this.i; i5++) {
                    if (z2) {
                        m = this.f839a[i5].k();
                    } else {
                        m = this.f839a[i5].m();
                    }
                    View findViewByPosition3 = findViewByPosition(m);
                    if (findViewByPosition3 != null && findViewByPosition3 != findContainingItemView) {
                        return findViewByPosition3;
                    }
                }
            }
            return null;
        }
        return null;
    }

    private int o(int i) {
        int i2 = Integer.MIN_VALUE;
        int i3 = 1;
        switch (i) {
            case 1:
                return (this.j == 1 || !e()) ? -1 : 1;
            case 2:
                return (this.j != 1 && e()) ? -1 : 1;
            case 17:
                return this.j != 0 ? Integer.MIN_VALUE : -1;
            case 33:
                return this.j != 1 ? Integer.MIN_VALUE : -1;
            case 66:
                if (this.j != 0) {
                    i3 = Integer.MIN_VALUE;
                }
                return i3;
            case 130:
                if (this.j == 1) {
                    i2 = 1;
                }
                return i2;
            default:
                return Integer.MIN_VALUE;
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        b f841a;
        boolean b;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public boolean a() {
            return this.b;
        }

        public final int b() {
            if (this.f841a == null) {
                return -1;
            }
            return this.f841a.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        ArrayList<View> f846a = new ArrayList<>();
        int b = Integer.MIN_VALUE;
        int c = Integer.MIN_VALUE;
        int d = 0;
        final int e;

        b(int i) {
            this.e = i;
        }

        int a(int i) {
            if (this.b != Integer.MIN_VALUE) {
                return this.b;
            }
            if (this.f846a.size() != 0) {
                a();
                return this.b;
            }
            return i;
        }

        void a() {
            LazySpanLookup.FullSpanItem f;
            View view = this.f846a.get(0);
            LayoutParams c = c(view);
            this.b = StaggeredGridLayoutManager.this.b.a(view);
            if (c.b && (f = StaggeredGridLayoutManager.this.h.f(c.f())) != null && f.b == -1) {
                this.b -= f.a(this.e);
            }
        }

        int b() {
            if (this.b != Integer.MIN_VALUE) {
                return this.b;
            }
            a();
            return this.b;
        }

        int b(int i) {
            if (this.c != Integer.MIN_VALUE) {
                return this.c;
            }
            if (this.f846a.size() != 0) {
                c();
                return this.c;
            }
            return i;
        }

        void c() {
            LazySpanLookup.FullSpanItem f;
            View view = this.f846a.get(this.f846a.size() - 1);
            LayoutParams c = c(view);
            this.c = StaggeredGridLayoutManager.this.b.b(view);
            if (!c.b || (f = StaggeredGridLayoutManager.this.h.f(c.f())) == null || f.b != 1) {
                return;
            }
            this.c = f.a(this.e) + this.c;
        }

        int d() {
            if (this.c != Integer.MIN_VALUE) {
                return this.c;
            }
            c();
            return this.c;
        }

        void a(View view) {
            LayoutParams c = c(view);
            c.f841a = this;
            this.f846a.add(0, view);
            this.b = Integer.MIN_VALUE;
            if (this.f846a.size() == 1) {
                this.c = Integer.MIN_VALUE;
            }
            if (c.d() || c.e()) {
                this.d += StaggeredGridLayoutManager.this.b.e(view);
            }
        }

        void b(View view) {
            LayoutParams c = c(view);
            c.f841a = this;
            this.f846a.add(view);
            this.c = Integer.MIN_VALUE;
            if (this.f846a.size() == 1) {
                this.b = Integer.MIN_VALUE;
            }
            if (c.d() || c.e()) {
                this.d += StaggeredGridLayoutManager.this.b.e(view);
            }
        }

        void a(boolean z, int i) {
            int a2;
            if (z) {
                a2 = b(Integer.MIN_VALUE);
            } else {
                a2 = a(Integer.MIN_VALUE);
            }
            e();
            if (a2 != Integer.MIN_VALUE) {
                if (!z || a2 >= StaggeredGridLayoutManager.this.b.d()) {
                    if (z || a2 <= StaggeredGridLayoutManager.this.b.c()) {
                        if (i != Integer.MIN_VALUE) {
                            a2 += i;
                        }
                        this.c = a2;
                        this.b = a2;
                    }
                }
            }
        }

        void e() {
            this.f846a.clear();
            f();
            this.d = 0;
        }

        void f() {
            this.b = Integer.MIN_VALUE;
            this.c = Integer.MIN_VALUE;
        }

        void c(int i) {
            this.b = i;
            this.c = i;
        }

        void g() {
            int size = this.f846a.size();
            View remove = this.f846a.remove(size - 1);
            LayoutParams c = c(remove);
            c.f841a = null;
            if (c.d() || c.e()) {
                this.d -= StaggeredGridLayoutManager.this.b.e(remove);
            }
            if (size == 1) {
                this.b = Integer.MIN_VALUE;
            }
            this.c = Integer.MIN_VALUE;
        }

        void h() {
            View remove = this.f846a.remove(0);
            LayoutParams c = c(remove);
            c.f841a = null;
            if (this.f846a.size() == 0) {
                this.c = Integer.MIN_VALUE;
            }
            if (c.d() || c.e()) {
                this.d -= StaggeredGridLayoutManager.this.b.e(remove);
            }
            this.b = Integer.MIN_VALUE;
        }

        public int i() {
            return this.d;
        }

        LayoutParams c(View view) {
            return (LayoutParams) view.getLayoutParams();
        }

        void d(int i) {
            if (this.b != Integer.MIN_VALUE) {
                this.b += i;
            }
            if (this.c != Integer.MIN_VALUE) {
                this.c += i;
            }
        }

        public int j() {
            if (StaggeredGridLayoutManager.this.d) {
                return a(this.f846a.size() - 1, -1, false);
            }
            return a(0, this.f846a.size(), false);
        }

        public int k() {
            return StaggeredGridLayoutManager.this.d ? b(this.f846a.size() - 1, -1, true) : b(0, this.f846a.size(), true);
        }

        public int l() {
            if (StaggeredGridLayoutManager.this.d) {
                return a(0, this.f846a.size(), false);
            }
            return a(this.f846a.size() - 1, -1, false);
        }

        public int m() {
            if (StaggeredGridLayoutManager.this.d) {
                return b(0, this.f846a.size(), true);
            }
            return b(this.f846a.size() - 1, -1, true);
        }

        int a(int i, int i2, boolean z, boolean z2, boolean z3) {
            boolean z4;
            boolean z5;
            int c = StaggeredGridLayoutManager.this.b.c();
            int d = StaggeredGridLayoutManager.this.b.d();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f846a.get(i);
                int a2 = StaggeredGridLayoutManager.this.b.a(view);
                int b = StaggeredGridLayoutManager.this.b.b(view);
                if (z3) {
                    z4 = a2 <= d;
                } else {
                    z4 = a2 < d;
                }
                if (z3) {
                    z5 = b >= c;
                } else {
                    z5 = b > c;
                }
                if (z4 && z5) {
                    if (z && z2) {
                        if (a2 >= c && b <= d) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    } else if (z2) {
                        return StaggeredGridLayoutManager.this.getPosition(view);
                    } else {
                        if (a2 < c || b > d) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    }
                }
                i += i3;
            }
            return -1;
        }

        int a(int i, int i2, boolean z) {
            return a(i, i2, z, true, false);
        }

        int b(int i, int i2, boolean z) {
            return a(i, i2, false, false, z);
        }

        public View a(int i, int i2) {
            View view = null;
            if (i2 == -1) {
                int size = this.f846a.size();
                int i3 = 0;
                while (i3 < size) {
                    View view2 = this.f846a.get(i3);
                    if ((StaggeredGridLayoutManager.this.d && StaggeredGridLayoutManager.this.getPosition(view2) <= i) || ((!StaggeredGridLayoutManager.this.d && StaggeredGridLayoutManager.this.getPosition(view2) >= i) || !view2.hasFocusable())) {
                        break;
                    }
                    i3++;
                    view = view2;
                }
                return view;
            }
            int size2 = this.f846a.size() - 1;
            while (size2 >= 0) {
                View view3 = this.f846a.get(size2);
                if (StaggeredGridLayoutManager.this.d && StaggeredGridLayoutManager.this.getPosition(view3) >= i) {
                    break;
                } else if (!StaggeredGridLayoutManager.this.d && StaggeredGridLayoutManager.this.getPosition(view3) <= i) {
                    return view;
                } else {
                    if (!view3.hasFocusable()) {
                        break;
                    }
                    size2--;
                    view = view3;
                }
            }
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class LazySpanLookup {

        /* renamed from: a  reason: collision with root package name */
        int[] f842a;
        List<FullSpanItem> b;

        LazySpanLookup() {
        }

        int a(int i) {
            if (this.b != null) {
                for (int size = this.b.size() - 1; size >= 0; size--) {
                    if (this.b.get(size).f843a >= i) {
                        this.b.remove(size);
                    }
                }
            }
            return b(i);
        }

        int b(int i) {
            if (this.f842a != null && i < this.f842a.length) {
                int g = g(i);
                if (g == -1) {
                    Arrays.fill(this.f842a, i, this.f842a.length, -1);
                    return this.f842a.length;
                }
                Arrays.fill(this.f842a, i, g + 1, -1);
                return g + 1;
            }
            return -1;
        }

        int c(int i) {
            if (this.f842a == null || i >= this.f842a.length) {
                return -1;
            }
            return this.f842a[i];
        }

        void a(int i, b bVar) {
            e(i);
            this.f842a[i] = bVar.e;
        }

        int d(int i) {
            int length = this.f842a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }

        void e(int i) {
            if (this.f842a == null) {
                this.f842a = new int[Math.max(i, 10) + 1];
                Arrays.fill(this.f842a, -1);
            } else if (i >= this.f842a.length) {
                int[] iArr = this.f842a;
                this.f842a = new int[d(i)];
                System.arraycopy(iArr, 0, this.f842a, 0, iArr.length);
                Arrays.fill(this.f842a, iArr.length, this.f842a.length, -1);
            }
        }

        void a() {
            if (this.f842a != null) {
                Arrays.fill(this.f842a, -1);
            }
            this.b = null;
        }

        void a(int i, int i2) {
            if (this.f842a != null && i < this.f842a.length) {
                e(i + i2);
                System.arraycopy(this.f842a, i + i2, this.f842a, i, (this.f842a.length - i) - i2);
                Arrays.fill(this.f842a, this.f842a.length - i2, this.f842a.length, -1);
                c(i, i2);
            }
        }

        private void c(int i, int i2) {
            if (this.b != null) {
                int i3 = i + i2;
                for (int size = this.b.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.b.get(size);
                    if (fullSpanItem.f843a >= i) {
                        if (fullSpanItem.f843a < i3) {
                            this.b.remove(size);
                        } else {
                            fullSpanItem.f843a -= i2;
                        }
                    }
                }
            }
        }

        void b(int i, int i2) {
            if (this.f842a != null && i < this.f842a.length) {
                e(i + i2);
                System.arraycopy(this.f842a, i, this.f842a, i + i2, (this.f842a.length - i) - i2);
                Arrays.fill(this.f842a, i, i + i2, -1);
                d(i, i2);
            }
        }

        private void d(int i, int i2) {
            if (this.b != null) {
                for (int size = this.b.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.b.get(size);
                    if (fullSpanItem.f843a >= i) {
                        fullSpanItem.f843a += i2;
                    }
                }
            }
        }

        private int g(int i) {
            if (this.b == null) {
                return -1;
            }
            FullSpanItem f = f(i);
            if (f != null) {
                this.b.remove(f);
            }
            int size = this.b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (this.b.get(i2).f843a >= i) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                return -1;
            }
            this.b.remove(i2);
            return this.b.get(i2).f843a;
        }

        public void a(FullSpanItem fullSpanItem) {
            if (this.b == null) {
                this.b = new ArrayList();
            }
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.b.get(i);
                if (fullSpanItem2.f843a == fullSpanItem.f843a) {
                    this.b.remove(i);
                }
                if (fullSpanItem2.f843a >= fullSpanItem.f843a) {
                    this.b.add(i, fullSpanItem);
                    return;
                }
            }
            this.b.add(fullSpanItem);
        }

        public FullSpanItem f(int i) {
            if (this.b == null) {
                return null;
            }
            for (int size = this.b.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.b.get(size);
                if (fullSpanItem.f843a == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        public FullSpanItem a(int i, int i2, int i3, boolean z) {
            if (this.b == null) {
                return null;
            }
            int size = this.b.size();
            for (int i4 = 0; i4 < size; i4++) {
                FullSpanItem fullSpanItem = this.b.get(i4);
                if (fullSpanItem.f843a >= i2) {
                    return null;
                }
                if (fullSpanItem.f843a >= i) {
                    if (i3 == 0 || fullSpanItem.b == i3) {
                        return fullSpanItem;
                    }
                    if (z && fullSpanItem.d) {
                        return fullSpanItem;
                    }
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator<FullSpanItem>() { // from class: android.support.v7.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.1
                @Override // android.os.Parcelable.Creator
                /* renamed from: a */
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a */
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            };

            /* renamed from: a  reason: collision with root package name */
            int f843a;
            int b;
            int[] c;
            boolean d;

            public FullSpanItem(Parcel parcel) {
                boolean z = true;
                this.f843a = parcel.readInt();
                this.b = parcel.readInt();
                this.d = parcel.readInt() != 1 ? false : z;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    this.c = new int[readInt];
                    parcel.readIntArray(this.c);
                }
            }

            public FullSpanItem() {
            }

            int a(int i) {
                if (this.c == null) {
                    return 0;
                }
                return this.c[i];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f843a);
                parcel.writeInt(this.b);
                parcel.writeInt(this.d ? 1 : 0);
                if (this.c != null && this.c.length > 0) {
                    parcel.writeInt(this.c.length);
                    parcel.writeIntArray(this.c);
                    return;
                }
                parcel.writeInt(0);
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f843a + ", mGapDir=" + this.b + ", mHasUnwantedGapAfter=" + this.d + ", mGapPerSpan=" + Arrays.toString(this.c) + '}';
            }
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v7.widget.StaggeredGridLayoutManager.SavedState.1
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
        int f844a;
        int b;
        int c;
        int[] d;
        int e;
        int[] f;
        List<LazySpanLookup.FullSpanItem> g;
        boolean h;
        boolean i;
        boolean j;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            boolean z = true;
            this.f844a = parcel.readInt();
            this.b = parcel.readInt();
            this.c = parcel.readInt();
            if (this.c > 0) {
                this.d = new int[this.c];
                parcel.readIntArray(this.d);
            }
            this.e = parcel.readInt();
            if (this.e > 0) {
                this.f = new int[this.e];
                parcel.readIntArray(this.f);
            }
            this.h = parcel.readInt() == 1;
            this.i = parcel.readInt() == 1;
            this.j = parcel.readInt() != 1 ? false : z;
            this.g = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.c = savedState.c;
            this.f844a = savedState.f844a;
            this.b = savedState.b;
            this.d = savedState.d;
            this.e = savedState.e;
            this.f = savedState.f;
            this.h = savedState.h;
            this.i = savedState.i;
            this.j = savedState.j;
            this.g = savedState.g;
        }

        void a() {
            this.d = null;
            this.c = 0;
            this.e = 0;
            this.f = null;
            this.g = null;
        }

        void b() {
            this.d = null;
            this.c = 0;
            this.f844a = -1;
            this.b = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(this.f844a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.c);
            if (this.c > 0) {
                parcel.writeIntArray(this.d);
            }
            parcel.writeInt(this.e);
            if (this.e > 0) {
                parcel.writeIntArray(this.f);
            }
            parcel.writeInt(this.h ? 1 : 0);
            parcel.writeInt(this.i ? 1 : 0);
            if (!this.j) {
                i2 = 0;
            }
            parcel.writeInt(i2);
            parcel.writeList(this.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        int f845a;
        int b;
        boolean c;
        boolean d;
        boolean e;
        int[] f;

        public a() {
            a();
        }

        void a() {
            this.f845a = -1;
            this.b = Integer.MIN_VALUE;
            this.c = false;
            this.d = false;
            this.e = false;
            if (this.f != null) {
                Arrays.fill(this.f, -1);
            }
        }

        void a(b[] bVarArr) {
            int length = bVarArr.length;
            if (this.f == null || this.f.length < length) {
                this.f = new int[StaggeredGridLayoutManager.this.f839a.length];
            }
            for (int i = 0; i < length; i++) {
                this.f[i] = bVarArr[i].a(Integer.MIN_VALUE);
            }
        }

        void b() {
            this.b = this.c ? StaggeredGridLayoutManager.this.b.d() : StaggeredGridLayoutManager.this.b.c();
        }

        void a(int i) {
            if (this.c) {
                this.b = StaggeredGridLayoutManager.this.b.d() - i;
            } else {
                this.b = StaggeredGridLayoutManager.this.b.c() + i;
            }
        }
    }
}
