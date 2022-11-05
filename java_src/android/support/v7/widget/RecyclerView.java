package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.RestrictTo;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.a.c;
import android.support.v7.recyclerview.R;
import android.support.v7.widget.aa;
import android.support.v7.widget.ay;
import android.support.v7.widget.az;
import android.support.v7.widget.e;
import android.support.v7.widget.s;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import com.facebook.internal.Utility;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.vision.barcode.Barcode;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements android.support.v4.view.ae, android.support.v4.view.v {
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
    private static final boolean ALLOW_THREAD_GAP_WORK;
    static final boolean DEBUG = false;
    static final boolean DISPATCH_TEMP_DETACH = false;
    private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION;
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
    static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final boolean IGNORE_DETACHED_FOCUSED_CHILD;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final int MAX_SCROLL_DURATION = 2000;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    static final boolean POST_UPDATES_ON_ANIMATION;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    static final Interpolator sQuinticInterpolator;
    ah mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    private k mActiveOnItemTouchListener;
    a mAdapter;
    android.support.v7.widget.e mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private android.support.v4.widget.k mBottomGlow;
    private d mChildDrawingOrderCallback;
    android.support.v7.widget.s mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    private int mDispatchScrollCounter;
    private int mEatRequestLayout;
    private int mEatenAccessibilityChangeFlags;
    boolean mFirstLayoutComplete;
    aa mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    boolean mIsAttached;
    e mItemAnimator;
    private e.b mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<g> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastTouchX;
    private int mLastTouchY;
    h mLayout;
    boolean mLayoutFrozen;
    private int mLayoutOrScrollCounter;
    boolean mLayoutRequestEaten;
    private android.support.v4.widget.k mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final p mObserver;
    private List<i> mOnChildAttachStateListeners;
    private j mOnFlingListener;
    private final ArrayList<k> mOnItemTouchListeners;
    final List<u> mPendingAccessibilityImportanceChange;
    private SavedState mPendingSavedState;
    boolean mPostedAnimatorRunner;
    aa.a mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final n mRecycler;
    o mRecyclerListener;
    private android.support.v4.widget.k mRightGlow;
    private final int[] mScrollConsumed;
    private float mScrollFactor;
    private l mScrollListener;
    private List<l> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private android.support.v4.view.w mScrollingChildHelper;
    final r mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private android.support.v4.widget.k mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final t mViewFlinger;
    private final az.b mViewInfoProcessCallback;
    final az mViewInfoStore;
    private static final int[] NESTED_SCROLLING_ATTRS = {16843830};
    private static final int[] CLIP_TO_PADDING_ATTR = {16842987};

    /* loaded from: classes.dex */
    public interface d {
        int a(int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface i {
        void a(View view);

        void b(View view);
    }

    /* loaded from: classes.dex */
    public static abstract class j {
        public abstract boolean a(int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface k {
        void a(boolean z);

        boolean a(RecyclerView recyclerView, MotionEvent motionEvent);

        void b(RecyclerView recyclerView, MotionEvent motionEvent);
    }

    /* loaded from: classes.dex */
    public interface o {
        void a(u uVar);
    }

    /* loaded from: classes.dex */
    public static abstract class s {
        public abstract View a(n nVar, int i, int i2);
    }

    static {
        FORCE_INVALIDATE_DISPLAY_LIST = Build.VERSION.SDK_INT == 18 || Build.VERSION.SDK_INT == 19 || Build.VERSION.SDK_INT == 20;
        ALLOW_SIZE_IN_UNSPECIFIED_SPEC = Build.VERSION.SDK_INT >= 23;
        POST_UPDATES_ON_ANIMATION = Build.VERSION.SDK_INT >= 16;
        ALLOW_THREAD_GAP_WORK = Build.VERSION.SDK_INT >= 21;
        FORCE_ABS_FOCUS_SEARCH_DIRECTION = Build.VERSION.SDK_INT <= 15;
        IGNORE_DETACHED_FOCUSED_CHILD = Build.VERSION.SDK_INT <= 15;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
        sQuinticInterpolator = new Interpolator() { // from class: android.support.v7.widget.RecyclerView.3
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f2) {
                float f3 = f2 - 1.0f;
                return (f3 * f3 * f3 * f3 * f3) + 1.0f;
            }
        };
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        boolean z = true;
        this.mObserver = new p();
        this.mRecycler = new n();
        this.mViewInfoStore = new az();
        this.mUpdateChildViewsRunnable = new Runnable() { // from class: android.support.v7.widget.RecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                if (RecyclerView.this.mFirstLayoutComplete && !RecyclerView.this.isLayoutRequested()) {
                    if (!RecyclerView.this.mIsAttached) {
                        RecyclerView.this.requestLayout();
                    } else if (RecyclerView.this.mLayoutFrozen) {
                        RecyclerView.this.mLayoutRequestEaten = true;
                    } else {
                        RecyclerView.this.consumePendingUpdateOperations();
                    }
                }
            }
        };
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mItemDecorations = new ArrayList<>();
        this.mOnItemTouchListeners = new ArrayList<>();
        this.mEatRequestLayout = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mItemAnimator = new v();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new t();
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new aa.a() : null;
        this.mState = new r();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new f();
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mScrollConsumed = new int[2];
        this.mNestedOffsets = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new Runnable() { // from class: android.support.v7.widget.RecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                if (RecyclerView.this.mItemAnimator != null) {
                    RecyclerView.this.mItemAnimator.a();
                }
                RecyclerView.this.mPostedAnimatorRunner = false;
            }
        };
        this.mViewInfoProcessCallback = new az.b() { // from class: android.support.v7.widget.RecyclerView.4
            @Override // android.support.v7.widget.az.b
            public void a(u uVar, e.c cVar, e.c cVar2) {
                RecyclerView.this.mRecycler.c(uVar);
                RecyclerView.this.animateDisappearance(uVar, cVar, cVar2);
            }

            @Override // android.support.v7.widget.az.b
            public void b(u uVar, e.c cVar, e.c cVar2) {
                RecyclerView.this.animateAppearance(uVar, cVar, cVar2);
            }

            @Override // android.support.v7.widget.az.b
            public void c(u uVar, e.c cVar, e.c cVar2) {
                uVar.setIsRecyclable(false);
                if (RecyclerView.this.mDataSetHasChangedAfterLayout) {
                    if (RecyclerView.this.mItemAnimator.a(uVar, uVar, cVar, cVar2)) {
                        RecyclerView.this.postAnimationRunner();
                    }
                } else if (RecyclerView.this.mItemAnimator.c(uVar, cVar, cVar2)) {
                    RecyclerView.this.postAnimationRunner();
                }
            }

            @Override // android.support.v7.widget.az.b
            public void a(u uVar) {
                RecyclerView.this.mLayout.removeAndRecycleView(uVar.itemView, RecyclerView.this.mRecycler);
            }
        };
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, CLIP_TO_PADDING_ATTR, i2, 0);
            this.mClipToPadding = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        } else {
            this.mClipToPadding = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.a(this.mItemAnimatorListener);
        initAdapterManager();
        initChildrenHelper();
        if (android.support.v4.view.ai.d(this) == 0) {
            android.support.v4.view.ai.c((View) this, 1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new ah(this));
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.RecyclerView, i2, 0);
            String string = obtainStyledAttributes2.getString(R.styleable.RecyclerView_layoutManager);
            if (obtainStyledAttributes2.getInt(R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
                setDescendantFocusability(262144);
            }
            obtainStyledAttributes2.recycle();
            createLayoutManager(context, string, attributeSet, i2, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, NESTED_SCROLLING_ATTRS, i2, 0);
                z = obtainStyledAttributes3.getBoolean(0, true);
                obtainStyledAttributes3.recycle();
            }
        } else {
            setDescendantFocusability(262144);
        }
        setNestedScrollingEnabled(z);
    }

    public ah getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void setAccessibilityDelegateCompat(ah ahVar) {
        this.mAccessibilityDelegate = ahVar;
        android.support.v4.view.ai.a(this, this.mAccessibilityDelegate);
    }

    private void createLayoutManager(Context context, String str, AttributeSet attributeSet, int i2, int i3) {
        ClassLoader classLoader;
        Constructor constructor;
        Object[] objArr;
        if (str != null) {
            String trim = str.trim();
            if (trim.length() != 0) {
                String fullClassName = getFullClassName(context, trim);
                try {
                    if (isInEditMode()) {
                        classLoader = getClass().getClassLoader();
                    } else {
                        classLoader = context.getClassLoader();
                    }
                    Class<? extends U> asSubclass = classLoader.loadClass(fullClassName).asSubclass(h.class);
                    try {
                        Constructor constructor2 = asSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(i2), Integer.valueOf(i3)};
                        constructor = constructor2;
                    } catch (NoSuchMethodException e2) {
                        try {
                            constructor = asSubclass.getConstructor(new Class[0]);
                            objArr = null;
                        } catch (NoSuchMethodException e3) {
                            e3.initCause(e2);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + fullClassName, e3);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((h) constructor.newInstance(objArr));
                } catch (ClassCastException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + fullClassName, e4);
                } catch (ClassNotFoundException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + fullClassName, e5);
                } catch (IllegalAccessException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + fullClassName, e6);
                } catch (InstantiationException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e7);
                } catch (InvocationTargetException e8) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e8);
                }
            }
        }
    }

    private String getFullClassName(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        return !str.contains(".") ? RecyclerView.class.getPackage().getName() + '.' + str : str;
    }

    private void initChildrenHelper() {
        this.mChildHelper = new android.support.v7.widget.s(new s.b() { // from class: android.support.v7.widget.RecyclerView.5
            @Override // android.support.v7.widget.s.b
            public int a() {
                return RecyclerView.this.getChildCount();
            }

            @Override // android.support.v7.widget.s.b
            public void a(View view, int i2) {
                RecyclerView.this.addView(view, i2);
                RecyclerView.this.dispatchChildAttached(view);
            }

            @Override // android.support.v7.widget.s.b
            public int a(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            @Override // android.support.v7.widget.s.b
            public void a(int i2) {
                View childAt = RecyclerView.this.getChildAt(i2);
                if (childAt != null) {
                    RecyclerView.this.dispatchChildDetached(childAt);
                }
                RecyclerView.this.removeViewAt(i2);
            }

            @Override // android.support.v7.widget.s.b
            public View b(int i2) {
                return RecyclerView.this.getChildAt(i2);
            }

            @Override // android.support.v7.widget.s.b
            public void b() {
                int a2 = a();
                for (int i2 = 0; i2 < a2; i2++) {
                    RecyclerView.this.dispatchChildDetached(b(i2));
                }
                RecyclerView.this.removeAllViews();
            }

            @Override // android.support.v7.widget.s.b
            public u b(View view) {
                return RecyclerView.getChildViewHolderInt(view);
            }

            @Override // android.support.v7.widget.s.b
            public void a(View view, int i2, ViewGroup.LayoutParams layoutParams) {
                u childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt != null) {
                    if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                        throw new IllegalArgumentException("Called attach on a child which is not detached: " + childViewHolderInt);
                    }
                    childViewHolderInt.clearTmpDetachFlag();
                }
                RecyclerView.this.attachViewToParent(view, i2, layoutParams);
            }

            @Override // android.support.v7.widget.s.b
            public void c(int i2) {
                u childViewHolderInt;
                View b2 = b(i2);
                if (b2 != null && (childViewHolderInt = RecyclerView.getChildViewHolderInt(b2)) != null) {
                    if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                        throw new IllegalArgumentException("called detach on an already detached child " + childViewHolderInt);
                    }
                    childViewHolderInt.addFlags(256);
                }
                RecyclerView.this.detachViewFromParent(i2);
            }

            @Override // android.support.v7.widget.s.b
            public void c(View view) {
                u childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt == null) {
                    return;
                }
                childViewHolderInt.onEnteredHiddenState(RecyclerView.this);
            }

            @Override // android.support.v7.widget.s.b
            public void d(View view) {
                u childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt == null) {
                    return;
                }
                childViewHolderInt.onLeftHiddenState(RecyclerView.this);
            }
        });
    }

    void initAdapterManager() {
        this.mAdapterHelper = new android.support.v7.widget.e(new e.a() { // from class: android.support.v7.widget.RecyclerView.6
            @Override // android.support.v7.widget.e.a
            public u a(int i2) {
                u findViewHolderForPosition = RecyclerView.this.findViewHolderForPosition(i2, true);
                if (findViewHolderForPosition != null && !RecyclerView.this.mChildHelper.c(findViewHolderForPosition.itemView)) {
                    return findViewHolderForPosition;
                }
                return null;
            }

            @Override // android.support.v7.widget.e.a
            public void a(int i2, int i3) {
                RecyclerView.this.offsetPositionRecordsForRemove(i2, i3, true);
                RecyclerView.this.mItemsAddedOrRemoved = true;
                RecyclerView.this.mState.b += i3;
            }

            @Override // android.support.v7.widget.e.a
            public void b(int i2, int i3) {
                RecyclerView.this.offsetPositionRecordsForRemove(i2, i3, false);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            @Override // android.support.v7.widget.e.a
            public void a(int i2, int i3, Object obj) {
                RecyclerView.this.viewRangeUpdate(i2, i3, obj);
                RecyclerView.this.mItemsChanged = true;
            }

            @Override // android.support.v7.widget.e.a
            public void a(e.b bVar) {
                c(bVar);
            }

            void c(e.b bVar) {
                switch (bVar.f898a) {
                    case 1:
                        RecyclerView.this.mLayout.onItemsAdded(RecyclerView.this, bVar.b, bVar.d);
                        return;
                    case 2:
                        RecyclerView.this.mLayout.onItemsRemoved(RecyclerView.this, bVar.b, bVar.d);
                        return;
                    case 3:
                    case 5:
                    case 6:
                    case 7:
                    default:
                        return;
                    case 4:
                        RecyclerView.this.mLayout.onItemsUpdated(RecyclerView.this, bVar.b, bVar.d, bVar.c);
                        return;
                    case 8:
                        RecyclerView.this.mLayout.onItemsMoved(RecyclerView.this, bVar.b, bVar.d, 1);
                        return;
                }
            }

            @Override // android.support.v7.widget.e.a
            public void b(e.b bVar) {
                c(bVar);
            }

            @Override // android.support.v7.widget.e.a
            public void c(int i2, int i3) {
                RecyclerView.this.offsetPositionRecordsForInsert(i2, i3);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            @Override // android.support.v7.widget.e.a
            public void d(int i2, int i3) {
                RecyclerView.this.offsetPositionRecordsForMove(i2, i3);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }
        });
    }

    public void setHasFixedSize(boolean z) {
        this.mHasFixedSize = z;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z;
        super.setClipToPadding(z);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        switch (i2) {
            case 0:
                break;
            case 1:
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            default:
                Log.w(TAG, "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
                break;
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    public void swapAdapter(a aVar, boolean z) {
        setLayoutFrozen(false);
        setAdapterInternal(aVar, true, z);
        setDataSetChangedAfterLayout();
        requestLayout();
    }

    public void setAdapter(a aVar) {
        setLayoutFrozen(false);
        setAdapterInternal(aVar, false, true);
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeAndRecycleViews() {
        if (this.mItemAnimator != null) {
            this.mItemAnimator.d();
        }
        if (this.mLayout != null) {
            this.mLayout.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        }
        this.mRecycler.a();
    }

    private void setAdapterInternal(a aVar, boolean z, boolean z2) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!z || z2) {
            removeAndRecycleViews();
        }
        this.mAdapterHelper.a();
        a aVar2 = this.mAdapter;
        this.mAdapter = aVar;
        if (aVar != null) {
            aVar.registerAdapterDataObserver(this.mObserver);
            aVar.onAttachedToRecyclerView(this);
        }
        if (this.mLayout != null) {
            this.mLayout.onAdapterChanged(aVar2, this.mAdapter);
        }
        this.mRecycler.a(aVar2, this.mAdapter, z);
        this.mState.e = true;
        markKnownViewsInvalid();
    }

    public a getAdapter() {
        return this.mAdapter;
    }

    public void setRecyclerListener(o oVar) {
        this.mRecyclerListener = oVar;
    }

    @Override // android.view.View
    public int getBaseline() {
        return this.mLayout != null ? this.mLayout.getBaseline() : super.getBaseline();
    }

    public void addOnChildAttachStateChangeListener(i iVar) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(iVar);
    }

    public void removeOnChildAttachStateChangeListener(i iVar) {
        if (this.mOnChildAttachStateListeners != null) {
            this.mOnChildAttachStateListeners.remove(iVar);
        }
    }

    public void clearOnChildAttachStateChangeListeners() {
        if (this.mOnChildAttachStateListeners != null) {
            this.mOnChildAttachStateListeners.clear();
        }
    }

    public void setLayoutManager(h hVar) {
        if (hVar != this.mLayout) {
            stopScroll();
            if (this.mLayout != null) {
                if (this.mItemAnimator != null) {
                    this.mItemAnimator.d();
                }
                this.mLayout.removeAndRecycleAllViews(this.mRecycler);
                this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
                this.mRecycler.a();
                if (this.mIsAttached) {
                    this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
                }
                this.mLayout.setRecyclerView(null);
                this.mLayout = null;
            } else {
                this.mRecycler.a();
            }
            this.mChildHelper.a();
            this.mLayout = hVar;
            if (hVar != null) {
                if (hVar.mRecyclerView != null) {
                    throw new IllegalArgumentException("LayoutManager " + hVar + " is already attached to a RecyclerView: " + hVar.mRecyclerView);
                }
                this.mLayout.setRecyclerView(this);
                if (this.mIsAttached) {
                    this.mLayout.dispatchAttachedToWindow(this);
                }
            }
            this.mRecycler.b();
            requestLayout();
        }
    }

    public void setOnFlingListener(j jVar) {
        this.mOnFlingListener = jVar;
    }

    public j getOnFlingListener() {
        return this.mOnFlingListener;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.mPendingSavedState != null) {
            savedState.a(this.mPendingSavedState);
        } else if (this.mLayout != null) {
            savedState.f808a = this.mLayout.onSaveInstanceState();
        } else {
            savedState.f808a = null;
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        this.mPendingSavedState = (SavedState) parcelable;
        super.onRestoreInstanceState(this.mPendingSavedState.a());
        if (this.mLayout != null && this.mPendingSavedState.f808a != null) {
            this.mLayout.onRestoreInstanceState(this.mPendingSavedState.f808a);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    private void addAnimatingView(u uVar) {
        View view = uVar.itemView;
        boolean z = view.getParent() == this;
        this.mRecycler.c(getChildViewHolder(view));
        if (uVar.isTmpDetached()) {
            this.mChildHelper.a(view, -1, view.getLayoutParams(), true);
        } else if (!z) {
            this.mChildHelper.a(view, true);
        } else {
            this.mChildHelper.d(view);
        }
    }

    boolean removeAnimatingView(View view) {
        eatRequestLayout();
        boolean f2 = this.mChildHelper.f(view);
        if (f2) {
            u childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.c(childViewHolderInt);
            this.mRecycler.b(childViewHolderInt);
        }
        resumeRequestLayout(!f2);
        return f2;
    }

    public h getLayoutManager() {
        return this.mLayout;
    }

    public m getRecycledViewPool() {
        return this.mRecycler.g();
    }

    public void setRecycledViewPool(m mVar) {
        this.mRecycler.a(mVar);
    }

    public void setViewCacheExtension(s sVar) {
        this.mRecycler.a(sVar);
    }

    public void setItemViewCacheSize(int i2) {
        this.mRecycler.a(i2);
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    void setScrollState(int i2) {
        if (i2 != this.mScrollState) {
            this.mScrollState = i2;
            if (i2 != 2) {
                stopScrollersInternal();
            }
            dispatchOnScrollStateChanged(i2);
        }
    }

    public void addItemDecoration(g gVar, int i2) {
        if (this.mLayout != null) {
            this.mLayout.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            this.mItemDecorations.add(gVar);
        } else {
            this.mItemDecorations.add(i2, gVar);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addItemDecoration(g gVar) {
        addItemDecoration(gVar, -1);
    }

    public void removeItemDecoration(g gVar) {
        if (this.mLayout != null) {
            this.mLayout.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(gVar);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void setChildDrawingOrderCallback(d dVar) {
        if (dVar != this.mChildDrawingOrderCallback) {
            this.mChildDrawingOrderCallback = dVar;
            setChildrenDrawingOrderEnabled(this.mChildDrawingOrderCallback != null);
        }
    }

    @Deprecated
    public void setOnScrollListener(l lVar) {
        this.mScrollListener = lVar;
    }

    public void addOnScrollListener(l lVar) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(lVar);
    }

    public void removeOnScrollListener(l lVar) {
        if (this.mScrollListeners != null) {
            this.mScrollListeners.remove(lVar);
        }
    }

    public void clearOnScrollListeners() {
        if (this.mScrollListeners != null) {
            this.mScrollListeners.clear();
        }
    }

    public void scrollToPosition(int i2) {
        if (!this.mLayoutFrozen) {
            stopScroll();
            if (this.mLayout == null) {
                Log.e(TAG, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
                return;
            }
            this.mLayout.scrollToPosition(i2);
            awakenScrollBars();
        }
    }

    void jumpToPositionForSmoothScroller(int i2) {
        if (this.mLayout != null) {
            this.mLayout.scrollToPosition(i2);
            awakenScrollBars();
        }
    }

    public void smoothScrollToPosition(int i2) {
        if (!this.mLayoutFrozen) {
            if (this.mLayout == null) {
                Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            } else {
                this.mLayout.smoothScrollToPosition(this, this.mState, i2);
            }
        }
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i3) {
        Log.w(TAG, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i3) {
        if (this.mLayout == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.mLayoutFrozen) {
            boolean canScrollHorizontally = this.mLayout.canScrollHorizontally();
            boolean canScrollVertically = this.mLayout.canScrollVertically();
            if (canScrollHorizontally || canScrollVertically) {
                if (!canScrollHorizontally) {
                    i2 = 0;
                }
                if (!canScrollVertically) {
                    i3 = 0;
                }
                scrollByInternal(i2, i3, null);
            }
        }
    }

    void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            android.support.v4.os.i.a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            android.support.v4.os.i.a();
        } else if (this.mAdapterHelper.d()) {
            if (this.mAdapterHelper.a(4) && !this.mAdapterHelper.a(11)) {
                android.support.v4.os.i.a(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
                eatRequestLayout();
                onEnterLayoutOrScroll();
                this.mAdapterHelper.b();
                if (!this.mLayoutRequestEaten) {
                    if (hasUpdatedView()) {
                        dispatchLayout();
                    } else {
                        this.mAdapterHelper.c();
                    }
                }
                resumeRequestLayout(true);
                onExitLayoutOrScroll();
                android.support.v4.os.i.a();
            } else if (this.mAdapterHelper.d()) {
                android.support.v4.os.i.a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                dispatchLayout();
                android.support.v4.os.i.a();
            }
        }
    }

    private boolean hasUpdatedView() {
        int b2 = this.mChildHelper.b();
        for (int i2 = 0; i2 < b2; i2++) {
            u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.b(i2));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                return true;
            }
        }
        return false;
    }

    boolean scrollByInternal(int i2, int i3, MotionEvent motionEvent) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            eatRequestLayout();
            onEnterLayoutOrScroll();
            android.support.v4.os.i.a(TRACE_SCROLL_TAG);
            if (i2 != 0) {
                i8 = this.mLayout.scrollHorizontallyBy(i2, this.mRecycler, this.mState);
                i7 = i2 - i8;
            } else {
                i8 = 0;
                i7 = 0;
            }
            if (i3 != 0) {
                i9 = this.mLayout.scrollVerticallyBy(i3, this.mRecycler, this.mState);
                i10 = i3 - i9;
            } else {
                i9 = 0;
                i10 = 0;
            }
            android.support.v4.os.i.a();
            repositionShadowingViews();
            onExitLayoutOrScroll();
            resumeRequestLayout(false);
            i6 = i10;
            i5 = i8;
            i4 = i9;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        if (dispatchNestedScroll(i5, i4, i7, i6, this.mScrollOffset)) {
            this.mLastTouchX -= this.mScrollOffset[0];
            this.mLastTouchY -= this.mScrollOffset[1];
            if (motionEvent != null) {
                motionEvent.offsetLocation(this.mScrollOffset[0], this.mScrollOffset[1]);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[0] = iArr[0] + this.mScrollOffset[0];
            int[] iArr2 = this.mNestedOffsets;
            iArr2[1] = iArr2[1] + this.mScrollOffset[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null) {
                pullGlows(motionEvent.getX(), i7, motionEvent.getY(), i6);
            }
            considerReleasingGlowsOnScroll(i2, i3);
        }
        if (i5 != 0 || i4 != 0) {
            dispatchOnScrolled(i5, i4);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (i5 == 0 && i4 == 0) ? false : true;
    }

    @Override // android.view.View, android.support.v4.view.ae
    public int computeHorizontalScrollOffset() {
        if (this.mLayout != null && this.mLayout.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View, android.support.v4.view.ae
    public int computeHorizontalScrollExtent() {
        if (this.mLayout != null && this.mLayout.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View, android.support.v4.view.ae
    public int computeHorizontalScrollRange() {
        if (this.mLayout != null && this.mLayout.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollRange(this.mState);
        }
        return 0;
    }

    @Override // android.view.View, android.support.v4.view.ae
    public int computeVerticalScrollOffset() {
        if (this.mLayout != null && this.mLayout.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View, android.support.v4.view.ae
    public int computeVerticalScrollExtent() {
        if (this.mLayout != null && this.mLayout.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View, android.support.v4.view.ae
    public int computeVerticalScrollRange() {
        if (this.mLayout != null && this.mLayout.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollRange(this.mState);
        }
        return 0;
    }

    void eatRequestLayout() {
        this.mEatRequestLayout++;
        if (this.mEatRequestLayout == 1 && !this.mLayoutFrozen) {
            this.mLayoutRequestEaten = false;
        }
    }

    void resumeRequestLayout(boolean z) {
        if (this.mEatRequestLayout < 1) {
            this.mEatRequestLayout = 1;
        }
        if (!z) {
            this.mLayoutRequestEaten = false;
        }
        if (this.mEatRequestLayout == 1) {
            if (z && this.mLayoutRequestEaten && !this.mLayoutFrozen && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutFrozen) {
                this.mLayoutRequestEaten = false;
            }
        }
        this.mEatRequestLayout--;
    }

    public void setLayoutFrozen(boolean z) {
        if (z != this.mLayoutFrozen) {
            assertNotInLayoutOrScroll("Do not setLayoutFrozen in layout or scroll");
            if (!z) {
                this.mLayoutFrozen = false;
                if (this.mLayoutRequestEaten && this.mLayout != null && this.mAdapter != null) {
                    requestLayout();
                }
                this.mLayoutRequestEaten = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
            this.mLayoutFrozen = true;
            this.mIgnoreMotionEventTillDown = true;
            stopScroll();
        }
    }

    public boolean isLayoutFrozen() {
        return this.mLayoutFrozen;
    }

    public void smoothScrollBy(int i2, int i3) {
        smoothScrollBy(i2, i3, null);
    }

    public void smoothScrollBy(int i2, int i3, Interpolator interpolator) {
        int i4 = 0;
        if (this.mLayout == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.mLayoutFrozen) {
            if (!this.mLayout.canScrollHorizontally()) {
                i2 = 0;
            }
            if (this.mLayout.canScrollVertically()) {
                i4 = i3;
            }
            if (i2 != 0 || i4 != 0) {
                this.mViewFlinger.a(i2, i4, interpolator);
            }
        }
    }

    public boolean fling(int i2, int i3) {
        if (this.mLayout == null) {
            Log.e(TAG, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        } else if (this.mLayoutFrozen) {
            return false;
        } else {
            boolean canScrollHorizontally = this.mLayout.canScrollHorizontally();
            boolean canScrollVertically = this.mLayout.canScrollVertically();
            if (!canScrollHorizontally || Math.abs(i2) < this.mMinFlingVelocity) {
                i2 = 0;
            }
            if (!canScrollVertically || Math.abs(i3) < this.mMinFlingVelocity) {
                i3 = 0;
            }
            if ((i2 == 0 && i3 == 0) || dispatchNestedPreFling(i2, i3)) {
                return false;
            }
            boolean z = canScrollHorizontally || canScrollVertically;
            dispatchNestedFling(i2, i3, z);
            if (this.mOnFlingListener != null && this.mOnFlingListener.a(i2, i3)) {
                return true;
            }
            if (!z) {
                return false;
            }
            this.mViewFlinger.a(Math.max(-this.mMaxFlingVelocity, Math.min(i2, this.mMaxFlingVelocity)), Math.max(-this.mMaxFlingVelocity, Math.min(i3, this.mMaxFlingVelocity)));
            return true;
        }
    }

    public void stopScroll() {
        setScrollState(0);
        stopScrollersInternal();
    }

    private void stopScrollersInternal() {
        this.mViewFlinger.b();
        if (this.mLayout != null) {
            this.mLayout.stopSmoothScroller();
        }
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0040, code lost:
        if (r7.mTopGlow.a((-r11) / getHeight(), r8 / getWidth()) != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008c, code lost:
        if (r7.mBottomGlow.a(r11 / getHeight(), 1.0f - (r8 / getWidth())) == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void pullGlows(float f2, float f3, float f4, float f5) {
        boolean z = true;
        boolean z2 = false;
        if (f3 < BitmapDescriptorFactory.HUE_RED) {
            ensureLeftGlow();
            if (this.mLeftGlow.a((-f3) / getWidth(), 1.0f - (f4 / getHeight()))) {
                z2 = true;
            }
        } else if (f3 > BitmapDescriptorFactory.HUE_RED) {
            ensureRightGlow();
            if (this.mRightGlow.a(f3 / getWidth(), f4 / getHeight())) {
                z2 = true;
            }
        }
        if (f5 < BitmapDescriptorFactory.HUE_RED) {
            ensureTopGlow();
        } else {
            if (f5 > BitmapDescriptorFactory.HUE_RED) {
                ensureBottomGlow();
            }
            z = z2;
        }
        if (z || f3 != BitmapDescriptorFactory.HUE_RED || f5 != BitmapDescriptorFactory.HUE_RED) {
            android.support.v4.view.ai.c(this);
        }
    }

    private void releaseGlows() {
        boolean z = false;
        if (this.mLeftGlow != null) {
            z = this.mLeftGlow.c();
        }
        if (this.mTopGlow != null) {
            z |= this.mTopGlow.c();
        }
        if (this.mRightGlow != null) {
            z |= this.mRightGlow.c();
        }
        if (this.mBottomGlow != null) {
            z |= this.mBottomGlow.c();
        }
        if (z) {
            android.support.v4.view.ai.c(this);
        }
    }

    void considerReleasingGlowsOnScroll(int i2, int i3) {
        boolean z = false;
        if (this.mLeftGlow != null && !this.mLeftGlow.a() && i2 > 0) {
            z = this.mLeftGlow.c();
        }
        if (this.mRightGlow != null && !this.mRightGlow.a() && i2 < 0) {
            z |= this.mRightGlow.c();
        }
        if (this.mTopGlow != null && !this.mTopGlow.a() && i3 > 0) {
            z |= this.mTopGlow.c();
        }
        if (this.mBottomGlow != null && !this.mBottomGlow.a() && i3 < 0) {
            z |= this.mBottomGlow.c();
        }
        if (z) {
            android.support.v4.view.ai.c(this);
        }
    }

    void absorbGlows(int i2, int i3) {
        if (i2 < 0) {
            ensureLeftGlow();
            this.mLeftGlow.a(-i2);
        } else if (i2 > 0) {
            ensureRightGlow();
            this.mRightGlow.a(i2);
        }
        if (i3 < 0) {
            ensureTopGlow();
            this.mTopGlow.a(-i3);
        } else if (i3 > 0) {
            ensureBottomGlow();
            this.mBottomGlow.a(i3);
        }
        if (i2 != 0 || i3 != 0) {
            android.support.v4.view.ai.c(this);
        }
    }

    void ensureLeftGlow() {
        if (this.mLeftGlow == null) {
            this.mLeftGlow = new android.support.v4.widget.k(getContext());
            if (this.mClipToPadding) {
                this.mLeftGlow.a((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                this.mLeftGlow.a(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    void ensureRightGlow() {
        if (this.mRightGlow == null) {
            this.mRightGlow = new android.support.v4.widget.k(getContext());
            if (this.mClipToPadding) {
                this.mRightGlow.a((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                this.mRightGlow.a(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    void ensureTopGlow() {
        if (this.mTopGlow == null) {
            this.mTopGlow = new android.support.v4.widget.k(getContext());
            if (this.mClipToPadding) {
                this.mTopGlow.a((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                this.mTopGlow.a(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    void ensureBottomGlow() {
        if (this.mBottomGlow == null) {
            this.mBottomGlow = new android.support.v4.widget.k(getContext());
            if (this.mClipToPadding) {
                this.mBottomGlow.a((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                this.mBottomGlow.a(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i2) {
        View view2;
        boolean z;
        boolean z2 = true;
        View onInterceptFocusSearch = this.mLayout.onInterceptFocusSearch(view, i2);
        if (onInterceptFocusSearch != null) {
            return onInterceptFocusSearch;
        }
        boolean z3 = this.mAdapter != null && this.mLayout != null && !isComputingLayout() && !this.mLayoutFrozen;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z3 && (i2 == 2 || i2 == 1)) {
            if (this.mLayout.canScrollVertically()) {
                int i3 = i2 == 2 ? 130 : 33;
                boolean z4 = focusFinder.findNextFocus(this, view, i3) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i2 = i3;
                    z = z4;
                } else {
                    z = z4;
                }
            } else {
                z = false;
            }
            if (z || !this.mLayout.canScrollHorizontally()) {
                z2 = z;
            } else {
                int i4 = (i2 == 2) ^ (this.mLayout.getLayoutDirection() == 1) ? 66 : 17;
                if (focusFinder.findNextFocus(this, view, i4) != null) {
                    z2 = false;
                }
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i2 = i4;
                }
            }
            if (z2) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                eatRequestLayout();
                this.mLayout.onFocusSearchFailed(view, i2, this.mRecycler, this.mState);
                resumeRequestLayout(false);
            }
            view2 = focusFinder.findNextFocus(this, view, i2);
        } else {
            View findNextFocus = focusFinder.findNextFocus(this, view, i2);
            if (findNextFocus != null || !z3) {
                view2 = findNextFocus;
            } else {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                eatRequestLayout();
                view2 = this.mLayout.onFocusSearchFailed(view, i2, this.mRecycler, this.mState);
                resumeRequestLayout(false);
            }
        }
        if (view2 != null && !view2.hasFocusable()) {
            if (getFocusedChild() == null) {
                return super.focusSearch(view, i2);
            }
            requestChildOnScreen(view2, null);
            return view;
        }
        if (!isPreferredNextFocus(view, view2, i2)) {
            view2 = super.focusSearch(view, i2);
        }
        return view2;
    }

    private boolean isPreferredNextFocus(View view, View view2, int i2) {
        boolean z = false;
        if (view2 == null || view2 == this) {
            return false;
        }
        if (view == null) {
            return true;
        }
        if (i2 == 2 || i2 == 1) {
            boolean z2 = this.mLayout.getLayoutDirection() == 1;
            if (i2 == 2) {
                z = true;
            }
            if (isPreferredNextFocusAbsolute(view, view2, z ^ z2 ? 66 : 17)) {
                return true;
            }
            if (i2 == 2) {
                return isPreferredNextFocusAbsolute(view, view2, 130);
            }
            return isPreferredNextFocusAbsolute(view, view2, 33);
        }
        return isPreferredNextFocusAbsolute(view, view2, i2);
    }

    private boolean isPreferredNextFocusAbsolute(View view, View view2, int i2) {
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        this.mTempRect2.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        offsetDescendantRectToMyCoords(view2, this.mTempRect2);
        switch (i2) {
            case 17:
                return (this.mTempRect.right > this.mTempRect2.right || this.mTempRect.left >= this.mTempRect2.right) && this.mTempRect.left > this.mTempRect2.left;
            case 33:
                return (this.mTempRect.bottom > this.mTempRect2.bottom || this.mTempRect.top >= this.mTempRect2.bottom) && this.mTempRect.top > this.mTempRect2.top;
            case 66:
                return (this.mTempRect.left < this.mTempRect2.left || this.mTempRect.right <= this.mTempRect2.left) && this.mTempRect.right < this.mTempRect2.right;
            case 130:
                return (this.mTempRect.top < this.mTempRect2.top || this.mTempRect.bottom <= this.mTempRect2.top) && this.mTempRect.bottom < this.mTempRect2.bottom;
            default:
                throw new IllegalArgumentException("direction must be absolute. received:" + i2);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.onRequestChildFocus(this, this.mState, view, view2) && view2 != null) {
            requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    private void requestChildOnScreen(View view, View view2) {
        boolean z = true;
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.e) {
                Rect rect = layoutParams2.d;
                this.mTempRect.left -= rect.left;
                this.mTempRect.right += rect.right;
                this.mTempRect.top -= rect.top;
                Rect rect2 = this.mTempRect;
                rect2.bottom = rect.bottom + rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        h hVar = this.mLayout;
        Rect rect3 = this.mTempRect;
        boolean z2 = !this.mFirstLayoutComplete;
        if (view2 != null) {
            z = false;
        }
        hVar.requestChildRectangleOnScreen(this, view, rect3, z2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        if (this.mLayout == null || !this.mLayout.onAddFocusables(this, arrayList, i2, i3)) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004f, code lost:
        if (r0 >= 30.0f) goto L17;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onAttachedToWindow() {
        float f2;
        boolean z = true;
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        this.mIsAttached = true;
        if (!this.mFirstLayoutComplete || isLayoutRequested()) {
            z = false;
        }
        this.mFirstLayoutComplete = z;
        if (this.mLayout != null) {
            this.mLayout.dispatchAttachedToWindow(this);
        }
        this.mPostedAnimatorRunner = false;
        if (ALLOW_THREAD_GAP_WORK) {
            this.mGapWorker = aa.f859a.get();
            if (this.mGapWorker == null) {
                this.mGapWorker = new aa();
                Display J = android.support.v4.view.ai.J(this);
                if (!isInEditMode() && J != null) {
                    f2 = J.getRefreshRate();
                }
                f2 = 60.0f;
                this.mGapWorker.d = 1.0E9f / f2;
                aa.f859a.set(this.mGapWorker);
            }
            this.mGapWorker.a(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mItemAnimator != null) {
            this.mItemAnimator.d();
        }
        stopScroll();
        this.mIsAttached = false;
        if (this.mLayout != null) {
            this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.b();
        if (ALLOW_THREAD_GAP_WORK) {
            this.mGapWorker.b(this);
            this.mGapWorker = null;
        }
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    void assertInLayoutOrScroll(String str) {
        if (!isComputingLayout()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling");
            }
            throw new IllegalStateException(str);
        }
    }

    void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
            }
            throw new IllegalStateException(str);
        } else if (this.mDispatchScrollCounter > 0) {
            Log.w(TAG, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(""));
        }
    }

    public void addOnItemTouchListener(k kVar) {
        this.mOnItemTouchListeners.add(kVar);
    }

    public void removeOnItemTouchListener(k kVar) {
        this.mOnItemTouchListeners.remove(kVar);
        if (this.mActiveOnItemTouchListener == kVar) {
            this.mActiveOnItemTouchListener = null;
        }
    }

    private boolean dispatchOnItemTouchIntercept(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.mActiveOnItemTouchListener = null;
        }
        int size = this.mOnItemTouchListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            k kVar = this.mOnItemTouchListeners.get(i2);
            if (kVar.a(this, motionEvent) && action != 3) {
                this.mActiveOnItemTouchListener = kVar;
                return true;
            }
        }
        return false;
    }

    private boolean dispatchOnItemTouch(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (this.mActiveOnItemTouchListener != null) {
            if (action == 0) {
                this.mActiveOnItemTouchListener = null;
            } else {
                this.mActiveOnItemTouchListener.b(this, motionEvent);
                if (action == 3 || action == 1) {
                    this.mActiveOnItemTouchListener = null;
                }
                return true;
            }
        }
        if (action != 0) {
            int size = this.mOnItemTouchListeners.size();
            for (int i2 = 0; i2 < size; i2++) {
                k kVar = this.mOnItemTouchListeners.get(i2);
                if (kVar.a(this, motionEvent)) {
                    this.mActiveOnItemTouchListener = kVar;
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int i2 = -1;
        boolean z2 = true;
        if (this.mLayoutFrozen) {
            return false;
        }
        if (dispatchOnItemTouchIntercept(motionEvent)) {
            cancelTouch();
            return true;
        } else if (this.mLayout == null) {
            return false;
        } else {
            boolean canScrollHorizontally = this.mLayout.canScrollHorizontally();
            boolean canScrollVertically = this.mLayout.canScrollVertically();
            if (this.mVelocityTracker == null) {
                this.mVelocityTracker = VelocityTracker.obtain();
            }
            this.mVelocityTracker.addMovement(motionEvent);
            int a2 = android.support.v4.view.t.a(motionEvent);
            int b2 = android.support.v4.view.t.b(motionEvent);
            switch (a2) {
                case 0:
                    if (this.mIgnoreMotionEventTillDown) {
                        this.mIgnoreMotionEventTillDown = false;
                    }
                    this.mScrollPointerId = motionEvent.getPointerId(0);
                    int x = (int) (motionEvent.getX() + 0.5f);
                    this.mLastTouchX = x;
                    this.mInitialTouchX = x;
                    int y = (int) (motionEvent.getY() + 0.5f);
                    this.mLastTouchY = y;
                    this.mInitialTouchY = y;
                    if (this.mScrollState == 2) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                    }
                    int[] iArr = this.mNestedOffsets;
                    this.mNestedOffsets[1] = 0;
                    iArr[0] = 0;
                    int i3 = canScrollHorizontally ? 1 : 0;
                    if (canScrollVertically) {
                        i3 |= 2;
                    }
                    startNestedScroll(i3);
                    break;
                case 1:
                    this.mVelocityTracker.clear();
                    stopNestedScroll();
                    break;
                case 2:
                    int findPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
                    if (findPointerIndex < 0) {
                        Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                    int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                    if (this.mScrollState != 1) {
                        int i4 = x2 - this.mInitialTouchX;
                        int i5 = y2 - this.mInitialTouchY;
                        if (!canScrollHorizontally || Math.abs(i4) <= this.mTouchSlop) {
                            z = false;
                        } else {
                            this.mLastTouchX = ((i4 < 0 ? -1 : 1) * this.mTouchSlop) + this.mInitialTouchX;
                            z = true;
                        }
                        if (canScrollVertically && Math.abs(i5) > this.mTouchSlop) {
                            int i6 = this.mInitialTouchY;
                            int i7 = this.mTouchSlop;
                            if (i5 >= 0) {
                                i2 = 1;
                            }
                            this.mLastTouchY = i6 + (i2 * i7);
                            z = true;
                        }
                        if (z) {
                            setScrollState(1);
                            break;
                        }
                    }
                    break;
                case 3:
                    cancelTouch();
                    break;
                case 5:
                    this.mScrollPointerId = motionEvent.getPointerId(b2);
                    int x3 = (int) (motionEvent.getX(b2) + 0.5f);
                    this.mLastTouchX = x3;
                    this.mInitialTouchX = x3;
                    int y3 = (int) (motionEvent.getY(b2) + 0.5f);
                    this.mLastTouchY = y3;
                    this.mInitialTouchY = y3;
                    break;
                case 6:
                    onPointerUp(motionEvent);
                    break;
            }
            if (this.mScrollState != 1) {
                z2 = false;
            }
            return z2;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.mOnItemTouchListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mOnItemTouchListeners.get(i2).a(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2 = false;
        if (this.mLayoutFrozen || this.mIgnoreMotionEventTillDown) {
            return false;
        }
        if (dispatchOnItemTouch(motionEvent)) {
            cancelTouch();
            return true;
        } else if (this.mLayout == null) {
            return false;
        } else {
            boolean canScrollHorizontally = this.mLayout.canScrollHorizontally();
            boolean canScrollVertically = this.mLayout.canScrollVertically();
            if (this.mVelocityTracker == null) {
                this.mVelocityTracker = VelocityTracker.obtain();
            }
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            int a2 = android.support.v4.view.t.a(motionEvent);
            int b2 = android.support.v4.view.t.b(motionEvent);
            if (a2 == 0) {
                int[] iArr = this.mNestedOffsets;
                this.mNestedOffsets[1] = 0;
                iArr[0] = 0;
            }
            obtain.offsetLocation(this.mNestedOffsets[0], this.mNestedOffsets[1]);
            switch (a2) {
                case 0:
                    this.mScrollPointerId = motionEvent.getPointerId(0);
                    int x = (int) (motionEvent.getX() + 0.5f);
                    this.mLastTouchX = x;
                    this.mInitialTouchX = x;
                    int y = (int) (motionEvent.getY() + 0.5f);
                    this.mLastTouchY = y;
                    this.mInitialTouchY = y;
                    int i2 = canScrollHorizontally ? 1 : 0;
                    if (canScrollVertically) {
                        i2 |= 2;
                    }
                    startNestedScroll(i2);
                    break;
                case 1:
                    this.mVelocityTracker.addMovement(obtain);
                    this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxFlingVelocity);
                    float f2 = canScrollHorizontally ? -android.support.v4.view.ag.a(this.mVelocityTracker, this.mScrollPointerId) : 0.0f;
                    float f3 = canScrollVertically ? -android.support.v4.view.ag.b(this.mVelocityTracker, this.mScrollPointerId) : 0.0f;
                    if ((f2 == BitmapDescriptorFactory.HUE_RED && f3 == BitmapDescriptorFactory.HUE_RED) || !fling((int) f2, (int) f3)) {
                        setScrollState(0);
                    }
                    resetTouch();
                    z2 = true;
                    break;
                case 2:
                    int findPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
                    if (findPointerIndex < 0) {
                        Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                    int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                    int i3 = this.mLastTouchX - x2;
                    int i4 = this.mLastTouchY - y2;
                    if (dispatchNestedPreScroll(i3, i4, this.mScrollConsumed, this.mScrollOffset)) {
                        i3 -= this.mScrollConsumed[0];
                        i4 -= this.mScrollConsumed[1];
                        obtain.offsetLocation(this.mScrollOffset[0], this.mScrollOffset[1]);
                        int[] iArr2 = this.mNestedOffsets;
                        iArr2[0] = iArr2[0] + this.mScrollOffset[0];
                        int[] iArr3 = this.mNestedOffsets;
                        iArr3[1] = iArr3[1] + this.mScrollOffset[1];
                    }
                    if (this.mScrollState != 1) {
                        if (!canScrollHorizontally || Math.abs(i3) <= this.mTouchSlop) {
                            z = false;
                        } else {
                            if (i3 > 0) {
                                i3 -= this.mTouchSlop;
                            } else {
                                i3 += this.mTouchSlop;
                            }
                            z = true;
                        }
                        if (canScrollVertically && Math.abs(i4) > this.mTouchSlop) {
                            if (i4 > 0) {
                                i4 -= this.mTouchSlop;
                            } else {
                                i4 += this.mTouchSlop;
                            }
                            z = true;
                        }
                        if (z) {
                            setScrollState(1);
                        }
                    }
                    if (this.mScrollState == 1) {
                        this.mLastTouchX = x2 - this.mScrollOffset[0];
                        this.mLastTouchY = y2 - this.mScrollOffset[1];
                        if (scrollByInternal(canScrollHorizontally ? i3 : 0, canScrollVertically ? i4 : 0, obtain)) {
                            getParent().requestDisallowInterceptTouchEvent(true);
                        }
                        if (this.mGapWorker != null && (i3 != 0 || i4 != 0)) {
                            this.mGapWorker.a(this, i3, i4);
                            break;
                        }
                    }
                    break;
                case 3:
                    cancelTouch();
                    break;
                case 5:
                    this.mScrollPointerId = motionEvent.getPointerId(b2);
                    int x3 = (int) (motionEvent.getX(b2) + 0.5f);
                    this.mLastTouchX = x3;
                    this.mInitialTouchX = x3;
                    int y3 = (int) (motionEvent.getY(b2) + 0.5f);
                    this.mLastTouchY = y3;
                    this.mInitialTouchY = y3;
                    break;
                case 6:
                    onPointerUp(motionEvent);
                    break;
            }
            if (!z2) {
                this.mVelocityTracker.addMovement(obtain);
            }
            obtain.recycle();
            return true;
        }
    }

    private void resetTouch() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.clear();
        }
        stopNestedScroll();
        releaseGlows();
    }

    private void cancelTouch() {
        resetTouch();
        setScrollState(0);
    }

    private void onPointerUp(MotionEvent motionEvent) {
        int b2 = android.support.v4.view.t.b(motionEvent);
        if (motionEvent.getPointerId(b2) == this.mScrollPointerId) {
            int i2 = b2 == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i2);
            int x = (int) (motionEvent.getX(i2) + 0.5f);
            this.mLastTouchX = x;
            this.mInitialTouchX = x;
            int y = (int) (motionEvent.getY(i2) + 0.5f);
            this.mLastTouchY = y;
            this.mInitialTouchY = y;
        }
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (this.mLayout != null && !this.mLayoutFrozen && (motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8) {
            float f2 = this.mLayout.canScrollVertically() ? -android.support.v4.view.t.e(motionEvent, 9) : 0.0f;
            float e2 = this.mLayout.canScrollHorizontally() ? android.support.v4.view.t.e(motionEvent, 10) : 0.0f;
            if (f2 != BitmapDescriptorFactory.HUE_RED || e2 != BitmapDescriptorFactory.HUE_RED) {
                float scrollFactor = getScrollFactor();
                scrollByInternal((int) (e2 * scrollFactor), (int) (f2 * scrollFactor), motionEvent);
            }
        }
        return false;
    }

    private float getScrollFactor() {
        if (this.mScrollFactor == Float.MIN_VALUE) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(16842829, typedValue, true)) {
                this.mScrollFactor = typedValue.getDimension(getContext().getResources().getDisplayMetrics());
            } else {
                return BitmapDescriptorFactory.HUE_RED;
            }
        }
        return this.mScrollFactor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        boolean z = false;
        if (this.mLayout == null) {
            defaultOnMeasure(i2, i3);
        } else if (this.mLayout.mAutoMeasure) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            this.mLayout.onMeasure(this.mRecycler, this.mState, i2, i3);
            if (!z && this.mAdapter != null) {
                if (this.mState.c == 1) {
                    dispatchLayoutStep1();
                }
                this.mLayout.setMeasureSpecs(i2, i3);
                this.mState.h = true;
                dispatchLayoutStep2();
                this.mLayout.setMeasuredDimensionFromChildren(i2, i3);
                if (this.mLayout.shouldMeasureTwice()) {
                    this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                    this.mState.h = true;
                    dispatchLayoutStep2();
                    this.mLayout.setMeasuredDimensionFromChildren(i2, i3);
                }
            }
        } else if (this.mHasFixedSize) {
            this.mLayout.onMeasure(this.mRecycler, this.mState, i2, i3);
        } else {
            if (this.mAdapterUpdateDuringMeasure) {
                eatRequestLayout();
                onEnterLayoutOrScroll();
                processAdapterUpdatesAndSetAnimationFlags();
                onExitLayoutOrScroll();
                if (this.mState.j) {
                    this.mState.f = true;
                } else {
                    this.mAdapterHelper.e();
                    this.mState.f = false;
                }
                this.mAdapterUpdateDuringMeasure = false;
                resumeRequestLayout(false);
            }
            if (this.mAdapter != null) {
                this.mState.d = this.mAdapter.getItemCount();
            } else {
                this.mState.d = 0;
            }
            eatRequestLayout();
            this.mLayout.onMeasure(this.mRecycler, this.mState, i2, i3);
            resumeRequestLayout(false);
            this.mState.f = false;
        }
    }

    void defaultOnMeasure(int i2, int i3) {
        setMeasuredDimension(h.chooseSize(i2, getPaddingLeft() + getPaddingRight(), android.support.v4.view.ai.p(this)), h.chooseSize(i3, getPaddingTop() + getPaddingBottom(), android.support.v4.view.ai.q(this)));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4 || i3 != i5) {
            invalidateGlows();
        }
    }

    public void setItemAnimator(e eVar) {
        if (this.mItemAnimator != null) {
            this.mItemAnimator.d();
            this.mItemAnimator.a(null);
        }
        this.mItemAnimator = eVar;
        if (this.mItemAnimator != null) {
            this.mItemAnimator.a(this.mItemAnimatorListener);
        }
    }

    void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    void onExitLayoutOrScroll() {
        this.mLayoutOrScrollCounter--;
        if (this.mLayoutOrScrollCounter < 1) {
            this.mLayoutOrScrollCounter = 0;
            dispatchContentChangedIfNecessary();
            dispatchPendingImportantForAccessibilityChanges();
        }
    }

    boolean isAccessibilityEnabled() {
        return this.mAccessibilityManager != null && this.mAccessibilityManager.isEnabled();
    }

    private void dispatchContentChangedIfNecessary() {
        int i2 = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (i2 != 0 && isAccessibilityEnabled()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(Barcode.PDF417);
            android.support.v4.view.a.a.a(obtain, i2);
            sendAccessibilityEventUnchecked(obtain);
        }
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        int i2 = 0;
        if (isComputingLayout()) {
            int b2 = accessibilityEvent != null ? android.support.v4.view.a.a.b(accessibilityEvent) : 0;
            if (b2 != 0) {
                i2 = b2;
            }
            this.mEatenAccessibilityChangeFlags = i2 | this.mEatenAccessibilityChangeFlags;
            return true;
        }
        return false;
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!shouldDeferAccessibilityEvent(accessibilityEvent)) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }

    public e getItemAnimator() {
        return this.mItemAnimator;
    }

    void postAnimationRunner() {
        if (!this.mPostedAnimatorRunner && this.mIsAttached) {
            android.support.v4.view.ai.a(this, this.mItemAnimatorRunner);
            this.mPostedAnimatorRunner = true;
        }
    }

    private boolean predictiveItemAnimationsEnabled() {
        return this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations();
    }

    private void processAdapterUpdatesAndSetAnimationFlags() {
        boolean z = true;
        if (this.mDataSetHasChangedAfterLayout) {
            this.mAdapterHelper.a();
            this.mLayout.onItemsChanged(this);
        }
        if (predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.b();
        } else {
            this.mAdapterHelper.e();
        }
        boolean z2 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.i = this.mFirstLayoutComplete && this.mItemAnimator != null && (this.mDataSetHasChangedAfterLayout || z2 || this.mLayout.mRequestedSimpleAnimations) && (!this.mDataSetHasChangedAfterLayout || this.mAdapter.hasStableIds());
        r rVar = this.mState;
        if (!this.mState.i || !z2 || this.mDataSetHasChangedAfterLayout || !predictiveItemAnimationsEnabled()) {
            z = false;
        }
        rVar.j = z;
    }

    void dispatchLayout() {
        if (this.mAdapter == null) {
            Log.e(TAG, "No adapter attached; skipping layout");
        } else if (this.mLayout == null) {
            Log.e(TAG, "No layout manager attached; skipping layout");
        } else {
            this.mState.h = false;
            if (this.mState.c == 1) {
                dispatchLayoutStep1();
                this.mLayout.setExactMeasureSpecsFrom(this);
                dispatchLayoutStep2();
            } else if (this.mAdapterHelper.f() || this.mLayout.getWidth() != getWidth() || this.mLayout.getHeight() != getHeight()) {
                this.mLayout.setExactMeasureSpecsFrom(this);
                dispatchLayoutStep2();
            } else {
                this.mLayout.setExactMeasureSpecsFrom(this);
            }
            dispatchLayoutStep3();
        }
    }

    private void saveFocusInfo() {
        int adapterPosition;
        View focusedChild = (!this.mPreserveFocusAfterLayout || !hasFocus() || this.mAdapter == null) ? null : getFocusedChild();
        u findContainingViewHolder = focusedChild == null ? null : findContainingViewHolder(focusedChild);
        if (findContainingViewHolder == null) {
            resetFocusInfo();
            return;
        }
        this.mState.l = this.mAdapter.hasStableIds() ? findContainingViewHolder.getItemId() : -1L;
        r rVar = this.mState;
        if (this.mDataSetHasChangedAfterLayout) {
            adapterPosition = -1;
        } else {
            adapterPosition = findContainingViewHolder.isRemoved() ? findContainingViewHolder.mOldPosition : findContainingViewHolder.getAdapterPosition();
        }
        rVar.k = adapterPosition;
        this.mState.m = getDeepestFocusedViewWithId(findContainingViewHolder.itemView);
    }

    private void resetFocusInfo() {
        this.mState.l = -1L;
        this.mState.k = -1;
        this.mState.m = -1;
    }

    private View findNextViewToFocus() {
        int i2 = this.mState.k != -1 ? this.mState.k : 0;
        int e2 = this.mState.e();
        for (int i3 = i2; i3 < e2; i3++) {
            u findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(i3);
            if (findViewHolderForAdapterPosition == null) {
                break;
            } else if (findViewHolderForAdapterPosition.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition.itemView;
            }
        }
        for (int min = Math.min(e2, i2) - 1; min >= 0; min--) {
            u findViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(min);
            if (findViewHolderForAdapterPosition2 == null) {
                return null;
            }
            if (findViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition2.itemView;
            }
        }
        return null;
    }

    private void recoverFocusFromState() {
        View view;
        View view2 = null;
        if (this.mPreserveFocusAfterLayout && this.mAdapter != null && hasFocus() && getDescendantFocusability() != 393216) {
            if (getDescendantFocusability() != 131072 || !isFocused()) {
                if (!isFocused()) {
                    View focusedChild = getFocusedChild();
                    if (IGNORE_DETACHED_FOCUSED_CHILD && (focusedChild.getParent() == null || !focusedChild.hasFocus())) {
                        if (this.mChildHelper.b() == 0) {
                            requestFocus();
                            return;
                        }
                    } else if (!this.mChildHelper.c(focusedChild)) {
                        return;
                    }
                }
                u findViewHolderForItemId = (this.mState.l == -1 || !this.mAdapter.hasStableIds()) ? null : findViewHolderForItemId(this.mState.l);
                if (findViewHolderForItemId == null || this.mChildHelper.c(findViewHolderForItemId.itemView) || !findViewHolderForItemId.itemView.hasFocusable()) {
                    if (this.mChildHelper.b() > 0) {
                        view2 = findNextViewToFocus();
                    }
                } else {
                    view2 = findViewHolderForItemId.itemView;
                }
                if (view2 != null) {
                    if (this.mState.m == -1 || (view = view2.findViewById(this.mState.m)) == null || !view.isFocusable()) {
                        view = view2;
                    }
                    view.requestFocus();
                }
            }
        }
    }

    private int getDeepestFocusedViewWithId(View view) {
        int i2;
        int id = view.getId();
        while (true) {
            i2 = id;
            View view2 = view;
            if (view2.isFocused() || !(view2 instanceof ViewGroup) || !view2.hasFocus()) {
                break;
            }
            view = ((ViewGroup) view2).getFocusedChild();
            id = view.getId() != -1 ? view.getId() : i2;
        }
        return i2;
    }

    private void dispatchLayoutStep1() {
        boolean z = true;
        this.mState.a(1);
        this.mState.h = false;
        eatRequestLayout();
        this.mViewInfoStore.a();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        saveFocusInfo();
        r rVar = this.mState;
        if (!this.mState.i || !this.mItemsChanged) {
            z = false;
        }
        rVar.g = z;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        this.mState.f = this.mState.j;
        this.mState.d = this.mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.i) {
            int b2 = this.mChildHelper.b();
            for (int i2 = 0; i2 < b2; i2++) {
                u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.b(i2));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    this.mViewInfoStore.a(childViewHolderInt, this.mItemAnimator.a(this.mState, childViewHolderInt, e.e(childViewHolderInt), childViewHolderInt.getUnmodifiedPayloads()));
                    if (this.mState.g && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.a(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.j) {
            saveOldPositions();
            boolean z2 = this.mState.e;
            this.mState.e = false;
            this.mLayout.onLayoutChildren(this.mRecycler, this.mState);
            this.mState.e = z2;
            for (int i3 = 0; i3 < this.mChildHelper.b(); i3++) {
                u childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.b(i3));
                if (!childViewHolderInt2.shouldIgnore() && !this.mViewInfoStore.d(childViewHolderInt2)) {
                    int e2 = e.e(childViewHolderInt2);
                    boolean hasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(Utility.DEFAULT_STREAM_BUFFER_SIZE);
                    if (!hasAnyOfTheFlags) {
                        e2 |= 4096;
                    }
                    e.c a2 = this.mItemAnimator.a(this.mState, childViewHolderInt2, e2, childViewHolderInt2.getUnmodifiedPayloads());
                    if (hasAnyOfTheFlags) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, a2);
                    } else {
                        this.mViewInfoStore.b(childViewHolderInt2, a2);
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        resumeRequestLayout(false);
        this.mState.c = 2;
    }

    private void dispatchLayoutStep2() {
        eatRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.a(6);
        this.mAdapterHelper.e();
        this.mState.d = this.mAdapter.getItemCount();
        this.mState.b = 0;
        this.mState.f = false;
        this.mLayout.onLayoutChildren(this.mRecycler, this.mState);
        this.mState.e = false;
        this.mPendingSavedState = null;
        this.mState.i = this.mState.i && this.mItemAnimator != null;
        this.mState.c = 4;
        onExitLayoutOrScroll();
        resumeRequestLayout(false);
    }

    private void dispatchLayoutStep3() {
        this.mState.a(4);
        eatRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.c = 1;
        if (this.mState.i) {
            for (int b2 = this.mChildHelper.b() - 1; b2 >= 0; b2--) {
                u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.b(b2));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    e.c a2 = this.mItemAnimator.a(this.mState, childViewHolderInt);
                    u a3 = this.mViewInfoStore.a(changedHolderKey);
                    if (a3 != null && !a3.shouldIgnore()) {
                        boolean a4 = this.mViewInfoStore.a(a3);
                        boolean a5 = this.mViewInfoStore.a(childViewHolderInt);
                        if (a4 && a3 == childViewHolderInt) {
                            this.mViewInfoStore.c(childViewHolderInt, a2);
                        } else {
                            e.c b3 = this.mViewInfoStore.b(a3);
                            this.mViewInfoStore.c(childViewHolderInt, a2);
                            e.c c2 = this.mViewInfoStore.c(childViewHolderInt);
                            if (b3 == null) {
                                handleMissingPreInfoForChangeError(changedHolderKey, childViewHolderInt, a3);
                            } else {
                                animateChange(a3, childViewHolderInt, b3, c2, a4, a5);
                            }
                        }
                    } else {
                        this.mViewInfoStore.c(childViewHolderInt, a2);
                    }
                }
            }
            this.mViewInfoStore.a(this.mViewInfoProcessCallback);
        }
        this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        this.mState.f820a = this.mState.d;
        this.mDataSetHasChangedAfterLayout = false;
        this.mState.i = false;
        this.mState.j = false;
        this.mLayout.mRequestedSimpleAnimations = false;
        if (this.mRecycler.b != null) {
            this.mRecycler.b.clear();
        }
        if (this.mLayout.mPrefetchMaxObservedInInitialPrefetch) {
            this.mLayout.mPrefetchMaxCountObserved = 0;
            this.mLayout.mPrefetchMaxObservedInInitialPrefetch = false;
            this.mRecycler.b();
        }
        this.mLayout.onLayoutCompleted(this.mState);
        onExitLayoutOrScroll();
        resumeRequestLayout(false);
        this.mViewInfoStore.a();
        if (didChildRangeChange(this.mMinMaxLayoutPositions[0], this.mMinMaxLayoutPositions[1])) {
            dispatchOnScrolled(0, 0);
        }
        recoverFocusFromState();
        resetFocusInfo();
    }

    private void handleMissingPreInfoForChangeError(long j2, u uVar, u uVar2) {
        int b2 = this.mChildHelper.b();
        for (int i2 = 0; i2 < b2; i2++) {
            u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.b(i2));
            if (childViewHolderInt != uVar && getChangedHolderKey(childViewHolderInt) == j2) {
                if (this.mAdapter != null && this.mAdapter.hasStableIds()) {
                    throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + uVar);
                } else {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + uVar);
                }
            }
        }
        Log.e(TAG, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + uVar2 + " cannot be found but it is necessary for " + uVar);
    }

    void recordAnimationInfoIfBouncedHiddenView(u uVar, e.c cVar) {
        uVar.setFlags(0, Utility.DEFAULT_STREAM_BUFFER_SIZE);
        if (this.mState.g && uVar.isUpdated() && !uVar.isRemoved() && !uVar.shouldIgnore()) {
            this.mViewInfoStore.a(getChangedHolderKey(uVar), uVar);
        }
        this.mViewInfoStore.a(uVar, cVar);
    }

    private void findMinMaxChildLayoutPositions(int[] iArr) {
        int b2 = this.mChildHelper.b();
        if (b2 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        int i4 = 0;
        while (i4 < b2) {
            u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.b(i4));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i2) {
                    i2 = layoutPosition;
                }
                if (layoutPosition > i3) {
                    i3 = layoutPosition;
                }
            }
            i4++;
            i2 = i2;
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    private boolean didChildRangeChange(int i2, int i3) {
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        return (this.mMinMaxLayoutPositions[0] == i2 && this.mMinMaxLayoutPositions[1] == i3) ? false : true;
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        u childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + childViewHolderInt);
            }
        }
        dispatchChildDetached(view);
        super.removeDetachedView(view, z);
    }

    long getChangedHolderKey(u uVar) {
        return this.mAdapter.hasStableIds() ? uVar.getItemId() : uVar.mPosition;
    }

    void animateAppearance(u uVar, e.c cVar, e.c cVar2) {
        uVar.setIsRecyclable(false);
        if (this.mItemAnimator.b(uVar, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    void animateDisappearance(u uVar, e.c cVar, e.c cVar2) {
        addAnimatingView(uVar);
        uVar.setIsRecyclable(false);
        if (this.mItemAnimator.a(uVar, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    private void animateChange(u uVar, u uVar2, e.c cVar, e.c cVar2, boolean z, boolean z2) {
        uVar.setIsRecyclable(false);
        if (z) {
            addAnimatingView(uVar);
        }
        if (uVar != uVar2) {
            if (z2) {
                addAnimatingView(uVar2);
            }
            uVar.mShadowedHolder = uVar2;
            addAnimatingView(uVar);
            this.mRecycler.c(uVar);
            uVar2.setIsRecyclable(false);
            uVar2.mShadowingHolder = uVar;
        }
        if (this.mItemAnimator.a(uVar, uVar2, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        android.support.v4.os.i.a(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        android.support.v4.os.i.a();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mEatRequestLayout == 0 && !this.mLayoutFrozen) {
            super.requestLayout();
        } else {
            this.mLayoutRequestEaten = true;
        }
    }

    void markItemDecorInsetsDirty() {
        int c2 = this.mChildHelper.c();
        for (int i2 = 0; i2 < c2; i2++) {
            ((LayoutParams) this.mChildHelper.d(i2).getLayoutParams()).e = true;
        }
        this.mRecycler.k();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        boolean z2 = true;
        boolean z3 = false;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mItemDecorations.get(i2).b(canvas, this, this.mState);
        }
        if (this.mLeftGlow == null || this.mLeftGlow.a()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate(paddingBottom + (-getHeight()), BitmapDescriptorFactory.HUE_RED);
            z = this.mLeftGlow != null && this.mLeftGlow.a(canvas);
            canvas.restoreToCount(save);
        }
        if (this.mTopGlow != null && !this.mTopGlow.a()) {
            int save2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            z |= this.mTopGlow != null && this.mTopGlow.a(canvas);
            canvas.restoreToCount(save2);
        }
        if (this.mRightGlow != null && !this.mRightGlow.a()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            z |= this.mRightGlow != null && this.mRightGlow.a(canvas);
            canvas.restoreToCount(save3);
        }
        if (this.mBottomGlow != null && !this.mBottomGlow.a()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            if (this.mBottomGlow != null && this.mBottomGlow.a(canvas)) {
                z3 = true;
            }
            z |= z3;
            canvas.restoreToCount(save4);
        }
        if (z || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || !this.mItemAnimator.b()) {
            z2 = z;
        }
        if (z2) {
            android.support.v4.view.ai.c(this);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mItemDecorations.get(i2).a(canvas, this, this.mState);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.mLayout.checkLayoutParams((LayoutParams) layoutParams);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        if (this.mLayout == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager");
        }
        return this.mLayout.generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        if (this.mLayout == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager");
        }
        return this.mLayout.generateLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (this.mLayout == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager");
        }
        return this.mLayout.generateLayoutParams(layoutParams);
    }

    public boolean isAnimating() {
        return this.mItemAnimator != null && this.mItemAnimator.b();
    }

    void saveOldPositions() {
        int c2 = this.mChildHelper.c();
        for (int i2 = 0; i2 < c2; i2++) {
            u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.saveOldPosition();
            }
        }
    }

    void clearOldPositions() {
        int c2 = this.mChildHelper.c();
        for (int i2 = 0; i2 < c2; i2++) {
            u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        this.mRecycler.j();
    }

    void offsetPositionRecordsForMove(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int c2 = this.mChildHelper.c();
        if (i2 < i3) {
            i4 = -1;
            i5 = i3;
            i6 = i2;
        } else {
            i4 = 1;
            i5 = i2;
            i6 = i3;
        }
        for (int i7 = 0; i7 < c2; i7++) {
            u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i7));
            if (childViewHolderInt != null && childViewHolderInt.mPosition >= i6 && childViewHolderInt.mPosition <= i5) {
                if (childViewHolderInt.mPosition == i2) {
                    childViewHolderInt.offsetPosition(i3 - i2, false);
                } else {
                    childViewHolderInt.offsetPosition(i4, false);
                }
                this.mState.e = true;
            }
        }
        this.mRecycler.a(i2, i3);
        requestLayout();
    }

    void offsetPositionRecordsForInsert(int i2, int i3) {
        int c2 = this.mChildHelper.c();
        for (int i4 = 0; i4 < c2; i4++) {
            u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i4));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i2) {
                childViewHolderInt.offsetPosition(i3, false);
                this.mState.e = true;
            }
        }
        this.mRecycler.b(i2, i3);
        requestLayout();
    }

    void offsetPositionRecordsForRemove(int i2, int i3, boolean z) {
        int i4 = i2 + i3;
        int c2 = this.mChildHelper.c();
        for (int i5 = 0; i5 < c2; i5++) {
            u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i5));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                if (childViewHolderInt.mPosition >= i4) {
                    childViewHolderInt.offsetPosition(-i3, z);
                    this.mState.e = true;
                } else if (childViewHolderInt.mPosition >= i2) {
                    childViewHolderInt.flagRemovedAndOffsetPosition(i2 - 1, -i3, z);
                    this.mState.e = true;
                }
            }
        }
        this.mRecycler.a(i2, i3, z);
        requestLayout();
    }

    void viewRangeUpdate(int i2, int i3, Object obj) {
        int c2 = this.mChildHelper.c();
        int i4 = i2 + i3;
        for (int i5 = 0; i5 < c2; i5++) {
            View d2 = this.mChildHelper.d(i5);
            u childViewHolderInt = getChildViewHolderInt(d2);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i2 && childViewHolderInt.mPosition < i4) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((LayoutParams) d2.getLayoutParams()).e = true;
            }
        }
        this.mRecycler.c(i2, i3);
    }

    boolean canReuseUpdatedViewHolder(u uVar) {
        return this.mItemAnimator == null || this.mItemAnimator.a(uVar, uVar.getUnmodifiedPayloads());
    }

    void setDataSetChangedAfterLayout() {
        if (!this.mDataSetHasChangedAfterLayout) {
            this.mDataSetHasChangedAfterLayout = true;
            int c2 = this.mChildHelper.c();
            for (int i2 = 0; i2 < c2; i2++) {
                u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
                if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.addFlags(512);
                }
            }
            this.mRecycler.h();
            markKnownViewsInvalid();
        }
    }

    void markKnownViewsInvalid() {
        int c2 = this.mChildHelper.c();
        for (int i2 = 0; i2 < c2; i2++) {
            u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        this.mRecycler.i();
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() != 0) {
            if (this.mLayout != null) {
                this.mLayout.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
            }
            markItemDecorInsetsDirty();
            requestLayout();
        }
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.mPreserveFocusAfterLayout = z;
    }

    public u getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent != null && parent != this) {
            throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
        }
        return getChildViewHolderInt(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001a, code lost:
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View findContainingItemView(View view) {
        ViewParent parent = view.getParent();
        View view2 = view;
        while (parent != null && parent != this && (parent instanceof View)) {
            View view3 = (View) parent;
            view2 = view3;
            parent = view3.getParent();
        }
        return null;
    }

    public u findContainingViewHolder(View view) {
        View findContainingItemView = findContainingItemView(view);
        if (findContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(findContainingItemView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).c;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public int getChildAdapterPosition(View view) {
        u childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getAdapterPosition();
        }
        return -1;
    }

    public int getChildLayoutPosition(View view) {
        u childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getLayoutPosition();
        }
        return -1;
    }

    public long getChildItemId(View view) {
        u childViewHolderInt;
        if (this.mAdapter == null || !this.mAdapter.hasStableIds() || (childViewHolderInt = getChildViewHolderInt(view)) == null) {
            return -1L;
        }
        return childViewHolderInt.getItemId();
    }

    @Deprecated
    public u findViewHolderForPosition(int i2) {
        return findViewHolderForPosition(i2, false);
    }

    public u findViewHolderForLayoutPosition(int i2) {
        return findViewHolderForPosition(i2, false);
    }

    public u findViewHolderForAdapterPosition(int i2) {
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int c2 = this.mChildHelper.c();
        int i3 = 0;
        u uVar = null;
        while (i3 < c2) {
            u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i3));
            if (childViewHolderInt == null || childViewHolderInt.isRemoved() || getAdapterPositionFor(childViewHolderInt) != i2) {
                childViewHolderInt = uVar;
            } else if (!this.mChildHelper.c(childViewHolderInt.itemView)) {
                return childViewHolderInt;
            }
            i3++;
            uVar = childViewHolderInt;
        }
        return uVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    u findViewHolderForPosition(int i2, boolean z) {
        int c2 = this.mChildHelper.c();
        u uVar = null;
        for (int i3 = 0; i3 < c2; i3++) {
            u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i3));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved()) {
                if (z) {
                    if (childViewHolderInt.mPosition != i2) {
                        continue;
                    }
                    if (this.mChildHelper.c(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    uVar = childViewHolderInt;
                } else {
                    if (childViewHolderInt.getLayoutPosition() != i2) {
                        continue;
                    }
                    if (this.mChildHelper.c(childViewHolderInt.itemView)) {
                    }
                }
            }
        }
        return uVar;
    }

    public u findViewHolderForItemId(long j2) {
        if (this.mAdapter == null || !this.mAdapter.hasStableIds()) {
            return null;
        }
        int c2 = this.mChildHelper.c();
        int i2 = 0;
        u uVar = null;
        while (i2 < c2) {
            u childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
            if (childViewHolderInt == null || childViewHolderInt.isRemoved() || childViewHolderInt.getItemId() != j2) {
                childViewHolderInt = uVar;
            } else if (!this.mChildHelper.c(childViewHolderInt.itemView)) {
                return childViewHolderInt;
            }
            i2++;
            uVar = childViewHolderInt;
        }
        return uVar;
    }

    public View findChildViewUnder(float f2, float f3) {
        for (int b2 = this.mChildHelper.b() - 1; b2 >= 0; b2--) {
            View b3 = this.mChildHelper.b(b2);
            float m2 = android.support.v4.view.ai.m(b3);
            float n2 = android.support.v4.view.ai.n(b3);
            if (f2 >= b3.getLeft() + m2 && f2 <= m2 + b3.getRight() && f3 >= b3.getTop() + n2 && f3 <= b3.getBottom() + n2) {
                return b3;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public void offsetChildrenVertical(int i2) {
        int b2 = this.mChildHelper.b();
        for (int i3 = 0; i3 < b2; i3++) {
            this.mChildHelper.b(i3).offsetTopAndBottom(i2);
        }
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    public void offsetChildrenHorizontal(int i2) {
        int b2 = this.mChildHelper.b();
        for (int i3 = 0; i3 < b2; i3++) {
            this.mChildHelper.b(i3).offsetLeftAndRight(i2);
        }
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.d;
        int left = (view.getLeft() - rect2.left) - layoutParams.leftMargin;
        int top = (view.getTop() - rect2.top) - layoutParams.topMargin;
        int right = view.getRight() + rect2.right + layoutParams.rightMargin;
        int bottom = view.getBottom();
        rect.set(left, top, right, layoutParams.bottomMargin + rect2.bottom + bottom);
    }

    Rect getItemDecorInsetsForChild(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.e) {
            return layoutParams.d;
        }
        if (this.mState.a() && (layoutParams.e() || layoutParams.c())) {
            return layoutParams.d;
        }
        Rect rect = layoutParams.d;
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i2).a(this.mTempRect, view, this, this.mState);
            rect.left += this.mTempRect.left;
            rect.top += this.mTempRect.top;
            rect.right += this.mTempRect.right;
            rect.bottom += this.mTempRect.bottom;
        }
        layoutParams.e = false;
        return rect;
    }

    public void onScrolled(int i2, int i3) {
    }

    void dispatchOnScrolled(int i2, int i3) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        onScrolled(i2, i3);
        if (this.mScrollListener != null) {
            this.mScrollListener.onScrolled(this, i2, i3);
        }
        if (this.mScrollListeners != null) {
            for (int size = this.mScrollListeners.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrolled(this, i2, i3);
            }
        }
        this.mDispatchScrollCounter--;
    }

    public void onScrollStateChanged(int i2) {
    }

    void dispatchOnScrollStateChanged(int i2) {
        if (this.mLayout != null) {
            this.mLayout.onScrollStateChanged(i2);
        }
        onScrollStateChanged(i2);
        if (this.mScrollListener != null) {
            this.mScrollListener.onScrollStateChanged(this, i2);
        }
        if (this.mScrollListeners != null) {
            for (int size = this.mScrollListeners.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrollStateChanged(this, i2);
            }
        }
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class t implements Runnable {
        private int c;
        private int d;
        private android.support.v4.widget.x e;

        /* renamed from: a  reason: collision with root package name */
        Interpolator f821a = RecyclerView.sQuinticInterpolator;
        private boolean f = false;
        private boolean g = false;

        public t() {
            this.e = android.support.v4.widget.x.a(RecyclerView.this.getContext(), RecyclerView.sQuinticInterpolator);
        }

        /* JADX WARN: Removed duplicated region for block: B:104:0x01ba  */
        /* JADX WARN: Removed duplicated region for block: B:105:0x01bd  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00b0  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00be  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00cf  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00d6  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00e2  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x010f  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x0150  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            int i;
            int i2;
            int i3;
            int i4;
            if (RecyclerView.this.mLayout == null) {
                b();
                return;
            }
            c();
            RecyclerView.this.consumePendingUpdateOperations();
            android.support.v4.widget.x xVar = this.e;
            q qVar = RecyclerView.this.mLayout.mSmoothScroller;
            if (xVar.g()) {
                int b = xVar.b();
                int c = xVar.c();
                int i5 = b - this.c;
                int i6 = c - this.d;
                int i7 = 0;
                int i8 = 0;
                this.c = b;
                this.d = c;
                int i9 = 0;
                int i10 = 0;
                if (RecyclerView.this.mAdapter != null) {
                    RecyclerView.this.eatRequestLayout();
                    RecyclerView.this.onEnterLayoutOrScroll();
                    android.support.v4.os.i.a(RecyclerView.TRACE_SCROLL_TAG);
                    if (i5 != 0) {
                        i7 = RecyclerView.this.mLayout.scrollHorizontallyBy(i5, RecyclerView.this.mRecycler, RecyclerView.this.mState);
                        i9 = i5 - i7;
                    }
                    if (i6 != 0) {
                        i8 = RecyclerView.this.mLayout.scrollVerticallyBy(i6, RecyclerView.this.mRecycler, RecyclerView.this.mState);
                        i10 = i6 - i8;
                    }
                    android.support.v4.os.i.a();
                    RecyclerView.this.repositionShadowingViews();
                    RecyclerView.this.onExitLayoutOrScroll();
                    RecyclerView.this.resumeRequestLayout(false);
                    if (qVar != null && !qVar.isPendingInitialRun() && qVar.isRunning()) {
                        int e = RecyclerView.this.mState.e();
                        if (e == 0) {
                            qVar.stop();
                            int i11 = i9;
                            i = i8;
                            i2 = i11;
                        } else if (qVar.getTargetPosition() >= e) {
                            qVar.setTargetPosition(e - 1);
                            qVar.onAnimation(i5 - i9, i6 - i10);
                            int i12 = i9;
                            i = i8;
                            i2 = i12;
                        } else {
                            qVar.onAnimation(i5 - i9, i6 - i10);
                        }
                        if (!RecyclerView.this.mItemDecorations.isEmpty()) {
                            RecyclerView.this.invalidate();
                        }
                        if (RecyclerView.this.getOverScrollMode() != 2) {
                            RecyclerView.this.considerReleasingGlowsOnScroll(i5, i6);
                        }
                        if (i2 == 0 || i10 != 0) {
                            int f = (int) xVar.f();
                            if (i2 != b) {
                                i3 = 0;
                            } else {
                                if (i2 < 0) {
                                    i4 = -f;
                                } else {
                                    i4 = i2 > 0 ? f : 0;
                                }
                                i3 = i4;
                            }
                            if (i10 != c) {
                                f = 0;
                            } else if (i10 < 0) {
                                f = -f;
                            } else if (i10 <= 0) {
                                f = 0;
                            }
                            if (RecyclerView.this.getOverScrollMode() != 2) {
                                RecyclerView.this.absorbGlows(i3, f);
                            }
                            if ((i3 == 0 || i2 == b || xVar.d() == 0) && (f != 0 || i10 == c || xVar.e() == 0)) {
                                xVar.h();
                            }
                        }
                        if (i7 == 0 || i != 0) {
                            RecyclerView.this.dispatchOnScrolled(i7, i);
                        }
                        if (!RecyclerView.this.awakenScrollBars()) {
                            RecyclerView.this.invalidate();
                        }
                        boolean z = (i5 != 0 && i6 == 0) || (i5 == 0 && RecyclerView.this.mLayout.canScrollHorizontally() && i7 == i5) || (i6 == 0 && RecyclerView.this.mLayout.canScrollVertically() && i == i6);
                        if (!xVar.a() || !z) {
                            RecyclerView.this.setScrollState(0);
                            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                                RecyclerView.this.mPrefetchRegistry.a();
                            }
                        } else {
                            a();
                            if (RecyclerView.this.mGapWorker != null) {
                                RecyclerView.this.mGapWorker.a(RecyclerView.this, i5, i6);
                            }
                        }
                    }
                }
                int i13 = i9;
                i = i8;
                i2 = i13;
                if (!RecyclerView.this.mItemDecorations.isEmpty()) {
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                }
                if (i2 == 0) {
                }
                int f2 = (int) xVar.f();
                if (i2 != b) {
                }
                if (i10 != c) {
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                }
                if (i3 == 0) {
                }
                xVar.h();
                if (i7 == 0) {
                }
                RecyclerView.this.dispatchOnScrolled(i7, i);
                if (!RecyclerView.this.awakenScrollBars()) {
                }
                if (i6 == 0) {
                }
                if (i5 != 0) {
                }
                if (!xVar.a()) {
                }
                RecyclerView.this.setScrollState(0);
                if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                }
            }
            if (qVar != null) {
                if (qVar.isPendingInitialRun()) {
                    qVar.onAnimation(0, 0);
                }
                if (!this.g) {
                    qVar.stop();
                }
            }
            d();
        }

        private void c() {
            this.g = false;
            this.f = true;
        }

        private void d() {
            this.f = false;
            if (this.g) {
                a();
            }
        }

        void a() {
            if (this.f) {
                this.g = true;
                return;
            }
            RecyclerView.this.removeCallbacks(this);
            android.support.v4.view.ai.a(RecyclerView.this, this);
        }

        public void a(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.d = 0;
            this.c = 0;
            this.e.a(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            a();
        }

        public void b(int i, int i2) {
            a(i, i2, 0, 0);
        }

        public void a(int i, int i2, int i3, int i4) {
            a(i, i2, b(i, i2, i3, i4));
        }

        private float a(float f) {
            return (float) Math.sin((float) ((f - 0.5f) * 0.4712389167638204d));
        }

        private int b(int i, int i2, int i3, int i4) {
            int i5;
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            boolean z = abs > abs2;
            int sqrt = (int) Math.sqrt((i3 * i3) + (i4 * i4));
            int sqrt2 = (int) Math.sqrt((i * i) + (i2 * i2));
            int width = z ? RecyclerView.this.getWidth() : RecyclerView.this.getHeight();
            int i6 = width / 2;
            float a2 = (a(Math.min(1.0f, (sqrt2 * 1.0f) / width)) * i6) + i6;
            if (sqrt > 0) {
                i5 = Math.round(1000.0f * Math.abs(a2 / sqrt)) * 4;
            } else {
                i5 = (int) ((((z ? abs : abs2) / width) + 1.0f) * 300.0f);
            }
            return Math.min(i5, 2000);
        }

        public void a(int i, int i2, int i3) {
            a(i, i2, i3, RecyclerView.sQuinticInterpolator);
        }

        public void a(int i, int i2, Interpolator interpolator) {
            int b = b(i, i2, 0, 0);
            if (interpolator == null) {
                interpolator = RecyclerView.sQuinticInterpolator;
            }
            a(i, i2, b, interpolator);
        }

        public void a(int i, int i2, int i3, Interpolator interpolator) {
            if (this.f821a != interpolator) {
                this.f821a = interpolator;
                this.e = android.support.v4.widget.x.a(RecyclerView.this.getContext(), interpolator);
            }
            RecyclerView.this.setScrollState(2);
            this.d = 0;
            this.c = 0;
            this.e.a(0, 0, i, i2, i3);
            a();
        }

        public void b() {
            RecyclerView.this.removeCallbacks(this);
            this.e.h();
        }
    }

    void repositionShadowingViews() {
        int b2 = this.mChildHelper.b();
        for (int i2 = 0; i2 < b2; i2++) {
            View b3 = this.mChildHelper.b(i2);
            u childViewHolder = getChildViewHolder(b3);
            if (childViewHolder != null && childViewHolder.mShadowingHolder != null) {
                View view = childViewHolder.mShadowingHolder.itemView;
                int left = b3.getLeft();
                int top = b3.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class p extends c {
        p() {
        }

        @Override // android.support.v7.widget.RecyclerView.c
        public void onChanged() {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            RecyclerView.this.mState.e = true;
            RecyclerView.this.setDataSetChangedAfterLayout();
            if (!RecyclerView.this.mAdapterHelper.d()) {
                RecyclerView.this.requestLayout();
            }
        }

        @Override // android.support.v7.widget.RecyclerView.c
        public void onItemRangeChanged(int i, int i2, Object obj) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.a(i, i2, obj)) {
                a();
            }
        }

        @Override // android.support.v7.widget.RecyclerView.c
        public void onItemRangeInserted(int i, int i2) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.b(i, i2)) {
                a();
            }
        }

        @Override // android.support.v7.widget.RecyclerView.c
        public void onItemRangeRemoved(int i, int i2) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.c(i, i2)) {
                a();
            }
        }

        @Override // android.support.v7.widget.RecyclerView.c
        public void onItemRangeMoved(int i, int i2, int i3) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.a(i, i2, i3)) {
                a();
            }
        }

        void a() {
            if (RecyclerView.POST_UPDATES_ON_ANIMATION && RecyclerView.this.mHasFixedSize && RecyclerView.this.mIsAttached) {
                android.support.v4.view.ai.a(RecyclerView.this, RecyclerView.this.mUpdateChildViewsRunnable);
                return;
            }
            RecyclerView.this.mAdapterUpdateDuringMeasure = true;
            RecyclerView.this.requestLayout();
        }
    }

    /* loaded from: classes.dex */
    public static class m {

        /* renamed from: a  reason: collision with root package name */
        SparseArray<a> f815a = new SparseArray<>();
        private int b = 0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            ArrayList<u> f816a = new ArrayList<>();
            int b = 5;
            long c = 0;
            long d = 0;

            a() {
            }
        }

        public void a() {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f815a.size()) {
                    this.f815a.valueAt(i2).f816a.clear();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }

        public u a(int i) {
            a aVar = this.f815a.get(i);
            if (aVar == null || aVar.f816a.isEmpty()) {
                return null;
            }
            ArrayList<u> arrayList = aVar.f816a;
            return arrayList.remove(arrayList.size() - 1);
        }

        public void a(u uVar) {
            int itemViewType = uVar.getItemViewType();
            ArrayList<u> arrayList = b(itemViewType).f816a;
            if (this.f815a.get(itemViewType).b > arrayList.size()) {
                uVar.resetInternal();
                arrayList.add(uVar);
            }
        }

        long a(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        void a(int i, long j) {
            a b = b(i);
            b.c = a(b.c, j);
        }

        void b(int i, long j) {
            a b = b(i);
            b.d = a(b.d, j);
        }

        boolean a(int i, long j, long j2) {
            long j3 = b(i).c;
            return j3 == 0 || j3 + j < j2;
        }

        boolean b(int i, long j, long j2) {
            long j3 = b(i).d;
            return j3 == 0 || j3 + j < j2;
        }

        void a(a aVar) {
            this.b++;
        }

        void b() {
            this.b--;
        }

        void a(a aVar, a aVar2, boolean z) {
            if (aVar != null) {
                b();
            }
            if (!z && this.b == 0) {
                a();
            }
            if (aVar2 != null) {
                a(aVar2);
            }
        }

        private a b(int i) {
            a aVar = this.f815a.get(i);
            if (aVar == null) {
                a aVar2 = new a();
                this.f815a.put(i, aVar2);
                return aVar2;
            }
            return aVar;
        }
    }

    static RecyclerView findNestedRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView findNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i2));
            if (findNestedRecyclerView != null) {
                return findNestedRecyclerView;
            }
        }
        return null;
    }

    static void clearNestedRecyclerViewIfNotNested(u uVar) {
        if (uVar.mNestedRecyclerView != null) {
            RecyclerView recyclerView = uVar.mNestedRecyclerView.get();
            while (recyclerView != null) {
                if (recyclerView != uVar.itemView) {
                    ViewParent parent = recyclerView.getParent();
                    recyclerView = parent instanceof View ? (View) parent : null;
                } else {
                    return;
                }
            }
            uVar.mNestedRecyclerView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    /* loaded from: classes.dex */
    public final class n {
        m e;
        private s i;

        /* renamed from: a  reason: collision with root package name */
        final ArrayList<u> f817a = new ArrayList<>();
        ArrayList<u> b = null;
        final ArrayList<u> c = new ArrayList<>();
        private final List<u> g = Collections.unmodifiableList(this.f817a);
        private int h = 2;
        int d = 2;

        public n() {
        }

        public void a() {
            this.f817a.clear();
            d();
        }

        public void a(int i) {
            this.h = i;
            b();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b() {
            this.d = (RecyclerView.this.mLayout != null ? RecyclerView.this.mLayout.mPrefetchMaxCountObserved : 0) + this.h;
            for (int size = this.c.size() - 1; size >= 0 && this.c.size() > this.d; size--) {
                d(size);
            }
        }

        public List<u> c() {
            return this.g;
        }

        boolean a(u uVar) {
            if (uVar.isRemoved()) {
                return RecyclerView.this.mState.a();
            }
            if (uVar.mPosition < 0 || uVar.mPosition >= RecyclerView.this.mAdapter.getItemCount()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + uVar);
            }
            if (!RecyclerView.this.mState.a() && RecyclerView.this.mAdapter.getItemViewType(uVar.mPosition) != uVar.getItemViewType()) {
                return false;
            }
            return !RecyclerView.this.mAdapter.hasStableIds() || uVar.getItemId() == RecyclerView.this.mAdapter.getItemId(uVar.mPosition);
        }

        private boolean a(u uVar, int i, int i2, long j) {
            uVar.mOwnerRecyclerView = RecyclerView.this;
            int itemViewType = uVar.getItemViewType();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j != Long.MAX_VALUE && !this.e.b(itemViewType, nanoTime, j)) {
                return false;
            }
            RecyclerView.this.mAdapter.bindViewHolder(uVar, i);
            this.e.b(uVar.getItemViewType(), RecyclerView.this.getNanoTime() - nanoTime);
            d(uVar.itemView);
            if (RecyclerView.this.mState.a()) {
                uVar.mPreLayoutPosition = i2;
            }
            return true;
        }

        public int b(int i) {
            if (i < 0 || i >= RecyclerView.this.mState.e()) {
                throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.mState.e());
            }
            return !RecyclerView.this.mState.a() ? i : RecyclerView.this.mAdapterHelper.b(i);
        }

        public View c(int i) {
            return a(i, false);
        }

        View a(int i, boolean z) {
            return a(i, z, Long.MAX_VALUE).itemView;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public u a(int i, boolean z, long j) {
            u uVar;
            boolean z2;
            u uVar2;
            boolean z3;
            boolean a2;
            LayoutParams layoutParams;
            boolean z4;
            RecyclerView findNestedRecyclerView;
            View a3;
            boolean z5 = true;
            if (i < 0 || i >= RecyclerView.this.mState.e()) {
                throw new IndexOutOfBoundsException("Invalid item position " + i + "(" + i + "). Item count:" + RecyclerView.this.mState.e());
            }
            if (RecyclerView.this.mState.a()) {
                u f = f(i);
                z2 = f != null;
                uVar = f;
            } else {
                uVar = null;
                z2 = false;
            }
            if (uVar == null && (uVar = b(i, z)) != null) {
                if (!a(uVar)) {
                    if (!z) {
                        uVar.addFlags(4);
                        if (uVar.isScrap()) {
                            RecyclerView.this.removeDetachedView(uVar.itemView, false);
                            uVar.unScrap();
                        } else if (uVar.wasReturnedFromScrap()) {
                            uVar.clearReturnedFromScrapFlag();
                        }
                        b(uVar);
                    }
                    uVar = null;
                } else {
                    z2 = true;
                }
            }
            if (uVar == null) {
                int b = RecyclerView.this.mAdapterHelper.b(i);
                if (b < 0 || b >= RecyclerView.this.mAdapter.getItemCount()) {
                    throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i + "(offset:" + b + ").state:" + RecyclerView.this.mState.e());
                }
                int itemViewType = RecyclerView.this.mAdapter.getItemViewType(b);
                if (!RecyclerView.this.mAdapter.hasStableIds() || (uVar = a(RecyclerView.this.mAdapter.getItemId(b), itemViewType, z)) == null) {
                    z4 = z2;
                } else {
                    uVar.mPosition = b;
                    z4 = true;
                }
                if (uVar == null && this.i != null && (a3 = this.i.a(this, i, itemViewType)) != null) {
                    uVar = RecyclerView.this.getChildViewHolder(a3);
                    if (uVar == null) {
                        throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
                    }
                    if (uVar.shouldIgnore()) {
                        throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                    }
                }
                if (uVar == null && (uVar = g().a(itemViewType)) != null) {
                    uVar.resetInternal();
                    if (RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST) {
                        e(uVar);
                    }
                }
                if (uVar == null) {
                    long nanoTime = RecyclerView.this.getNanoTime();
                    if (j != Long.MAX_VALUE && !this.e.a(itemViewType, nanoTime, j)) {
                        return null;
                    }
                    uVar = RecyclerView.this.mAdapter.createViewHolder(RecyclerView.this, itemViewType);
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK && (findNestedRecyclerView = RecyclerView.findNestedRecyclerView(uVar.itemView)) != null) {
                        uVar.mNestedRecyclerView = new WeakReference<>(findNestedRecyclerView);
                    }
                    this.e.a(itemViewType, RecyclerView.this.getNanoTime() - nanoTime);
                }
                uVar2 = uVar;
                z3 = z4;
            } else {
                uVar2 = uVar;
                z3 = z2;
            }
            if (z3 && !RecyclerView.this.mState.a() && uVar2.hasAnyOfTheFlags(Utility.DEFAULT_STREAM_BUFFER_SIZE)) {
                uVar2.setFlags(0, Utility.DEFAULT_STREAM_BUFFER_SIZE);
                if (RecyclerView.this.mState.i) {
                    RecyclerView.this.recordAnimationInfoIfBouncedHiddenView(uVar2, RecyclerView.this.mItemAnimator.a(RecyclerView.this.mState, uVar2, e.e(uVar2) | 4096, uVar2.getUnmodifiedPayloads()));
                }
            }
            if (RecyclerView.this.mState.a() && uVar2.isBound()) {
                uVar2.mPreLayoutPosition = i;
                a2 = false;
            } else {
                a2 = (!uVar2.isBound() || uVar2.needsUpdate() || uVar2.isInvalid()) ? a(uVar2, RecyclerView.this.mAdapterHelper.b(i), i, j) : false;
            }
            ViewGroup.LayoutParams layoutParams2 = uVar2.itemView.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams = (LayoutParams) RecyclerView.this.generateDefaultLayoutParams();
                uVar2.itemView.setLayoutParams(layoutParams);
            } else if (!RecyclerView.this.checkLayoutParams(layoutParams2)) {
                layoutParams = (LayoutParams) RecyclerView.this.generateLayoutParams(layoutParams2);
                uVar2.itemView.setLayoutParams(layoutParams);
            } else {
                layoutParams = (LayoutParams) layoutParams2;
            }
            layoutParams.c = uVar2;
            if (!z3 || !a2) {
                z5 = false;
            }
            layoutParams.f = z5;
            return uVar2;
        }

        private void d(View view) {
            if (RecyclerView.this.isAccessibilityEnabled()) {
                if (android.support.v4.view.ai.d(view) == 0) {
                    android.support.v4.view.ai.c(view, 1);
                }
                if (!android.support.v4.view.ai.a(view)) {
                    android.support.v4.view.ai.a(view, RecyclerView.this.mAccessibilityDelegate.c());
                }
            }
        }

        private void e(u uVar) {
            if (uVar.itemView instanceof ViewGroup) {
                a((ViewGroup) uVar.itemView, false);
            }
        }

        private void a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                    return;
                }
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }

        public void a(View view) {
            u childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            b(childViewHolderInt);
        }

        void d() {
            for (int size = this.c.size() - 1; size >= 0; size--) {
                d(size);
            }
            this.c.clear();
            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                RecyclerView.this.mPrefetchRegistry.a();
            }
        }

        void d(int i) {
            a(this.c.get(i), true);
            this.c.remove(i);
        }

        void b(u uVar) {
            boolean z;
            boolean z2 = false;
            if (uVar.isScrap() || uVar.itemView.getParent() != null) {
                throw new IllegalArgumentException("Scrapped or attached views may not be recycled. isScrap:" + uVar.isScrap() + " isAttached:" + (uVar.itemView.getParent() != null));
            } else if (uVar.isTmpDetached()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + uVar);
            } else {
                if (uVar.shouldIgnore()) {
                    throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
                }
                boolean doesTransientStatePreventRecycling = uVar.doesTransientStatePreventRecycling();
                if ((RecyclerView.this.mAdapter != null && doesTransientStatePreventRecycling && RecyclerView.this.mAdapter.onFailedToRecycleView(uVar)) || uVar.isRecyclable()) {
                    if (this.d <= 0 || uVar.hasAnyOfTheFlags(526)) {
                        z = false;
                    } else {
                        int size = this.c.size();
                        if (size >= this.d && size > 0) {
                            d(0);
                            size--;
                        }
                        if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0 && !RecyclerView.this.mPrefetchRegistry.a(uVar.mPosition)) {
                            int i = size - 1;
                            while (i >= 0) {
                                if (!RecyclerView.this.mPrefetchRegistry.a(this.c.get(i).mPosition)) {
                                    break;
                                }
                                i--;
                            }
                            size = i + 1;
                        }
                        this.c.add(size, uVar);
                        z = true;
                    }
                    if (!z) {
                        a(uVar, true);
                        z2 = true;
                    }
                } else {
                    z = false;
                }
                RecyclerView.this.mViewInfoStore.g(uVar);
                if (!z && !z2 && doesTransientStatePreventRecycling) {
                    uVar.mOwnerRecyclerView = null;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(u uVar, boolean z) {
            RecyclerView.clearNestedRecyclerViewIfNotNested(uVar);
            android.support.v4.view.ai.a(uVar.itemView, (android.support.v4.view.a) null);
            if (z) {
                d(uVar);
            }
            uVar.mOwnerRecyclerView = null;
            g().a(uVar);
        }

        void b(View view) {
            u childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.mScrapContainer = null;
            childViewHolderInt.mInChangeScrap = false;
            childViewHolderInt.clearReturnedFromScrapFlag();
            b(childViewHolderInt);
        }

        void c(View view) {
            u childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.hasAnyOfTheFlags(12) || !childViewHolderInt.isUpdated() || RecyclerView.this.canReuseUpdatedViewHolder(childViewHolderInt)) {
                if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !RecyclerView.this.mAdapter.hasStableIds()) {
                    throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
                }
                childViewHolderInt.setScrapContainer(this, false);
                this.f817a.add(childViewHolderInt);
                return;
            }
            if (this.b == null) {
                this.b = new ArrayList<>();
            }
            childViewHolderInt.setScrapContainer(this, true);
            this.b.add(childViewHolderInt);
        }

        void c(u uVar) {
            if (uVar.mInChangeScrap) {
                this.b.remove(uVar);
            } else {
                this.f817a.remove(uVar);
            }
            uVar.mScrapContainer = null;
            uVar.mInChangeScrap = false;
            uVar.clearReturnedFromScrapFlag();
        }

        int e() {
            return this.f817a.size();
        }

        View e(int i) {
            return this.f817a.get(i).itemView;
        }

        void f() {
            this.f817a.clear();
            if (this.b != null) {
                this.b.clear();
            }
        }

        u f(int i) {
            int size;
            int b;
            if (this.b == null || (size = this.b.size()) == 0) {
                return null;
            }
            for (int i2 = 0; i2 < size; i2++) {
                u uVar = this.b.get(i2);
                if (!uVar.wasReturnedFromScrap() && uVar.getLayoutPosition() == i) {
                    uVar.addFlags(32);
                    return uVar;
                }
            }
            if (RecyclerView.this.mAdapter.hasStableIds() && (b = RecyclerView.this.mAdapterHelper.b(i)) > 0 && b < RecyclerView.this.mAdapter.getItemCount()) {
                long itemId = RecyclerView.this.mAdapter.getItemId(b);
                for (int i3 = 0; i3 < size; i3++) {
                    u uVar2 = this.b.get(i3);
                    if (!uVar2.wasReturnedFromScrap() && uVar2.getItemId() == itemId) {
                        uVar2.addFlags(32);
                        return uVar2;
                    }
                }
            }
            return null;
        }

        u b(int i, boolean z) {
            View c;
            int size = this.f817a.size();
            for (int i2 = 0; i2 < size; i2++) {
                u uVar = this.f817a.get(i2);
                if (!uVar.wasReturnedFromScrap() && uVar.getLayoutPosition() == i && !uVar.isInvalid() && (RecyclerView.this.mState.f || !uVar.isRemoved())) {
                    uVar.addFlags(32);
                    return uVar;
                }
            }
            if (!z && (c = RecyclerView.this.mChildHelper.c(i)) != null) {
                u childViewHolderInt = RecyclerView.getChildViewHolderInt(c);
                RecyclerView.this.mChildHelper.e(c);
                int b = RecyclerView.this.mChildHelper.b(c);
                if (b == -1) {
                    throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + childViewHolderInt);
                }
                RecyclerView.this.mChildHelper.e(b);
                c(c);
                childViewHolderInt.addFlags(8224);
                return childViewHolderInt;
            }
            int size2 = this.c.size();
            for (int i3 = 0; i3 < size2; i3++) {
                u uVar2 = this.c.get(i3);
                if (!uVar2.isInvalid() && uVar2.getLayoutPosition() == i) {
                    if (!z) {
                        this.c.remove(i3);
                        return uVar2;
                    } else {
                        return uVar2;
                    }
                }
            }
            return null;
        }

        u a(long j, int i, boolean z) {
            for (int size = this.f817a.size() - 1; size >= 0; size--) {
                u uVar = this.f817a.get(size);
                if (uVar.getItemId() == j && !uVar.wasReturnedFromScrap()) {
                    if (i == uVar.getItemViewType()) {
                        uVar.addFlags(32);
                        if (uVar.isRemoved() && !RecyclerView.this.mState.a()) {
                            uVar.setFlags(2, 14);
                            return uVar;
                        }
                        return uVar;
                    } else if (!z) {
                        this.f817a.remove(size);
                        RecyclerView.this.removeDetachedView(uVar.itemView, false);
                        b(uVar.itemView);
                    }
                }
            }
            for (int size2 = this.c.size() - 1; size2 >= 0; size2--) {
                u uVar2 = this.c.get(size2);
                if (uVar2.getItemId() == j) {
                    if (i == uVar2.getItemViewType()) {
                        if (!z) {
                            this.c.remove(size2);
                            return uVar2;
                        }
                        return uVar2;
                    } else if (!z) {
                        d(size2);
                        return null;
                    }
                }
            }
            return null;
        }

        void d(u uVar) {
            if (RecyclerView.this.mRecyclerListener != null) {
                RecyclerView.this.mRecyclerListener.a(uVar);
            }
            if (RecyclerView.this.mAdapter != null) {
                RecyclerView.this.mAdapter.onViewRecycled(uVar);
            }
            if (RecyclerView.this.mState != null) {
                RecyclerView.this.mViewInfoStore.g(uVar);
            }
        }

        void a(a aVar, a aVar2, boolean z) {
            a();
            g().a(aVar, aVar2, z);
        }

        void a(int i, int i2) {
            int i3;
            int i4;
            int i5;
            if (i < i2) {
                i3 = -1;
                i4 = i2;
                i5 = i;
            } else {
                i3 = 1;
                i4 = i;
                i5 = i2;
            }
            int size = this.c.size();
            for (int i6 = 0; i6 < size; i6++) {
                u uVar = this.c.get(i6);
                if (uVar != null && uVar.mPosition >= i5 && uVar.mPosition <= i4) {
                    if (uVar.mPosition == i) {
                        uVar.offsetPosition(i2 - i, false);
                    } else {
                        uVar.offsetPosition(i3, false);
                    }
                }
            }
        }

        void b(int i, int i2) {
            int size = this.c.size();
            for (int i3 = 0; i3 < size; i3++) {
                u uVar = this.c.get(i3);
                if (uVar != null && uVar.mPosition >= i) {
                    uVar.offsetPosition(i2, true);
                }
            }
        }

        void a(int i, int i2, boolean z) {
            int i3 = i + i2;
            for (int size = this.c.size() - 1; size >= 0; size--) {
                u uVar = this.c.get(size);
                if (uVar != null) {
                    if (uVar.mPosition >= i3) {
                        uVar.offsetPosition(-i2, z);
                    } else if (uVar.mPosition >= i) {
                        uVar.addFlags(8);
                        d(size);
                    }
                }
            }
        }

        void a(s sVar) {
            this.i = sVar;
        }

        void a(m mVar) {
            if (this.e != null) {
                this.e.b();
            }
            this.e = mVar;
            if (mVar != null) {
                this.e.a(RecyclerView.this.getAdapter());
            }
        }

        m g() {
            if (this.e == null) {
                this.e = new m();
            }
            return this.e;
        }

        void c(int i, int i2) {
            int i3;
            int i4 = i + i2;
            for (int size = this.c.size() - 1; size >= 0; size--) {
                u uVar = this.c.get(size);
                if (uVar != null && (i3 = uVar.mPosition) >= i && i3 < i4) {
                    uVar.addFlags(2);
                    d(size);
                }
            }
        }

        void h() {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                u uVar = this.c.get(i);
                if (uVar != null) {
                    uVar.addFlags(512);
                }
            }
        }

        void i() {
            if (RecyclerView.this.mAdapter != null && RecyclerView.this.mAdapter.hasStableIds()) {
                int size = this.c.size();
                for (int i = 0; i < size; i++) {
                    u uVar = this.c.get(i);
                    if (uVar != null) {
                        uVar.addFlags(6);
                        uVar.addChangePayload(null);
                    }
                }
                return;
            }
            d();
        }

        void j() {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                this.c.get(i).clearOldPosition();
            }
            int size2 = this.f817a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f817a.get(i2).clearOldPosition();
            }
            if (this.b != null) {
                int size3 = this.b.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.b.get(i3).clearOldPosition();
                }
            }
        }

        void k() {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                LayoutParams layoutParams = (LayoutParams) this.c.get(i).itemView.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.e = true;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class a<VH extends u> {
        private final b mObservable = new b();
        private boolean mHasStableIds = false;

        public abstract int getItemCount();

        public abstract void onBindViewHolder(VH vh, int i);

        public abstract VH onCreateViewHolder(ViewGroup viewGroup, int i);

        public void onBindViewHolder(VH vh, int i, List<Object> list) {
            onBindViewHolder(vh, i);
        }

        public final VH createViewHolder(ViewGroup viewGroup, int i) {
            android.support.v4.os.i.a(RecyclerView.TRACE_CREATE_VIEW_TAG);
            VH onCreateViewHolder = onCreateViewHolder(viewGroup, i);
            onCreateViewHolder.mItemViewType = i;
            android.support.v4.os.i.a();
            return onCreateViewHolder;
        }

        public final void bindViewHolder(VH vh, int i) {
            vh.mPosition = i;
            if (hasStableIds()) {
                vh.mItemId = getItemId(i);
            }
            vh.setFlags(1, 519);
            android.support.v4.os.i.a(RecyclerView.TRACE_BIND_VIEW_TAG);
            onBindViewHolder(vh, i, vh.getUnmodifiedPayloads());
            vh.clearPayload();
            ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
            if (layoutParams instanceof LayoutParams) {
                ((LayoutParams) layoutParams).e = true;
            }
            android.support.v4.os.i.a();
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public void setHasStableIds(boolean z) {
            if (hasObservers()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.mHasStableIds = z;
        }

        public long getItemId(int i) {
            return -1L;
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public void onViewRecycled(VH vh) {
        }

        public boolean onFailedToRecycleView(VH vh) {
            return false;
        }

        public void onViewAttachedToWindow(VH vh) {
        }

        public void onViewDetachedFromWindow(VH vh) {
        }

        public final boolean hasObservers() {
            return this.mObservable.a();
        }

        public void registerAdapterDataObserver(c cVar) {
            this.mObservable.registerObserver(cVar);
        }

        public void unregisterAdapterDataObserver(c cVar) {
            this.mObservable.unregisterObserver(cVar);
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        }

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        }

        public final void notifyDataSetChanged() {
            this.mObservable.b();
        }

        public final void notifyItemChanged(int i) {
            this.mObservable.a(i, 1);
        }

        public final void notifyItemChanged(int i, Object obj) {
            this.mObservable.a(i, 1, obj);
        }

        public final void notifyItemRangeChanged(int i, int i2) {
            this.mObservable.a(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2, Object obj) {
            this.mObservable.a(i, i2, obj);
        }

        public final void notifyItemInserted(int i) {
            this.mObservable.b(i, 1);
        }

        public final void notifyItemMoved(int i, int i2) {
            this.mObservable.d(i, i2);
        }

        public final void notifyItemRangeInserted(int i, int i2) {
            this.mObservable.b(i, i2);
        }

        public final void notifyItemRemoved(int i) {
            this.mObservable.c(i, 1);
        }

        public final void notifyItemRangeRemoved(int i, int i2) {
            this.mObservable.c(i, i2);
        }
    }

    void dispatchChildDetached(View view) {
        u childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        if (this.mAdapter != null && childViewHolderInt != null) {
            this.mAdapter.onViewDetachedFromWindow(childViewHolderInt);
        }
        if (this.mOnChildAttachStateListeners != null) {
            for (int size = this.mOnChildAttachStateListeners.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).b(view);
            }
        }
    }

    void dispatchChildAttached(View view) {
        u childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        if (this.mAdapter != null && childViewHolderInt != null) {
            this.mAdapter.onViewAttachedToWindow(childViewHolderInt);
        }
        if (this.mOnChildAttachStateListeners != null) {
            for (int size = this.mOnChildAttachStateListeners.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).a(view);
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class h {
        android.support.v7.widget.s mChildHelper;
        private int mHeight;
        private int mHeightMode;
        int mPrefetchMaxCountObserved;
        boolean mPrefetchMaxObservedInInitialPrefetch;
        RecyclerView mRecyclerView;
        q mSmoothScroller;
        private int mWidth;
        private int mWidthMode;
        private final ay.b mHorizontalBoundCheckCallback = new ay.b() { // from class: android.support.v7.widget.RecyclerView.h.1
            @Override // android.support.v7.widget.ay.b
            public View a(int i) {
                return h.this.getChildAt(i);
            }

            @Override // android.support.v7.widget.ay.b
            public int a() {
                return h.this.getPaddingLeft();
            }

            @Override // android.support.v7.widget.ay.b
            public int b() {
                return h.this.getWidth() - h.this.getPaddingRight();
            }

            @Override // android.support.v7.widget.ay.b
            public int a(View view) {
                return h.this.getDecoratedLeft(view) - ((LayoutParams) view.getLayoutParams()).leftMargin;
            }

            @Override // android.support.v7.widget.ay.b
            public int b(View view) {
                return ((LayoutParams) view.getLayoutParams()).rightMargin + h.this.getDecoratedRight(view);
            }
        };
        private final ay.b mVerticalBoundCheckCallback = new ay.b() { // from class: android.support.v7.widget.RecyclerView.h.2
            @Override // android.support.v7.widget.ay.b
            public View a(int i) {
                return h.this.getChildAt(i);
            }

            @Override // android.support.v7.widget.ay.b
            public int a() {
                return h.this.getPaddingTop();
            }

            @Override // android.support.v7.widget.ay.b
            public int b() {
                return h.this.getHeight() - h.this.getPaddingBottom();
            }

            @Override // android.support.v7.widget.ay.b
            public int a(View view) {
                return h.this.getDecoratedTop(view) - ((LayoutParams) view.getLayoutParams()).topMargin;
            }

            @Override // android.support.v7.widget.ay.b
            public int b(View view) {
                return ((LayoutParams) view.getLayoutParams()).bottomMargin + h.this.getDecoratedBottom(view);
            }
        };
        ay mHorizontalBoundCheck = new ay(this.mHorizontalBoundCheckCallback);
        ay mVerticalBoundCheck = new ay(this.mVerticalBoundCheckCallback);
        boolean mRequestedSimpleAnimations = false;
        boolean mIsAttachedToWindow = false;
        boolean mAutoMeasure = false;
        private boolean mMeasurementCacheEnabled = true;
        private boolean mItemPrefetchEnabled = true;

        /* loaded from: classes.dex */
        public interface a {
            void b(int i, int i2);
        }

        /* loaded from: classes.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public int f814a;
            public int b;
            public boolean c;
            public boolean d;
        }

        public abstract LayoutParams generateDefaultLayoutParams();

        void setRecyclerView(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.mRecyclerView = null;
                this.mChildHelper = null;
                this.mWidth = 0;
                this.mHeight = 0;
            } else {
                this.mRecyclerView = recyclerView;
                this.mChildHelper = recyclerView.mChildHelper;
                this.mWidth = recyclerView.getWidth();
                this.mHeight = recyclerView.getHeight();
            }
            this.mWidthMode = 1073741824;
            this.mHeightMode = 1073741824;
        }

        void setMeasureSpecs(int i, int i2) {
            this.mWidth = View.MeasureSpec.getSize(i);
            this.mWidthMode = View.MeasureSpec.getMode(i);
            if (this.mWidthMode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.mWidth = 0;
            }
            this.mHeight = View.MeasureSpec.getSize(i2);
            this.mHeightMode = View.MeasureSpec.getMode(i2);
            if (this.mHeightMode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.mHeight = 0;
            }
        }

        void setMeasuredDimensionFromChildren(int i, int i2) {
            int i3 = Integer.MAX_VALUE;
            int i4 = Integer.MIN_VALUE;
            int childCount = getChildCount();
            if (childCount == 0) {
                this.mRecyclerView.defaultOnMeasure(i, i2);
                return;
            }
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < childCount; i7++) {
                View childAt = getChildAt(i7);
                Rect rect = this.mRecyclerView.mTempRect;
                getDecoratedBoundsWithMargins(childAt, rect);
                if (rect.left < i6) {
                    i6 = rect.left;
                }
                if (rect.right > i5) {
                    i5 = rect.right;
                }
                if (rect.top < i3) {
                    i3 = rect.top;
                }
                if (rect.bottom > i4) {
                    i4 = rect.bottom;
                }
            }
            this.mRecyclerView.mTempRect.set(i6, i3, i5, i4);
            setMeasuredDimension(this.mRecyclerView.mTempRect, i, i2);
        }

        public void setMeasuredDimension(Rect rect, int i, int i2) {
            setMeasuredDimension(chooseSize(i, rect.width() + getPaddingLeft() + getPaddingRight(), getMinimumWidth()), chooseSize(i2, rect.height() + getPaddingTop() + getPaddingBottom(), getMinimumHeight()));
        }

        public void requestLayout() {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.requestLayout();
            }
        }

        public void assertInLayoutOrScroll(String str) {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.assertInLayoutOrScroll(str);
            }
        }

        public static int chooseSize(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            switch (mode) {
                case Integer.MIN_VALUE:
                    return Math.min(size, Math.max(i2, i3));
                case 1073741824:
                    return size;
                default:
                    return Math.max(i2, i3);
            }
        }

        public void assertNotInLayoutOrScroll(String str) {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.assertNotInLayoutOrScroll(str);
            }
        }

        public void setAutoMeasureEnabled(boolean z) {
            this.mAutoMeasure = z;
        }

        public boolean isAutoMeasureEnabled() {
            return this.mAutoMeasure;
        }

        public boolean supportsPredictiveItemAnimations() {
            return false;
        }

        public final void setItemPrefetchEnabled(boolean z) {
            if (z != this.mItemPrefetchEnabled) {
                this.mItemPrefetchEnabled = z;
                this.mPrefetchMaxCountObserved = 0;
                if (this.mRecyclerView != null) {
                    this.mRecyclerView.mRecycler.b();
                }
            }
        }

        public final boolean isItemPrefetchEnabled() {
            return this.mItemPrefetchEnabled;
        }

        public void collectAdjacentPrefetchPositions(int i, int i2, r rVar, a aVar) {
        }

        public void collectInitialPrefetchPositions(int i, a aVar) {
        }

        void dispatchAttachedToWindow(RecyclerView recyclerView) {
            this.mIsAttachedToWindow = true;
            onAttachedToWindow(recyclerView);
        }

        void dispatchDetachedFromWindow(RecyclerView recyclerView, n nVar) {
            this.mIsAttachedToWindow = false;
            onDetachedFromWindow(recyclerView, nVar);
        }

        public boolean isAttachedToWindow() {
            return this.mIsAttachedToWindow;
        }

        public void postOnAnimation(Runnable runnable) {
            if (this.mRecyclerView != null) {
                android.support.v4.view.ai.a(this.mRecyclerView, runnable);
            }
        }

        public boolean removeCallbacks(Runnable runnable) {
            if (this.mRecyclerView != null) {
                return this.mRecyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public void onAttachedToWindow(RecyclerView recyclerView) {
        }

        @Deprecated
        public void onDetachedFromWindow(RecyclerView recyclerView) {
        }

        public void onDetachedFromWindow(RecyclerView recyclerView, n nVar) {
            onDetachedFromWindow(recyclerView);
        }

        public boolean getClipToPadding() {
            return this.mRecyclerView != null && this.mRecyclerView.mClipToPadding;
        }

        public void onLayoutChildren(n nVar, r rVar) {
            Log.e(RecyclerView.TAG, "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public void onLayoutCompleted(r rVar) {
        }

        public boolean checkLayoutParams(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof LayoutParams) {
                return new LayoutParams((LayoutParams) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            }
            return new LayoutParams(layoutParams);
        }

        public LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        public int scrollHorizontallyBy(int i, n nVar, r rVar) {
            return 0;
        }

        public int scrollVerticallyBy(int i, n nVar, r rVar) {
            return 0;
        }

        public boolean canScrollHorizontally() {
            return false;
        }

        public boolean canScrollVertically() {
            return false;
        }

        public void scrollToPosition(int i) {
        }

        public void smoothScrollToPosition(RecyclerView recyclerView, r rVar, int i) {
            Log.e(RecyclerView.TAG, "You must override smoothScrollToPosition to support smooth scrolling");
        }

        public void startSmoothScroll(q qVar) {
            if (this.mSmoothScroller != null && qVar != this.mSmoothScroller && this.mSmoothScroller.isRunning()) {
                this.mSmoothScroller.stop();
            }
            this.mSmoothScroller = qVar;
            this.mSmoothScroller.start(this.mRecyclerView, this);
        }

        public boolean isSmoothScrolling() {
            return this.mSmoothScroller != null && this.mSmoothScroller.isRunning();
        }

        public int getLayoutDirection() {
            return android.support.v4.view.ai.g(this.mRecyclerView);
        }

        public void endAnimation(View view) {
            if (this.mRecyclerView.mItemAnimator != null) {
                this.mRecyclerView.mItemAnimator.d(RecyclerView.getChildViewHolderInt(view));
            }
        }

        public void addDisappearingView(View view) {
            addDisappearingView(view, -1);
        }

        public void addDisappearingView(View view, int i) {
            addViewInt(view, i, true);
        }

        public void addView(View view) {
            addView(view, -1);
        }

        public void addView(View view, int i) {
            addViewInt(view, i, false);
        }

        private void addViewInt(View view, int i, boolean z) {
            u childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (z || childViewHolderInt.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.e(childViewHolderInt);
            } else {
                this.mRecyclerView.mViewInfoStore.f(childViewHolderInt);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
                if (childViewHolderInt.isScrap()) {
                    childViewHolderInt.unScrap();
                } else {
                    childViewHolderInt.clearReturnedFromScrapFlag();
                }
                this.mChildHelper.a(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.mRecyclerView) {
                int b2 = this.mChildHelper.b(view);
                if (i == -1) {
                    i = this.mChildHelper.b();
                }
                if (b2 == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.mRecyclerView.indexOfChild(view));
                }
                if (b2 != i) {
                    this.mRecyclerView.mLayout.moveView(b2, i);
                }
            } else {
                this.mChildHelper.a(view, i, false);
                layoutParams.e = true;
                if (this.mSmoothScroller != null && this.mSmoothScroller.isRunning()) {
                    this.mSmoothScroller.onChildAttachedToWindow(view);
                }
            }
            if (layoutParams.f) {
                childViewHolderInt.itemView.invalidate();
                layoutParams.f = false;
            }
        }

        public void removeView(View view) {
            this.mChildHelper.a(view);
        }

        public void removeViewAt(int i) {
            if (getChildAt(i) != null) {
                this.mChildHelper.a(i);
            }
        }

        public void removeAllViews() {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                this.mChildHelper.a(childCount);
            }
        }

        public int getBaseline() {
            return -1;
        }

        public int getPosition(View view) {
            return ((LayoutParams) view.getLayoutParams()).f();
        }

        public int getItemViewType(View view) {
            return RecyclerView.getChildViewHolderInt(view).getItemViewType();
        }

        public View findContainingItemView(View view) {
            View findContainingItemView;
            if (this.mRecyclerView == null || (findContainingItemView = this.mRecyclerView.findContainingItemView(view)) == null || this.mChildHelper.c(findContainingItemView)) {
                return null;
            }
            return findContainingItemView;
        }

        public View findViewByPosition(int i) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                u childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.a() || !childViewHolderInt.isRemoved())) {
                    return childAt;
                }
            }
            return null;
        }

        public void detachView(View view) {
            int b2 = this.mChildHelper.b(view);
            if (b2 >= 0) {
                detachViewInternal(b2, view);
            }
        }

        public void detachViewAt(int i) {
            detachViewInternal(i, getChildAt(i));
        }

        private void detachViewInternal(int i, View view) {
            this.mChildHelper.e(i);
        }

        public void attachView(View view, int i, LayoutParams layoutParams) {
            u childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.e(childViewHolderInt);
            } else {
                this.mRecyclerView.mViewInfoStore.f(childViewHolderInt);
            }
            this.mChildHelper.a(view, i, layoutParams, childViewHolderInt.isRemoved());
        }

        public void attachView(View view, int i) {
            attachView(view, i, (LayoutParams) view.getLayoutParams());
        }

        public void attachView(View view) {
            attachView(view, -1);
        }

        public void removeDetachedView(View view) {
            this.mRecyclerView.removeDetachedView(view, false);
        }

        public void moveView(int i, int i2) {
            View childAt = getChildAt(i);
            if (childAt == null) {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i);
            }
            detachViewAt(i);
            attachView(childAt, i2);
        }

        public void detachAndScrapView(View view, n nVar) {
            scrapOrRecycleView(nVar, this.mChildHelper.b(view), view);
        }

        public void detachAndScrapViewAt(int i, n nVar) {
            scrapOrRecycleView(nVar, i, getChildAt(i));
        }

        public void removeAndRecycleView(View view, n nVar) {
            removeView(view);
            nVar.a(view);
        }

        public void removeAndRecycleViewAt(int i, n nVar) {
            View childAt = getChildAt(i);
            removeViewAt(i);
            nVar.a(childAt);
        }

        public int getChildCount() {
            if (this.mChildHelper != null) {
                return this.mChildHelper.b();
            }
            return 0;
        }

        public View getChildAt(int i) {
            if (this.mChildHelper != null) {
                return this.mChildHelper.b(i);
            }
            return null;
        }

        public int getWidthMode() {
            return this.mWidthMode;
        }

        public int getHeightMode() {
            return this.mHeightMode;
        }

        public int getWidth() {
            return this.mWidth;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public int getPaddingLeft() {
            if (this.mRecyclerView != null) {
                return this.mRecyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int getPaddingTop() {
            if (this.mRecyclerView != null) {
                return this.mRecyclerView.getPaddingTop();
            }
            return 0;
        }

        public int getPaddingRight() {
            if (this.mRecyclerView != null) {
                return this.mRecyclerView.getPaddingRight();
            }
            return 0;
        }

        public int getPaddingBottom() {
            if (this.mRecyclerView != null) {
                return this.mRecyclerView.getPaddingBottom();
            }
            return 0;
        }

        public int getPaddingStart() {
            if (this.mRecyclerView != null) {
                return android.support.v4.view.ai.k(this.mRecyclerView);
            }
            return 0;
        }

        public int getPaddingEnd() {
            if (this.mRecyclerView != null) {
                return android.support.v4.view.ai.l(this.mRecyclerView);
            }
            return 0;
        }

        public boolean isFocused() {
            return this.mRecyclerView != null && this.mRecyclerView.isFocused();
        }

        public boolean hasFocus() {
            return this.mRecyclerView != null && this.mRecyclerView.hasFocus();
        }

        public View getFocusedChild() {
            View focusedChild;
            if (this.mRecyclerView == null || (focusedChild = this.mRecyclerView.getFocusedChild()) == null || this.mChildHelper.c(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public int getItemCount() {
            a adapter = this.mRecyclerView != null ? this.mRecyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.getItemCount();
            }
            return 0;
        }

        public void offsetChildrenHorizontal(int i) {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.offsetChildrenHorizontal(i);
            }
        }

        public void offsetChildrenVertical(int i) {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.offsetChildrenVertical(i);
            }
        }

        public void ignoreView(View view) {
            if (view.getParent() != this.mRecyclerView || this.mRecyclerView.indexOfChild(view) == -1) {
                throw new IllegalArgumentException("View should be fully attached to be ignored");
            }
            u childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.addFlags(128);
            this.mRecyclerView.mViewInfoStore.g(childViewHolderInt);
        }

        public void stopIgnoringView(View view) {
            u childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.stopIgnoring();
            childViewHolderInt.resetInternal();
            childViewHolderInt.addFlags(4);
        }

        public void detachAndScrapAttachedViews(n nVar) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                scrapOrRecycleView(nVar, childCount, getChildAt(childCount));
            }
        }

        private void scrapOrRecycleView(n nVar, int i, View view) {
            u childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.shouldIgnore()) {
                if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.mRecyclerView.mAdapter.hasStableIds()) {
                    removeViewAt(i);
                    nVar.b(childViewHolderInt);
                    return;
                }
                detachViewAt(i);
                nVar.c(view);
                this.mRecyclerView.mViewInfoStore.h(childViewHolderInt);
            }
        }

        void removeAndRecycleScrapInt(n nVar) {
            int e = nVar.e();
            for (int i = e - 1; i >= 0; i--) {
                View e2 = nVar.e(i);
                u childViewHolderInt = RecyclerView.getChildViewHolderInt(e2);
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.setIsRecyclable(false);
                    if (childViewHolderInt.isTmpDetached()) {
                        this.mRecyclerView.removeDetachedView(e2, false);
                    }
                    if (this.mRecyclerView.mItemAnimator != null) {
                        this.mRecyclerView.mItemAnimator.d(childViewHolderInt);
                    }
                    childViewHolderInt.setIsRecyclable(true);
                    nVar.b(e2);
                }
            }
            nVar.f();
            if (e > 0) {
                this.mRecyclerView.invalidate();
            }
        }

        public void measureChild(View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i3 = itemDecorInsetsForChild.top;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), itemDecorInsetsForChild.left + itemDecorInsetsForChild.right + i + getPaddingLeft() + getPaddingRight(), layoutParams.width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), itemDecorInsetsForChild.bottom + i3 + i2 + getPaddingTop() + getPaddingBottom(), layoutParams.height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, layoutParams)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean shouldReMeasureChild(View view, int i, int i2, LayoutParams layoutParams) {
            return !this.mMeasurementCacheEnabled || !isMeasurementUpToDate(view.getMeasuredWidth(), i, layoutParams.width) || !isMeasurementUpToDate(view.getMeasuredHeight(), i2, layoutParams.height);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean shouldMeasureChild(View view, int i, int i2, LayoutParams layoutParams) {
            return view.isLayoutRequested() || !this.mMeasurementCacheEnabled || !isMeasurementUpToDate(view.getWidth(), i, layoutParams.width) || !isMeasurementUpToDate(view.getHeight(), i2, layoutParams.height);
        }

        public boolean isMeasurementCacheEnabled() {
            return this.mMeasurementCacheEnabled;
        }

        public void setMeasurementCacheEnabled(boolean z) {
            this.mMeasurementCacheEnabled = z;
        }

        private static boolean isMeasurementUpToDate(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 <= 0 || i == i3) {
                switch (mode) {
                    case Integer.MIN_VALUE:
                        return size >= i;
                    case 0:
                        return true;
                    case 1073741824:
                        return size == i;
                    default:
                        return false;
                }
            }
            return false;
        }

        public void measureChildWithMargins(View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i3 = itemDecorInsetsForChild.top;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), itemDecorInsetsForChild.left + itemDecorInsetsForChild.right + i + getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), itemDecorInsetsForChild.bottom + i3 + i2 + getPaddingTop() + getPaddingBottom() + layoutParams.topMargin + layoutParams.bottomMargin, layoutParams.height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, layoutParams)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        @Deprecated
        public static int getChildMeasureSpec(int i, int i2, int i3, boolean z) {
            int i4 = 1073741824;
            int max = Math.max(0, i - i2);
            if (z) {
                if (i3 < 0) {
                    i4 = 0;
                    i3 = 0;
                }
            } else if (i3 < 0) {
                if (i3 == -1) {
                    i3 = max;
                } else if (i3 == -2) {
                    i4 = Integer.MIN_VALUE;
                    i3 = max;
                } else {
                    i4 = 0;
                    i3 = 0;
                }
            }
            return View.MeasureSpec.makeMeasureSpec(i3, i4);
        }

        public static int getChildMeasureSpec(int i, int i2, int i3, int i4, boolean z) {
            int i5 = 0;
            int max = Math.max(0, i - i3);
            if (z) {
                if (i4 >= 0) {
                    i5 = 1073741824;
                    max = i4;
                } else if (i4 == -1) {
                    switch (i2) {
                        case Integer.MIN_VALUE:
                        case 1073741824:
                            i5 = max;
                            break;
                        case 0:
                            i2 = 0;
                            break;
                        default:
                            i2 = 0;
                            break;
                    }
                    max = i5;
                    i5 = i2;
                } else {
                    if (i4 == -2) {
                        max = 0;
                    }
                    max = 0;
                }
            } else if (i4 >= 0) {
                i5 = 1073741824;
                max = i4;
            } else if (i4 == -1) {
                i5 = i2;
            } else {
                if (i4 == -2) {
                    if (i2 == Integer.MIN_VALUE || i2 == 1073741824) {
                        i5 = Integer.MIN_VALUE;
                    }
                }
                max = 0;
            }
            return View.MeasureSpec.makeMeasureSpec(max, i5);
        }

        public int getDecoratedMeasuredWidth(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).d;
            return rect.right + view.getMeasuredWidth() + rect.left;
        }

        public int getDecoratedMeasuredHeight(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).d;
            return rect.bottom + view.getMeasuredHeight() + rect.top;
        }

        public void layoutDecorated(View view, int i, int i2, int i3, int i4) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).d;
            view.layout(rect.left + i, rect.top + i2, i3 - rect.right, i4 - rect.bottom);
        }

        public void layoutDecoratedWithMargins(View view, int i, int i2, int i3, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.d;
            view.layout(rect.left + i + layoutParams.leftMargin, rect.top + i2 + layoutParams.topMargin, (i3 - rect.right) - layoutParams.rightMargin, (i4 - rect.bottom) - layoutParams.bottomMargin);
        }

        public void getTransformedBoundingBox(View view, boolean z, Rect rect) {
            Matrix o;
            if (z) {
                Rect rect2 = ((LayoutParams) view.getLayoutParams()).d;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, rect2.bottom + view.getHeight());
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.mRecyclerView != null && (o = android.support.v4.view.ai.o(view)) != null && !o.isIdentity()) {
                RectF rectF = this.mRecyclerView.mTempRectF;
                rectF.set(rect);
                o.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public void getDecoratedBoundsWithMargins(View view, Rect rect) {
            RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        }

        public int getDecoratedLeft(View view) {
            return view.getLeft() - getLeftDecorationWidth(view);
        }

        public int getDecoratedTop(View view) {
            return view.getTop() - getTopDecorationHeight(view);
        }

        public int getDecoratedRight(View view) {
            return view.getRight() + getRightDecorationWidth(view);
        }

        public int getDecoratedBottom(View view) {
            return view.getBottom() + getBottomDecorationHeight(view);
        }

        public void calculateItemDecorationsForChild(View view, Rect rect) {
            if (this.mRecyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(this.mRecyclerView.getItemDecorInsetsForChild(view));
            }
        }

        public int getTopDecorationHeight(View view) {
            return ((LayoutParams) view.getLayoutParams()).d.top;
        }

        public int getBottomDecorationHeight(View view) {
            return ((LayoutParams) view.getLayoutParams()).d.bottom;
        }

        public int getLeftDecorationWidth(View view) {
            return ((LayoutParams) view.getLayoutParams()).d.left;
        }

        public int getRightDecorationWidth(View view) {
            return ((LayoutParams) view.getLayoutParams()).d.right;
        }

        public View onFocusSearchFailed(View view, int i, n nVar, r rVar) {
            return null;
        }

        public View onInterceptFocusSearch(View view, int i) {
            return null;
        }

        private int[] getChildRectangleOnScreenScrollAmount(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            int min;
            int[] iArr = new int[2];
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width2 = left + rect.width();
            int height2 = top + rect.height();
            int min2 = Math.min(0, left - paddingLeft);
            int min3 = Math.min(0, top - paddingTop);
            int max = Math.max(0, width2 - width);
            int max2 = Math.max(0, height2 - height);
            if (getLayoutDirection() == 1) {
                if (max == 0) {
                    max = Math.max(min2, width2 - width);
                }
                min = max;
            } else {
                min = min2 != 0 ? min2 : Math.min(left - paddingLeft, max);
            }
            int min4 = min3 != 0 ? min3 : Math.min(top - paddingTop, max2);
            iArr[0] = min;
            iArr[1] = min4;
            return iArr;
        }

        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            return requestChildRectangleOnScreen(recyclerView, view, rect, z, false);
        }

        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            int[] childRectangleOnScreenScrollAmount = getChildRectangleOnScreenScrollAmount(recyclerView, view, rect, z);
            int i = childRectangleOnScreenScrollAmount[0];
            int i2 = childRectangleOnScreenScrollAmount[1];
            if (!z2 || isFocusedChildVisibleAfterScrolling(recyclerView, i, i2)) {
                if (i == 0 && i2 == 0) {
                    return false;
                }
                if (z) {
                    recyclerView.scrollBy(i, i2);
                } else {
                    recyclerView.smoothScrollBy(i, i2);
                }
                return true;
            }
            return false;
        }

        public boolean isViewPartiallyVisible(View view, boolean z, boolean z2) {
            boolean z3 = this.mHorizontalBoundCheck.a(view, 24579) && this.mVerticalBoundCheck.a(view, 24579);
            return z ? z3 : !z3;
        }

        private boolean isFocusedChildVisibleAfterScrolling(RecyclerView recyclerView, int i, int i2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            Rect rect = this.mRecyclerView.mTempRect;
            getDecoratedBoundsWithMargins(focusedChild, rect);
            return rect.left - i < width && rect.right - i > paddingLeft && rect.top - i2 < height && rect.bottom - i2 > paddingTop;
        }

        @Deprecated
        public boolean onRequestChildFocus(RecyclerView recyclerView, View view, View view2) {
            return isSmoothScrolling() || recyclerView.isComputingLayout();
        }

        public boolean onRequestChildFocus(RecyclerView recyclerView, r rVar, View view, View view2) {
            return onRequestChildFocus(recyclerView, view, view2);
        }

        public void onAdapterChanged(a aVar, a aVar2) {
        }

        public boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        public void onItemsChanged(RecyclerView recyclerView) {
        }

        public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        }

        public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        }

        public void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
        }

        public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
            onItemsUpdated(recyclerView, i, i2);
        }

        public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        }

        public int computeHorizontalScrollExtent(r rVar) {
            return 0;
        }

        public int computeHorizontalScrollOffset(r rVar) {
            return 0;
        }

        public int computeHorizontalScrollRange(r rVar) {
            return 0;
        }

        public int computeVerticalScrollExtent(r rVar) {
            return 0;
        }

        public int computeVerticalScrollOffset(r rVar) {
            return 0;
        }

        public int computeVerticalScrollRange(r rVar) {
            return 0;
        }

        public void onMeasure(n nVar, r rVar, int i, int i2) {
            this.mRecyclerView.defaultOnMeasure(i, i2);
        }

        public void setMeasuredDimension(int i, int i2) {
            this.mRecyclerView.setMeasuredDimension(i, i2);
        }

        public int getMinimumWidth() {
            return android.support.v4.view.ai.p(this.mRecyclerView);
        }

        public int getMinimumHeight() {
            return android.support.v4.view.ai.q(this.mRecyclerView);
        }

        public Parcelable onSaveInstanceState() {
            return null;
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        void stopSmoothScroller() {
            if (this.mSmoothScroller != null) {
                this.mSmoothScroller.stop();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onSmoothScrollerStopped(q qVar) {
            if (this.mSmoothScroller == qVar) {
                this.mSmoothScroller = null;
            }
        }

        public void onScrollStateChanged(int i) {
        }

        public void removeAndRecycleAllViews(n nVar) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                    removeAndRecycleViewAt(childCount, nVar);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void onInitializeAccessibilityNodeInfo(android.support.v4.view.a.c cVar) {
            onInitializeAccessibilityNodeInfo(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, cVar);
        }

        public void onInitializeAccessibilityNodeInfo(n nVar, r rVar, android.support.v4.view.a.c cVar) {
            if (android.support.v4.view.ai.b((View) this.mRecyclerView, -1) || android.support.v4.view.ai.a((View) this.mRecyclerView, -1)) {
                cVar.a(Utility.DEFAULT_STREAM_BUFFER_SIZE);
                cVar.k(true);
            }
            if (android.support.v4.view.ai.b((View) this.mRecyclerView, 1) || android.support.v4.view.ai.a((View) this.mRecyclerView, 1)) {
                cVar.a(4096);
                cVar.k(true);
            }
            cVar.b(c.m.a(getRowCountForAccessibility(nVar, rVar), getColumnCountForAccessibility(nVar, rVar), isLayoutHierarchical(nVar, rVar), getSelectionModeForAccessibility(nVar, rVar)));
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            onInitializeAccessibilityEvent(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, accessibilityEvent);
        }

        public void onInitializeAccessibilityEvent(n nVar, r rVar, AccessibilityEvent accessibilityEvent) {
            boolean z = true;
            android.support.v4.view.a.o a2 = android.support.v4.view.a.a.a(accessibilityEvent);
            if (this.mRecyclerView != null && a2 != null) {
                if (!android.support.v4.view.ai.b((View) this.mRecyclerView, 1) && !android.support.v4.view.ai.b((View) this.mRecyclerView, -1) && !android.support.v4.view.ai.a((View) this.mRecyclerView, -1) && !android.support.v4.view.ai.a((View) this.mRecyclerView, 1)) {
                    z = false;
                }
                a2.a(z);
                if (this.mRecyclerView.mAdapter != null) {
                    a2.a(this.mRecyclerView.mAdapter.getItemCount());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void onInitializeAccessibilityNodeInfoForItem(View view, android.support.v4.view.a.c cVar) {
            u childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && !this.mChildHelper.c(childViewHolderInt.itemView)) {
                onInitializeAccessibilityNodeInfoForItem(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, view, cVar);
            }
        }

        public void onInitializeAccessibilityNodeInfoForItem(n nVar, r rVar, View view, android.support.v4.view.a.c cVar) {
            cVar.c(c.n.a(canScrollVertically() ? getPosition(view) : 0, 1, canScrollHorizontally() ? getPosition(view) : 0, 1, false, false));
        }

        public void requestSimpleAnimationsInNextLayout() {
            this.mRequestedSimpleAnimations = true;
        }

        public int getSelectionModeForAccessibility(n nVar, r rVar) {
            return 0;
        }

        public int getRowCountForAccessibility(n nVar, r rVar) {
            if (this.mRecyclerView == null || this.mRecyclerView.mAdapter == null || !canScrollVertically()) {
                return 1;
            }
            return this.mRecyclerView.mAdapter.getItemCount();
        }

        public int getColumnCountForAccessibility(n nVar, r rVar) {
            if (this.mRecyclerView == null || this.mRecyclerView.mAdapter == null || !canScrollHorizontally()) {
                return 1;
            }
            return this.mRecyclerView.mAdapter.getItemCount();
        }

        public boolean isLayoutHierarchical(n nVar, r rVar) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean performAccessibilityAction(int i, Bundle bundle) {
            return performAccessibilityAction(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, i, bundle);
        }

        public boolean performAccessibilityAction(n nVar, r rVar, int i, Bundle bundle) {
            int height;
            int i2;
            int width;
            if (this.mRecyclerView == null) {
                return false;
            }
            switch (i) {
                case 4096:
                    height = android.support.v4.view.ai.b((View) this.mRecyclerView, 1) ? (getHeight() - getPaddingTop()) - getPaddingBottom() : 0;
                    if (android.support.v4.view.ai.a((View) this.mRecyclerView, 1)) {
                        i2 = height;
                        width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                        break;
                    }
                    i2 = height;
                    width = 0;
                    break;
                case Utility.DEFAULT_STREAM_BUFFER_SIZE /* 8192 */:
                    height = android.support.v4.view.ai.b((View) this.mRecyclerView, -1) ? -((getHeight() - getPaddingTop()) - getPaddingBottom()) : 0;
                    if (android.support.v4.view.ai.a((View) this.mRecyclerView, -1)) {
                        i2 = height;
                        width = -((getWidth() - getPaddingLeft()) - getPaddingRight());
                        break;
                    }
                    i2 = height;
                    width = 0;
                    break;
                default:
                    width = 0;
                    i2 = 0;
                    break;
            }
            if (i2 == 0 && width == 0) {
                return false;
            }
            this.mRecyclerView.scrollBy(width, i2);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean performAccessibilityActionForItem(View view, int i, Bundle bundle) {
            return performAccessibilityActionForItem(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, view, i, bundle);
        }

        public boolean performAccessibilityActionForItem(n nVar, r rVar, View view, int i, Bundle bundle) {
            return false;
        }

        public static b getProperties(Context context, AttributeSet attributeSet, int i, int i2) {
            b bVar = new b();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecyclerView, i, i2);
            bVar.f814a = obtainStyledAttributes.getInt(R.styleable.RecyclerView_android_orientation, 1);
            bVar.b = obtainStyledAttributes.getInt(R.styleable.RecyclerView_spanCount, 1);
            bVar.c = obtainStyledAttributes.getBoolean(R.styleable.RecyclerView_reverseLayout, false);
            bVar.d = obtainStyledAttributes.getBoolean(R.styleable.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return bVar;
        }

        void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
            setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        boolean shouldMeasureTwice() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean hasFlexibleChildInBothOrientations() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                ViewGroup.LayoutParams layoutParams = getChildAt(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class g {
        public void a(Canvas canvas, RecyclerView recyclerView, r rVar) {
            a(canvas, recyclerView);
        }

        @Deprecated
        public void a(Canvas canvas, RecyclerView recyclerView) {
        }

        public void b(Canvas canvas, RecyclerView recyclerView, r rVar) {
            b(canvas, recyclerView);
        }

        @Deprecated
        public void b(Canvas canvas, RecyclerView recyclerView) {
        }

        @Deprecated
        public void a(Rect rect, int i, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void a(Rect rect, View view, RecyclerView recyclerView, r rVar) {
            a(rect, ((LayoutParams) view.getLayoutParams()).f(), recyclerView);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class l {
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        }

        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class u {
        static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        static final int FLAG_BOUND = 1;
        static final int FLAG_IGNORE = 128;
        static final int FLAG_INVALID = 4;
        static final int FLAG_MOVED = 2048;
        static final int FLAG_NOT_RECYCLABLE = 16;
        static final int FLAG_REMOVED = 8;
        static final int FLAG_RETURNED_FROM_SCRAP = 32;
        static final int FLAG_TMP_DETACHED = 256;
        static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.EMPTY_LIST;
        static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        public final View itemView;
        private int mFlags;
        WeakReference<RecyclerView> mNestedRecyclerView;
        RecyclerView mOwnerRecyclerView;
        int mPosition = -1;
        int mOldPosition = -1;
        long mItemId = -1;
        int mItemViewType = -1;
        int mPreLayoutPosition = -1;
        u mShadowedHolder = null;
        u mShadowingHolder = null;
        List<Object> mPayloads = null;
        List<Object> mUnmodifiedPayloads = null;
        private int mIsRecyclableCount = 0;
        private n mScrapContainer = null;
        private boolean mInChangeScrap = false;
        private int mWasImportantForAccessibilityBeforeHidden = 0;
        int mPendingAccessibilityState = -1;

        public u(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.itemView = view;
        }

        void flagRemovedAndOffsetPosition(int i, int i2, boolean z) {
            addFlags(8);
            offsetPosition(i2, z);
            this.mPosition = i;
        }

        void offsetPosition(int i, boolean z) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z) {
                this.mPreLayoutPosition += i;
            }
            this.mPosition += i;
            if (this.itemView.getLayoutParams() != null) {
                ((LayoutParams) this.itemView.getLayoutParams()).e = true;
            }
        }

        void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean shouldIgnore() {
            return (this.mFlags & 128) != 0;
        }

        @Deprecated
        public final int getPosition() {
            return this.mPreLayoutPosition == -1 ? this.mPosition : this.mPreLayoutPosition;
        }

        public final int getLayoutPosition() {
            return this.mPreLayoutPosition == -1 ? this.mPosition : this.mPreLayoutPosition;
        }

        public final int getAdapterPosition() {
            if (this.mOwnerRecyclerView == null) {
                return -1;
            }
            return this.mOwnerRecyclerView.getAdapterPositionFor(this);
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        boolean isScrap() {
            return this.mScrapContainer != null;
        }

        void unScrap() {
            this.mScrapContainer.c(this);
        }

        boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }

        void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        void stopIgnoring() {
            this.mFlags &= -129;
        }

        void setScrapContainer(n nVar, boolean z) {
            this.mScrapContainer = nVar;
            this.mInChangeScrap = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isBound() {
            return (this.mFlags & 1) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        boolean hasAnyOfTheFlags(int i) {
            return (this.mFlags & i) != 0;
        }

        boolean isTmpDetached() {
            return (this.mFlags & 256) != 0;
        }

        boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        void setFlags(int i, int i2) {
            this.mFlags = (this.mFlags & (i2 ^ (-1))) | (i & i2);
        }

        void addFlags(int i) {
            this.mFlags |= i;
        }

        void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(1024);
            } else if ((this.mFlags & 1024) == 0) {
                createPayloadsIfNeeded();
                this.mPayloads.add(obj);
            }
        }

        private void createPayloadsIfNeeded() {
            if (this.mPayloads == null) {
                this.mPayloads = new ArrayList();
                this.mUnmodifiedPayloads = Collections.unmodifiableList(this.mPayloads);
            }
        }

        void clearPayload() {
            if (this.mPayloads != null) {
                this.mPayloads.clear();
            }
            this.mFlags &= -1025;
        }

        List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & 1024) == 0) {
                if (this.mPayloads == null || this.mPayloads.size() == 0) {
                    return FULLUPDATE_PAYLOADS;
                }
                return this.mUnmodifiedPayloads;
            }
            return FULLUPDATE_PAYLOADS;
        }

        void resetInternal() {
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1L;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
            RecyclerView.clearNestedRecyclerViewIfNotNested(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onEnteredHiddenState(RecyclerView recyclerView) {
            this.mWasImportantForAccessibilityBeforeHidden = android.support.v4.view.ai.d(this.itemView);
            recyclerView.setChildImportantForAccessibilityInternal(this, 4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onLeftHiddenState(RecyclerView recyclerView) {
            recyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
            if (isScrap()) {
                sb.append(" scrap ").append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb.append(" invalid");
            }
            if (!isBound()) {
                sb.append(" unbound");
            }
            if (needsUpdate()) {
                sb.append(" update");
            }
            if (isRemoved()) {
                sb.append(" removed");
            }
            if (shouldIgnore()) {
                sb.append(" ignored");
            }
            if (isTmpDetached()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb.append(" not recyclable(" + this.mIsRecyclableCount + ")");
            }
            if (isAdapterPositionUnknown()) {
                sb.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        public final void setIsRecyclable(boolean z) {
            this.mIsRecyclableCount = z ? this.mIsRecyclableCount - 1 : this.mIsRecyclableCount + 1;
            if (this.mIsRecyclableCount < 0) {
                this.mIsRecyclableCount = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z && this.mIsRecyclableCount == 1) {
                this.mFlags |= 16;
            } else if (z && this.mIsRecyclableCount == 0) {
                this.mFlags &= -17;
            }
        }

        public final boolean isRecyclable() {
            return (this.mFlags & 16) == 0 && !android.support.v4.view.ai.b(this.itemView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean doesTransientStatePreventRecycling() {
            return (this.mFlags & 16) == 0 && android.support.v4.view.ai.b(this.itemView);
        }

        boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }
    }

    boolean setChildImportantForAccessibilityInternal(u uVar, int i2) {
        if (isComputingLayout()) {
            uVar.mPendingAccessibilityState = i2;
            this.mPendingAccessibilityImportanceChange.add(uVar);
            return false;
        }
        android.support.v4.view.ai.c(uVar.itemView, i2);
        return true;
    }

    void dispatchPendingImportantForAccessibilityChanges() {
        int i2;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            u uVar = this.mPendingAccessibilityImportanceChange.get(size);
            if (uVar.itemView.getParent() == this && !uVar.shouldIgnore() && (i2 = uVar.mPendingAccessibilityState) != -1) {
                android.support.v4.view.ai.c(uVar.itemView, i2);
                uVar.mPendingAccessibilityState = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    int getAdapterPositionFor(u uVar) {
        if (uVar.hasAnyOfTheFlags(524) || !uVar.isBound()) {
            return -1;
        }
        return this.mAdapterHelper.c(uVar.mPosition);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().a(z);
    }

    @Override // android.view.View, android.support.v4.view.v
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().a();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().a(i2);
    }

    @Override // android.view.View, android.support.v4.view.v
    public void stopNestedScroll() {
        getScrollingChildHelper().c();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().b();
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return getScrollingChildHelper().a(f2, f3, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().a(f2, f3);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        u c;
        final Rect d;
        boolean e;
        boolean f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.d = new Rect();
            this.e = true;
            this.f = false;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.d = new Rect();
            this.e = true;
            this.f = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.d = new Rect();
            this.e = true;
            this.f = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.d = new Rect();
            this.e = true;
            this.f = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.d = new Rect();
            this.e = true;
            this.f = false;
        }

        public boolean c() {
            return this.c.isInvalid();
        }

        public boolean d() {
            return this.c.isRemoved();
        }

        public boolean e() {
            return this.c.isUpdated();
        }

        public int f() {
            return this.c.getLayoutPosition();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class c {
        public void onChanged() {
        }

        public void onItemRangeChanged(int i, int i2) {
        }

        public void onItemRangeChanged(int i, int i2, Object obj) {
            onItemRangeChanged(i, i2);
        }

        public void onItemRangeInserted(int i, int i2) {
        }

        public void onItemRangeRemoved(int i, int i2) {
        }

        public void onItemRangeMoved(int i, int i2, int i3) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class q {
        private h mLayoutManager;
        private boolean mPendingInitialRun;
        private RecyclerView mRecyclerView;
        private boolean mRunning;
        private View mTargetView;
        private int mTargetPosition = -1;
        private final a mRecyclingAction = new a(0, 0);

        /* loaded from: classes.dex */
        public interface b {
            PointF computeScrollVectorForPosition(int i);
        }

        protected abstract void onSeekTargetStep(int i, int i2, r rVar, a aVar);

        protected abstract void onStart();

        protected abstract void onStop();

        protected abstract void onTargetFound(View view, r rVar, a aVar);

        void start(RecyclerView recyclerView, h hVar) {
            this.mRecyclerView = recyclerView;
            this.mLayoutManager = hVar;
            if (this.mTargetPosition == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            this.mRecyclerView.mState.n = this.mTargetPosition;
            this.mRunning = true;
            this.mPendingInitialRun = true;
            this.mTargetView = findViewByPosition(getTargetPosition());
            onStart();
            this.mRecyclerView.mViewFlinger.a();
        }

        public void setTargetPosition(int i) {
            this.mTargetPosition = i;
        }

        public h getLayoutManager() {
            return this.mLayoutManager;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void stop() {
            if (this.mRunning) {
                onStop();
                this.mRecyclerView.mState.n = -1;
                this.mTargetView = null;
                this.mTargetPosition = -1;
                this.mPendingInitialRun = false;
                this.mRunning = false;
                this.mLayoutManager.onSmoothScrollerStopped(this);
                this.mLayoutManager = null;
                this.mRecyclerView = null;
            }
        }

        public boolean isPendingInitialRun() {
            return this.mPendingInitialRun;
        }

        public boolean isRunning() {
            return this.mRunning;
        }

        public int getTargetPosition() {
            return this.mTargetPosition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onAnimation(int i, int i2) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (!this.mRunning || this.mTargetPosition == -1 || recyclerView == null) {
                stop();
            }
            this.mPendingInitialRun = false;
            if (this.mTargetView != null) {
                if (getChildPosition(this.mTargetView) == this.mTargetPosition) {
                    onTargetFound(this.mTargetView, recyclerView.mState, this.mRecyclingAction);
                    this.mRecyclingAction.a(recyclerView);
                    stop();
                } else {
                    Log.e(RecyclerView.TAG, "Passed over target position while smooth scrolling.");
                    this.mTargetView = null;
                }
            }
            if (this.mRunning) {
                onSeekTargetStep(i, i2, recyclerView.mState, this.mRecyclingAction);
                boolean a2 = this.mRecyclingAction.a();
                this.mRecyclingAction.a(recyclerView);
                if (a2) {
                    if (this.mRunning) {
                        this.mPendingInitialRun = true;
                        recyclerView.mViewFlinger.a();
                        return;
                    }
                    stop();
                }
            }
        }

        public int getChildPosition(View view) {
            return this.mRecyclerView.getChildLayoutPosition(view);
        }

        public int getChildCount() {
            return this.mRecyclerView.mLayout.getChildCount();
        }

        public View findViewByPosition(int i) {
            return this.mRecyclerView.mLayout.findViewByPosition(i);
        }

        @Deprecated
        public void instantScrollToPosition(int i) {
            this.mRecyclerView.scrollToPosition(i);
        }

        protected void onChildAttachedToWindow(View view) {
            if (getChildPosition(view) == getTargetPosition()) {
                this.mTargetView = view;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void normalize(PointF pointF) {
            double sqrt = Math.sqrt((pointF.x * pointF.x) + (pointF.y * pointF.y));
            pointF.x = (float) (pointF.x / sqrt);
            pointF.y = (float) (pointF.y / sqrt);
        }

        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private int f819a;
            private int b;
            private int c;
            private int d;
            private Interpolator e;
            private boolean f;
            private int g;

            public a(int i, int i2) {
                this(i, i2, Integer.MIN_VALUE, null);
            }

            public a(int i, int i2, int i3, Interpolator interpolator) {
                this.d = -1;
                this.f = false;
                this.g = 0;
                this.f819a = i;
                this.b = i2;
                this.c = i3;
                this.e = interpolator;
            }

            public void a(int i) {
                this.d = i;
            }

            boolean a() {
                return this.d >= 0;
            }

            void a(RecyclerView recyclerView) {
                if (this.d >= 0) {
                    int i = this.d;
                    this.d = -1;
                    recyclerView.jumpToPositionForSmoothScroller(i);
                    this.f = false;
                } else if (this.f) {
                    b();
                    if (this.e == null) {
                        if (this.c == Integer.MIN_VALUE) {
                            recyclerView.mViewFlinger.b(this.f819a, this.b);
                        } else {
                            recyclerView.mViewFlinger.a(this.f819a, this.b, this.c);
                        }
                    } else {
                        recyclerView.mViewFlinger.a(this.f819a, this.b, this.c, this.e);
                    }
                    this.g++;
                    if (this.g > 10) {
                        Log.e(RecyclerView.TAG, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f = false;
                } else {
                    this.g = 0;
                }
            }

            private void b() {
                if (this.e != null && this.c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            public void a(int i, int i2, int i3, Interpolator interpolator) {
                this.f819a = i;
                this.b = i2;
                this.c = i3;
                this.e = interpolator;
                this.f = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b extends Observable<c> {
        b() {
        }

        public boolean a() {
            return !this.mObservers.isEmpty();
        }

        public void b() {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).onChanged();
            }
        }

        public void a(int i, int i2) {
            a(i, i2, null);
        }

        public void a(int i, int i2, Object obj) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).onItemRangeChanged(i, i2, obj);
            }
        }

        public void b(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).onItemRangeInserted(i, i2);
            }
        }

        public void c(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).onItemRangeRemoved(i, i2);
            }
        }

        public void d(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).onItemRangeMoved(i, i2, 1);
            }
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = android.support.v4.os.e.a(new android.support.v4.os.f<SavedState>() { // from class: android.support.v7.widget.RecyclerView.SavedState.1
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
        Parcelable f808a;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f808a = parcel.readParcelable(classLoader == null ? h.class.getClassLoader() : classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.f808a, 0);
        }

        void a(SavedState savedState) {
            this.f808a = savedState.f808a;
        }
    }

    /* loaded from: classes.dex */
    public static class r {
        int k;
        long l;
        int m;
        private SparseArray<Object> o;
        private int n = -1;

        /* renamed from: a  reason: collision with root package name */
        int f820a = 0;
        int b = 0;
        int c = 1;
        int d = 0;
        boolean e = false;
        boolean f = false;
        boolean g = false;
        boolean h = false;
        boolean i = false;
        boolean j = false;

        void a(int i) {
            if ((this.c & i) == 0) {
                throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.c));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(a aVar) {
            this.c = 1;
            this.d = aVar.getItemCount();
            this.e = false;
            this.f = false;
            this.g = false;
            this.h = false;
        }

        public boolean a() {
            return this.f;
        }

        public boolean b() {
            return this.j;
        }

        public int c() {
            return this.n;
        }

        public boolean d() {
            return this.n != -1;
        }

        public int e() {
            return this.f ? this.f820a - this.b : this.d;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.n + ", mData=" + this.o + ", mItemCount=" + this.d + ", mPreviousLayoutItemCount=" + this.f820a + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.b + ", mStructureChanged=" + this.e + ", mInPreLayout=" + this.f + ", mRunSimpleAnimations=" + this.i + ", mRunPredictiveAnimations=" + this.j + '}';
        }
    }

    /* loaded from: classes.dex */
    private class f implements e.b {
        f() {
        }

        @Override // android.support.v7.widget.RecyclerView.e.b
        public void a(u uVar) {
            uVar.setIsRecyclable(true);
            if (uVar.mShadowedHolder != null && uVar.mShadowingHolder == null) {
                uVar.mShadowedHolder = null;
            }
            uVar.mShadowingHolder = null;
            if (!uVar.shouldBeKeptAsChild() && !RecyclerView.this.removeAnimatingView(uVar.itemView) && uVar.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(uVar.itemView, false);
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        private b f809a = null;
        private ArrayList<a> b = new ArrayList<>();
        private long c = 120;
        private long d = 120;
        private long e = 250;
        private long f = 250;

        /* loaded from: classes.dex */
        public interface a {
            void a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public interface b {
            void a(u uVar);
        }

        public abstract void a();

        public abstract boolean a(u uVar, c cVar, c cVar2);

        public abstract boolean a(u uVar, u uVar2, c cVar, c cVar2);

        public abstract boolean b();

        public abstract boolean b(u uVar, c cVar, c cVar2);

        public abstract boolean c(u uVar, c cVar, c cVar2);

        public abstract void d();

        public abstract void d(u uVar);

        public long e() {
            return this.e;
        }

        public long f() {
            return this.c;
        }

        public long g() {
            return this.d;
        }

        public long h() {
            return this.f;
        }

        void a(b bVar) {
            this.f809a = bVar;
        }

        public c a(r rVar, u uVar, int i, List<Object> list) {
            return j().a(uVar);
        }

        public c a(r rVar, u uVar) {
            return j().a(uVar);
        }

        static int e(u uVar) {
            int i = uVar.mFlags & 14;
            if (uVar.isInvalid()) {
                return 4;
            }
            if ((i & 4) == 0) {
                int oldPosition = uVar.getOldPosition();
                int adapterPosition = uVar.getAdapterPosition();
                if (oldPosition != -1 && adapterPosition != -1 && oldPosition != adapterPosition) {
                    return i | Barcode.PDF417;
                }
                return i;
            }
            return i;
        }

        public final void f(u uVar) {
            g(uVar);
            if (this.f809a != null) {
                this.f809a.a(uVar);
            }
        }

        public void g(u uVar) {
        }

        public boolean h(u uVar) {
            return true;
        }

        public boolean a(u uVar, List<Object> list) {
            return h(uVar);
        }

        public final void i() {
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                this.b.get(i).a();
            }
            this.b.clear();
        }

        public c j() {
            return new c();
        }

        /* loaded from: classes.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public int f810a;
            public int b;
            public int c;
            public int d;

            public c a(u uVar) {
                return a(uVar, 0);
            }

            public c a(u uVar, int i) {
                View view = uVar.itemView;
                this.f810a = view.getLeft();
                this.b = view.getTop();
                this.c = view.getRight();
                this.d = view.getBottom();
                return this;
            }
        }
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i3) {
        return this.mChildDrawingOrderCallback == null ? super.getChildDrawingOrder(i2, i3) : this.mChildDrawingOrderCallback.a(i2, i3);
    }

    private android.support.v4.view.w getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new android.support.v4.view.w(this);
        }
        return this.mScrollingChildHelper;
    }
}
