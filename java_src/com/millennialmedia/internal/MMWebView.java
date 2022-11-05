package com.millennialmedia.internal;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Build;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.JSBridge;
import com.millennialmedia.internal.SizableStateManager;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.ViewUtils;
import com.moat.analytics.mobile.aol.MoatFactory;
import com.moat.analytics.mobile.aol.WebAdTracker;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class MMWebView extends WebView implements ViewTreeObserver.OnScrollChangedListener {
    private static final String d = MMWebView.class.getSimpleName();
    public static boolean googleSecurityPatchEnabled = true;

    /* renamed from: a  reason: collision with root package name */
    protected final MMWebViewListener f4095a;
    JSBridge b;
    String c;
    private final MMWebViewOptions e;
    private final ViewUtils.ViewabilityWatcher f;
    private GestureDetector g;
    private boolean h;
    private int[] i;
    private int[] j;
    private MoatFactory k;
    private WebAdTracker l;

    /* loaded from: classes3.dex */
    public interface MMWebViewListener {
        void close();

        boolean expand(SizableStateManager.ExpandParams expandParams);

        void onAdLeftApplication();

        void onClicked();

        void onFailed();

        void onLoaded();

        void onReady();

        boolean resize(SizableStateManager.ResizeParams resizeParams);

        void setOrientation(int i);

        void showCloseIndicator(boolean z);
    }

    /* loaded from: classes3.dex */
    public static class MMWebViewOptions {
        public final boolean enableEnhancedAdControl;
        public final boolean enableMoat;
        public final boolean interstitial;
        public final boolean transparent;

        public static MMWebViewOptions getDefault() {
            return new MMWebViewOptions(false, false, false, false);
        }

        public MMWebViewOptions(boolean z, boolean z2, boolean z3, boolean z4) {
            this.interstitial = z;
            this.transparent = z2;
            this.enableMoat = z3;
            this.enableEnhancedAdControl = z4;
        }
    }

    /* loaded from: classes3.dex */
    static class MMWebViewClient extends WebViewClient {
        MMWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            if (webView instanceof MMWebView) {
                ((MMWebView) webView).f4095a.onFailed();
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (webView instanceof MMWebView) {
                MMWebView mMWebView = (MMWebView) webView;
                if (mMWebView.b(str) || !Utils.startActivityFromUrl(str)) {
                    return true;
                }
                mMWebView.f4095a.onAdLeftApplication();
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    static class MMWebChromeClient extends WebChromeClient {
        MMWebChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            if (webView.getContext() != EnvironmentUtils.getApplicationContext()) {
                return super.onJsAlert(webView, str, str2, jsResult);
            }
            Toast.makeText(webView.getContext(), str2, 0).show();
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            if (webView.getContext() != EnvironmentUtils.getApplicationContext()) {
                return super.onJsConfirm(webView, str, str2, jsResult);
            }
            Toast.makeText(webView.getContext(), str2, 0).show();
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            if (webView.getContext() != EnvironmentUtils.getApplicationContext()) {
                return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
            }
            Toast.makeText(webView.getContext(), str2, 0).show();
            jsPromptResult.confirm(str3);
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
            if (webView.getContext() != EnvironmentUtils.getApplicationContext()) {
                return super.onJsBeforeUnload(webView, str, str2, jsResult);
            }
            Toast.makeText(webView.getContext(), str2, 0).show();
            jsResult.confirm();
            return true;
        }
    }

    /* loaded from: classes3.dex */
    static class MMWebViewViewabilityListener implements ViewUtils.ViewabilityListener {
        MMWebViewViewabilityListener() {
        }

        @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
        public void onViewableChanged(View view, boolean z) {
            MMWebView mMWebView = (MMWebView) view;
            if (mMWebView.b != null) {
                mMWebView.b.a(z);
            }
        }
    }

    /* loaded from: classes3.dex */
    static class MMWebViewJSBridgeListener implements JSBridge.JSBridgeListener {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<MMWebView> f4099a;

        MMWebViewJSBridgeListener(MMWebView mMWebView) {
            this.f4099a = new WeakReference<>(mMWebView);
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public void onInjectedScriptsLoaded() {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(MMWebView.d, "Injected scripts have been loaded");
            }
            MMWebView mMWebView = this.f4099a.get();
            if (mMWebView != null) {
                mMWebView.h = true;
                mMWebView.b.setLogLevel(MMLog.logLevel);
                mMWebView.d();
                return;
            }
            MMLog.e(MMWebView.d, "MMWebView reference no longer points to a valid object");
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public void onJSBridgeReady() {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(MMWebView.d, "JSBridge is ready");
            }
            MMWebView mMWebView = this.f4099a.get();
            if (mMWebView != null) {
                mMWebView.f4095a.onReady();
            }
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public void close() {
            MMWebView mMWebView = this.f4099a.get();
            if (mMWebView != null) {
                mMWebView.f4095a.close();
            }
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public boolean expand(SizableStateManager.ExpandParams expandParams) {
            MMWebView mMWebView = this.f4099a.get();
            if (mMWebView == null) {
                return false;
            }
            return mMWebView.f4095a.expand(expandParams);
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public boolean resize(SizableStateManager.ResizeParams resizeParams) {
            MMWebView mMWebView = this.f4099a.get();
            if (mMWebView == null) {
                return false;
            }
            return mMWebView.f4095a.resize(resizeParams);
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public void showCloseIndicator(boolean z) {
            MMWebView mMWebView = this.f4099a.get();
            if (mMWebView != null) {
                mMWebView.f4095a.showCloseIndicator(z);
            }
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public void onAdLeftApplication() {
            MMWebView mMWebView = this.f4099a.get();
            if (mMWebView != null) {
                mMWebView.f4095a.onAdLeftApplication();
            }
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public void setOrientation(int i) {
            MMWebView mMWebView = this.f4099a.get();
            if (mMWebView != null) {
                mMWebView.f4095a.setOrientation(i);
            }
        }
    }

    /* loaded from: classes3.dex */
    static class MMWebViewGestureListener extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a  reason: collision with root package name */
        MMWebViewListener f4098a;

        MMWebViewGestureListener(MMWebViewListener mMWebViewListener) {
            this.f4098a = mMWebViewListener;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            this.f4098a.onClicked();
            return true;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"SetJavaScriptEnabled"})
    @TargetApi(17)
    public MMWebView(Context context, MMWebViewOptions mMWebViewOptions, MMWebViewListener mMWebViewListener) {
        super(new MutableContextWrapper(context));
        boolean z = true;
        this.h = false;
        this.i = new int[2];
        this.j = new int[2];
        this.e = mMWebViewOptions == null ? MMWebViewOptions.getDefault() : mMWebViewOptions;
        setTag("MMWebView");
        if (mMWebViewListener == null) {
            throw new IllegalArgumentException("Unable to create MMWebView instance, specified listener is null");
        }
        this.f4095a = mMWebViewListener;
        if (this.e.transparent) {
            setBackgroundColor(0);
        }
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        this.g = new GestureDetector(context.getApplicationContext(), new MMWebViewGestureListener(mMWebViewListener));
        setWebViewClient(new MMWebViewClient());
        setWebChromeClient(new MMWebChromeClient());
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(-1);
        settings.setDefaultTextEncodingName("UTF-8");
        settings.setLoadWithOverviewMode(true);
        settings.setGeolocationEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 17) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(d, "Disabling user gesture requirement for media playback");
            }
            settings.setMediaPlaybackRequiresUserGesture(false);
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(d, "Google security patch is " + (googleSecurityPatchEnabled ? "enabled" : "disabled"));
        }
        settings.setAllowFileAccess(!googleSecurityPatchEnabled);
        settings.setAllowContentAccess(!googleSecurityPatchEnabled);
        settings.setAllowFileAccessFromFileURLs(!googleSecurityPatchEnabled);
        settings.setAllowUniversalAccessFromFileURLs(googleSecurityPatchEnabled ? false : z);
        this.b = new JSBridge(this, this.e.interstitial, new MMWebViewJSBridgeListener(this));
        if (this.e.enableEnhancedAdControl) {
            this.b.enableApiCalls();
        }
        this.f = new ViewUtils.ViewabilityWatcher(this, new MMWebViewViewabilityListener());
        this.f.startWatching();
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.e.enableMoat) {
            Activity activityForView = ViewUtils.getActivityForView(this);
            if (activityForView != null) {
                this.k = MoatFactory.create(activityForView);
                if (this.l == null) {
                    this.l = this.k.createWebAdTracker((WebView) this);
                    if (!this.l.track()) {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.d(d, "MOAT tracking initialization failed.");
                        }
                    } else {
                        MMLog.v(d, "MOAT tracking enabled for MMWebView.");
                    }
                }
            } else {
                MMLog.w(d, "MOAT disabled. Cannot determine host Activity for Ad.");
            }
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(d, "Moat is not enabled for this MMWebView.");
        }
        getLocationOnScreen(this.i);
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnScrollChangedListener(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        getLocationOnScreen(this.j);
        if (this.j[0] != this.i[0] || this.j[1] != this.i[1]) {
            this.i[0] = this.j[0];
            this.i[1] = this.j[1];
            if (this.b != null) {
                this.b.b(this);
            }
        }
    }

    public void setContent(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f4095a.onFailed();
            return;
        }
        this.h = false;
        final String a2 = this.b.a(str);
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.MMWebView.1
            @Override // java.lang.Runnable
            public void run() {
                MMWebView.this.loadDataWithBaseURL("file:///android_asset/", a2, "text/html", "UTF-8", null);
            }
        });
    }

    public void shutdown() {
        if (!ThreadUtils.isUiThread()) {
            MMLog.e(d, "shutdown must be called on the UI thread");
            return;
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(d, "Shutting down webview");
        }
        if (getParent() != null) {
            ViewUtils.removeFromParent(this);
        }
        super.loadUrl("about:blank");
        stopLoading();
        setWebChromeClient(null);
        setWebViewClient(null);
        destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.h) {
            a();
        }
    }

    protected void a() {
        this.f4095a.onLoaded();
    }

    public boolean isJSBridgeReady() {
        return this.b.isReady();
    }

    public boolean isEnhancedAdControlEnabled() {
        return this.b.areApiCallsEnabled();
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.c = str;
        try {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } catch (Exception e) {
            MMLog.e(d, "Error hit when calling through to loadDataWithBaseUrl", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        try {
            super.loadUrl(str);
        } catch (Exception e) {
            MMLog.e(d, "Error loading url", e);
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(final String str) {
        if (TextUtils.isEmpty(str)) {
            MMLog.e(d, "Url is null or empty");
            return;
        }
        if (str.startsWith("http")) {
            this.c = str;
        }
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.MMWebView.2
            @Override // java.lang.Runnable
            public void run() {
                MMWebView.this.a(str);
            }
        });
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.b != null) {
            this.b.c(this);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.b.enableApiCalls();
        }
        this.g.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        return !TextUtils.isEmpty(this.c) && (str.startsWith(new StringBuilder().append(this.c).append("?").toString()) || str.startsWith(new StringBuilder().append(this.c).append("#").toString()));
    }

    public void invokeCallback(String str, Object... objArr) {
        if (this.b != null) {
            this.b.invokeCallback(str, objArr);
        }
    }

    public void callJavascript(String str, Object... objArr) {
        if (this.b != null) {
            this.b.a(str, objArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<String> getExtraScriptsToInject() {
        return Collections.emptyList();
    }

    public void setStateResized() {
        if (this.b != null) {
            this.b.setStateResized();
        }
    }

    public void setStateUnresized() {
        if (this.b != null) {
            this.b.setStateUnresized();
        }
    }

    public void setStateExpanded() {
        if (this.b != null) {
            this.b.setStateExpanded();
        }
    }

    public void setStateCollapsed() {
        if (this.b != null) {
            this.b.setStateCollapsed();
        }
    }

    public void setTwoPartExpand() {
        if (this.b != null) {
            this.b.setTwoPartExpand();
        }
    }

    public void setStateResizing() {
        if (this.b != null) {
            this.b.setStateResizing();
        }
    }

    public void onNotifyClicked() {
        this.f4095a.onClicked();
    }
}
