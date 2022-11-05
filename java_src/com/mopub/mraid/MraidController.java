package com.mopub.mraid;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.widget.FrameLayout;
import com.mopub.common.AdReport;
import com.mopub.common.CloseableLayout;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.common.util.Views;
import com.mopub.mobileads.MraidVideoPlayerActivity;
import com.mopub.mobileads.util.WebViews;
import com.mopub.mraid.MraidBridge;
import java.lang.ref.WeakReference;
import java.net.URI;
/* loaded from: classes3.dex */
public class MraidController {

    /* renamed from: a  reason: collision with root package name */
    private final AdReport f4548a;
    private final WeakReference<Activity> b;
    private final Context c;
    private final PlacementType d;
    private final FrameLayout e;
    private final CloseableLayout f;
    private ViewGroup g;
    private final b h;
    private final c i;
    private ViewState j;
    private MraidListener k;
    private UseCustomCloseListener l;
    private MraidWebViewDebugListener m;
    private MraidBridge.MraidWebView n;
    private MraidBridge.MraidWebView o;
    private final MraidBridge p;
    private final MraidBridge q;
    private a r;
    private Integer s;
    private boolean t;
    private com.mopub.mraid.b u;
    private final MraidNativeCommandHandler v;
    private boolean w;
    private final MraidBridge.MraidBridgeListener x;
    private final MraidBridge.MraidBridgeListener y;

    /* loaded from: classes3.dex */
    public interface MraidListener {
        void onClose();

        void onExpand();

        void onFailedToLoad();

        void onLoaded(View view);

        void onOpen();
    }

    /* loaded from: classes3.dex */
    public interface UseCustomCloseListener {
        void useCustomCloseChanged(boolean z);
    }

    public MraidController(Context context, AdReport adReport, PlacementType placementType) {
        this(context, adReport, placementType, new MraidBridge(adReport, placementType), new MraidBridge(adReport, PlacementType.INTERSTITIAL), new b());
    }

    @VisibleForTesting
    MraidController(Context context, AdReport adReport, PlacementType placementType, MraidBridge mraidBridge, MraidBridge mraidBridge2, b bVar) {
        this.j = ViewState.LOADING;
        this.r = new a();
        this.t = true;
        this.u = com.mopub.mraid.b.NONE;
        this.x = new MraidBridge.MraidBridgeListener() { // from class: com.mopub.mraid.MraidController.3
            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onPageLoaded() {
                MraidController.this.a();
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onPageFailedToLoad() {
                if (MraidController.this.k != null) {
                    MraidController.this.k.onFailedToLoad();
                }
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onVisibilityChanged(boolean z) {
                if (!MraidController.this.q.d()) {
                    MraidController.this.p.a(z);
                }
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public boolean onJsAlert(String str, JsResult jsResult) {
                return MraidController.this.a(str, jsResult);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return MraidController.this.a(consoleMessage);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onClose() {
                MraidController.this.c();
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) throws com.mopub.mraid.a {
                MraidController.this.a(i, i2, i3, i4, closePosition, z);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onExpand(URI uri, boolean z) throws com.mopub.mraid.a {
                MraidController.this.a(uri, z);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onUseCustomClose(boolean z) {
                MraidController.this.a(z);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onSetOrientationProperties(boolean z, com.mopub.mraid.b bVar2) throws com.mopub.mraid.a {
                MraidController.this.a(z, bVar2);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onOpen(URI uri) {
                MraidController.this.b(uri.toString());
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onPlayVideo(URI uri) {
                MraidController.this.a(uri.toString());
            }
        };
        this.y = new MraidBridge.MraidBridgeListener() { // from class: com.mopub.mraid.MraidController.4
            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onPageLoaded() {
                MraidController.this.b();
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onPageFailedToLoad() {
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onVisibilityChanged(boolean z) {
                MraidController.this.p.a(z);
                MraidController.this.q.a(z);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public boolean onJsAlert(String str, JsResult jsResult) {
                return MraidController.this.a(str, jsResult);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return MraidController.this.a(consoleMessage);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) throws com.mopub.mraid.a {
                throw new com.mopub.mraid.a("Not allowed to resize from an expanded state");
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onExpand(URI uri, boolean z) {
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onClose() {
                MraidController.this.c();
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onUseCustomClose(boolean z) {
                MraidController.this.a(z);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onSetOrientationProperties(boolean z, com.mopub.mraid.b bVar2) throws com.mopub.mraid.a {
                MraidController.this.a(z, bVar2);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onOpen(URI uri) {
                MraidController.this.b(uri.toString());
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onPlayVideo(URI uri) {
                MraidController.this.a(uri.toString());
            }
        };
        this.c = context.getApplicationContext();
        Preconditions.checkNotNull(this.c);
        this.f4548a = adReport;
        if (context instanceof Activity) {
            this.b = new WeakReference<>((Activity) context);
        } else {
            this.b = new WeakReference<>(null);
        }
        this.d = placementType;
        this.p = mraidBridge;
        this.q = mraidBridge2;
        this.h = bVar;
        this.j = ViewState.LOADING;
        this.i = new c(this.c, this.c.getResources().getDisplayMetrics().density);
        this.e = new FrameLayout(this.c);
        this.f = new CloseableLayout(this.c);
        this.f.setOnCloseListener(new CloseableLayout.OnCloseListener() { // from class: com.mopub.mraid.MraidController.1
            @Override // com.mopub.common.CloseableLayout.OnCloseListener
            public void onClose() {
                MraidController.this.c();
            }
        });
        View view = new View(this.c);
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.mopub.mraid.MraidController.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f.addView(view, new FrameLayout.LayoutParams(-1, -1));
        this.r.register(this.c);
        this.p.a(this.x);
        this.q.a(this.y);
        this.v = new MraidNativeCommandHandler();
    }

    public void setMraidListener(MraidListener mraidListener) {
        this.k = mraidListener;
    }

    public void setUseCustomCloseListener(UseCustomCloseListener useCustomCloseListener) {
        this.l = useCustomCloseListener;
    }

    public void setDebugListener(MraidWebViewDebugListener mraidWebViewDebugListener) {
        this.m = mraidWebViewDebugListener;
    }

    public void loadContent(String str) {
        Preconditions.checkState(this.n == null, "loadContent should only be called once");
        this.n = new MraidBridge.MraidWebView(this.c);
        this.p.a(this.n);
        this.e.addView(this.n, new FrameLayout.LayoutParams(-1, -1));
        this.p.setContentHtml(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int f() {
        return ((WindowManager) this.c.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    @VisibleForTesting
    boolean a(ConsoleMessage consoleMessage) {
        if (this.m != null) {
            return this.m.onConsoleMessage(consoleMessage);
        }
        return true;
    }

    @VisibleForTesting
    boolean a(String str, JsResult jsResult) {
        if (this.m != null) {
            return this.m.onJsAlert(str, jsResult);
        }
        jsResult.confirm();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f4557a = new Handler();
        private a b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            int f4558a;
            private final View[] b;
            private final Handler c;
            private Runnable d;
            private final Runnable e;

            private a(Handler handler, View[] viewArr) {
                this.e = new Runnable() { // from class: com.mopub.mraid.MraidController.b.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        View[] viewArr2;
                        for (final View view : a.this.b) {
                            if (view.getHeight() > 0 || view.getWidth() > 0) {
                                a.this.b();
                            } else {
                                view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.mopub.mraid.MraidController.b.a.1.1
                                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                                    public boolean onPreDraw() {
                                        view.getViewTreeObserver().removeOnPreDrawListener(this);
                                        a.this.b();
                                        return true;
                                    }
                                });
                            }
                        }
                    }
                };
                this.c = handler;
                this.b = viewArr;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void b() {
                this.f4558a--;
                if (this.f4558a == 0 && this.d != null) {
                    this.d.run();
                    this.d = null;
                }
            }

            void a(Runnable runnable) {
                this.d = runnable;
                this.f4558a = this.b.length;
                this.c.post(this.e);
            }

            void a() {
                this.c.removeCallbacks(this.e);
                this.d = null;
            }
        }

        b() {
        }

        a a(View... viewArr) {
            this.b = new a(this.f4557a, viewArr);
            return this.b;
        }

        void a() {
            if (this.b != null) {
                this.b.a();
                this.b = null;
            }
        }
    }

    private View g() {
        return this.q.d() ? this.o : this.n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        Activity activity = this.b.get();
        if (activity == null || g() == null) {
            return false;
        }
        return this.v.a(activity, g());
    }

    @VisibleForTesting
    void a() {
        a(ViewState.DEFAULT, new Runnable() { // from class: com.mopub.mraid.MraidController.5
            @Override // java.lang.Runnable
            public void run() {
                MraidController.this.p.a(MraidController.this.v.b(MraidController.this.c), MraidController.this.v.a(MraidController.this.c), MraidNativeCommandHandler.c(MraidController.this.c), MraidNativeCommandHandler.isStorePictureSupported(MraidController.this.c), MraidController.this.h());
                MraidController.this.p.a(MraidController.this.d);
                MraidController.this.p.a(MraidController.this.p.c());
                MraidController.this.p.b();
            }
        });
        if (this.k != null) {
            this.k.onLoaded(this.e);
        }
    }

    @VisibleForTesting
    void b() {
        a(new Runnable() { // from class: com.mopub.mraid.MraidController.6
            @Override // java.lang.Runnable
            public void run() {
                MraidBridge mraidBridge = MraidController.this.q;
                boolean b2 = MraidController.this.v.b(MraidController.this.c);
                boolean a2 = MraidController.this.v.a(MraidController.this.c);
                MraidNativeCommandHandler unused = MraidController.this.v;
                boolean c = MraidNativeCommandHandler.c(MraidController.this.c);
                MraidNativeCommandHandler unused2 = MraidController.this.v;
                mraidBridge.a(b2, a2, c, MraidNativeCommandHandler.isStorePictureSupported(MraidController.this.c), MraidController.this.h());
                MraidController.this.q.a(MraidController.this.j);
                MraidController.this.q.a(MraidController.this.d);
                MraidController.this.q.a(MraidController.this.q.c());
                MraidController.this.q.b();
            }
        });
    }

    private void a(final Runnable runnable) {
        this.h.a();
        final View g = g();
        if (g == null) {
            return;
        }
        this.h.a(this.e, g).a(new Runnable() { // from class: com.mopub.mraid.MraidController.7
            @Override // java.lang.Runnable
            public void run() {
                DisplayMetrics displayMetrics = MraidController.this.c.getResources().getDisplayMetrics();
                MraidController.this.i.a(displayMetrics.widthPixels, displayMetrics.heightPixels);
                int[] iArr = new int[2];
                ViewGroup i = MraidController.this.i();
                i.getLocationOnScreen(iArr);
                MraidController.this.i.a(iArr[0], iArr[1], i.getWidth(), i.getHeight());
                MraidController.this.e.getLocationOnScreen(iArr);
                MraidController.this.i.c(iArr[0], iArr[1], MraidController.this.e.getWidth(), MraidController.this.e.getHeight());
                g.getLocationOnScreen(iArr);
                MraidController.this.i.b(iArr[0], iArr[1], g.getWidth(), g.getHeight());
                MraidController.this.p.notifyScreenMetrics(MraidController.this.i);
                if (MraidController.this.q.d()) {
                    MraidController.this.q.notifyScreenMetrics(MraidController.this.i);
                }
                if (runnable != null) {
                    runnable.run();
                }
            }
        });
    }

    void a(int i) {
        a((Runnable) null);
    }

    public void pause(boolean z) {
        this.w = true;
        if (this.n != null) {
            WebViews.onPause(this.n, z);
        }
        if (this.o != null) {
            WebViews.onPause(this.o, z);
        }
    }

    public void resume() {
        this.w = false;
        if (this.n != null) {
            WebViews.onResume(this.n);
        }
        if (this.o != null) {
            WebViews.onResume(this.o);
        }
    }

    public void destroy() {
        this.h.a();
        try {
            this.r.unregister();
        } catch (IllegalArgumentException e) {
            if (!e.getMessage().contains("Receiver not registered")) {
                throw e;
            }
        }
        if (!this.w) {
            pause(true);
        }
        Views.removeFromParent(this.f);
        this.p.a();
        if (this.n != null) {
            this.n.destroy();
            this.n = null;
        }
        this.q.a();
        if (this.o != null) {
            this.o.destroy();
            this.o = null;
        }
    }

    private void a(ViewState viewState) {
        a(viewState, (Runnable) null);
    }

    private void a(ViewState viewState, Runnable runnable) {
        MoPubLog.d("MRAID state set to " + viewState);
        ViewState viewState2 = this.j;
        this.j = viewState;
        this.p.a(viewState);
        if (this.q.e()) {
            this.q.a(viewState);
        }
        if (this.k != null) {
            if (viewState == ViewState.EXPANDED) {
                this.k.onExpand();
            } else if (viewState2 == ViewState.EXPANDED && viewState == ViewState.DEFAULT) {
                this.k.onClose();
            } else if (viewState == ViewState.HIDDEN) {
                this.k.onClose();
            }
        }
        a(runnable);
    }

    int a(int i, int i2, int i3) {
        return Math.max(i, Math.min(i2, i3));
    }

    @VisibleForTesting
    void a(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) throws com.mopub.mraid.a {
        if (this.n == null) {
            throw new com.mopub.mraid.a("Unable to resize after the WebView is destroyed");
        }
        if (this.j != ViewState.LOADING && this.j != ViewState.HIDDEN) {
            if (this.j == ViewState.EXPANDED) {
                throw new com.mopub.mraid.a("Not allowed to resize from an already expanded ad");
            }
            if (this.d == PlacementType.INTERSTITIAL) {
                throw new com.mopub.mraid.a("Not allowed to resize from an interstitial ad");
            }
            int dipsToIntPixels = Dips.dipsToIntPixels(i, this.c);
            int dipsToIntPixels2 = Dips.dipsToIntPixels(i2, this.c);
            int dipsToIntPixels3 = Dips.dipsToIntPixels(i3, this.c);
            int dipsToIntPixels4 = Dips.dipsToIntPixels(i4, this.c);
            int i5 = dipsToIntPixels3 + this.i.f().left;
            int i6 = dipsToIntPixels4 + this.i.f().top;
            Rect rect = new Rect(i5, i6, dipsToIntPixels + i5, i6 + dipsToIntPixels2);
            if (!z) {
                Rect b2 = this.i.b();
                if (rect.width() > b2.width() || rect.height() > b2.height()) {
                    throw new com.mopub.mraid.a("resizeProperties specified a size (" + i + ", " + i2 + ") and offset (" + i3 + ", " + i4 + ") that doesn't allow the ad to appear within the max allowed size (" + this.i.c().width() + ", " + this.i.c().height() + ")");
                }
                rect.offsetTo(a(b2.left, rect.left, b2.right - rect.width()), a(b2.top, rect.top, b2.bottom - rect.height()));
            }
            Rect rect2 = new Rect();
            this.f.applyCloseRegionBounds(closePosition, rect, rect2);
            if (!this.i.b().contains(rect2)) {
                throw new com.mopub.mraid.a("resizeProperties specified a size (" + i + ", " + i2 + ") and offset (" + i3 + ", " + i4 + ") that doesn't allow the close region to appear within the max allowed size (" + this.i.c().width() + ", " + this.i.c().height() + ")");
            }
            if (!rect.contains(rect2)) {
                throw new com.mopub.mraid.a("resizeProperties specified a size (" + i + ", " + dipsToIntPixels2 + ") and offset (" + i3 + ", " + i4 + ") that don't allow the close region to appear within the resized ad.");
            }
            this.f.setCloseVisible(false);
            this.f.setClosePosition(closePosition);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(rect.width(), rect.height());
            layoutParams.leftMargin = rect.left - this.i.b().left;
            layoutParams.topMargin = rect.top - this.i.b().top;
            if (this.j == ViewState.DEFAULT) {
                this.e.removeView(this.n);
                this.e.setVisibility(4);
                this.f.addView(this.n, new FrameLayout.LayoutParams(-1, -1));
                j().addView(this.f, layoutParams);
            } else if (this.j == ViewState.RESIZED) {
                this.f.setLayoutParams(layoutParams);
            }
            this.f.setClosePosition(closePosition);
            a(ViewState.RESIZED);
        }
    }

    void a(URI uri, boolean z) throws com.mopub.mraid.a {
        if (this.n == null) {
            throw new com.mopub.mraid.a("Unable to expand after the WebView is destroyed");
        }
        if (this.d != PlacementType.INTERSTITIAL) {
            if (this.j == ViewState.DEFAULT || this.j == ViewState.RESIZED) {
                d();
                boolean z2 = uri != null;
                if (z2) {
                    this.o = new MraidBridge.MraidWebView(this.c);
                    this.q.a(this.o);
                    this.q.setContentUrl(uri.toString());
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                if (this.j == ViewState.DEFAULT) {
                    if (z2) {
                        this.f.addView(this.o, layoutParams);
                    } else {
                        this.e.removeView(this.n);
                        this.e.setVisibility(4);
                        this.f.addView(this.n, layoutParams);
                    }
                    j().addView(this.f, new FrameLayout.LayoutParams(-1, -1));
                } else if (this.j == ViewState.RESIZED && z2) {
                    this.f.removeView(this.n);
                    this.e.addView(this.n, layoutParams);
                    this.e.setVisibility(4);
                    this.f.addView(this.o, layoutParams);
                }
                this.f.setLayoutParams(layoutParams);
                a(z);
                a(ViewState.EXPANDED);
            }
        }
    }

    @VisibleForTesting
    void c() {
        if (this.n != null && this.j != ViewState.LOADING && this.j != ViewState.HIDDEN) {
            if (this.j == ViewState.EXPANDED || this.d == PlacementType.INTERSTITIAL) {
                e();
            }
            if (this.j == ViewState.RESIZED || this.j == ViewState.EXPANDED) {
                if (this.q.d() && this.o != null) {
                    this.f.removeView(this.o);
                    this.q.a();
                } else {
                    this.f.removeView(this.n);
                    this.e.addView(this.n, new FrameLayout.LayoutParams(-1, -1));
                    this.e.setVisibility(0);
                }
                Views.removeFromParent(this.f);
                a(ViewState.DEFAULT);
            } else if (this.j == ViewState.DEFAULT) {
                this.e.setVisibility(4);
                a(ViewState.HIDDEN);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewGroup i() {
        if (this.g != null) {
            return this.g;
        }
        View topmostView = Views.getTopmostView(this.b.get(), this.e);
        return topmostView instanceof ViewGroup ? (ViewGroup) topmostView : this.e;
    }

    private ViewGroup j() {
        if (this.g == null) {
            this.g = i();
        }
        return this.g;
    }

    @VisibleForTesting
    void a(String str) {
        MraidVideoPlayerActivity.startMraid(this.c, str);
    }

    @VisibleForTesting
    void b(int i) throws com.mopub.mraid.a {
        Activity activity = this.b.get();
        if (activity == null || !a(this.u)) {
            throw new com.mopub.mraid.a("Attempted to lock orientation to unsupported value: " + this.u.name());
        }
        if (this.s == null) {
            this.s = Integer.valueOf(activity.getRequestedOrientation());
        }
        activity.setRequestedOrientation(i);
    }

    @VisibleForTesting
    void d() throws com.mopub.mraid.a {
        if (this.u == com.mopub.mraid.b.NONE) {
            if (this.t) {
                e();
                return;
            }
            Activity activity = this.b.get();
            if (activity == null) {
                throw new com.mopub.mraid.a("Unable to set MRAID expand orientation to 'none'; expected passed in Activity Context.");
            }
            b(DeviceUtils.getScreenOrientation(activity));
            return;
        }
        b(this.u.a());
    }

    @VisibleForTesting
    void e() {
        Activity activity = this.b.get();
        if (activity != null && this.s != null) {
            activity.setRequestedOrientation(this.s.intValue());
        }
        this.s = null;
    }

    @TargetApi(13)
    @VisibleForTesting
    boolean a(com.mopub.mraid.b bVar) {
        if (bVar == com.mopub.mraid.b.NONE) {
            return true;
        }
        Activity activity = this.b.get();
        if (activity == null) {
            return false;
        }
        try {
            ActivityInfo activityInfo = activity.getPackageManager().getActivityInfo(new ComponentName(activity, activity.getClass()), 0);
            int i = activityInfo.screenOrientation;
            if (i != -1) {
                return i == bVar.a();
            }
            boolean bitMaskContainsFlag = Utils.bitMaskContainsFlag(activityInfo.configChanges, 128);
            return Build.VERSION.SDK_INT >= 13 ? bitMaskContainsFlag && Utils.bitMaskContainsFlag(activityInfo.configChanges, 1024) : bitMaskContainsFlag;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    @VisibleForTesting
    void a(boolean z) {
        boolean z2 = true;
        if (z != (!this.f.isCloseVisible())) {
            CloseableLayout closeableLayout = this.f;
            if (z) {
                z2 = false;
            }
            closeableLayout.setCloseVisible(z2);
            if (this.l != null) {
                this.l.useCustomCloseChanged(z);
            }
        }
    }

    public FrameLayout getAdContainer() {
        return this.e;
    }

    public void loadJavascript(String str) {
        this.p.a(str);
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    class a extends BroadcastReceiver {
        private Context b;
        private int c = -1;

        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int f;
            if (this.b != null && "android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction()) && (f = MraidController.this.f()) != this.c) {
                this.c = f;
                MraidController.this.a(this.c);
            }
        }

        public void register(Context context) {
            Preconditions.checkNotNull(context);
            this.b = context.getApplicationContext();
            if (this.b != null) {
                this.b.registerReceiver(this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
            }
        }

        public void unregister() {
            if (this.b != null) {
                this.b.unregisterReceiver(this);
                this.b = null;
            }
        }
    }

    public Context getContext() {
        return this.c;
    }

    @VisibleForTesting
    void a(boolean z, com.mopub.mraid.b bVar) throws com.mopub.mraid.a {
        if (!a(bVar)) {
            throw new com.mopub.mraid.a("Unable to force orientation to " + bVar);
        }
        this.t = z;
        this.u = bVar;
        if (this.j == ViewState.EXPANDED || this.d == PlacementType.INTERSTITIAL) {
            d();
        }
    }

    @VisibleForTesting
    void b(String str) {
        if (this.k != null) {
            this.k.onOpen();
        }
        UrlHandler.Builder builder = new UrlHandler.Builder();
        if (this.f4548a != null) {
            builder.withDspCreativeId(this.f4548a.getDspCreativeId());
        }
        builder.withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.c, str);
    }
}
