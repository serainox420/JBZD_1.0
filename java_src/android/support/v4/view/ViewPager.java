package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.facebook.internal.Utility;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes.dex */
public class ViewPager extends ViewGroup {
    private static final int CLOSE_ENOUGH = 2;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_GUTTER_SIZE = 16;
    private static final int DEFAULT_OFFSCREEN_PAGES = 1;
    private static final int DRAW_ORDER_DEFAULT = 0;
    private static final int DRAW_ORDER_FORWARD = 1;
    private static final int DRAW_ORDER_REVERSE = 2;
    private static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    private static final int MIN_DISTANCE_FOR_FLING = 25;
    private static final int MIN_FLING_VELOCITY = 400;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final String TAG = "ViewPager";
    private static final boolean USE_CACHE = false;
    private int mActivePointerId;
    aa mAdapter;
    private List<d> mAdapterChangeListeners;
    private int mBottomPageBounds;
    private boolean mCalledSuper;
    private int mChildHeightMeasureSpec;
    private int mChildWidthMeasureSpec;
    private int mCloseEnough;
    int mCurItem;
    private int mDecorChildCount;
    private int mDefaultGutterSize;
    private int mDrawingOrder;
    private ArrayList<View> mDrawingOrderedChildren;
    private final Runnable mEndScrollRunnable;
    private int mExpectedAdapterCount;
    private long mFakeDragBeginTime;
    private boolean mFakeDragging;
    private boolean mFirstLayout;
    private float mFirstOffset;
    private int mFlingDistance;
    private int mGutterSize;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private e mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsScrollStarted;
    private boolean mIsUnableToDrag;
    private final ArrayList<b> mItems;
    private float mLastMotionX;
    private float mLastMotionY;
    private float mLastOffset;
    private android.support.v4.widget.k mLeftEdge;
    private Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private boolean mNeedCalculatePageOffsets;
    private g mObserver;
    private int mOffscreenPageLimit;
    private e mOnPageChangeListener;
    private List<e> mOnPageChangeListeners;
    private int mPageMargin;
    private f mPageTransformer;
    private int mPageTransformerLayerType;
    private boolean mPopulatePending;
    private Parcelable mRestoredAdapterState;
    private ClassLoader mRestoredClassLoader;
    private int mRestoredCurItem;
    private android.support.v4.widget.k mRightEdge;
    private int mScrollState;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private Method mSetChildrenDrawingOrderEnabled;
    private final b mTempItem;
    private final Rect mTempRect;
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    static final int[] LAYOUT_ATTRS = {16842931};
    private static final Comparator<b> COMPARATOR = new Comparator<b>() { // from class: android.support.v4.view.ViewPager.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(b bVar, b bVar2) {
            return bVar.b - bVar2.b;
        }
    };
    private static final Interpolator sInterpolator = new Interpolator() { // from class: android.support.v4.view.ViewPager.2
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    };
    private static final h sPositionComparator = new h();

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface a {
    }

    /* loaded from: classes.dex */
    public interface d {
        void a(ViewPager viewPager, aa aaVar, aa aaVar2);
    }

    /* loaded from: classes.dex */
    public interface e {
        void a(int i);

        void a(int i, float f, int i2);

        void b(int i);
    }

    /* loaded from: classes.dex */
    public interface f {
        void a(View view, float f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        Object f415a;
        int b;
        boolean c;
        float d;
        float e;

        b() {
        }
    }

    public ViewPager(Context context) {
        super(context);
        this.mItems = new ArrayList<>();
        this.mTempItem = new b();
        this.mTempRect = new Rect();
        this.mRestoredCurItem = -1;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = Float.MAX_VALUE;
        this.mOffscreenPageLimit = 1;
        this.mActivePointerId = -1;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = false;
        this.mEndScrollRunnable = new Runnable() { // from class: android.support.v4.view.ViewPager.3
            @Override // java.lang.Runnable
            public void run() {
                ViewPager.this.setScrollState(0);
                ViewPager.this.populate();
            }
        };
        this.mScrollState = 0;
        initViewPager();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mItems = new ArrayList<>();
        this.mTempItem = new b();
        this.mTempRect = new Rect();
        this.mRestoredCurItem = -1;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = Float.MAX_VALUE;
        this.mOffscreenPageLimit = 1;
        this.mActivePointerId = -1;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = false;
        this.mEndScrollRunnable = new Runnable() { // from class: android.support.v4.view.ViewPager.3
            @Override // java.lang.Runnable
            public void run() {
                ViewPager.this.setScrollState(0);
                ViewPager.this.populate();
            }
        };
        this.mScrollState = 0;
        initViewPager();
    }

    void initViewPager() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.mScroller = new Scroller(context, sInterpolator);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        this.mMinimumVelocity = (int) (400.0f * f2);
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mLeftEdge = new android.support.v4.widget.k(context);
        this.mRightEdge = new android.support.v4.widget.k(context);
        this.mFlingDistance = (int) (25.0f * f2);
        this.mCloseEnough = (int) (2.0f * f2);
        this.mDefaultGutterSize = (int) (16.0f * f2);
        ai.a(this, new c());
        if (ai.d(this) == 0) {
            ai.c((View) this, 1);
        }
        ai.a(this, new z() { // from class: android.support.v4.view.ViewPager.4
            private final Rect b = new Rect();

            @Override // android.support.v4.view.z
            public bg a(View view, bg bgVar) {
                bg a2 = ai.a(view, bgVar);
                if (!a2.f()) {
                    Rect rect = this.b;
                    rect.left = a2.a();
                    rect.top = a2.b();
                    rect.right = a2.c();
                    rect.bottom = a2.d();
                    int childCount = ViewPager.this.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        bg b2 = ai.b(ViewPager.this.getChildAt(i), a2);
                        rect.left = Math.min(b2.a(), rect.left);
                        rect.top = Math.min(b2.b(), rect.top);
                        rect.right = Math.min(b2.c(), rect.right);
                        rect.bottom = Math.min(b2.d(), rect.bottom);
                    }
                    return a2.a(rect.left, rect.top, rect.right, rect.bottom);
                }
                return a2;
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.mEndScrollRunnable);
        if (this.mScroller != null && !this.mScroller.isFinished()) {
            this.mScroller.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    void setScrollState(int i) {
        if (this.mScrollState != i) {
            this.mScrollState = i;
            if (this.mPageTransformer != null) {
                enableLayers(i != 0);
            }
            dispatchOnScrollStateChanged(i);
        }
    }

    public void setAdapter(aa aaVar) {
        if (this.mAdapter != null) {
            this.mAdapter.setViewPagerObserver(null);
            this.mAdapter.startUpdate((ViewGroup) this);
            for (int i = 0; i < this.mItems.size(); i++) {
                b bVar = this.mItems.get(i);
                this.mAdapter.destroyItem((ViewGroup) this, bVar.b, bVar.f415a);
            }
            this.mAdapter.finishUpdate((ViewGroup) this);
            this.mItems.clear();
            removeNonDecorViews();
            this.mCurItem = 0;
            scrollTo(0, 0);
        }
        aa aaVar2 = this.mAdapter;
        this.mAdapter = aaVar;
        this.mExpectedAdapterCount = 0;
        if (this.mAdapter != null) {
            if (this.mObserver == null) {
                this.mObserver = new g();
            }
            this.mAdapter.setViewPagerObserver(this.mObserver);
            this.mPopulatePending = false;
            boolean z = this.mFirstLayout;
            this.mFirstLayout = true;
            this.mExpectedAdapterCount = this.mAdapter.getCount();
            if (this.mRestoredCurItem >= 0) {
                this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
                setCurrentItemInternal(this.mRestoredCurItem, false, true);
                this.mRestoredCurItem = -1;
                this.mRestoredAdapterState = null;
                this.mRestoredClassLoader = null;
            } else if (!z) {
                populate();
            } else {
                requestLayout();
            }
        }
        if (this.mAdapterChangeListeners != null && !this.mAdapterChangeListeners.isEmpty()) {
            int size = this.mAdapterChangeListeners.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mAdapterChangeListeners.get(i2).a(this, aaVar2, aaVar);
            }
        }
    }

    private void removeNonDecorViews() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < getChildCount()) {
                if (!((LayoutParams) getChildAt(i2).getLayoutParams()).f413a) {
                    removeViewAt(i2);
                    i2--;
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public aa getAdapter() {
        return this.mAdapter;
    }

    public void addOnAdapterChangeListener(d dVar) {
        if (this.mAdapterChangeListeners == null) {
            this.mAdapterChangeListeners = new ArrayList();
        }
        this.mAdapterChangeListeners.add(dVar);
    }

    public void removeOnAdapterChangeListener(d dVar) {
        if (this.mAdapterChangeListeners != null) {
            this.mAdapterChangeListeners.remove(dVar);
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public void setCurrentItem(int i) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i, !this.mFirstLayout, false);
    }

    public void setCurrentItem(int i, boolean z) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i, z, false);
    }

    public int getCurrentItem() {
        return this.mCurItem;
    }

    void setCurrentItemInternal(int i, boolean z, boolean z2) {
        setCurrentItemInternal(i, z, z2, 0);
    }

    void setCurrentItemInternal(int i, boolean z, boolean z2, int i2) {
        boolean z3 = false;
        if (this.mAdapter == null || this.mAdapter.getCount() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (!z2 && this.mCurItem == i && this.mItems.size() != 0) {
            setScrollingCacheEnabled(false);
        } else {
            if (i < 0) {
                i = 0;
            } else if (i >= this.mAdapter.getCount()) {
                i = this.mAdapter.getCount() - 1;
            }
            int i3 = this.mOffscreenPageLimit;
            if (i > this.mCurItem + i3 || i < this.mCurItem - i3) {
                for (int i4 = 0; i4 < this.mItems.size(); i4++) {
                    this.mItems.get(i4).c = true;
                }
            }
            if (this.mCurItem != i) {
                z3 = true;
            }
            if (this.mFirstLayout) {
                this.mCurItem = i;
                if (z3) {
                    dispatchOnPageSelected(i);
                }
                requestLayout();
                return;
            }
            populate(i);
            scrollToItem(i, z, i2, z3);
        }
    }

    private void scrollToItem(int i, boolean z, int i2, boolean z2) {
        int i3;
        b infoForPosition = infoForPosition(i);
        if (infoForPosition != null) {
            i3 = (int) (Math.max(this.mFirstOffset, Math.min(infoForPosition.e, this.mLastOffset)) * getClientWidth());
        } else {
            i3 = 0;
        }
        if (z) {
            smoothScrollTo(i3, 0, i2);
            if (z2) {
                dispatchOnPageSelected(i);
                return;
            }
            return;
        }
        if (z2) {
            dispatchOnPageSelected(i);
        }
        completeScroll(false);
        scrollTo(i3, 0);
        pageScrolled(i3);
    }

    @Deprecated
    public void setOnPageChangeListener(e eVar) {
        this.mOnPageChangeListener = eVar;
    }

    public void addOnPageChangeListener(e eVar) {
        if (this.mOnPageChangeListeners == null) {
            this.mOnPageChangeListeners = new ArrayList();
        }
        this.mOnPageChangeListeners.add(eVar);
    }

    public void removeOnPageChangeListener(e eVar) {
        if (this.mOnPageChangeListeners != null) {
            this.mOnPageChangeListeners.remove(eVar);
        }
    }

    public void clearOnPageChangeListeners() {
        if (this.mOnPageChangeListeners != null) {
            this.mOnPageChangeListeners.clear();
        }
    }

    public void setPageTransformer(boolean z, f fVar) {
        setPageTransformer(z, fVar, 2);
    }

    public void setPageTransformer(boolean z, f fVar, int i) {
        int i2 = 1;
        if (Build.VERSION.SDK_INT >= 11) {
            boolean z2 = fVar != null;
            boolean z3 = z2 != (this.mPageTransformer != null);
            this.mPageTransformer = fVar;
            setChildrenDrawingOrderEnabledCompat(z2);
            if (z2) {
                if (z) {
                    i2 = 2;
                }
                this.mDrawingOrder = i2;
                this.mPageTransformerLayerType = i;
            } else {
                this.mDrawingOrder = 0;
            }
            if (z3) {
                populate();
            }
        }
    }

    void setChildrenDrawingOrderEnabledCompat(boolean z) {
        if (Build.VERSION.SDK_INT >= 7) {
            if (this.mSetChildrenDrawingOrderEnabled == null) {
                try {
                    this.mSetChildrenDrawingOrderEnabled = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
                } catch (NoSuchMethodException e2) {
                    Log.e(TAG, "Can't find setChildrenDrawingOrderEnabled", e2);
                }
            }
            try {
                this.mSetChildrenDrawingOrderEnabled.invoke(this, Boolean.valueOf(z));
            } catch (Exception e3) {
                Log.e(TAG, "Error changing children drawing order", e3);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        if (this.mDrawingOrder == 2) {
            i2 = (i - 1) - i2;
        }
        return ((LayoutParams) this.mDrawingOrderedChildren.get(i2).getLayoutParams()).f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e setInternalPageChangeListener(e eVar) {
        e eVar2 = this.mInternalPageChangeListener;
        this.mInternalPageChangeListener = eVar;
        return eVar2;
    }

    public int getOffscreenPageLimit() {
        return this.mOffscreenPageLimit;
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1) {
            Log.w(TAG, "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i = 1;
        }
        if (i != this.mOffscreenPageLimit) {
            this.mOffscreenPageLimit = i;
            populate();
        }
    }

    public void setPageMargin(int i) {
        int i2 = this.mPageMargin;
        this.mPageMargin = i;
        int width = getWidth();
        recomputeScrollPosition(width, width, i, i2);
        requestLayout();
    }

    public int getPageMargin() {
        return this.mPageMargin;
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.mMarginDrawable = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(android.support.v4.content.b.a(getContext(), i));
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mMarginDrawable;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mMarginDrawable;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    float distanceInfluenceForSnapDuration(float f2) {
        return (float) Math.sin((float) ((f2 - 0.5f) * 0.4712389167638204d));
    }

    void smoothScrollTo(int i, int i2) {
        smoothScrollTo(i, i2, 0);
    }

    void smoothScrollTo(int i, int i2, int i3) {
        int scrollX;
        int abs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (this.mScroller != null && !this.mScroller.isFinished()) {
            int currX = this.mIsScrollStarted ? this.mScroller.getCurrX() : this.mScroller.getStartX();
            this.mScroller.abortAnimation();
            setScrollingCacheEnabled(false);
            scrollX = currX;
        } else {
            scrollX = getScrollX();
        }
        int scrollY = getScrollY();
        int i4 = i - scrollX;
        int i5 = i2 - scrollY;
        if (i4 == 0 && i5 == 0) {
            completeScroll(false);
            populate();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i6 = clientWidth / 2;
        float distanceInfluenceForSnapDuration = (i6 * distanceInfluenceForSnapDuration(Math.min(1.0f, (Math.abs(i4) * 1.0f) / clientWidth))) + i6;
        int abs2 = Math.abs(i3);
        if (abs2 > 0) {
            abs = Math.round(1000.0f * Math.abs(distanceInfluenceForSnapDuration / abs2)) * 4;
        } else {
            abs = (int) (((Math.abs(i4) / ((clientWidth * this.mAdapter.getPageWidth(this.mCurItem)) + this.mPageMargin)) + 1.0f) * 100.0f);
        }
        int min = Math.min(abs, 600);
        this.mIsScrollStarted = false;
        this.mScroller.startScroll(scrollX, scrollY, i4, i5, min);
        ai.c(this);
    }

    b addNewItem(int i, int i2) {
        b bVar = new b();
        bVar.b = i;
        bVar.f415a = this.mAdapter.instantiateItem((ViewGroup) this, i);
        bVar.d = this.mAdapter.getPageWidth(i);
        if (i2 < 0 || i2 >= this.mItems.size()) {
            this.mItems.add(bVar);
        } else {
            this.mItems.add(i2, bVar);
        }
        return bVar;
    }

    void dataSetChanged() {
        int i;
        boolean z;
        int i2;
        boolean z2;
        int count = this.mAdapter.getCount();
        this.mExpectedAdapterCount = count;
        boolean z3 = this.mItems.size() < (this.mOffscreenPageLimit * 2) + 1 && this.mItems.size() < count;
        boolean z4 = false;
        int i3 = this.mCurItem;
        boolean z5 = z3;
        int i4 = 0;
        while (i4 < this.mItems.size()) {
            b bVar = this.mItems.get(i4);
            int itemPosition = this.mAdapter.getItemPosition(bVar.f415a);
            if (itemPosition == -1) {
                i = i4;
                z = z4;
                i2 = i3;
                z2 = z5;
            } else if (itemPosition == -2) {
                this.mItems.remove(i4);
                int i5 = i4 - 1;
                if (!z4) {
                    this.mAdapter.startUpdate((ViewGroup) this);
                    z4 = true;
                }
                this.mAdapter.destroyItem((ViewGroup) this, bVar.b, bVar.f415a);
                if (this.mCurItem == bVar.b) {
                    i = i5;
                    z = z4;
                    i2 = Math.max(0, Math.min(this.mCurItem, count - 1));
                    z2 = true;
                } else {
                    i = i5;
                    z = z4;
                    i2 = i3;
                    z2 = true;
                }
            } else if (bVar.b != itemPosition) {
                if (bVar.b == this.mCurItem) {
                    i3 = itemPosition;
                }
                bVar.b = itemPosition;
                i = i4;
                z = z4;
                i2 = i3;
                z2 = true;
            } else {
                i = i4;
                z = z4;
                i2 = i3;
                z2 = z5;
            }
            z5 = z2;
            i3 = i2;
            z4 = z;
            i4 = i + 1;
        }
        if (z4) {
            this.mAdapter.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.mItems, COMPARATOR);
        if (z5) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i6).getLayoutParams();
                if (!layoutParams.f413a) {
                    layoutParams.c = BitmapDescriptorFactory.HUE_RED;
                }
            }
            setCurrentItemInternal(i3, false, true);
            requestLayout();
        }
    }

    void populate() {
        populate(this.mCurItem);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00f0, code lost:
        if (r2.b == r17.mCurItem) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void populate(int i) {
        b bVar;
        String hexString;
        int i2;
        b bVar2;
        b infoForChild;
        if (this.mCurItem == i) {
            bVar = null;
        } else {
            b infoForPosition = infoForPosition(this.mCurItem);
            this.mCurItem = i;
            bVar = infoForPosition;
        }
        if (this.mAdapter == null) {
            sortChildDrawingOrder();
        } else if (this.mPopulatePending) {
            sortChildDrawingOrder();
        } else if (getWindowToken() != null) {
            this.mAdapter.startUpdate((ViewGroup) this);
            int i3 = this.mOffscreenPageLimit;
            int max = Math.max(0, this.mCurItem - i3);
            int count = this.mAdapter.getCount();
            int min = Math.min(count - 1, i3 + this.mCurItem);
            if (count != this.mExpectedAdapterCount) {
                try {
                    hexString = getResources().getResourceName(getId());
                } catch (Resources.NotFoundException e2) {
                    hexString = Integer.toHexString(getId());
                }
                throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.mExpectedAdapterCount + ", found: " + count + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.mAdapter.getClass());
            }
            int i4 = 0;
            while (true) {
                i2 = i4;
                if (i2 >= this.mItems.size()) {
                    break;
                }
                bVar2 = this.mItems.get(i2);
                if (bVar2.b < this.mCurItem) {
                    i4 = i2 + 1;
                }
            }
            bVar2 = null;
            b addNewItem = (bVar2 != null || count <= 0) ? bVar2 : addNewItem(this.mCurItem, i2);
            if (addNewItem != null) {
                int i5 = i2 - 1;
                b bVar3 = i5 >= 0 ? this.mItems.get(i5) : null;
                int clientWidth = getClientWidth();
                float paddingLeft = clientWidth <= 0 ? BitmapDescriptorFactory.HUE_RED : (2.0f - addNewItem.d) + (getPaddingLeft() / clientWidth);
                float f2 = 0.0f;
                int i6 = i2;
                int i7 = i5;
                for (int i8 = this.mCurItem - 1; i8 >= 0; i8--) {
                    if (f2 >= paddingLeft && i8 < max) {
                        if (bVar3 == null) {
                            break;
                        } else if (i8 == bVar3.b && !bVar3.c) {
                            this.mItems.remove(i7);
                            this.mAdapter.destroyItem((ViewGroup) this, i8, bVar3.f415a);
                            i7--;
                            i6--;
                            bVar3 = i7 >= 0 ? this.mItems.get(i7) : null;
                        }
                    } else if (bVar3 != null && i8 == bVar3.b) {
                        f2 += bVar3.d;
                        i7--;
                        bVar3 = i7 >= 0 ? this.mItems.get(i7) : null;
                    } else {
                        f2 += addNewItem(i8, i7 + 1).d;
                        i6++;
                        bVar3 = i7 >= 0 ? this.mItems.get(i7) : null;
                    }
                }
                float f3 = addNewItem.d;
                int i9 = i6 + 1;
                if (f3 < 2.0f) {
                    b bVar4 = i9 < this.mItems.size() ? this.mItems.get(i9) : null;
                    float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                    b bVar5 = bVar4;
                    int i10 = i9;
                    int i11 = this.mCurItem + 1;
                    while (i11 < count) {
                        if (f3 >= paddingRight && i11 > min) {
                            if (bVar5 == null) {
                                break;
                            } else if (i11 == bVar5.b && !bVar5.c) {
                                this.mItems.remove(i10);
                                this.mAdapter.destroyItem((ViewGroup) this, i11, bVar5.f415a);
                                bVar5 = i10 < this.mItems.size() ? this.mItems.get(i10) : null;
                            }
                        } else if (bVar5 != null && i11 == bVar5.b) {
                            f3 += bVar5.d;
                            i10++;
                            bVar5 = i10 < this.mItems.size() ? this.mItems.get(i10) : null;
                        } else {
                            b addNewItem2 = addNewItem(i11, i10);
                            i10++;
                            f3 += addNewItem2.d;
                            bVar5 = i10 < this.mItems.size() ? this.mItems.get(i10) : null;
                        }
                        i11++;
                        bVar5 = bVar5;
                        f3 = f3;
                    }
                }
                calculatePageOffsets(addNewItem, i6, bVar);
            }
            this.mAdapter.setPrimaryItem((ViewGroup) this, this.mCurItem, addNewItem != null ? addNewItem.f415a : null);
            this.mAdapter.finishUpdate((ViewGroup) this);
            int childCount = getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                layoutParams.f = i12;
                if (!layoutParams.f413a && layoutParams.c == BitmapDescriptorFactory.HUE_RED && (infoForChild = infoForChild(childAt)) != null) {
                    layoutParams.c = infoForChild.d;
                    layoutParams.e = infoForChild.b;
                }
            }
            sortChildDrawingOrder();
            if (hasFocus()) {
                View findFocus = findFocus();
                b infoForAnyChild = findFocus != null ? infoForAnyChild(findFocus) : null;
                if (infoForAnyChild == null || infoForAnyChild.b != this.mCurItem) {
                    for (int i13 = 0; i13 < getChildCount(); i13++) {
                        View childAt2 = getChildAt(i13);
                        b infoForChild2 = infoForChild(childAt2);
                        if (infoForChild2 != null && infoForChild2.b == this.mCurItem && childAt2.requestFocus(2)) {
                            return;
                        }
                    }
                }
            }
        }
    }

    private void sortChildDrawingOrder() {
        if (this.mDrawingOrder != 0) {
            if (this.mDrawingOrderedChildren == null) {
                this.mDrawingOrderedChildren = new ArrayList<>();
            } else {
                this.mDrawingOrderedChildren.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.mDrawingOrderedChildren.add(getChildAt(i));
            }
            Collections.sort(this.mDrawingOrderedChildren, sPositionComparator);
        }
    }

    private void calculatePageOffsets(b bVar, int i, b bVar2) {
        b bVar3;
        b bVar4;
        int count = this.mAdapter.getCount();
        int clientWidth = getClientWidth();
        float f2 = clientWidth > 0 ? this.mPageMargin / clientWidth : 0.0f;
        if (bVar2 != null) {
            int i2 = bVar2.b;
            if (i2 < bVar.b) {
                float f3 = bVar2.e + bVar2.d + f2;
                int i3 = i2 + 1;
                int i4 = 0;
                while (i3 <= bVar.b && i4 < this.mItems.size()) {
                    b bVar5 = this.mItems.get(i4);
                    while (true) {
                        bVar4 = bVar5;
                        if (i3 <= bVar4.b || i4 >= this.mItems.size() - 1) {
                            break;
                        }
                        i4++;
                        bVar5 = this.mItems.get(i4);
                    }
                    while (i3 < bVar4.b) {
                        f3 += this.mAdapter.getPageWidth(i3) + f2;
                        i3++;
                    }
                    bVar4.e = f3;
                    f3 += bVar4.d + f2;
                    i3++;
                }
            } else if (i2 > bVar.b) {
                int size = this.mItems.size() - 1;
                float f4 = bVar2.e;
                int i5 = i2 - 1;
                while (i5 >= bVar.b && size >= 0) {
                    b bVar6 = this.mItems.get(size);
                    while (true) {
                        bVar3 = bVar6;
                        if (i5 >= bVar3.b || size <= 0) {
                            break;
                        }
                        size--;
                        bVar6 = this.mItems.get(size);
                    }
                    while (i5 > bVar3.b) {
                        f4 -= this.mAdapter.getPageWidth(i5) + f2;
                        i5--;
                    }
                    f4 -= bVar3.d + f2;
                    bVar3.e = f4;
                    i5--;
                }
            }
        }
        int size2 = this.mItems.size();
        float f5 = bVar.e;
        int i6 = bVar.b - 1;
        this.mFirstOffset = bVar.b == 0 ? bVar.e : -3.4028235E38f;
        this.mLastOffset = bVar.b == count + (-1) ? (bVar.e + bVar.d) - 1.0f : Float.MAX_VALUE;
        for (int i7 = i - 1; i7 >= 0; i7--) {
            b bVar7 = this.mItems.get(i7);
            float f6 = f5;
            while (i6 > bVar7.b) {
                f6 -= this.mAdapter.getPageWidth(i6) + f2;
                i6--;
            }
            f5 = f6 - (bVar7.d + f2);
            bVar7.e = f5;
            if (bVar7.b == 0) {
                this.mFirstOffset = f5;
            }
            i6--;
        }
        float f7 = bVar.e + bVar.d + f2;
        int i8 = bVar.b + 1;
        for (int i9 = i + 1; i9 < size2; i9++) {
            b bVar8 = this.mItems.get(i9);
            float f8 = f7;
            while (i8 < bVar8.b) {
                f8 = this.mAdapter.getPageWidth(i8) + f2 + f8;
                i8++;
            }
            if (bVar8.b == count - 1) {
                this.mLastOffset = (bVar8.d + f8) - 1.0f;
            }
            bVar8.e = f8;
            f7 = f8 + bVar8.d + f2;
            i8++;
        }
        this.mNeedCalculatePageOffsets = false;
    }

    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = android.support.v4.os.e.a(new android.support.v4.os.f<SavedState>() { // from class: android.support.v4.view.ViewPager.SavedState.1
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
        int f414a;
        Parcelable b;
        ClassLoader c;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f414a);
            parcel.writeParcelable(this.b, i);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f414a + "}";
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f414a = parcel.readInt();
            this.b = parcel.readParcelable(classLoader);
            this.c = classLoader;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f414a = this.mCurItem;
        if (this.mAdapter != null) {
            savedState.b = this.mAdapter.saveState();
        }
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        if (this.mAdapter != null) {
            this.mAdapter.restoreState(savedState.b, savedState.c);
            setCurrentItemInternal(savedState.f414a, false, true);
            return;
        }
        this.mRestoredCurItem = savedState.f414a;
        this.mRestoredAdapterState = savedState.b;
        this.mRestoredClassLoader = savedState.c;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams generateLayoutParams = !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : layoutParams;
        LayoutParams layoutParams2 = (LayoutParams) generateLayoutParams;
        layoutParams2.f413a |= isDecorView(view);
        if (this.mInLayout) {
            if (layoutParams2 != null && layoutParams2.f413a) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            layoutParams2.d = true;
            addViewInLayout(view, i, generateLayoutParams);
            return;
        }
        super.addView(view, i, generateLayoutParams);
    }

    private static boolean isDecorView(View view) {
        return view.getClass().getAnnotation(a.class) != null;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.mInLayout) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    b infoForChild(View view) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.mItems.size()) {
                b bVar = this.mItems.get(i2);
                if (!this.mAdapter.isViewFromObject(view, bVar.f415a)) {
                    i = i2 + 1;
                } else {
                    return bVar;
                }
            } else {
                return null;
            }
        }
    }

    b infoForAnyChild(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                return infoForChild(view);
            }
        }
        return null;
    }

    b infoForPosition(int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.mItems.size()) {
                b bVar = this.mItems.get(i3);
                if (bVar.b != i) {
                    i2 = i3 + 1;
                } else {
                    return bVar;
                }
            } else {
                return null;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b4  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        LayoutParams layoutParams;
        LayoutParams layoutParams2;
        int i3;
        int i4;
        int i5;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.mGutterSize = Math.min(measuredWidth / 10, this.mDefaultGutterSize);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8 && (layoutParams2 = (LayoutParams) childAt.getLayoutParams()) != null && layoutParams2.f413a) {
                int i7 = layoutParams2.b & 7;
                int i8 = layoutParams2.b & 112;
                int i9 = Integer.MIN_VALUE;
                int i10 = Integer.MIN_VALUE;
                boolean z = i8 == 48 || i8 == 80;
                boolean z2 = i7 == 3 || i7 == 5;
                if (z) {
                    i9 = 1073741824;
                } else if (z2) {
                    i10 = 1073741824;
                }
                if (layoutParams2.width != -2) {
                    i3 = 1073741824;
                    i4 = layoutParams2.width != -1 ? layoutParams2.width : paddingLeft;
                } else {
                    i3 = i9;
                    i4 = paddingLeft;
                }
                if (layoutParams2.height != -2) {
                    i10 = 1073741824;
                    if (layoutParams2.height != -1) {
                        i5 = layoutParams2.height;
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(i4, i3), View.MeasureSpec.makeMeasureSpec(i5, i10));
                        if (!z) {
                            measuredHeight -= childAt.getMeasuredHeight();
                        } else if (z2) {
                            paddingLeft -= childAt.getMeasuredWidth();
                        }
                    }
                }
                i5 = measuredHeight;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i4, i3), View.MeasureSpec.makeMeasureSpec(i5, i10));
                if (!z) {
                }
            }
        }
        this.mChildWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.mChildHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.mInLayout = true;
        populate();
        this.mInLayout = false;
        int childCount2 = getChildCount();
        for (int i11 = 0; i11 < childCount2; i11++) {
            View childAt2 = getChildAt(i11);
            if (childAt2.getVisibility() != 8 && ((layoutParams = (LayoutParams) childAt2.getLayoutParams()) == null || !layoutParams.f413a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (layoutParams.c * paddingLeft), 1073741824), this.mChildHeightMeasureSpec);
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            recomputeScrollPosition(i, i3, this.mPageMargin, this.mPageMargin);
        }
    }

    private void recomputeScrollPosition(int i, int i2, int i3, int i4) {
        if (i2 > 0 && !this.mItems.isEmpty()) {
            if (!this.mScroller.isFinished()) {
                this.mScroller.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((((i - getPaddingLeft()) - getPaddingRight()) + i3) * (getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4))), getScrollY());
                return;
            }
        }
        b infoForPosition = infoForPosition(this.mCurItem);
        int min = (int) ((infoForPosition != null ? Math.min(infoForPosition.e, this.mLastOffset) : BitmapDescriptorFactory.HUE_RED) * ((i - getPaddingLeft()) - getPaddingRight()));
        if (min != getScrollX()) {
            completeScroll(false);
            scrollTo(min, getScrollY());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        b infoForChild;
        int i5;
        int i6;
        int i7;
        int measuredHeight;
        int i8;
        int i9;
        int childCount = getChildCount();
        int i10 = i3 - i;
        int i11 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i12 = 0;
        int i13 = 0;
        while (i13 < childCount) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f413a) {
                    int i14 = layoutParams.b & 7;
                    int i15 = layoutParams.b & 112;
                    switch (i14) {
                        case 1:
                            i7 = Math.max((i10 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case 2:
                        case 4:
                        default:
                            i7 = paddingLeft;
                            break;
                        case 3:
                            i7 = paddingLeft;
                            paddingLeft = childAt.getMeasuredWidth() + paddingLeft;
                            break;
                        case 5:
                            int measuredWidth = (i10 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                            i7 = measuredWidth;
                            break;
                    }
                    switch (i15) {
                        case 16:
                            measuredHeight = Math.max((i11 - childAt.getMeasuredHeight()) / 2, paddingTop);
                            int i16 = paddingBottom;
                            i8 = paddingTop;
                            i9 = i16;
                            break;
                        case 48:
                            int measuredHeight2 = childAt.getMeasuredHeight() + paddingTop;
                            int i17 = paddingTop;
                            i9 = paddingBottom;
                            i8 = measuredHeight2;
                            measuredHeight = i17;
                            break;
                        case 80:
                            measuredHeight = (i11 - paddingBottom) - childAt.getMeasuredHeight();
                            int measuredHeight3 = paddingBottom + childAt.getMeasuredHeight();
                            i8 = paddingTop;
                            i9 = measuredHeight3;
                            break;
                        default:
                            measuredHeight = paddingTop;
                            int i18 = paddingBottom;
                            i8 = paddingTop;
                            i9 = i18;
                            break;
                    }
                    int i19 = i7 + scrollX;
                    childAt.layout(i19, measuredHeight, childAt.getMeasuredWidth() + i19, childAt.getMeasuredHeight() + measuredHeight);
                    i5 = i12 + 1;
                    i6 = i8;
                    paddingBottom = i9;
                    i13++;
                    paddingLeft = paddingLeft;
                    paddingRight = paddingRight;
                    paddingTop = i6;
                    i12 = i5;
                }
            }
            i5 = i12;
            i6 = paddingTop;
            i13++;
            paddingLeft = paddingLeft;
            paddingRight = paddingRight;
            paddingTop = i6;
            i12 = i5;
        }
        int i20 = (i10 - paddingLeft) - paddingRight;
        for (int i21 = 0; i21 < childCount; i21++) {
            View childAt2 = getChildAt(i21);
            if (childAt2.getVisibility() != 8) {
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams2.f413a && (infoForChild = infoForChild(childAt2)) != null) {
                    int i22 = ((int) (infoForChild.e * i20)) + paddingLeft;
                    if (layoutParams2.d) {
                        layoutParams2.d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (layoutParams2.c * i20), 1073741824), View.MeasureSpec.makeMeasureSpec((i11 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i22, paddingTop, childAt2.getMeasuredWidth() + i22, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.mTopPageBounds = paddingTop;
        this.mBottomPageBounds = i11 - paddingBottom;
        this.mDecorChildCount = i12;
        if (this.mFirstLayout) {
            scrollToItem(this.mCurItem, false, 0, false);
        }
        this.mFirstLayout = false;
    }

    @Override // android.view.View
    public void computeScroll() {
        this.mIsScrollStarted = true;
        if (!this.mScroller.isFinished() && this.mScroller.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
                if (!pageScrolled(currX)) {
                    this.mScroller.abortAnimation();
                    scrollTo(0, currY);
                }
            }
            ai.c(this);
            return;
        }
        completeScroll(true);
    }

    private boolean pageScrolled(int i) {
        if (this.mItems.size() == 0) {
            if (this.mFirstLayout) {
                return false;
            }
            this.mCalledSuper = false;
            onPageScrolled(0, BitmapDescriptorFactory.HUE_RED, 0);
            if (this.mCalledSuper) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        b infoForCurrentScrollPosition = infoForCurrentScrollPosition();
        int clientWidth = getClientWidth();
        int i2 = this.mPageMargin + clientWidth;
        float f2 = this.mPageMargin / clientWidth;
        int i3 = infoForCurrentScrollPosition.b;
        float f3 = ((i / clientWidth) - infoForCurrentScrollPosition.e) / (infoForCurrentScrollPosition.d + f2);
        this.mCalledSuper = false;
        onPageScrolled(i3, f3, (int) (i2 * f3));
        if (!this.mCalledSuper) {
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        return true;
    }

    protected void onPageScrolled(int i, float f2, int i2) {
        int measuredWidth;
        int i3;
        int i4;
        if (this.mDecorChildCount > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            int i5 = 0;
            while (i5 < childCount) {
                View childAt = getChildAt(i5);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (!layoutParams.f413a) {
                    int i6 = paddingRight;
                    i3 = paddingLeft;
                    i4 = i6;
                } else {
                    switch (layoutParams.b & 7) {
                        case 1:
                            measuredWidth = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            int i7 = paddingRight;
                            i3 = paddingLeft;
                            i4 = i7;
                            break;
                        case 2:
                        case 4:
                        default:
                            measuredWidth = paddingLeft;
                            int i8 = paddingRight;
                            i3 = paddingLeft;
                            i4 = i8;
                            break;
                        case 3:
                            int width2 = childAt.getWidth() + paddingLeft;
                            int i9 = paddingLeft;
                            i4 = paddingRight;
                            i3 = width2;
                            measuredWidth = i9;
                            break;
                        case 5:
                            measuredWidth = (width - paddingRight) - childAt.getMeasuredWidth();
                            int measuredWidth2 = paddingRight + childAt.getMeasuredWidth();
                            i3 = paddingLeft;
                            i4 = measuredWidth2;
                            break;
                    }
                    int left = (measuredWidth + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                }
                i5++;
                int i10 = i4;
                paddingLeft = i3;
                paddingRight = i10;
            }
        }
        dispatchOnPageScrolled(i, f2, i2);
        if (this.mPageTransformer != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i11 = 0; i11 < childCount2; i11++) {
                View childAt2 = getChildAt(i11);
                if (!((LayoutParams) childAt2.getLayoutParams()).f413a) {
                    this.mPageTransformer.a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.mCalledSuper = true;
    }

    private void dispatchOnPageScrolled(int i, float f2, int i2) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.a(i, f2, i2);
        }
        if (this.mOnPageChangeListeners != null) {
            int size = this.mOnPageChangeListeners.size();
            for (int i3 = 0; i3 < size; i3++) {
                e eVar = this.mOnPageChangeListeners.get(i3);
                if (eVar != null) {
                    eVar.a(i, f2, i2);
                }
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.a(i, f2, i2);
        }
    }

    private void dispatchOnPageSelected(int i) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.b(i);
        }
        if (this.mOnPageChangeListeners != null) {
            int size = this.mOnPageChangeListeners.size();
            for (int i2 = 0; i2 < size; i2++) {
                e eVar = this.mOnPageChangeListeners.get(i2);
                if (eVar != null) {
                    eVar.b(i);
                }
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.b(i);
        }
    }

    private void dispatchOnScrollStateChanged(int i) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.a(i);
        }
        if (this.mOnPageChangeListeners != null) {
            int size = this.mOnPageChangeListeners.size();
            for (int i2 = 0; i2 < size; i2++) {
                e eVar = this.mOnPageChangeListeners.get(i2);
                if (eVar != null) {
                    eVar.a(i);
                }
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.a(i);
        }
    }

    private void completeScroll(boolean z) {
        boolean z2 = this.mScrollState == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.mScroller.isFinished()) {
                this.mScroller.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.mScroller.getCurrX();
                int currY = this.mScroller.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        pageScrolled(currX);
                    }
                }
            }
        }
        this.mPopulatePending = false;
        boolean z3 = z2;
        for (int i = 0; i < this.mItems.size(); i++) {
            b bVar = this.mItems.get(i);
            if (bVar.c) {
                bVar.c = false;
                z3 = true;
            }
        }
        if (z3) {
            if (z) {
                ai.a(this, this.mEndScrollRunnable);
            } else {
                this.mEndScrollRunnable.run();
            }
        }
    }

    private boolean isGutterDrag(float f2, float f3) {
        return (f2 < ((float) this.mGutterSize) && f3 > BitmapDescriptorFactory.HUE_RED) || (f2 > ((float) (getWidth() - this.mGutterSize)) && f3 < BitmapDescriptorFactory.HUE_RED);
    }

    private void enableLayers(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ai.a(getChildAt(i), z ? this.mPageTransformerLayerType : 0, (Paint) null);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            resetTouch();
            return false;
        }
        if (action != 0) {
            if (this.mIsBeingDragged) {
                return true;
            }
            if (this.mIsUnableToDrag) {
                return false;
            }
        }
        switch (action) {
            case 0:
                float x = motionEvent.getX();
                this.mInitialMotionX = x;
                this.mLastMotionX = x;
                float y = motionEvent.getY();
                this.mInitialMotionY = y;
                this.mLastMotionY = y;
                this.mActivePointerId = motionEvent.getPointerId(0);
                this.mIsUnableToDrag = false;
                this.mIsScrollStarted = true;
                this.mScroller.computeScrollOffset();
                if (this.mScrollState == 2 && Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) > this.mCloseEnough) {
                    this.mScroller.abortAnimation();
                    this.mPopulatePending = false;
                    populate();
                    this.mIsBeingDragged = true;
                    requestParentDisallowInterceptTouchEvent(true);
                    setScrollState(1);
                    break;
                } else {
                    completeScroll(false);
                    this.mIsBeingDragged = false;
                    break;
                }
            case 2:
                int i = this.mActivePointerId;
                if (i != -1) {
                    int findPointerIndex = motionEvent.findPointerIndex(i);
                    float x2 = motionEvent.getX(findPointerIndex);
                    float f2 = x2 - this.mLastMotionX;
                    float abs = Math.abs(f2);
                    float y2 = motionEvent.getY(findPointerIndex);
                    float abs2 = Math.abs(y2 - this.mInitialMotionY);
                    if (f2 != BitmapDescriptorFactory.HUE_RED && !isGutterDrag(this.mLastMotionX, f2) && canScroll(this, false, (int) f2, (int) x2, (int) y2)) {
                        this.mLastMotionX = x2;
                        this.mLastMotionY = y2;
                        this.mIsUnableToDrag = true;
                        return false;
                    }
                    if (abs > this.mTouchSlop && 0.5f * abs > abs2) {
                        this.mIsBeingDragged = true;
                        requestParentDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                        this.mLastMotionX = f2 > BitmapDescriptorFactory.HUE_RED ? this.mInitialMotionX + this.mTouchSlop : this.mInitialMotionX - this.mTouchSlop;
                        this.mLastMotionY = y2;
                        setScrollingCacheEnabled(true);
                    } else if (abs2 > this.mTouchSlop) {
                        this.mIsUnableToDrag = true;
                    }
                    if (this.mIsBeingDragged && performDrag(x2)) {
                        ai.c(this);
                        break;
                    }
                }
                break;
            case 6:
                onSecondaryPointerUp(motionEvent);
                break;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        return this.mIsBeingDragged;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (this.mFakeDragging) {
            return true;
        }
        if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            return false;
        }
        if (this.mAdapter == null || this.mAdapter.getCount() == 0) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.mScroller.abortAnimation();
                this.mPopulatePending = false;
                populate();
                float x = motionEvent.getX();
                this.mInitialMotionX = x;
                this.mLastMotionX = x;
                float y = motionEvent.getY();
                this.mInitialMotionY = y;
                this.mLastMotionY = y;
                this.mActivePointerId = motionEvent.getPointerId(0);
                break;
            case 1:
                if (this.mIsBeingDragged) {
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                    int a2 = (int) ag.a(velocityTracker, this.mActivePointerId);
                    this.mPopulatePending = true;
                    int clientWidth = getClientWidth();
                    int scrollX = getScrollX();
                    b infoForCurrentScrollPosition = infoForCurrentScrollPosition();
                    setCurrentItemInternal(determineTargetPage(infoForCurrentScrollPosition.b, ((scrollX / clientWidth) - infoForCurrentScrollPosition.e) / (infoForCurrentScrollPosition.d + (this.mPageMargin / clientWidth)), a2, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)) - this.mInitialMotionX)), true, true, a2);
                    z = resetTouch();
                    break;
                }
                break;
            case 2:
                if (!this.mIsBeingDragged) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                    if (findPointerIndex == -1) {
                        z = resetTouch();
                        break;
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x2 - this.mLastMotionX);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y2 - this.mLastMotionY);
                        if (abs > this.mTouchSlop && abs > abs2) {
                            this.mIsBeingDragged = true;
                            requestParentDisallowInterceptTouchEvent(true);
                            this.mLastMotionX = x2 - this.mInitialMotionX > BitmapDescriptorFactory.HUE_RED ? this.mInitialMotionX + this.mTouchSlop : this.mInitialMotionX - this.mTouchSlop;
                            this.mLastMotionY = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.mIsBeingDragged) {
                    z = false | performDrag(motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)));
                    break;
                }
                break;
            case 3:
                if (this.mIsBeingDragged) {
                    scrollToItem(this.mCurItem, true, 0, false);
                    z = resetTouch();
                    break;
                }
                break;
            case 5:
                int b2 = t.b(motionEvent);
                this.mLastMotionX = motionEvent.getX(b2);
                this.mActivePointerId = motionEvent.getPointerId(b2);
                break;
            case 6:
                onSecondaryPointerUp(motionEvent);
                this.mLastMotionX = motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId));
                break;
        }
        if (z) {
            ai.c(this);
        }
        return true;
    }

    private boolean resetTouch() {
        this.mActivePointerId = -1;
        endDrag();
        return this.mLeftEdge.c() | this.mRightEdge.c();
    }

    private void requestParentDisallowInterceptTouchEvent(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private boolean performDrag(float f2) {
        boolean z;
        float f3;
        boolean z2 = true;
        boolean z3 = false;
        this.mLastMotionX = f2;
        float scrollX = getScrollX() + (this.mLastMotionX - f2);
        int clientWidth = getClientWidth();
        float f4 = clientWidth * this.mFirstOffset;
        float f5 = clientWidth * this.mLastOffset;
        b bVar = this.mItems.get(0);
        b bVar2 = this.mItems.get(this.mItems.size() - 1);
        if (bVar.b != 0) {
            f4 = bVar.e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (bVar2.b != this.mAdapter.getCount() - 1) {
            f3 = bVar2.e * clientWidth;
            z2 = false;
        } else {
            f3 = f5;
        }
        if (scrollX < f4) {
            if (z) {
                z3 = this.mLeftEdge.a(Math.abs(f4 - scrollX) / clientWidth);
            }
        } else if (scrollX > f3) {
            if (z2) {
                z3 = this.mRightEdge.a(Math.abs(scrollX - f3) / clientWidth);
            }
            f4 = f3;
        } else {
            f4 = scrollX;
        }
        this.mLastMotionX += f4 - ((int) f4);
        scrollTo((int) f4, getScrollY());
        pageScrolled((int) f4);
        return z3;
    }

    private b infoForCurrentScrollPosition() {
        int i;
        b bVar;
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.mPageMargin / clientWidth : 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        int i2 = -1;
        int i3 = 0;
        boolean z = true;
        b bVar2 = null;
        while (i3 < this.mItems.size()) {
            b bVar3 = this.mItems.get(i3);
            if (z || bVar3.b == i2 + 1) {
                i = i3;
                bVar = bVar3;
            } else {
                b bVar4 = this.mTempItem;
                bVar4.e = f3 + f4 + f2;
                bVar4.b = i2 + 1;
                bVar4.d = this.mAdapter.getPageWidth(bVar4.b);
                i = i3 - 1;
                bVar = bVar4;
            }
            float f5 = bVar.e;
            float f6 = bVar.d + f5 + f2;
            if (z || scrollX >= f5) {
                if (scrollX < f6 || i == this.mItems.size() - 1) {
                    return bVar;
                }
                f4 = f5;
                i2 = bVar.b;
                z = false;
                f3 = bVar.d;
                bVar2 = bVar;
                i3 = i + 1;
            } else {
                return bVar2;
            }
        }
        return bVar2;
    }

    private int determineTargetPage(int i, float f2, int i2, int i3) {
        if (Math.abs(i3) > this.mFlingDistance && Math.abs(i2) > this.mMinimumVelocity) {
            if (i2 <= 0) {
                i++;
            }
        } else {
            i += (int) ((i >= this.mCurItem ? 0.4f : 0.6f) + f2);
        }
        if (this.mItems.size() > 0) {
            return Math.max(this.mItems.get(0).b, Math.min(i, this.mItems.get(this.mItems.size() - 1).b));
        }
        return i;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        boolean z = false;
        int overScrollMode = getOverScrollMode();
        if (overScrollMode == 0 || (overScrollMode == 1 && this.mAdapter != null && this.mAdapter.getCount() > 1)) {
            if (!this.mLeftEdge.a()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.mFirstOffset * width);
                this.mLeftEdge.a(height, width);
                z = false | this.mLeftEdge.a(canvas);
                canvas.restoreToCount(save);
            }
            if (!this.mRightEdge.a()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.mLastOffset + 1.0f)) * width2);
                this.mRightEdge.a(height2, width2);
                z |= this.mRightEdge.a(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.mLeftEdge.b();
            this.mRightEdge.b();
        }
        if (z) {
            ai.c(this);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f2;
        super.onDraw(canvas);
        if (this.mPageMargin > 0 && this.mMarginDrawable != null && this.mItems.size() > 0 && this.mAdapter != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float f3 = this.mPageMargin / width;
            b bVar = this.mItems.get(0);
            float f4 = bVar.e;
            int size = this.mItems.size();
            int i = bVar.b;
            int i2 = this.mItems.get(size - 1).b;
            int i3 = 0;
            for (int i4 = i; i4 < i2; i4++) {
                while (i4 > bVar.b && i3 < size) {
                    i3++;
                    bVar = this.mItems.get(i3);
                }
                if (i4 == bVar.b) {
                    f2 = (bVar.e + bVar.d) * width;
                    f4 = bVar.e + bVar.d + f3;
                } else {
                    float pageWidth = this.mAdapter.getPageWidth(i4);
                    f2 = (f4 + pageWidth) * width;
                    f4 += pageWidth + f3;
                }
                if (this.mPageMargin + f2 > scrollX) {
                    this.mMarginDrawable.setBounds(Math.round(f2), this.mTopPageBounds, Math.round(this.mPageMargin + f2), this.mBottomPageBounds);
                    this.mMarginDrawable.draw(canvas);
                }
                if (f2 > scrollX + width) {
                    return;
                }
            }
        }
    }

    public boolean beginFakeDrag() {
        if (this.mIsBeingDragged) {
            return false;
        }
        this.mFakeDragging = true;
        setScrollState(1);
        this.mLastMotionX = BitmapDescriptorFactory.HUE_RED;
        this.mInitialMotionX = BitmapDescriptorFactory.HUE_RED;
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            this.mVelocityTracker.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
        this.mVelocityTracker.addMovement(obtain);
        obtain.recycle();
        this.mFakeDragBeginTime = uptimeMillis;
        return true;
    }

    public void endFakeDrag() {
        if (!this.mFakeDragging) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.mAdapter != null) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
            int a2 = (int) ag.a(velocityTracker, this.mActivePointerId);
            this.mPopulatePending = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            b infoForCurrentScrollPosition = infoForCurrentScrollPosition();
            setCurrentItemInternal(determineTargetPage(infoForCurrentScrollPosition.b, ((scrollX / clientWidth) - infoForCurrentScrollPosition.e) / infoForCurrentScrollPosition.d, a2, (int) (this.mLastMotionX - this.mInitialMotionX)), true, true, a2);
        }
        endDrag();
        this.mFakeDragging = false;
    }

    public void fakeDragBy(float f2) {
        if (!this.mFakeDragging) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.mAdapter != null) {
            this.mLastMotionX += f2;
            float scrollX = getScrollX() - f2;
            int clientWidth = getClientWidth();
            float f3 = clientWidth * this.mFirstOffset;
            float f4 = clientWidth * this.mLastOffset;
            b bVar = this.mItems.get(0);
            b bVar2 = this.mItems.get(this.mItems.size() - 1);
            float f5 = bVar.b != 0 ? bVar.e * clientWidth : f3;
            float f6 = bVar2.b != this.mAdapter.getCount() + (-1) ? bVar2.e * clientWidth : f4;
            if (scrollX >= f5) {
                f5 = scrollX > f6 ? f6 : scrollX;
            }
            this.mLastMotionX += f5 - ((int) f5);
            scrollTo((int) f5, getScrollY());
            pageScrolled((int) f5);
            MotionEvent obtain = MotionEvent.obtain(this.mFakeDragBeginTime, SystemClock.uptimeMillis(), 2, this.mLastMotionX, BitmapDescriptorFactory.HUE_RED, 0);
            this.mVelocityTracker.addMovement(obtain);
            obtain.recycle();
        }
    }

    public boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int b2 = t.b(motionEvent);
        if (motionEvent.getPointerId(b2) == this.mActivePointerId) {
            int i = b2 == 0 ? 1 : 0;
            this.mLastMotionX = motionEvent.getX(i);
            this.mActivePointerId = motionEvent.getPointerId(i);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        this.mIsUnableToDrag = false;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.mScrollingCacheEnabled != z) {
            this.mScrollingCacheEnabled = z;
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        boolean z = true;
        if (this.mAdapter == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            if (scrollX <= ((int) (clientWidth * this.mFirstOffset))) {
                z = false;
            }
            return z;
        } else if (i <= 0) {
            return false;
        } else {
            if (scrollX >= ((int) (clientWidth * this.mLastOffset))) {
                z = false;
            }
            return z;
        }
    }

    protected boolean canScroll(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i2 + scrollX >= childAt.getLeft() && i2 + scrollX < childAt.getRight() && i3 + scrollY >= childAt.getTop() && i3 + scrollY < childAt.getBottom() && canScroll(childAt, true, i, (i2 + scrollX) - childAt.getLeft(), (i3 + scrollY) - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && ai.a(view, -i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    public boolean executeKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case 21:
                return arrowScroll(17);
            case 22:
                return arrowScroll(66);
            case 61:
                if (Build.VERSION.SDK_INT < 11) {
                    return false;
                }
                if (android.support.v4.view.h.a(keyEvent)) {
                    return arrowScroll(2);
                }
                if (!android.support.v4.view.h.a(keyEvent, 1)) {
                    return false;
                }
                return arrowScroll(1);
            default:
                return false;
        }
    }

    public boolean arrowScroll(int i) {
        View view;
        boolean z;
        boolean pageLeft;
        View findFocus = findFocus();
        if (findFocus == this) {
            view = null;
        } else {
            if (findFocus != null) {
                ViewParent parent = findFocus.getParent();
                while (true) {
                    if (!(parent instanceof ViewGroup)) {
                        z = false;
                        break;
                    } else if (parent == this) {
                        z = true;
                        break;
                    } else {
                        parent = parent.getParent();
                    }
                }
                if (!z) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(findFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = findFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        sb.append(" => ").append(parent2.getClass().getSimpleName());
                    }
                    Log.e(TAG, "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
                    view = null;
                }
            }
            view = findFocus;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        if (findNextFocus != null && findNextFocus != view) {
            if (i == 17) {
                int i2 = getChildRectInPagerCoordinates(this.mTempRect, findNextFocus).left;
                int i3 = getChildRectInPagerCoordinates(this.mTempRect, view).left;
                if (view != null && i2 >= i3) {
                    pageLeft = pageLeft();
                } else {
                    pageLeft = findNextFocus.requestFocus();
                }
            } else {
                if (i == 66) {
                    int i4 = getChildRectInPagerCoordinates(this.mTempRect, findNextFocus).left;
                    int i5 = getChildRectInPagerCoordinates(this.mTempRect, view).left;
                    if (view != null && i4 <= i5) {
                        pageLeft = pageRight();
                    } else {
                        pageLeft = findNextFocus.requestFocus();
                    }
                }
                pageLeft = false;
            }
        } else if (i == 17 || i == 1) {
            pageLeft = pageLeft();
        } else {
            if (i == 66 || i == 2) {
                pageLeft = pageRight();
            }
            pageLeft = false;
        }
        if (pageLeft) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return pageLeft;
    }

    private Rect getChildRectInPagerCoordinates(Rect rect, View view) {
        Rect rect2 = rect == null ? new Rect() : rect;
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    boolean pageLeft() {
        if (this.mCurItem > 0) {
            setCurrentItem(this.mCurItem - 1, true);
            return true;
        }
        return false;
    }

    boolean pageRight() {
        if (this.mAdapter == null || this.mCurItem >= this.mAdapter.getCount() - 1) {
            return false;
        }
        setCurrentItem(this.mCurItem + 1, true);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        b infoForChild;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.b == this.mCurItem) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i2 & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) && arrayList != null) {
                arrayList.add(this);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        b infoForChild;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.b == this.mCurItem) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        b infoForChild;
        int i3 = -1;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = 1;
            i2 = 0;
        } else {
            i2 = childCount - 1;
            childCount = -1;
        }
        while (i2 != childCount) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.b == this.mCurItem && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i3;
        }
        return false;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        b infoForChild;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.b == this.mCurItem && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends android.support.v4.view.a {
        c() {
        }

        @Override // android.support.v4.view.a
        public void a(View view, AccessibilityEvent accessibilityEvent) {
            super.a(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            android.support.v4.view.a.o a2 = android.support.v4.view.a.a.a(accessibilityEvent);
            a2.a(b());
            if (accessibilityEvent.getEventType() == 4096 && ViewPager.this.mAdapter != null) {
                a2.a(ViewPager.this.mAdapter.getCount());
                a2.b(ViewPager.this.mCurItem);
                a2.c(ViewPager.this.mCurItem);
            }
        }

        @Override // android.support.v4.view.a
        public void a(View view, android.support.v4.view.a.c cVar) {
            super.a(view, cVar);
            cVar.b((CharSequence) ViewPager.class.getName());
            cVar.k(b());
            if (ViewPager.this.canScrollHorizontally(1)) {
                cVar.a(4096);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                cVar.a(Utility.DEFAULT_STREAM_BUFFER_SIZE);
            }
        }

        @Override // android.support.v4.view.a
        public boolean a(View view, int i, Bundle bundle) {
            if (super.a(view, i, bundle)) {
                return true;
            }
            switch (i) {
                case 4096:
                    if (!ViewPager.this.canScrollHorizontally(1)) {
                        return false;
                    }
                    ViewPager.this.setCurrentItem(ViewPager.this.mCurItem + 1);
                    return true;
                case Utility.DEFAULT_STREAM_BUFFER_SIZE /* 8192 */:
                    if (!ViewPager.this.canScrollHorizontally(-1)) {
                        return false;
                    }
                    ViewPager.this.setCurrentItem(ViewPager.this.mCurItem - 1);
                    return true;
                default:
                    return false;
            }
        }

        private boolean b() {
            return ViewPager.this.mAdapter != null && ViewPager.this.mAdapter.getCount() > 1;
        }
    }

    /* loaded from: classes.dex */
    private class g extends DataSetObserver {
        g() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.dataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.dataSetChanged();
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public boolean f413a;
        public int b;
        float c;
        boolean d;
        int e;
        int f;

        public LayoutParams() {
            super(-1, -1);
            this.c = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.c = BitmapDescriptorFactory.HUE_RED;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.LAYOUT_ATTRS);
            this.b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class h implements Comparator<View> {
        h() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            if (layoutParams.f413a != layoutParams2.f413a) {
                return layoutParams.f413a ? 1 : -1;
            }
            return layoutParams.e - layoutParams2.e;
        }
    }
}
