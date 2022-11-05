package com.facebook.drawee.controller;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import com.facebook.common.internal.Objects;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.logging.FLog;
import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.BaseDataSubscriber;
import com.facebook.datasource.DataSource;
import com.facebook.drawee.components.DeferredReleaser;
import com.facebook.drawee.components.DraweeEventTracker;
import com.facebook.drawee.components.RetryManager;
import com.facebook.drawee.gestures.GestureDetector;
import com.facebook.drawee.interfaces.DraweeController;
import com.facebook.drawee.interfaces.DraweeHierarchy;
import com.facebook.drawee.interfaces.SettableDraweeHierarchy;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;
@NotThreadSafe
/* loaded from: classes.dex */
public abstract class AbstractDraweeController<T, INFO> implements DeferredReleaser.Releasable, GestureDetector.ClickListener, DraweeController {
    private static final Class<?> TAG = AbstractDraweeController.class;
    private Object mCallerContext;
    @Nullable
    private String mContentDescription;
    @Nullable
    private ControllerListener<INFO> mControllerListener;
    @Nullable
    private Drawable mControllerOverlay;
    @Nullable
    private ControllerViewportVisibilityListener mControllerViewportVisibilityListener;
    @Nullable
    private DataSource<T> mDataSource;
    private final DeferredReleaser mDeferredReleaser;
    @Nullable
    private Drawable mDrawable;
    private final DraweeEventTracker mEventTracker = DraweeEventTracker.newInstance();
    @Nullable
    private T mFetchedImage;
    @Nullable
    private GestureDetector mGestureDetector;
    private boolean mHasFetchFailed;
    private String mId;
    @Nullable
    private Throwable mInitTrace;
    private boolean mIsAttached;
    private boolean mIsRequestSubmitted;
    private boolean mIsVisibleInViewportHint;
    private boolean mRetainImageOnFailure;
    @Nullable
    private RetryManager mRetryManager;
    @Nullable
    private SettableDraweeHierarchy mSettableDraweeHierarchy;
    private final Executor mUiThreadImmediateExecutor;

    protected abstract Drawable createDrawable(T t);

    protected abstract DataSource<T> getDataSource();

    @Nullable
    protected abstract INFO getImageInfo(T t);

    protected abstract void releaseDrawable(@Nullable Drawable drawable);

    protected abstract void releaseImage(@Nullable T t);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class InternalForwardingListener<INFO> extends ForwardingControllerListener<INFO> {
        private InternalForwardingListener() {
        }

        public static <INFO> InternalForwardingListener<INFO> createInternal(ControllerListener<? super INFO> controllerListener, ControllerListener<? super INFO> controllerListener2) {
            InternalForwardingListener<INFO> internalForwardingListener = new InternalForwardingListener<>();
            internalForwardingListener.addListener(controllerListener);
            internalForwardingListener.addListener(controllerListener2);
            return internalForwardingListener;
        }
    }

    public AbstractDraweeController(DeferredReleaser deferredReleaser, Executor executor, String str, Object obj) {
        this.mDeferredReleaser = deferredReleaser;
        this.mUiThreadImmediateExecutor = executor;
        init(str, obj, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void initialize(String str, Object obj) {
        init(str, obj, false);
    }

    private void init(String str, Object obj, boolean z) {
        this.mEventTracker.recordEvent(DraweeEventTracker.Event.ON_INIT_CONTROLLER);
        if (CloseableReference.isUnclosedTrackingEnabled()) {
            this.mInitTrace = new Throwable();
        }
        if (!z && this.mDeferredReleaser != null) {
            this.mDeferredReleaser.cancelDeferredRelease(this);
        }
        this.mIsAttached = false;
        this.mIsVisibleInViewportHint = false;
        releaseFetch();
        this.mRetainImageOnFailure = false;
        if (this.mRetryManager != null) {
            this.mRetryManager.init();
        }
        if (this.mGestureDetector != null) {
            this.mGestureDetector.init();
            this.mGestureDetector.setClickListener(this);
        }
        if (this.mControllerListener instanceof InternalForwardingListener) {
            ((InternalForwardingListener) this.mControllerListener).clearListeners();
        } else {
            this.mControllerListener = null;
        }
        this.mControllerViewportVisibilityListener = null;
        if (this.mSettableDraweeHierarchy != null) {
            this.mSettableDraweeHierarchy.reset();
            this.mSettableDraweeHierarchy.setControllerOverlay(null);
            this.mSettableDraweeHierarchy = null;
        }
        this.mControllerOverlay = null;
        if (FLog.isLoggable(2)) {
            FLog.v(TAG, "controller %x %s -> %s: initialize", Integer.valueOf(System.identityHashCode(this)), this.mId, str);
        }
        this.mId = str;
        this.mCallerContext = obj;
    }

    @Override // com.facebook.drawee.components.DeferredReleaser.Releasable
    public void release() {
        this.mEventTracker.recordEvent(DraweeEventTracker.Event.ON_RELEASE_CONTROLLER);
        if (this.mRetryManager != null) {
            this.mRetryManager.reset();
        }
        if (this.mGestureDetector != null) {
            this.mGestureDetector.reset();
        }
        if (this.mSettableDraweeHierarchy != null) {
            this.mSettableDraweeHierarchy.reset();
        }
        releaseFetch();
    }

    private void releaseFetch() {
        boolean z = this.mIsRequestSubmitted;
        this.mIsRequestSubmitted = false;
        this.mHasFetchFailed = false;
        if (this.mDataSource != null) {
            this.mDataSource.close();
            this.mDataSource = null;
        }
        if (this.mDrawable != null) {
            releaseDrawable(this.mDrawable);
        }
        if (this.mContentDescription != null) {
            this.mContentDescription = null;
        }
        this.mDrawable = null;
        if (this.mFetchedImage != null) {
            logMessageAndImage("release", this.mFetchedImage);
            releaseImage(this.mFetchedImage);
            this.mFetchedImage = null;
        }
        if (z) {
            getControllerListener().onRelease(this.mId);
        }
    }

    public String getId() {
        return this.mId;
    }

    public Object getCallerContext() {
        return this.mCallerContext;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public RetryManager getRetryManager() {
        return this.mRetryManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setRetryManager(@Nullable RetryManager retryManager) {
        this.mRetryManager = retryManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public GestureDetector getGestureDetector() {
        return this.mGestureDetector;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setGestureDetector(@Nullable GestureDetector gestureDetector) {
        this.mGestureDetector = gestureDetector;
        if (this.mGestureDetector != null) {
            this.mGestureDetector.setClickListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setRetainImageOnFailure(boolean z) {
        this.mRetainImageOnFailure = z;
    }

    @Override // com.facebook.drawee.interfaces.DraweeController
    @Nullable
    public String getContentDescription() {
        return this.mContentDescription;
    }

    @Override // com.facebook.drawee.interfaces.DraweeController
    public void setContentDescription(@Nullable String str) {
        this.mContentDescription = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addControllerListener(ControllerListener<? super INFO> controllerListener) {
        Preconditions.checkNotNull(controllerListener);
        if (this.mControllerListener instanceof InternalForwardingListener) {
            ((InternalForwardingListener) this.mControllerListener).addListener(controllerListener);
        } else if (this.mControllerListener != null) {
            this.mControllerListener = InternalForwardingListener.createInternal(this.mControllerListener, controllerListener);
        } else {
            this.mControllerListener = controllerListener;
        }
    }

    public void removeControllerListener(ControllerListener<? super INFO> controllerListener) {
        Preconditions.checkNotNull(controllerListener);
        if (this.mControllerListener instanceof InternalForwardingListener) {
            ((InternalForwardingListener) this.mControllerListener).removeListener(controllerListener);
        } else if (this.mControllerListener == controllerListener) {
            this.mControllerListener = null;
        }
    }

    protected ControllerListener<INFO> getControllerListener() {
        return this.mControllerListener == null ? BaseControllerListener.getNoOpListener() : this.mControllerListener;
    }

    public void setControllerViewportVisibilityListener(@Nullable ControllerViewportVisibilityListener controllerViewportVisibilityListener) {
        this.mControllerViewportVisibilityListener = controllerViewportVisibilityListener;
    }

    @Override // com.facebook.drawee.interfaces.DraweeController
    @Nullable
    public DraweeHierarchy getHierarchy() {
        return this.mSettableDraweeHierarchy;
    }

    public void setHierarchy(@Nullable DraweeHierarchy draweeHierarchy) {
        if (FLog.isLoggable(2)) {
            FLog.v(TAG, "controller %x %s: setHierarchy: %s", Integer.valueOf(System.identityHashCode(this)), this.mId, draweeHierarchy);
        }
        this.mEventTracker.recordEvent(draweeHierarchy != null ? DraweeEventTracker.Event.ON_SET_HIERARCHY : DraweeEventTracker.Event.ON_CLEAR_HIERARCHY);
        if (this.mIsRequestSubmitted) {
            this.mDeferredReleaser.cancelDeferredRelease(this);
            release();
        }
        if (this.mSettableDraweeHierarchy != null) {
            this.mSettableDraweeHierarchy.setControllerOverlay(null);
            this.mSettableDraweeHierarchy = null;
        }
        if (draweeHierarchy != null) {
            Preconditions.checkArgument(draweeHierarchy instanceof SettableDraweeHierarchy);
            this.mSettableDraweeHierarchy = (SettableDraweeHierarchy) draweeHierarchy;
            this.mSettableDraweeHierarchy.setControllerOverlay(this.mControllerOverlay);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setControllerOverlay(@Nullable Drawable drawable) {
        this.mControllerOverlay = drawable;
        if (this.mSettableDraweeHierarchy != null) {
            this.mSettableDraweeHierarchy.setControllerOverlay(this.mControllerOverlay);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public Drawable getControllerOverlay() {
        return this.mControllerOverlay;
    }

    @Override // com.facebook.drawee.interfaces.DraweeController
    public void onAttach() {
        if (FLog.isLoggable(2)) {
            FLog.v(TAG, "controller %x %s: onAttach: %s", Integer.valueOf(System.identityHashCode(this)), this.mId, this.mIsRequestSubmitted ? "request already submitted" : "request needs submit");
        }
        this.mEventTracker.recordEvent(DraweeEventTracker.Event.ON_ATTACH_CONTROLLER);
        Preconditions.checkNotNull(this.mSettableDraweeHierarchy);
        this.mDeferredReleaser.cancelDeferredRelease(this);
        this.mIsAttached = true;
        if (!this.mIsRequestSubmitted) {
            submitRequest();
        }
    }

    @Override // com.facebook.drawee.interfaces.DraweeController
    public void onDetach() {
        if (FLog.isLoggable(2)) {
            FLog.v(TAG, "controller %x %s: onDetach", Integer.valueOf(System.identityHashCode(this)), this.mId);
        }
        this.mEventTracker.recordEvent(DraweeEventTracker.Event.ON_DETACH_CONTROLLER);
        this.mIsAttached = false;
        this.mDeferredReleaser.scheduleDeferredRelease(this);
    }

    @Override // com.facebook.drawee.interfaces.DraweeController
    public void onViewportVisibilityHint(boolean z) {
        ControllerViewportVisibilityListener controllerViewportVisibilityListener = this.mControllerViewportVisibilityListener;
        if (controllerViewportVisibilityListener != null) {
            if (z && !this.mIsVisibleInViewportHint) {
                controllerViewportVisibilityListener.onDraweeViewportEntry(this.mId);
            } else if (!z && this.mIsVisibleInViewportHint) {
                controllerViewportVisibilityListener.onDraweeViewportExit(this.mId);
            }
        }
        this.mIsVisibleInViewportHint = z;
    }

    @Override // com.facebook.drawee.interfaces.DraweeController
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (FLog.isLoggable(2)) {
            FLog.v(TAG, "controller %x %s: onTouchEvent %s", Integer.valueOf(System.identityHashCode(this)), this.mId, motionEvent);
        }
        if (this.mGestureDetector == null) {
            return false;
        }
        if (!this.mGestureDetector.isCapturingGesture() && !shouldHandleGesture()) {
            return false;
        }
        this.mGestureDetector.onTouchEvent(motionEvent);
        return true;
    }

    protected boolean shouldHandleGesture() {
        return shouldRetryOnTap();
    }

    private boolean shouldRetryOnTap() {
        return this.mHasFetchFailed && this.mRetryManager != null && this.mRetryManager.shouldRetryOnTap();
    }

    @Override // com.facebook.drawee.gestures.GestureDetector.ClickListener
    public boolean onClick() {
        if (FLog.isLoggable(2)) {
            FLog.v(TAG, "controller %x %s: onClick", Integer.valueOf(System.identityHashCode(this)), this.mId);
        }
        if (shouldRetryOnTap()) {
            this.mRetryManager.notifyTapToRetry();
            this.mSettableDraweeHierarchy.reset();
            submitRequest();
            return true;
        }
        return false;
    }

    protected void submitRequest() {
        T mo67getCachedImage = mo67getCachedImage();
        if (mo67getCachedImage != null) {
            this.mDataSource = null;
            this.mIsRequestSubmitted = true;
            this.mHasFetchFailed = false;
            this.mEventTracker.recordEvent(DraweeEventTracker.Event.ON_SUBMIT_CACHE_HIT);
            getControllerListener().onSubmit(this.mId, this.mCallerContext);
            onNewResultInternal(this.mId, this.mDataSource, mo67getCachedImage, 1.0f, true, true);
            return;
        }
        this.mEventTracker.recordEvent(DraweeEventTracker.Event.ON_DATASOURCE_SUBMIT);
        getControllerListener().onSubmit(this.mId, this.mCallerContext);
        this.mSettableDraweeHierarchy.setProgress(BitmapDescriptorFactory.HUE_RED, true);
        this.mIsRequestSubmitted = true;
        this.mHasFetchFailed = false;
        this.mDataSource = getDataSource();
        if (FLog.isLoggable(2)) {
            FLog.v(TAG, "controller %x %s: submitRequest: dataSource: %x", Integer.valueOf(System.identityHashCode(this)), this.mId, Integer.valueOf(System.identityHashCode(this.mDataSource)));
        }
        final String str = this.mId;
        final boolean hasResult = this.mDataSource.hasResult();
        this.mDataSource.subscribe(new BaseDataSubscriber<T>() { // from class: com.facebook.drawee.controller.AbstractDraweeController.1
            @Override // com.facebook.datasource.BaseDataSubscriber
            public void onNewResultImpl(DataSource<T> dataSource) {
                boolean isFinished = dataSource.isFinished();
                float progress = dataSource.getProgress();
                T mo92getResult = dataSource.mo92getResult();
                if (AbstractDraweeController.this.mInitTrace != null && (mo92getResult instanceof CloseableReference)) {
                    ((CloseableReference) mo92getResult).setUnclosedRelevantTrance(AbstractDraweeController.this.mInitTrace);
                }
                if (mo92getResult != null) {
                    AbstractDraweeController.this.onNewResultInternal(str, dataSource, mo92getResult, progress, isFinished, hasResult);
                } else if (isFinished) {
                    AbstractDraweeController.this.onFailureInternal(str, dataSource, new NullPointerException(), true);
                }
            }

            @Override // com.facebook.datasource.BaseDataSubscriber
            public void onFailureImpl(DataSource<T> dataSource) {
                AbstractDraweeController.this.onFailureInternal(str, dataSource, dataSource.getFailureCause(), true);
            }

            @Override // com.facebook.datasource.BaseDataSubscriber, com.facebook.datasource.DataSubscriber
            public void onProgressUpdate(DataSource<T> dataSource) {
                boolean isFinished = dataSource.isFinished();
                AbstractDraweeController.this.onProgressUpdateInternal(str, dataSource, dataSource.getProgress(), isFinished);
            }
        }, this.mUiThreadImmediateExecutor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNewResultInternal(String str, DataSource<T> dataSource, @Nullable T t, float f, boolean z, boolean z2) {
        if (!isExpectedDataSource(str, dataSource)) {
            logMessageAndImage("ignore_old_datasource @ onNewResult", t);
            releaseImage(t);
            dataSource.close();
            return;
        }
        this.mEventTracker.recordEvent(z ? DraweeEventTracker.Event.ON_DATASOURCE_RESULT : DraweeEventTracker.Event.ON_DATASOURCE_RESULT_INT);
        try {
            Drawable createDrawable = createDrawable(t);
            T t2 = this.mFetchedImage;
            Drawable drawable = this.mDrawable;
            this.mFetchedImage = t;
            this.mDrawable = createDrawable;
            try {
                if (z) {
                    logMessageAndImage("set_final_result @ onNewResult", t);
                    this.mDataSource = null;
                    this.mSettableDraweeHierarchy.setImage(createDrawable, 1.0f, z2);
                    getControllerListener().onFinalImageSet(str, getImageInfo(t), getAnimatable());
                } else {
                    logMessageAndImage("set_intermediate_result @ onNewResult", t);
                    this.mSettableDraweeHierarchy.setImage(createDrawable, f, z2);
                    getControllerListener().onIntermediateImageSet(str, getImageInfo(t));
                }
                if (drawable != null && drawable != createDrawable) {
                    releaseDrawable(drawable);
                }
                if (t2 != null && t2 != t) {
                    logMessageAndImage("release_previous_result @ onNewResult", t2);
                    releaseImage(t2);
                }
            } catch (Throwable th) {
                if (drawable != null && drawable != createDrawable) {
                    releaseDrawable(drawable);
                }
                if (t2 != null && t2 != t) {
                    logMessageAndImage("release_previous_result @ onNewResult", t2);
                    releaseImage(t2);
                }
                throw th;
            }
        } catch (Exception e) {
            logMessageAndImage("drawable_failed @ onNewResult", t);
            releaseImage(t);
            onFailureInternal(str, dataSource, e, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFailureInternal(String str, DataSource<T> dataSource, Throwable th, boolean z) {
        if (!isExpectedDataSource(str, dataSource)) {
            logMessageAndFailure("ignore_old_datasource @ onFailure", th);
            dataSource.close();
            return;
        }
        this.mEventTracker.recordEvent(z ? DraweeEventTracker.Event.ON_DATASOURCE_FAILURE : DraweeEventTracker.Event.ON_DATASOURCE_FAILURE_INT);
        if (z) {
            logMessageAndFailure("final_failed @ onFailure", th);
            this.mDataSource = null;
            this.mHasFetchFailed = true;
            if (this.mRetainImageOnFailure && this.mDrawable != null) {
                this.mSettableDraweeHierarchy.setImage(this.mDrawable, 1.0f, true);
            } else if (shouldRetryOnTap()) {
                this.mSettableDraweeHierarchy.setRetry(th);
            } else {
                this.mSettableDraweeHierarchy.setFailure(th);
            }
            getControllerListener().onFailure(this.mId, th);
            return;
        }
        logMessageAndFailure("intermediate_failed @ onFailure", th);
        getControllerListener().onIntermediateImageFailed(this.mId, th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProgressUpdateInternal(String str, DataSource<T> dataSource, float f, boolean z) {
        if (!isExpectedDataSource(str, dataSource)) {
            logMessageAndFailure("ignore_old_datasource @ onProgress", null);
            dataSource.close();
        } else if (!z) {
            this.mSettableDraweeHierarchy.setProgress(f, false);
        }
    }

    private boolean isExpectedDataSource(String str, DataSource<T> dataSource) {
        if (dataSource == null && this.mDataSource == null) {
            return true;
        }
        return str.equals(this.mId) && dataSource == this.mDataSource && this.mIsRequestSubmitted;
    }

    private void logMessageAndImage(String str, T t) {
        if (FLog.isLoggable(2)) {
            FLog.v(TAG, "controller %x %s: %s: image: %s %x", Integer.valueOf(System.identityHashCode(this)), this.mId, str, getImageClass(t), Integer.valueOf(getImageHash(t)));
        }
    }

    private void logMessageAndFailure(String str, Throwable th) {
        if (FLog.isLoggable(2)) {
            FLog.v(TAG, "controller %x %s: %s: failure: %s", Integer.valueOf(System.identityHashCode(this)), this.mId, str, th);
        }
    }

    @Override // com.facebook.drawee.interfaces.DraweeController
    @Nullable
    public Animatable getAnimatable() {
        if (this.mDrawable instanceof Animatable) {
            return (Animatable) this.mDrawable;
        }
        return null;
    }

    protected String getImageClass(@Nullable T t) {
        return t != null ? t.getClass().getSimpleName() : "<null>";
    }

    protected int getImageHash(@Nullable T t) {
        return System.identityHashCode(t);
    }

    public String toString() {
        return Objects.toStringHelper(this).add("isAttached", this.mIsAttached).add("isRequestSubmitted", this.mIsRequestSubmitted).add("hasFetchFailed", this.mHasFetchFailed).add("fetchedImage", getImageHash(this.mFetchedImage)).add("events", this.mEventTracker.toString()).toString();
    }

    /* renamed from: getCachedImage */
    protected T mo67getCachedImage() {
        return null;
    }
}
