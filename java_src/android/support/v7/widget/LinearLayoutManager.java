package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.h implements RecyclerView.q.b {
    static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    final a mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final b mLayoutChunkResult;
    private c mLayoutState;
    int mOrientation;
    ag mOrientationHelper;
    SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new a();
        this.mLayoutChunkResult = new b();
        this.mInitialPrefetchItemCount = 2;
        setOrientation(i);
        setReverseLayout(z);
        setAutoMeasureEnabled(true);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new a();
        this.mLayoutChunkResult = new b();
        this.mInitialPrefetchItemCount = 2;
        RecyclerView.h.b properties = getProperties(context, attributeSet, i, i2);
        setOrientation(properties.f814a);
        setReverseLayout(properties.c);
        setStackFromEnd(properties.d);
        setAutoMeasureEnabled(true);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public void setRecycleChildrenOnDetach(boolean z) {
        this.mRecycleChildrenOnDetach = z;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.n nVar) {
        super.onDetachedFromWindow(recyclerView, nVar);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(nVar);
            nVar.a();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            android.support.v4.view.a.o a2 = android.support.v4.view.a.a.a(accessibilityEvent);
            a2.b(findFirstVisibleItemPosition());
            a2.c(findLastVisibleItemPosition());
        }
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState.c = z;
            if (z) {
                View childClosestToEnd = getChildClosestToEnd();
                savedState.b = this.mOrientationHelper.d() - this.mOrientationHelper.b(childClosestToEnd);
                savedState.f789a = getPosition(childClosestToEnd);
                return savedState;
            }
            View childClosestToStart = getChildClosestToStart();
            savedState.f789a = getPosition(childClosestToStart);
            savedState.b = this.mOrientationHelper.a(childClosestToStart) - this.mOrientationHelper.c();
            return savedState;
        }
        savedState.b();
        return savedState;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.mPendingSavedState = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    public void setStackFromEnd(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd != z) {
            this.mStackFromEnd = z;
            requestLayout();
        }
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        assertNotInLayoutOrScroll(null);
        if (i != this.mOrientation) {
            this.mOrientation = i;
            this.mOrientationHelper = null;
            requestLayout();
        }
    }

    private void resolveShouldLayoutReverse() {
        boolean z = true;
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
            return;
        }
        if (this.mReverseLayout) {
            z = false;
        }
        this.mShouldReverseLayout = z;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (z != this.mReverseLayout) {
            this.mReverseLayout = z;
            requestLayout();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public View findViewByPosition(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i) {
                return childAt;
            }
        }
        return super.findViewByPosition(i);
    }

    protected int getExtraLayoutSpace(RecyclerView.r rVar) {
        if (rVar.d()) {
            return this.mOrientationHelper.f();
        }
        return 0;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.r rVar, int i) {
        ac acVar = new ac(recyclerView.getContext());
        acVar.setTargetPosition(i);
        startSmoothScroll(acVar);
    }

    @Override // android.support.v7.widget.RecyclerView.q.b
    public PointF computeScrollVectorForPosition(int i) {
        int i2 = 1;
        boolean z = false;
        if (getChildCount() == 0) {
            return null;
        }
        if (i < getPosition(getChildAt(0))) {
            z = true;
        }
        if (z != this.mShouldReverseLayout) {
            i2 = -1;
        }
        if (this.mOrientation == 0) {
            return new PointF(i2, BitmapDescriptorFactory.HUE_RED);
        }
        return new PointF(BitmapDescriptorFactory.HUE_RED, i2);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onLayoutChildren(RecyclerView.n nVar, RecyclerView.r rVar) {
        int i;
        int i2;
        int i3;
        int i4;
        View findViewByPosition;
        int a2;
        int i5 = -1;
        if ((this.mPendingSavedState != null || this.mPendingScrollPosition != -1) && rVar.e() == 0) {
            removeAndRecycleAllViews(nVar);
            return;
        }
        if (this.mPendingSavedState != null && this.mPendingSavedState.a()) {
            this.mPendingScrollPosition = this.mPendingSavedState.f789a;
        }
        ensureLayoutState();
        this.mLayoutState.f792a = false;
        resolveShouldLayoutReverse();
        if (!this.mAnchorInfo.d || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            this.mAnchorInfo.a();
            this.mAnchorInfo.c = this.mShouldReverseLayout ^ this.mStackFromEnd;
            updateAnchorInfoForLayout(nVar, rVar, this.mAnchorInfo);
            this.mAnchorInfo.d = true;
        }
        int extraLayoutSpace = getExtraLayoutSpace(rVar);
        if (this.mLayoutState.j >= 0) {
            i = 0;
        } else {
            i = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        int c2 = i + this.mOrientationHelper.c();
        int g = extraLayoutSpace + this.mOrientationHelper.g();
        if (rVar.a() && this.mPendingScrollPosition != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (findViewByPosition = findViewByPosition(this.mPendingScrollPosition)) != null) {
            if (this.mShouldReverseLayout) {
                a2 = (this.mOrientationHelper.d() - this.mOrientationHelper.b(findViewByPosition)) - this.mPendingScrollPositionOffset;
            } else {
                a2 = this.mPendingScrollPositionOffset - (this.mOrientationHelper.a(findViewByPosition) - this.mOrientationHelper.c());
            }
            if (a2 > 0) {
                c2 += a2;
            } else {
                g -= a2;
            }
        }
        if (this.mAnchorInfo.c) {
            if (this.mShouldReverseLayout) {
                i5 = 1;
            }
        } else if (!this.mShouldReverseLayout) {
            i5 = 1;
        }
        onAnchorReady(nVar, rVar, this.mAnchorInfo, i5);
        detachAndScrapAttachedViews(nVar);
        this.mLayoutState.l = resolveIsInfinite();
        this.mLayoutState.i = rVar.a();
        if (this.mAnchorInfo.c) {
            updateLayoutStateToFillStart(this.mAnchorInfo);
            this.mLayoutState.h = c2;
            fill(nVar, this.mLayoutState, rVar, false);
            int i6 = this.mLayoutState.b;
            int i7 = this.mLayoutState.d;
            if (this.mLayoutState.c > 0) {
                g += this.mLayoutState.c;
            }
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            this.mLayoutState.h = g;
            this.mLayoutState.d += this.mLayoutState.e;
            fill(nVar, this.mLayoutState, rVar, false);
            int i8 = this.mLayoutState.b;
            if (this.mLayoutState.c > 0) {
                int i9 = this.mLayoutState.c;
                updateLayoutStateToFillStart(i7, i6);
                this.mLayoutState.h = i9;
                fill(nVar, this.mLayoutState, rVar, false);
                i4 = this.mLayoutState.b;
            } else {
                i4 = i6;
            }
            i3 = i4;
            i2 = i8;
        } else {
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            this.mLayoutState.h = g;
            fill(nVar, this.mLayoutState, rVar, false);
            i2 = this.mLayoutState.b;
            int i10 = this.mLayoutState.d;
            if (this.mLayoutState.c > 0) {
                c2 += this.mLayoutState.c;
            }
            updateLayoutStateToFillStart(this.mAnchorInfo);
            this.mLayoutState.h = c2;
            this.mLayoutState.d += this.mLayoutState.e;
            fill(nVar, this.mLayoutState, rVar, false);
            i3 = this.mLayoutState.b;
            if (this.mLayoutState.c > 0) {
                int i11 = this.mLayoutState.c;
                updateLayoutStateToFillEnd(i10, i2);
                this.mLayoutState.h = i11;
                fill(nVar, this.mLayoutState, rVar, false);
                i2 = this.mLayoutState.b;
            }
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int fixLayoutEndGap = fixLayoutEndGap(i2, nVar, rVar, true);
                int i12 = i3 + fixLayoutEndGap;
                int fixLayoutStartGap = fixLayoutStartGap(i12, nVar, rVar, false);
                i3 = i12 + fixLayoutStartGap;
                i2 = i2 + fixLayoutEndGap + fixLayoutStartGap;
            } else {
                int fixLayoutStartGap2 = fixLayoutStartGap(i3, nVar, rVar, true);
                int i13 = i2 + fixLayoutStartGap2;
                int fixLayoutEndGap2 = fixLayoutEndGap(i13, nVar, rVar, false);
                i3 = i3 + fixLayoutStartGap2 + fixLayoutEndGap2;
                i2 = i13 + fixLayoutEndGap2;
            }
        }
        layoutForPredictiveAnimations(nVar, rVar, i3, i2);
        if (!rVar.a()) {
            this.mOrientationHelper.a();
        } else {
            this.mAnchorInfo.a();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void onLayoutCompleted(RecyclerView.r rVar) {
        super.onLayoutCompleted(rVar);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAnchorReady(RecyclerView.n nVar, RecyclerView.r rVar, a aVar, int i) {
    }

    private void layoutForPredictiveAnimations(RecyclerView.n nVar, RecyclerView.r rVar, int i, int i2) {
        int e;
        int i3;
        if (rVar.b() && getChildCount() != 0 && !rVar.a() && supportsPredictiveItemAnimations()) {
            int i4 = 0;
            int i5 = 0;
            List<RecyclerView.u> c2 = nVar.c();
            int size = c2.size();
            int position = getPosition(getChildAt(0));
            int i6 = 0;
            while (i6 < size) {
                RecyclerView.u uVar = c2.get(i6);
                if (uVar.isRemoved()) {
                    e = i5;
                    i3 = i4;
                } else {
                    if (((uVar.getLayoutPosition() < position) != this.mShouldReverseLayout ? (char) 65535 : (char) 1) == 65535) {
                        i3 = this.mOrientationHelper.e(uVar.itemView) + i4;
                        e = i5;
                    } else {
                        e = this.mOrientationHelper.e(uVar.itemView) + i5;
                        i3 = i4;
                    }
                }
                i6++;
                i4 = i3;
                i5 = e;
            }
            this.mLayoutState.k = c2;
            if (i4 > 0) {
                updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), i);
                this.mLayoutState.h = i4;
                this.mLayoutState.c = 0;
                this.mLayoutState.a();
                fill(nVar, this.mLayoutState, rVar, false);
            }
            if (i5 > 0) {
                updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), i2);
                this.mLayoutState.h = i5;
                this.mLayoutState.c = 0;
                this.mLayoutState.a();
                fill(nVar, this.mLayoutState, rVar, false);
            }
            this.mLayoutState.k = null;
        }
    }

    private void updateAnchorInfoForLayout(RecyclerView.n nVar, RecyclerView.r rVar, a aVar) {
        if (!updateAnchorFromPendingData(rVar, aVar) && !updateAnchorFromChildren(nVar, rVar, aVar)) {
            aVar.b();
            aVar.f790a = this.mStackFromEnd ? rVar.e() - 1 : 0;
        }
    }

    private boolean updateAnchorFromChildren(RecyclerView.n nVar, RecyclerView.r rVar, a aVar) {
        View findReferenceChildClosestToStart;
        int c2;
        boolean z = false;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && aVar.a(focusedChild, rVar)) {
            aVar.a(focusedChild);
            return true;
        } else if (this.mLastStackFromEnd != this.mStackFromEnd) {
            return false;
        } else {
            if (aVar.c) {
                findReferenceChildClosestToStart = findReferenceChildClosestToEnd(nVar, rVar);
            } else {
                findReferenceChildClosestToStart = findReferenceChildClosestToStart(nVar, rVar);
            }
            if (findReferenceChildClosestToStart == null) {
                return false;
            }
            aVar.b(findReferenceChildClosestToStart);
            if (!rVar.a() && supportsPredictiveItemAnimations()) {
                if (this.mOrientationHelper.a(findReferenceChildClosestToStart) >= this.mOrientationHelper.d() || this.mOrientationHelper.b(findReferenceChildClosestToStart) < this.mOrientationHelper.c()) {
                    z = true;
                }
                if (z) {
                    if (aVar.c) {
                        c2 = this.mOrientationHelper.d();
                    } else {
                        c2 = this.mOrientationHelper.c();
                    }
                    aVar.b = c2;
                }
            }
            return true;
        }
    }

    private boolean updateAnchorFromPendingData(RecyclerView.r rVar, a aVar) {
        int a2;
        boolean z = false;
        if (rVar.a() || this.mPendingScrollPosition == -1) {
            return false;
        }
        if (this.mPendingScrollPosition < 0 || this.mPendingScrollPosition >= rVar.e()) {
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
            return false;
        }
        aVar.f790a = this.mPendingScrollPosition;
        if (this.mPendingSavedState != null && this.mPendingSavedState.a()) {
            aVar.c = this.mPendingSavedState.c;
            if (aVar.c) {
                aVar.b = this.mOrientationHelper.d() - this.mPendingSavedState.b;
                return true;
            }
            aVar.b = this.mOrientationHelper.c() + this.mPendingSavedState.b;
            return true;
        } else if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
            View findViewByPosition = findViewByPosition(this.mPendingScrollPosition);
            if (findViewByPosition != null) {
                if (this.mOrientationHelper.e(findViewByPosition) > this.mOrientationHelper.f()) {
                    aVar.b();
                    return true;
                } else if (this.mOrientationHelper.a(findViewByPosition) - this.mOrientationHelper.c() < 0) {
                    aVar.b = this.mOrientationHelper.c();
                    aVar.c = false;
                    return true;
                } else if (this.mOrientationHelper.d() - this.mOrientationHelper.b(findViewByPosition) < 0) {
                    aVar.b = this.mOrientationHelper.d();
                    aVar.c = true;
                    return true;
                } else {
                    if (aVar.c) {
                        a2 = this.mOrientationHelper.b(findViewByPosition) + this.mOrientationHelper.b();
                    } else {
                        a2 = this.mOrientationHelper.a(findViewByPosition);
                    }
                    aVar.b = a2;
                    return true;
                }
            }
            if (getChildCount() > 0) {
                if ((this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout) {
                    z = true;
                }
                aVar.c = z;
            }
            aVar.b();
            return true;
        } else {
            aVar.c = this.mShouldReverseLayout;
            if (this.mShouldReverseLayout) {
                aVar.b = this.mOrientationHelper.d() - this.mPendingScrollPositionOffset;
                return true;
            }
            aVar.b = this.mOrientationHelper.c() + this.mPendingScrollPositionOffset;
            return true;
        }
    }

    private int fixLayoutEndGap(int i, RecyclerView.n nVar, RecyclerView.r rVar, boolean z) {
        int d;
        int d2 = this.mOrientationHelper.d() - i;
        if (d2 > 0) {
            int i2 = -scrollBy(-d2, nVar, rVar);
            int i3 = i + i2;
            if (z && (d = this.mOrientationHelper.d() - i3) > 0) {
                this.mOrientationHelper.a(d);
                return i2 + d;
            }
            return i2;
        }
        return 0;
    }

    private int fixLayoutStartGap(int i, RecyclerView.n nVar, RecyclerView.r rVar, boolean z) {
        int c2;
        int c3 = i - this.mOrientationHelper.c();
        if (c3 > 0) {
            int i2 = -scrollBy(c3, nVar, rVar);
            int i3 = i + i2;
            if (z && (c2 = i3 - this.mOrientationHelper.c()) > 0) {
                this.mOrientationHelper.a(-c2);
                return i2 - c2;
            }
            return i2;
        }
        return 0;
    }

    private void updateLayoutStateToFillEnd(a aVar) {
        updateLayoutStateToFillEnd(aVar.f790a, aVar.b);
    }

    private void updateLayoutStateToFillEnd(int i, int i2) {
        this.mLayoutState.c = this.mOrientationHelper.d() - i2;
        this.mLayoutState.e = this.mShouldReverseLayout ? -1 : 1;
        this.mLayoutState.d = i;
        this.mLayoutState.f = 1;
        this.mLayoutState.b = i2;
        this.mLayoutState.g = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillStart(a aVar) {
        updateLayoutStateToFillStart(aVar.f790a, aVar.b);
    }

    private void updateLayoutStateToFillStart(int i, int i2) {
        this.mLayoutState.c = i2 - this.mOrientationHelper.c();
        this.mLayoutState.d = i;
        this.mLayoutState.e = this.mShouldReverseLayout ? 1 : -1;
        this.mLayoutState.f = -1;
        this.mLayoutState.b = i2;
        this.mLayoutState.g = Integer.MIN_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
        if (this.mOrientationHelper == null) {
            this.mOrientationHelper = ag.a(this, this.mOrientation);
        }
    }

    c createLayoutState() {
        return new c();
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void scrollToPosition(int i) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.b();
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = i2;
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.b();
        }
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int scrollHorizontallyBy(int i, RecyclerView.n nVar, RecyclerView.r rVar) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i, nVar, rVar);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int scrollVerticallyBy(int i, RecyclerView.n nVar, RecyclerView.r rVar) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i, nVar, rVar);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int computeHorizontalScrollOffset(RecyclerView.r rVar) {
        return computeScrollOffset(rVar);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int computeVerticalScrollOffset(RecyclerView.r rVar) {
        return computeScrollOffset(rVar);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int computeHorizontalScrollExtent(RecyclerView.r rVar) {
        return computeScrollExtent(rVar);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int computeVerticalScrollExtent(RecyclerView.r rVar) {
        return computeScrollExtent(rVar);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int computeHorizontalScrollRange(RecyclerView.r rVar) {
        return computeScrollRange(rVar);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public int computeVerticalScrollRange(RecyclerView.r rVar) {
        return computeScrollRange(rVar);
    }

    private int computeScrollOffset(RecyclerView.r rVar) {
        boolean z = false;
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        ag agVar = this.mOrientationHelper;
        View findFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true);
        if (!this.mSmoothScrollbarEnabled) {
            z = true;
        }
        return am.a(rVar, agVar, findFirstVisibleChildClosestToStart, findFirstVisibleChildClosestToEnd(z, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int computeScrollExtent(RecyclerView.r rVar) {
        boolean z = false;
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        ag agVar = this.mOrientationHelper;
        View findFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true);
        if (!this.mSmoothScrollbarEnabled) {
            z = true;
        }
        return am.a(rVar, agVar, findFirstVisibleChildClosestToStart, findFirstVisibleChildClosestToEnd(z, true), this, this.mSmoothScrollbarEnabled);
    }

    private int computeScrollRange(RecyclerView.r rVar) {
        boolean z = false;
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        ag agVar = this.mOrientationHelper;
        View findFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true);
        if (!this.mSmoothScrollbarEnabled) {
            z = true;
        }
        return am.b(rVar, agVar, findFirstVisibleChildClosestToStart, findFirstVisibleChildClosestToEnd(z, true), this, this.mSmoothScrollbarEnabled);
    }

    public void setSmoothScrollbarEnabled(boolean z) {
        this.mSmoothScrollbarEnabled = z;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    private void updateLayoutState(int i, int i2, boolean z, RecyclerView.r rVar) {
        int c2;
        int i3 = -1;
        int i4 = 1;
        this.mLayoutState.l = resolveIsInfinite();
        this.mLayoutState.h = getExtraLayoutSpace(rVar);
        this.mLayoutState.f = i;
        if (i == 1) {
            this.mLayoutState.h += this.mOrientationHelper.g();
            View childClosestToEnd = getChildClosestToEnd();
            c cVar = this.mLayoutState;
            if (!this.mShouldReverseLayout) {
                i3 = 1;
            }
            cVar.e = i3;
            this.mLayoutState.d = getPosition(childClosestToEnd) + this.mLayoutState.e;
            this.mLayoutState.b = this.mOrientationHelper.b(childClosestToEnd);
            c2 = this.mOrientationHelper.b(childClosestToEnd) - this.mOrientationHelper.d();
        } else {
            View childClosestToStart = getChildClosestToStart();
            this.mLayoutState.h += this.mOrientationHelper.c();
            c cVar2 = this.mLayoutState;
            if (!this.mShouldReverseLayout) {
                i4 = -1;
            }
            cVar2.e = i4;
            this.mLayoutState.d = getPosition(childClosestToStart) + this.mLayoutState.e;
            this.mLayoutState.b = this.mOrientationHelper.a(childClosestToStart);
            c2 = (-this.mOrientationHelper.a(childClosestToStart)) + this.mOrientationHelper.c();
        }
        this.mLayoutState.c = i2;
        if (z) {
            this.mLayoutState.c -= c2;
        }
        this.mLayoutState.g = c2;
    }

    boolean resolveIsInfinite() {
        return this.mOrientationHelper.h() == 0 && this.mOrientationHelper.e() == 0;
    }

    void collectPrefetchPositionsForLayoutState(RecyclerView.r rVar, c cVar, RecyclerView.h.a aVar) {
        int i = cVar.d;
        if (i >= 0 && i < rVar.e()) {
            aVar.b(i, Math.max(0, cVar.g));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void collectInitialPrefetchPositions(int i, RecyclerView.h.a aVar) {
        int i2;
        boolean z;
        if (this.mPendingSavedState != null && this.mPendingSavedState.a()) {
            z = this.mPendingSavedState.c;
            i2 = this.mPendingSavedState.f789a;
        } else {
            resolveShouldLayoutReverse();
            boolean z2 = this.mShouldReverseLayout;
            if (this.mPendingScrollPosition == -1) {
                i2 = z2 ? i - 1 : 0;
                z = z2;
            } else {
                i2 = this.mPendingScrollPosition;
                z = z2;
            }
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.mInitialPrefetchItemCount && i2 >= 0 && i2 < i; i4++) {
            aVar.b(i2, 0);
            i2 += i3;
        }
    }

    public void setInitialPrefetchItemCount(int i) {
        this.mInitialPrefetchItemCount = i;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    @Deprecated
    public int getInitialItemPrefetchCount() {
        return getInitialPrefetchItemCount();
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.r rVar, RecyclerView.h.a aVar) {
        if (this.mOrientation != 0) {
            i = i2;
        }
        if (getChildCount() != 0 && i != 0) {
            updateLayoutState(i > 0 ? 1 : -1, Math.abs(i), true, rVar);
            collectPrefetchPositionsForLayoutState(rVar, this.mLayoutState, aVar);
        }
    }

    int scrollBy(int i, RecyclerView.n nVar, RecyclerView.r rVar) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        this.mLayoutState.f792a = true;
        ensureLayoutState();
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        updateLayoutState(i2, abs, true, rVar);
        int fill = this.mLayoutState.g + fill(nVar, this.mLayoutState, rVar, false);
        if (fill < 0) {
            return 0;
        }
        if (abs > fill) {
            i = i2 * fill;
        }
        this.mOrientationHelper.a(-i);
        this.mLayoutState.j = i;
        return i;
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    private void recycleChildren(RecyclerView.n nVar, int i, int i2) {
        if (i != i2) {
            if (i2 > i) {
                for (int i3 = i2 - 1; i3 >= i; i3--) {
                    removeAndRecycleViewAt(i3, nVar);
                }
                return;
            }
            while (i > i2) {
                removeAndRecycleViewAt(i, nVar);
                i--;
            }
        }
    }

    private void recycleViewsFromStart(RecyclerView.n nVar, int i) {
        if (i >= 0) {
            int childCount = getChildCount();
            if (this.mShouldReverseLayout) {
                for (int i2 = childCount - 1; i2 >= 0; i2--) {
                    View childAt = getChildAt(i2);
                    if (this.mOrientationHelper.b(childAt) > i || this.mOrientationHelper.c(childAt) > i) {
                        recycleChildren(nVar, childCount - 1, i2);
                        return;
                    }
                }
                return;
            }
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (this.mOrientationHelper.b(childAt2) > i || this.mOrientationHelper.c(childAt2) > i) {
                    recycleChildren(nVar, 0, i3);
                    return;
                }
            }
        }
    }

    private void recycleViewsFromEnd(RecyclerView.n nVar, int i) {
        int childCount = getChildCount();
        if (i >= 0) {
            int e = this.mOrientationHelper.e() - i;
            if (this.mShouldReverseLayout) {
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = getChildAt(i2);
                    if (this.mOrientationHelper.a(childAt) < e || this.mOrientationHelper.d(childAt) < e) {
                        recycleChildren(nVar, 0, i2);
                        return;
                    }
                }
                return;
            }
            for (int i3 = childCount - 1; i3 >= 0; i3--) {
                View childAt2 = getChildAt(i3);
                if (this.mOrientationHelper.a(childAt2) < e || this.mOrientationHelper.d(childAt2) < e) {
                    recycleChildren(nVar, childCount - 1, i3);
                    return;
                }
            }
        }
    }

    private void recycleByLayoutState(RecyclerView.n nVar, c cVar) {
        if (cVar.f792a && !cVar.l) {
            if (cVar.f == -1) {
                recycleViewsFromEnd(nVar, cVar.g);
            } else {
                recycleViewsFromStart(nVar, cVar.g);
            }
        }
    }

    int fill(RecyclerView.n nVar, c cVar, RecyclerView.r rVar, boolean z) {
        int i = cVar.c;
        if (cVar.g != Integer.MIN_VALUE) {
            if (cVar.c < 0) {
                cVar.g += cVar.c;
            }
            recycleByLayoutState(nVar, cVar);
        }
        int i2 = cVar.c + cVar.h;
        b bVar = this.mLayoutChunkResult;
        while (true) {
            if ((!cVar.l && i2 <= 0) || !cVar.a(rVar)) {
                break;
            }
            bVar.a();
            layoutChunk(nVar, rVar, cVar, bVar);
            if (!bVar.b) {
                cVar.b += bVar.f791a * cVar.f;
                if (!bVar.c || this.mLayoutState.k != null || !rVar.a()) {
                    cVar.c -= bVar.f791a;
                    i2 -= bVar.f791a;
                }
                if (cVar.g != Integer.MIN_VALUE) {
                    cVar.g += bVar.f791a;
                    if (cVar.c < 0) {
                        cVar.g += cVar.c;
                    }
                    recycleByLayoutState(nVar, cVar);
                }
                if (z && bVar.d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - cVar.c;
    }

    void layoutChunk(RecyclerView.n nVar, RecyclerView.r rVar, c cVar, b bVar) {
        int paddingTop;
        int f;
        int i;
        int i2;
        int f2;
        View a2 = cVar.a(nVar);
        if (a2 == null) {
            bVar.b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) a2.getLayoutParams();
        if (cVar.k == null) {
            if (this.mShouldReverseLayout == (cVar.f == -1)) {
                addView(a2);
            } else {
                addView(a2, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (cVar.f == -1)) {
                addDisappearingView(a2);
            } else {
                addDisappearingView(a2, 0);
            }
        }
        measureChildWithMargins(a2, 0, 0);
        bVar.f791a = this.mOrientationHelper.e(a2);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                f2 = getWidth() - getPaddingRight();
                i = f2 - this.mOrientationHelper.f(a2);
            } else {
                i = getPaddingLeft();
                f2 = this.mOrientationHelper.f(a2) + i;
            }
            if (cVar.f == -1) {
                f = cVar.b;
                paddingTop = cVar.b - bVar.f791a;
                i2 = f2;
            } else {
                paddingTop = cVar.b;
                f = bVar.f791a + cVar.b;
                i2 = f2;
            }
        } else {
            paddingTop = getPaddingTop();
            f = paddingTop + this.mOrientationHelper.f(a2);
            if (cVar.f == -1) {
                int i3 = cVar.b;
                i = cVar.b - bVar.f791a;
                i2 = i3;
            } else {
                i = cVar.b;
                i2 = cVar.b + bVar.f791a;
            }
        }
        layoutDecoratedWithMargins(a2, i, paddingTop, i2, f);
        if (layoutParams.d() || layoutParams.e()) {
            bVar.c = true;
        }
        bVar.d = a2.hasFocusable();
    }

    @Override // android.support.v7.widget.RecyclerView.h
    boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int convertFocusDirectionToLayoutDirection(int i) {
        int i2 = Integer.MIN_VALUE;
        int i3 = 1;
        switch (i) {
            case 1:
                return (this.mOrientation == 1 || !isLayoutRTL()) ? -1 : 1;
            case 2:
                return (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1;
            case 17:
                return this.mOrientation != 0 ? Integer.MIN_VALUE : -1;
            case 33:
                return this.mOrientation != 1 ? Integer.MIN_VALUE : -1;
            case 66:
                if (this.mOrientation != 0) {
                    i3 = Integer.MIN_VALUE;
                }
                return i3;
            case 130:
                if (this.mOrientation == 1) {
                    i2 = 1;
                }
                return i2;
            default:
                return Integer.MIN_VALUE;
        }
    }

    private View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View findFirstVisibleChildClosestToStart(boolean z, boolean z2) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z, z2) : findOneVisibleChild(0, getChildCount(), z, z2);
    }

    private View findFirstVisibleChildClosestToEnd(boolean z, boolean z2) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z, z2) : findOneVisibleChild(getChildCount() - 1, -1, z, z2);
    }

    private View findReferenceChildClosestToEnd(RecyclerView.n nVar, RecyclerView.r rVar) {
        return this.mShouldReverseLayout ? findFirstReferenceChild(nVar, rVar) : findLastReferenceChild(nVar, rVar);
    }

    private View findReferenceChildClosestToStart(RecyclerView.n nVar, RecyclerView.r rVar) {
        return this.mShouldReverseLayout ? findLastReferenceChild(nVar, rVar) : findFirstReferenceChild(nVar, rVar);
    }

    private View findFirstReferenceChild(RecyclerView.n nVar, RecyclerView.r rVar) {
        return findReferenceChild(nVar, rVar, 0, getChildCount(), rVar.e());
    }

    private View findLastReferenceChild(RecyclerView.n nVar, RecyclerView.r rVar) {
        return findReferenceChild(nVar, rVar, getChildCount() - 1, -1, rVar.e());
    }

    View findReferenceChild(RecyclerView.n nVar, RecyclerView.r rVar, int i, int i2, int i3) {
        View view;
        View view2 = null;
        ensureLayoutState();
        int c2 = this.mOrientationHelper.c();
        int d = this.mOrientationHelper.d();
        int i4 = i2 > i ? 1 : -1;
        View view3 = null;
        while (i != i2) {
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            if (position >= 0 && position < i3) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).d()) {
                    if (view3 == null) {
                        view = view2;
                    }
                } else if (this.mOrientationHelper.a(childAt) < d && this.mOrientationHelper.b(childAt) >= c2) {
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

    private View findPartiallyOrCompletelyInvisibleChildClosestToEnd(RecyclerView.n nVar, RecyclerView.r rVar) {
        return this.mShouldReverseLayout ? findFirstPartiallyOrCompletelyInvisibleChild(nVar, rVar) : findLastPartiallyOrCompletelyInvisibleChild(nVar, rVar);
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToStart(RecyclerView.n nVar, RecyclerView.r rVar) {
        return this.mShouldReverseLayout ? findLastPartiallyOrCompletelyInvisibleChild(nVar, rVar) : findFirstPartiallyOrCompletelyInvisibleChild(nVar, rVar);
    }

    private View findFirstPartiallyOrCompletelyInvisibleChild(RecyclerView.n nVar, RecyclerView.r rVar) {
        return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
    }

    private View findLastPartiallyOrCompletelyInvisibleChild(RecyclerView.n nVar, RecyclerView.r rVar) {
        return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
    }

    public int findFirstVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    View findOneVisibleChild(int i, int i2, boolean z, boolean z2) {
        int i3 = 320;
        ensureLayoutState();
        int i4 = z ? 24579 : 320;
        if (!z2) {
            i3 = 0;
        }
        if (this.mOrientation == 0) {
            return this.mHorizontalBoundCheck.a(i, i2, i4, i3);
        }
        return this.mVerticalBoundCheck.a(i, i2, i4, i3);
    }

    View findOnePartiallyOrCompletelyInvisibleChild(int i, int i2) {
        char c2;
        int i3;
        int i4;
        ensureLayoutState();
        if (i2 > i) {
            c2 = 1;
        } else {
            c2 = i2 < i ? (char) 65535 : (char) 0;
        }
        if (c2 == 0) {
            return getChildAt(i);
        }
        if (this.mOrientationHelper.a(getChildAt(i)) < this.mOrientationHelper.c()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        if (this.mOrientation == 0) {
            return this.mHorizontalBoundCheck.a(i, i2, i3, i4);
        }
        return this.mVerticalBoundCheck.a(i, i2, i3, i4);
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public View onFocusSearchFailed(View view, int i, RecyclerView.n nVar, RecyclerView.r rVar) {
        int convertFocusDirectionToLayoutDirection;
        View findPartiallyOrCompletelyInvisibleChildClosestToEnd;
        View childClosestToEnd;
        resolveShouldLayoutReverse();
        if (getChildCount() != 0 && (convertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i)) != Integer.MIN_VALUE) {
            ensureLayoutState();
            ensureLayoutState();
            updateLayoutState(convertFocusDirectionToLayoutDirection, (int) (MAX_SCROLL_FACTOR * this.mOrientationHelper.f()), false, rVar);
            this.mLayoutState.g = Integer.MIN_VALUE;
            this.mLayoutState.f792a = false;
            fill(nVar, this.mLayoutState, rVar, true);
            if (convertFocusDirectionToLayoutDirection == -1) {
                findPartiallyOrCompletelyInvisibleChildClosestToEnd = findPartiallyOrCompletelyInvisibleChildClosestToStart(nVar, rVar);
            } else {
                findPartiallyOrCompletelyInvisibleChildClosestToEnd = findPartiallyOrCompletelyInvisibleChildClosestToEnd(nVar, rVar);
            }
            if (convertFocusDirectionToLayoutDirection == -1) {
                childClosestToEnd = getChildClosestToStart();
            } else {
                childClosestToEnd = getChildClosestToEnd();
            }
            if (!childClosestToEnd.hasFocusable()) {
                return findPartiallyOrCompletelyInvisibleChildClosestToEnd;
            }
            if (findPartiallyOrCompletelyInvisibleChildClosestToEnd != null) {
                return childClosestToEnd;
            }
            return null;
        }
        return null;
    }

    private void logChildren() {
        Log.d(TAG, "internal representation of views on the screen");
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            Log.d(TAG, "item " + getPosition(childAt) + ", coord:" + this.mOrientationHelper.a(childAt));
        }
        Log.d(TAG, "==============");
    }

    void validateChildOrder() {
        boolean z = true;
        Log.d(TAG, "validating child count " + getChildCount());
        if (getChildCount() >= 1) {
            int position = getPosition(getChildAt(0));
            int a2 = this.mOrientationHelper.a(getChildAt(0));
            if (this.mShouldReverseLayout) {
                for (int i = 1; i < getChildCount(); i++) {
                    View childAt = getChildAt(i);
                    int position2 = getPosition(childAt);
                    int a3 = this.mOrientationHelper.a(childAt);
                    if (position2 < position) {
                        logChildren();
                        StringBuilder append = new StringBuilder().append("detected invalid position. loc invalid? ");
                        if (a3 >= a2) {
                            z = false;
                        }
                        throw new RuntimeException(append.append(z).toString());
                    } else if (a3 > a2) {
                        logChildren();
                        throw new RuntimeException("detected invalid location");
                    }
                }
                return;
            }
            for (int i2 = 1; i2 < getChildCount(); i2++) {
                View childAt2 = getChildAt(i2);
                int position3 = getPosition(childAt2);
                int a4 = this.mOrientationHelper.a(childAt2);
                if (position3 < position) {
                    logChildren();
                    StringBuilder append2 = new StringBuilder().append("detected invalid position. loc invalid? ");
                    if (a4 >= a2) {
                        z = false;
                    }
                    throw new RuntimeException(append2.append(z).toString());
                } else if (a4 < a2) {
                    logChildren();
                    throw new RuntimeException("detected invalid location");
                }
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.h
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    @RestrictTo
    public void prepareForDrop(View view, View view2, int i, int i2) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        resolveShouldLayoutReverse();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        boolean z = position < position2 ? true : true;
        if (this.mShouldReverseLayout) {
            if (z) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.d() - (this.mOrientationHelper.a(view2) + this.mOrientationHelper.e(view)));
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.d() - this.mOrientationHelper.b(view2));
            }
        } else if (z) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.a(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.b(view2) - this.mOrientationHelper.e(view));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c {
        int b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int j;
        boolean l;

        /* renamed from: a  reason: collision with root package name */
        boolean f792a = true;
        int h = 0;
        boolean i = false;
        List<RecyclerView.u> k = null;

        c() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(RecyclerView.r rVar) {
            return this.d >= 0 && this.d < rVar.e();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public View a(RecyclerView.n nVar) {
            if (this.k != null) {
                return b();
            }
            View c = nVar.c(this.d);
            this.d += this.e;
            return c;
        }

        private View b() {
            int size = this.k.size();
            for (int i = 0; i < size; i++) {
                View view = this.k.get(i).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.d() && this.d == layoutParams.f()) {
                    a(view);
                    return view;
                }
            }
            return null;
        }

        public void a() {
            a((View) null);
        }

        public void a(View view) {
            View b = b(view);
            if (b == null) {
                this.d = -1;
            } else {
                this.d = ((RecyclerView.LayoutParams) b.getLayoutParams()).f();
            }
        }

        public View b(View view) {
            int i;
            View view2;
            int size = this.k.size();
            View view3 = null;
            int i2 = Integer.MAX_VALUE;
            int i3 = 0;
            while (i3 < size) {
                View view4 = this.k.get(i3).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view4.getLayoutParams();
                if (view4 != view) {
                    if (layoutParams.d()) {
                        i = i2;
                        view2 = view3;
                    } else {
                        i = (layoutParams.f() - this.d) * this.e;
                        if (i < 0) {
                            i = i2;
                            view2 = view3;
                        } else if (i < i2) {
                            if (i == 0) {
                                return view4;
                            }
                            view2 = view4;
                        }
                    }
                    i3++;
                    view3 = view2;
                    i2 = i;
                }
                i = i2;
                view2 = view3;
                i3++;
                view3 = view2;
                i2 = i;
            }
            return view3;
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v7.widget.LinearLayoutManager.SavedState.1
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
        int f789a;
        int b;
        boolean c;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            boolean z = true;
            this.f789a = parcel.readInt();
            this.b = parcel.readInt();
            this.c = parcel.readInt() != 1 ? false : z;
        }

        public SavedState(SavedState savedState) {
            this.f789a = savedState.f789a;
            this.b = savedState.b;
            this.c = savedState.c;
        }

        boolean a() {
            return this.f789a >= 0;
        }

        void b() {
            this.f789a = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f789a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.c ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        int f790a;
        int b;
        boolean c;
        boolean d;

        a() {
            a();
        }

        void a() {
            this.f790a = -1;
            this.b = Integer.MIN_VALUE;
            this.c = false;
            this.d = false;
        }

        void b() {
            int c;
            if (this.c) {
                c = LinearLayoutManager.this.mOrientationHelper.d();
            } else {
                c = LinearLayoutManager.this.mOrientationHelper.c();
            }
            this.b = c;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f790a + ", mCoordinate=" + this.b + ", mLayoutFromEnd=" + this.c + ", mValid=" + this.d + '}';
        }

        boolean a(View view, RecyclerView.r rVar) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return !layoutParams.d() && layoutParams.f() >= 0 && layoutParams.f() < rVar.e();
        }

        public void a(View view) {
            int b = LinearLayoutManager.this.mOrientationHelper.b();
            if (b >= 0) {
                b(view);
                return;
            }
            this.f790a = LinearLayoutManager.this.getPosition(view);
            if (this.c) {
                int d = (LinearLayoutManager.this.mOrientationHelper.d() - b) - LinearLayoutManager.this.mOrientationHelper.b(view);
                this.b = LinearLayoutManager.this.mOrientationHelper.d() - d;
                if (d > 0) {
                    int e = this.b - LinearLayoutManager.this.mOrientationHelper.e(view);
                    int c = LinearLayoutManager.this.mOrientationHelper.c();
                    int min = e - (c + Math.min(LinearLayoutManager.this.mOrientationHelper.a(view) - c, 0));
                    if (min < 0) {
                        this.b = Math.min(d, -min) + this.b;
                        return;
                    }
                    return;
                }
                return;
            }
            int a2 = LinearLayoutManager.this.mOrientationHelper.a(view);
            int c2 = a2 - LinearLayoutManager.this.mOrientationHelper.c();
            this.b = a2;
            if (c2 > 0) {
                int d2 = (LinearLayoutManager.this.mOrientationHelper.d() - Math.min(0, (LinearLayoutManager.this.mOrientationHelper.d() - b) - LinearLayoutManager.this.mOrientationHelper.b(view))) - (a2 + LinearLayoutManager.this.mOrientationHelper.e(view));
                if (d2 < 0) {
                    this.b -= Math.min(c2, -d2);
                }
            }
        }

        public void b(View view) {
            if (this.c) {
                this.b = LinearLayoutManager.this.mOrientationHelper.b(view) + LinearLayoutManager.this.mOrientationHelper.b();
            } else {
                this.b = LinearLayoutManager.this.mOrientationHelper.a(view);
            }
            this.f790a = LinearLayoutManager.this.getPosition(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f791a;
        public boolean b;
        public boolean c;
        public boolean d;

        protected b() {
        }

        void a() {
            this.f791a = 0;
            this.b = false;
            this.c = false;
            this.d = false;
        }
    }
}
