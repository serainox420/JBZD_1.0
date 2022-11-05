package com.millennialmedia.internal.utils;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.ActivityListenerManager;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class ViewUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4191a = ViewUtils.class.getSimpleName();

    /* loaded from: classes3.dex */
    public interface ViewabilityListener {
        void onViewableChanged(View view, boolean z);
    }

    /* loaded from: classes3.dex */
    public static class ViewabilityWatcher implements View.OnAttachStateChangeListener, View.OnLayoutChangeListener, ViewTreeObserver.OnPreDrawListener {
        volatile ActivityListenerManager.LifecycleState d;
        volatile WeakReference<View> g;
        volatile ViewabilityListener h;
        volatile ActivityListenerManager.ActivityListener i;

        /* renamed from: a  reason: collision with root package name */
        int f4192a = 0;
        Rect b = new Rect();
        volatile boolean c = false;
        volatile boolean e = false;
        volatile boolean f = false;
        public volatile boolean viewable = false;

        public ViewabilityWatcher(View view, ViewabilityListener viewabilityListener) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(ViewUtils.f4191a, "Creating viewability watcher <" + this + "> for view <" + view + ">");
            }
            this.g = new WeakReference<>(view);
            this.h = viewabilityListener;
            this.i = new ActivityListenerManager.ActivityListener() { // from class: com.millennialmedia.internal.utils.ViewUtils.ViewabilityWatcher.1
                @Override // com.millennialmedia.internal.ActivityListenerManager.ActivityListener
                public void onResumed(Activity activity) {
                    ViewabilityWatcher.this.d = ActivityListenerManager.LifecycleState.RESUMED;
                    ViewabilityWatcher.this.a();
                }

                @Override // com.millennialmedia.internal.ActivityListenerManager.ActivityListener
                public void onPaused(Activity activity) {
                    ViewabilityWatcher.this.d = ActivityListenerManager.LifecycleState.PAUSED;
                    ViewabilityWatcher.this.a();
                }
            };
        }

        public void setMinViewabilityPercent(int i) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(ViewUtils.f4191a, "Setting the viewability percentage.\n\tViewability watcher: " + this + "\n\tPercentage: " + i);
            }
            this.f4192a = i;
        }

        public void startWatching() {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(ViewUtils.f4191a, "Starting watcher.\n\tViewability watcher: " + this + "\n\tView: " + this.g.get());
            }
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.utils.ViewUtils.ViewabilityWatcher.2
                @Override // java.lang.Runnable
                public void run() {
                    View view = ViewabilityWatcher.this.g.get();
                    if (view != null && !ViewabilityWatcher.this.c) {
                        view.addOnAttachStateChangeListener(ViewabilityWatcher.this);
                        view.addOnLayoutChangeListener(ViewabilityWatcher.this);
                        ViewabilityWatcher.this.c = true;
                        if (view.getWindowToken() != null) {
                            ViewabilityWatcher.this.a(view);
                            ViewabilityWatcher.this.a(view, true);
                            return;
                        }
                        ViewabilityWatcher.this.a();
                    }
                }
            });
        }

        public void stopWatching() {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(ViewUtils.f4191a, "Stopping watcher.\n\tViewability watcher: " + this + "\n\tView: " + this.g.get());
            }
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.utils.ViewUtils.ViewabilityWatcher.3
                @Override // java.lang.Runnable
                public void run() {
                    View view = ViewabilityWatcher.this.g.get();
                    if (view != null && ViewabilityWatcher.this.c) {
                        ViewabilityWatcher.this.b(view);
                        view.removeOnAttachStateChangeListener(ViewabilityWatcher.this);
                        view.removeOnLayoutChangeListener(ViewabilityWatcher.this);
                        ViewabilityWatcher.this.c = false;
                        ViewabilityWatcher.this.a(view, false);
                    }
                }
            });
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(ViewUtils.f4191a, "onViewAttachedToWindow called.\n\tViewability watcher: " + this + "\n\tView: " + view);
            }
            if (this.c) {
                a(view);
                a(view, true);
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(ViewUtils.f4191a, "onViewDetachedFromWindow called.\n\tViewability watcher: " + this + "\n\tView: " + view);
            }
            if (this.c) {
                b(view);
                a(view, false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(View view) {
            if (this.f) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(ViewUtils.f4191a, "Trying to set view tree observer when already set");
                    return;
                }
                return;
            }
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(ViewUtils.f4191a, "Adding ViewTreeObserver.\n\tViewability watcher: " + this + "\n\tViewTreeObserver: " + viewTreeObserver + "\n\tView: " + view);
                }
                viewTreeObserver.addOnPreDrawListener(this);
                this.f = true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(View view) {
            if (!this.f) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(ViewUtils.f4191a, "Trying to remove view tree observer when not set");
                    return;
                }
                return;
            }
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(ViewUtils.f4191a, "Removing ViewTreeObserver.\n\tViewability watcher: " + this + "\n\tViewTreeObserver: " + viewTreeObserver + "\n\tView: " + view);
                }
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            this.f = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(View view, boolean z) {
            Activity activityForView = ViewUtils.getActivityForView(view);
            if (activityForView != null) {
                if (z && !this.e) {
                    ActivityListenerManager.registerListener(activityForView.hashCode(), this.i);
                    this.d = ActivityListenerManager.getLifecycleState(activityForView.hashCode());
                } else if (!z && this.e) {
                    ActivityListenerManager.unregisterListener(activityForView.hashCode(), this.i);
                }
                this.e = z;
                a();
            }
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (this.c) {
                a();
                return true;
            }
            return true;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (this.c) {
                a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            boolean z = false;
            View view = this.g.get();
            if (view != null && this.d == ActivityListenerManager.LifecycleState.RESUMED && view.isShown() && view.getGlobalVisibleRect(this.b)) {
                long height = this.b.height() * this.b.width();
                long height2 = view.getHeight() * view.getWidth();
                if (height > 0 && height2 > 0 && (height * 100) / height2 >= this.f4192a) {
                    z = true;
                }
            }
            if (this.viewable != z) {
                this.viewable = z;
                if (this.h != null) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(ViewUtils.f4191a, "Notifying listener of viewability change.\n\tViewability watcher: " + this + "\n\tView: " + view + "\n\tViewable: " + this.viewable);
                    }
                    this.h.onViewableChanged(view, this.viewable);
                }
            }
        }
    }

    public static void attachView(ViewGroup viewGroup, View view) {
        attachView(viewGroup, view, null);
    }

    public static void attachView(ViewGroup viewGroup, View view, ViewGroup.LayoutParams layoutParams) {
        Context context;
        if (view.getParent() != null) {
            removeFromParent(view);
        }
        Context context2 = view.getContext();
        if ((context2 instanceof MutableContextWrapper) && context2 != (context = viewGroup.getContext())) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4191a, "Changing view context to match parent context");
            }
            ((MutableContextWrapper) context2).setBaseContext(context);
        }
        if (layoutParams != null) {
            viewGroup.addView(view, layoutParams);
        } else {
            viewGroup.addView(view);
        }
    }

    public static void removeFromParent(View view) {
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup)) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4191a, "Unable to remove view from parent, no valid parent view found");
                return;
            }
            return;
        }
        ((ViewGroup) parent).removeView(view);
    }

    public static boolean isChild(ViewGroup viewGroup, View view) {
        ViewParent parent = view.getParent();
        return (parent instanceof ViewGroup) && ((ViewGroup) parent) == viewGroup;
    }

    public static ViewGroup getParentContainer(View view) {
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) parent;
    }

    public static int getActivityHashForView(View view) {
        int i = -1;
        Activity activityForView = getActivityForView(view);
        if (activityForView == null) {
            MMLog.e(f4191a, "Unable to get activity hash");
        } else {
            i = activityForView.hashCode();
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4191a, "Found activity hash code <" + i + "> for view <" + view + ">");
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ViewGroup getDecorView(View view) {
        ViewGroup viewGroup;
        Activity activityForView = getActivityForView(view);
        if (activityForView != null) {
            View decorView = activityForView.getWindow().getDecorView();
            if (decorView instanceof ViewGroup) {
                viewGroup = (ViewGroup) decorView;
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4191a, "Found decor view <" + viewGroup + "> for view <" + view + ">");
                }
                return viewGroup;
            }
        }
        viewGroup = null;
        if (MMLog.isDebugEnabled()) {
        }
        return viewGroup;
    }

    public static Point getViewPositionOnScreen(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new Point(iArr[0], iArr[1]);
    }

    public static Rect getViewDimensionsOnScreen(View view, Rect rect) {
        if (view == null) {
            MMLog.e(f4191a, "Unable to calculate view dimensions for null view");
            return null;
        }
        if (rect == null) {
            rect = new Rect();
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        rect.left = iArr[0];
        rect.top = iArr[1];
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4191a, "On screen dimensions for View <" + view + ">: " + rect.flattenToString());
            return rect;
        }
        return rect;
    }

    public static Rect getContentDimensions(View view, Rect rect) {
        if (view == null) {
            MMLog.e(f4191a, "Unable to calculate content dimensions for null view");
            return null;
        }
        ViewGroup decorView = getDecorView(view);
        if (decorView == null) {
            MMLog.e(f4191a, "Unable to calculate content for null root view");
            return null;
        }
        if (rect == null) {
            rect = new Rect();
        }
        decorView.getWindowVisibleDisplayFrame(rect);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4191a, "Content dimensions for View <" + view + ">: " + rect.flattenToString());
            return rect;
        }
        return rect;
    }

    public static Rect getViewDimensionsRelativeToContent(View view, Rect rect) {
        Rect viewDimensionsOnScreen = getViewDimensionsOnScreen(view, rect);
        if (viewDimensionsOnScreen != null) {
            ViewGroup decorView = getDecorView(view);
            if (decorView == null) {
                MMLog.e(f4191a, "Unable to calculate dimensions for null root view");
                return null;
            }
            Rect rect2 = new Rect();
            decorView.getWindowVisibleDisplayFrame(rect2);
            viewDimensionsOnScreen.top -= rect2.top;
            viewDimensionsOnScreen.bottom -= rect2.top;
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4191a, "Dimensions relative to content for View <" + view + ">: " + viewDimensionsOnScreen.flattenToString());
            return viewDimensionsOnScreen;
        }
        return viewDimensionsOnScreen;
    }

    public static int convertPixelsToDips(int i) {
        return (int) (i / EnvironmentUtils.getDisplayDensity());
    }

    public static void convertPixelsToDips(Rect rect) {
        if (rect == null) {
            MMLog.e(f4191a, "Unable to convert for null dimensions");
            return;
        }
        float displayDensity = EnvironmentUtils.getDisplayDensity();
        rect.left = (int) (rect.left / displayDensity);
        rect.top = (int) (rect.top / displayDensity);
        rect.right = rect.left + ((int) ((rect.right - rect.left) / displayDensity));
        rect.bottom = rect.top + ((int) ((rect.bottom - rect.top) / displayDensity));
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4191a, "Converted dimensions from pixels to dips: " + rect.flattenToString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Activity getActivityForView(View view) {
        Activity activity;
        if (view != null) {
            Context context = view.getContext();
            while (context instanceof MutableContextWrapper) {
                context = ((MutableContextWrapper) context).getBaseContext();
            }
            if (context instanceof Activity) {
                activity = (Activity) context;
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4191a, "Found activity <" + activity + "> for view <" + view + ">");
                }
                return activity;
            }
        }
        activity = null;
        if (MMLog.isDebugEnabled()) {
        }
        return activity;
    }
}
