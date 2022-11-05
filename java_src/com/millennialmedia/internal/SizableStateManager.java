package com.millennialmedia.internal;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.flurry.android.AdCreative;
import com.millennialmedia.MMLog;
import com.millennialmedia.R;
import com.millennialmedia.internal.MMActivity;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.ViewUtils;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class SizableStateManager {
    private SizableListener c;
    private ResizeContainer d;
    private ExpandStateManager e;
    private RestoreState f;
    private static final String b = SizableStateManager.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    static final int f4105a = EnvironmentUtils.getApplicationContext().getResources().getDimensionPixelSize(R.dimen.mmadsdk_mraid_resize_close_area_size);

    /* loaded from: classes3.dex */
    public static class ExpandParams {
        public int height;
        public int orientation;
        public boolean showCloseIndicator;
        public boolean showLoadingSpinner;
        public boolean transparent;
        public String url;
        public int width;
    }

    /* loaded from: classes3.dex */
    public static class ResizeParams {

        /* renamed from: a  reason: collision with root package name */
        int f4113a;
        int b;
        int c;
        int d;
        String e;
        boolean f;
    }

    /* loaded from: classes3.dex */
    public interface SizableListener {
        void onCollapsed();

        void onCollapsing();

        void onExpandFailed();

        void onExpanded();

        void onExpanding();

        void onResized(int i, int i2);

        void onResizing(int i, int i2);

        void onUnresized(int i, int i2);

        void onUnresizing(int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum SizableState {
        STATE_RESIZED,
        STATE_UNRESIZED,
        STATE_EXPANDED,
        STATE_COLLAPSED
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class RestoreState {
        private View b;
        private Point c;
        private ViewGroup.LayoutParams d;
        private Point e;
        private WeakReference<ViewGroup> f;

        private RestoreState() {
        }
    }

    /* loaded from: classes3.dex */
    public class ResizeContainer extends RelativeLayout {
        private View b;

        public ResizeContainer(Context context) {
            super(context);
        }

        public void attachCloseControl(Context context, String str) {
            if (this.b == null) {
                this.b = new View(context);
                this.b.setBackgroundColor(0);
                this.b.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.SizableStateManager.ResizeContainer.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ResizeContainer.this.close();
                    }
                });
                ViewUtils.attachView(this, this.b);
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(SizableStateManager.f4105a, SizableStateManager.f4105a);
            if (str.equals(Consts.ResizePropertiesCCPositionTopRight)) {
                layoutParams.addRule(11);
            } else if (str.equals(Consts.ResizePropertiesCCPositionTopCenter)) {
                layoutParams.addRule(14);
            } else if (str.equals(Consts.ResizePropertiesCCPositionBottomLeft)) {
                layoutParams.addRule(12);
            } else if (str.equals(Consts.ResizePropertiesCCPositionBottomCenter)) {
                layoutParams.addRule(12);
                layoutParams.addRule(14);
            } else if (str.equals(Consts.ResizePropertiesCCPositionBottomRight)) {
                layoutParams.addRule(12);
                layoutParams.addRule(11);
            } else if (str.equals("center")) {
                layoutParams.addRule(13);
            }
            this.b.setLayoutParams(layoutParams);
            this.b.bringToFront();
        }

        private Rect a(String str, Rect rect) {
            Rect rect2 = new Rect();
            if (str.contains("center")) {
                rect2.left = ((rect.left + rect.right) - SizableStateManager.f4105a) / 2;
                if (str.equals("center")) {
                    rect2.top = ((rect.top + rect.bottom) - SizableStateManager.f4105a) / 2;
                }
            }
            if (str.startsWith(AdCreative.kAlignmentTop)) {
                rect2.top = rect.top;
            } else if (str.startsWith(AdCreative.kAlignmentBottom)) {
                rect2.top = rect.bottom - SizableStateManager.f4105a;
            }
            if (str.endsWith(AdCreative.kAlignmentLeft)) {
                rect2.left = rect.left;
            } else if (str.endsWith(AdCreative.kAlignmentRight)) {
                rect2.left = rect.right - SizableStateManager.f4105a;
            }
            rect2.right = rect2.left + SizableStateManager.f4105a;
            rect2.bottom = rect2.top + SizableStateManager.f4105a;
            return rect2;
        }

        void a(Rect rect, Rect rect2) {
            int i;
            int i2 = 0;
            if (rect.left < rect2.left) {
                i = rect2.left - rect.left;
            } else {
                i = rect.right > rect2.right ? rect2.right - rect.right : 0;
            }
            if (rect.top < rect2.top) {
                i2 = rect2.top - rect.top;
            } else if (rect.bottom > rect2.bottom) {
                i2 = rect2.bottom - rect.bottom;
            }
            rect.offset(i, i2);
        }

        public boolean resize(View view, ResizeParams resizeParams) {
            if (!ThreadUtils.isUiThread()) {
                MMLog.e(SizableStateManager.b, "resize must be called on the UI thread");
                return false;
            }
            Rect contentDimensions = ViewUtils.getContentDimensions(view, null);
            Rect rect = new Rect();
            if (SizableStateManager.this.f != null) {
                rect.left = SizableStateManager.this.f.c.x + resizeParams.f4113a;
                rect.top = SizableStateManager.this.f.c.y + resizeParams.b;
            } else {
                Point viewPositionOnScreen = ViewUtils.getViewPositionOnScreen(view);
                rect.left = viewPositionOnScreen.x + resizeParams.f4113a;
                rect.top = viewPositionOnScreen.y + resizeParams.b;
            }
            rect.right = rect.left + resizeParams.c;
            rect.bottom = rect.top + resizeParams.d;
            if (!resizeParams.f) {
                a(rect, contentDimensions);
                if (!contentDimensions.contains(rect)) {
                    MMLog.e(SizableStateManager.b, "Resized view would not appear on screen");
                    return false;
                }
            }
            if (!contentDimensions.contains(a(resizeParams.e, rect))) {
                MMLog.e(SizableStateManager.b, "Close area would not appear on screen");
                return false;
            }
            SizableStateManager.this.c.onResizing(resizeParams.c, resizeParams.d);
            if (SizableStateManager.this.f == null) {
                SizableStateManager.this.saveDefaultState(view);
                ViewGroup decorView = ViewUtils.getDecorView(view);
                if (decorView == null) {
                    MMLog.e(SizableStateManager.b, "Unable to resize to root view");
                    return false;
                }
                ViewUtils.attachView(this, view);
                ViewUtils.attachView(decorView, this);
                ViewGroup viewGroup = (ViewGroup) SizableStateManager.this.f.f.get();
                if (viewGroup != null) {
                    viewGroup.setVisibility(4);
                }
            }
            view.setLayoutParams(new RelativeLayout.LayoutParams(resizeParams.c, resizeParams.d));
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = resizeParams.c;
            layoutParams.height = resizeParams.d;
            setLayoutParams(layoutParams);
            setTranslationX(rect.left);
            setTranslationY(rect.top);
            attachCloseControl(getContext(), resizeParams.e);
            SizableStateManager.this.a(view, SizableState.STATE_RESIZED);
            return true;
        }

        public void close() {
            if (!ThreadUtils.isUiThread()) {
                MMLog.e(SizableStateManager.b, "close must be called on the UI thread");
                return;
            }
            SizableStateManager.this.restoreDefaultState(true);
            ViewUtils.removeFromParent(this);
        }
    }

    /* loaded from: classes3.dex */
    public class ExpandStateManager {
        private MMActivity b;
        private ImageView c;
        private ProgressBar d;
        private boolean e;
        private ThreadUtils.ScheduledRunnable f = null;

        public ExpandStateManager() {
        }

        void a() {
            if (this.b != null) {
                if (this.d == null) {
                    this.d = new ProgressBar(this.b.getRootView().getContext());
                    this.d.setIndeterminate(true);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams.addRule(13);
                    this.d.setLayoutParams(layoutParams);
                }
                ViewUtils.attachView(this.b.getRootView(), this.d);
                this.d.bringToFront();
            }
        }

        void b() {
            if (this.d != null) {
                this.d.setVisibility(8);
                ViewUtils.removeFromParent(this.d);
                this.d = null;
            }
        }

        void c() {
            if (this.f == null) {
                this.f = ThreadUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.millennialmedia.internal.SizableStateManager.ExpandStateManager.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ExpandStateManager.this.f = null;
                        ExpandStateManager.this.f();
                    }
                }, 1100L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            if (this.f == null && this.c != null) {
                this.c.setImageDrawable(this.c.getResources().getDrawable(R.drawable.mmadsdk_close));
                this.c.setScaleType(ImageView.ScaleType.FIT_CENTER);
                this.e = true;
            }
        }

        void d() {
            if (this.f != null) {
                this.f.cancel();
                this.f = null;
            }
            if (this.c != null) {
                this.c.setImageDrawable(null);
                this.e = false;
            }
        }

        void e() {
            if (this.c == null) {
                this.c = new ImageView(this.b.getRootView().getContext());
                this.c.setBackgroundColor(0);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(SizableStateManager.f4105a, SizableStateManager.f4105a);
                layoutParams.addRule(11);
                this.c.setLayoutParams(layoutParams);
                this.c.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.SizableStateManager.ExpandStateManager.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ExpandStateManager.this.close();
                    }
                });
            }
            ViewUtils.attachView(this.b.getRootView(), this.c);
            this.c.bringToFront();
        }

        void a(int i) {
            this.b.setOrientation(i);
        }

        public boolean expand(final View view, final ExpandParams expandParams, MMActivity.MMActivityConfig mMActivityConfig) {
            if (!ThreadUtils.isUiThread()) {
                MMLog.e(SizableStateManager.b, "expand must be called on the UI thread");
                return false;
            }
            MMActivity.launch(view.getContext(), mMActivityConfig, new MMActivity.MMActivityListener() { // from class: com.millennialmedia.internal.SizableStateManager.ExpandStateManager.3
                @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
                public void onCreate(MMActivity mMActivity) {
                    boolean z = false;
                    if (ExpandStateManager.this.b == null) {
                        SizableStateManager.this.c.onExpanding();
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(expandParams.width, expandParams.height);
                        layoutParams.addRule(13);
                        view.setLayoutParams(layoutParams);
                        z = true;
                        SizableStateManager.this.a(view, SizableState.STATE_EXPANDED);
                    }
                    ExpandStateManager.this.b = mMActivity;
                    ViewUtils.attachView(mMActivity.getRootView(), view);
                    ExpandStateManager.this.e();
                    if (!z || !expandParams.showCloseIndicator) {
                        if (ExpandStateManager.this.e) {
                            ExpandStateManager.this.f();
                        }
                    } else {
                        ExpandStateManager.this.c();
                    }
                    if (expandParams.showLoadingSpinner) {
                        ExpandStateManager.this.a();
                    }
                }

                @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
                public void onDestroy(MMActivity mMActivity) {
                    if (mMActivity.isFinishing()) {
                        SizableStateManager.this.restoreDefaultState(true);
                        ExpandStateManager.this.b = null;
                    }
                }

                @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
                public void onLaunchFailed() {
                    SizableStateManager.this.c.onExpandFailed();
                }
            });
            return true;
        }

        public void close() {
            if (!ThreadUtils.isUiThread()) {
                MMLog.e(SizableStateManager.b, "close must be called on the UI thread");
            } else if (this.b != null) {
                this.b.finish();
            }
        }
    }

    public SizableStateManager(SizableListener sizableListener) {
        this.c = sizableListener;
    }

    public boolean isExpanded() {
        return this.e != null;
    }

    public boolean isResized() {
        return this.d != null;
    }

    public void saveDefaultState(View view) {
        if (this.f == null) {
            this.f = new RestoreState();
            this.f.b = view;
            this.f.c = ViewUtils.getViewPositionOnScreen(view);
            this.f.d = view.getLayoutParams();
            this.f.e = new Point(view.getWidth(), view.getHeight());
            ViewGroup parentContainer = ViewUtils.getParentContainer(view);
            this.f.f = new WeakReference(parentContainer);
        }
    }

    public void restoreDefaultState(boolean z) {
        if (this.f != null) {
            ViewGroup viewGroup = (ViewGroup) this.f.f.get();
            if (viewGroup != null) {
                if (z) {
                    if (this.e == null) {
                        this.c.onUnresizing(this.f.e.x, this.f.e.y);
                        a(this.f.b, SizableState.STATE_UNRESIZED);
                    } else {
                        this.c.onCollapsing();
                        a(this.f.b, SizableState.STATE_COLLAPSED);
                    }
                }
                viewGroup.setVisibility(0);
                if (this.f.d == null) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(b, "No layout params found for view being restored, creating new layout params based on original size: x<" + this.f.e.x + ">, y<" + this.f.e.y + ">");
                    }
                    this.f.d = new ViewGroup.LayoutParams(this.f.e.x, this.f.e.y);
                }
                ViewUtils.attachView(viewGroup, this.f.b, this.f.d);
            }
            this.f = null;
        } else if (z) {
            this.c.onCollapsing();
            this.c.onCollapsed();
        }
        this.d = null;
        this.e = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final View view, final SizableState sizableState) {
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.millennialmedia.internal.SizableStateManager.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                int i9 = i3 - i;
                int i10 = i4 - i2;
                if (i9 > 0 && i10 > 0) {
                    view.removeOnLayoutChangeListener(this);
                    if (sizableState == SizableState.STATE_RESIZED) {
                        SizableStateManager.this.c.onResized(i9, i10);
                    } else if (sizableState == SizableState.STATE_EXPANDED) {
                        SizableStateManager.this.c.onExpanded();
                    } else if (sizableState == SizableState.STATE_UNRESIZED) {
                        SizableStateManager.this.c.onUnresized(i9, i10);
                    } else if (sizableState == SizableState.STATE_COLLAPSED) {
                        SizableStateManager.this.c.onCollapsed();
                    }
                }
            }
        });
    }

    public void showLoadingSpinner(ExpandParams expandParams) {
        expandParams.showLoadingSpinner = true;
        if (this.e != null) {
            this.e.a();
        }
    }

    public void hideLoadingSpinner(ExpandParams expandParams) {
        expandParams.showLoadingSpinner = false;
        if (this.e != null) {
            this.e.b();
        }
    }

    public void showCloseIndicator(boolean z) {
        if (this.e != null) {
            if (z) {
                this.e.f();
            } else {
                this.e.d();
            }
        }
    }

    public void setOrientation(int i) {
        if (this.e != null) {
            this.e.a(i);
        }
    }

    public boolean resize(View view, ResizeParams resizeParams) {
        if (this.e != null) {
            MMLog.e(b, "Cannot resize while expanded");
            return false;
        }
        boolean z = this.d == null;
        if (z) {
            this.d = new ResizeContainer(view.getContext());
        }
        if (this.d.resize(view, resizeParams)) {
            return true;
        }
        if (!z) {
            return false;
        }
        this.d = null;
        return false;
    }

    public boolean expand(View view, ExpandParams expandParams, boolean z) {
        if (this.e != null) {
            MMLog.e(b, "Cannot expand while expanded");
            return false;
        }
        if (z) {
            saveDefaultState(view);
        } else {
            restoreDefaultState(false);
        }
        MMActivity.MMActivityConfig transparent = new MMActivity.MMActivityConfig().setImmersive(false).setOrientation(expandParams.orientation).setTransparent(expandParams.transparent);
        this.e = new ExpandStateManager();
        if (this.e.expand(view, expandParams, transparent)) {
            return true;
        }
        this.e = null;
        return false;
    }

    public boolean expand(View view, ExpandParams expandParams, MMActivity.MMActivityConfig mMActivityConfig) {
        this.e = new ExpandStateManager();
        if (this.e.expand(view, expandParams, mMActivityConfig)) {
            return true;
        }
        this.e = null;
        return false;
    }

    public void close() {
        if (this.e != null) {
            this.e.close();
        } else if (this.d != null) {
            this.d.close();
        }
    }
}
