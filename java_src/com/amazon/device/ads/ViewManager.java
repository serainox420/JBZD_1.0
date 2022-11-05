package com.amazon.device.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.amazon.device.ads.AndroidTargetUtils;
import java.util.HashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ViewManager {
    private static final String CONTENT_DESCRIPTION_NEW_WEBVIEW = "newWebView";
    private static final String CONTENT_DESCRIPTION_ORIGINAL_WEBVIEW = "originalWebView";
    private static final String CONTENT_DESCRIPTION_PRELOADED_WEBVIEW = "preloadedWebView";
    private static final String LOGTAG = ViewManager.class.getSimpleName();
    private final AndroidTargetUtils.AndroidClassAdapter androidClassAdapter;
    private WebView currentWebView;
    private boolean disableHardwareAcceleration;
    private int gravity;
    private final Set<String> javascriptInterfaceNames;
    private View.OnKeyListener keyListener;
    private final MobileAdsLogger logger;
    private final ViewGroup parent;
    private WebView preloadedWebView;
    private WebView stashedWebView;
    private WebViewClient webViewClient;
    private final WebViewFactory webViewFactory;
    private int webViewHeight;
    private int webViewWidth;

    public ViewManager(ViewGroup viewGroup) {
        this(viewGroup, WebViewFactory.getInstance(), AndroidTargetUtils.getDefaultAndroidClassAdapter());
    }

    ViewManager(ViewGroup viewGroup, WebViewFactory webViewFactory, AndroidTargetUtils.AndroidClassAdapter androidClassAdapter) {
        this.webViewHeight = -1;
        this.webViewWidth = -1;
        this.gravity = 17;
        this.disableHardwareAcceleration = false;
        this.javascriptInterfaceNames = new HashSet();
        this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
        this.parent = viewGroup;
        this.webViewFactory = webViewFactory;
        this.androidClassAdapter = androidClassAdapter;
    }

    public boolean canShowViews() {
        return this.webViewFactory.isWebViewOk(getContext(this.parent));
    }

    public void initialize() throws IllegalStateException {
        getCurrentWebView();
    }

    private boolean isInitialized() {
        return this.currentWebView != null;
    }

    private WebView getCurrentWebView() {
        if (this.currentWebView == null) {
            WebView createWebView = createWebView(getContext(this.parent));
            if (!validateWebView(createWebView)) {
                throw new IllegalStateException("Could not create WebView");
            }
            createWebView.setContentDescription(CONTENT_DESCRIPTION_ORIGINAL_WEBVIEW);
            setWebView(createWebView, false);
        }
        return this.currentWebView;
    }

    void addViewToParent(WebView webView) {
        this.parent.addView(webView);
    }

    public void disableHardwareAcceleration(boolean z) {
        this.disableHardwareAcceleration = z;
    }

    boolean validateWebView(WebView webView) {
        return webView != null;
    }

    Context getContext(View view) {
        return view.getContext();
    }

    public void listenForKey(View.OnKeyListener onKeyListener) {
        this.keyListener = onKeyListener;
        getCurrentWebView().requestFocus();
        getCurrentWebView().setOnKeyListener(this.keyListener);
    }

    protected void setWebViewLayoutParams(WebView webView, int i, int i2, int i3) {
        if (webView.getLayoutParams() == null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i2);
            layoutParams.gravity = i3;
            webView.setLayoutParams(layoutParams);
            return;
        }
        webView.getLayoutParams().width = i;
        webView.getLayoutParams().height = i2;
        if (webView.getLayoutParams() instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) webView.getLayoutParams()).gravity = i3;
        }
    }

    public void destroy() {
        destroyWebViews(this.currentWebView, this.stashedWebView, this.preloadedWebView);
        this.currentWebView = null;
        this.stashedWebView = null;
        this.preloadedWebView = null;
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        this.webViewClient = webViewClient;
        if (isInitialized()) {
            getCurrentWebView().setWebViewClient(this.webViewClient);
        }
    }

    public void setHeight(int i) {
        this.webViewHeight = i;
        updateLayoutParamsIfNeeded();
    }

    public void setLayoutParams(int i, int i2, int i3) {
        this.webViewWidth = i;
        this.webViewHeight = i2;
        this.gravity = i3;
        updateLayoutParamsIfNeeded();
    }

    private void updateLayoutParamsIfNeeded() {
        if (isInitialized()) {
            setWebViewLayoutParams(getCurrentWebView(), this.webViewWidth, this.webViewHeight, this.gravity);
        }
    }

    public WebView getCurrentAdView() {
        return this.currentWebView;
    }

    public int getWidth() {
        if (isInitialized()) {
            return getCurrentWebView().getWidth();
        }
        return 0;
    }

    public int getHeight() {
        if (isInitialized()) {
            return getCurrentWebView().getHeight();
        }
        return 0;
    }

    public void getLocationOnScreen(int[] iArr) {
        if (isInitialized()) {
            getCurrentWebView().getLocationOnScreen(iArr);
        }
    }

    WebView createWebView(Context context) {
        WebView createWebView = this.webViewFactory.createWebView(context);
        if (!this.webViewFactory.setJavaScriptEnabledForWebView(true, createWebView, LOGTAG)) {
            return null;
        }
        WebSettings settings = createWebView.getSettings();
        this.androidClassAdapter.withWebSettings(settings).setMediaPlaybackRequiresUserGesture(false);
        createWebView.setScrollContainer(false);
        createWebView.setBackgroundColor(0);
        createWebView.setVerticalScrollBarEnabled(false);
        createWebView.setHorizontalScrollBarEnabled(false);
        createWebView.setWebChromeClient(new AdWebChromeClient());
        settings.setDomStorageEnabled(true);
        if (this.disableHardwareAcceleration) {
            AndroidTargetUtils.disableHardwareAcceleration(createWebView);
        }
        return createWebView;
    }

    void setWebView(WebView webView, boolean z) {
        WebView webView2 = this.currentWebView;
        if (webView2 != null) {
            webView2.setOnKeyListener(null);
            webView2.setWebViewClient(new WebViewClient());
            this.parent.removeView(webView2);
            if (z) {
                destroyWebViews(webView2);
            }
        }
        webView.setWebViewClient(this.webViewClient);
        this.currentWebView = webView;
        updateLayoutParamsIfNeeded();
        addViewToParent(this.currentWebView);
        if (this.keyListener != null) {
            listenForKey(this.keyListener);
        }
    }

    public void stashView() {
        WebView webView;
        if (this.stashedWebView != null) {
            destroyWebViews(this.stashedWebView);
        }
        this.stashedWebView = this.currentWebView;
        if (this.preloadedWebView == null) {
            webView = createWebView(this.parent.getContext());
            webView.setContentDescription(CONTENT_DESCRIPTION_NEW_WEBVIEW);
        } else {
            webView = this.preloadedWebView;
            this.preloadedWebView = createWebView(this.parent.getContext());
        }
        setWebView(webView, false);
    }

    public boolean popView() {
        if (this.stashedWebView != null) {
            WebView webView = this.stashedWebView;
            this.stashedWebView = null;
            setWebView(webView, true);
            return true;
        }
        return false;
    }

    public void loadUrl(String str) {
        loadUrl(str, false, null);
    }

    public void loadUrl(String str, boolean z, PreloadCallback preloadCallback) {
        if (z) {
            if (preloadCallback != null) {
                getPreloadedWebView().setWebViewClient(new PreloadWebViewClient(preloadCallback));
            }
            getPreloadedWebView().loadUrl(str);
            return;
        }
        this.logger.d("Loading URL: " + str);
        getCurrentWebView().loadUrl(str);
    }

    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        loadDataWithBaseURL(str, str2, str3, str4, str5, false, null);
    }

    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5, boolean z, PreloadCallback preloadCallback) {
        if (z) {
            if (preloadCallback != null) {
                getPreloadedWebView().setWebViewClient(new PreloadWebViewClient(preloadCallback));
            }
            getPreloadedWebView().loadDataWithBaseURL(str, str2, str3, str4, str5);
            return;
        }
        getCurrentWebView().loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    public boolean isCurrentView(View view) {
        return view.equals(this.currentWebView);
    }

    private WebView getPreloadedWebView() {
        if (this.preloadedWebView == null) {
            this.preloadedWebView = createWebView(this.parent.getContext());
            this.preloadedWebView.setContentDescription(CONTENT_DESCRIPTION_PRELOADED_WEBVIEW);
        }
        return this.preloadedWebView;
    }

    public void removePreviousInterfaces() {
        if (this.currentWebView != null) {
            if (AndroidTargetUtils.isAtLeastAndroidAPI(11)) {
                for (String str : this.javascriptInterfaceNames) {
                    AndroidTargetUtils.removeJavascriptInterface(this.currentWebView, str);
                }
            } else {
                setWebView(createWebView(this.parent.getContext()), true);
                this.currentWebView.setContentDescription(CONTENT_DESCRIPTION_ORIGINAL_WEBVIEW);
            }
        }
        this.javascriptInterfaceNames.clear();
    }

    public void addJavascriptInterface(Object obj, boolean z, String str) {
        this.logger.d("Add JavaScript Interface %s", str);
        this.javascriptInterfaceNames.add(str);
        if (z) {
            getPreloadedWebView().addJavascriptInterface(obj, str);
        } else {
            getCurrentWebView().addJavascriptInterface(obj, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class AdWebChromeClient extends WebChromeClient {
        private AdWebChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            ViewManager.this.logger.d("JS Console Message Line number %d : %s", Integer.valueOf(consoleMessage.lineNumber()), consoleMessage.message());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class PreloadWebViewClient extends WebViewClient {
        private final PreloadCallback callback;

        public PreloadWebViewClient(PreloadCallback preloadCallback) {
            this.callback = preloadCallback;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (this.callback != null) {
                this.callback.onPreloadComplete(str);
            }
        }
    }

    private void destroyWebViews(final WebView... webViewArr) {
        ThreadUtils.executeOnMainThread(new Runnable() { // from class: com.amazon.device.ads.ViewManager.1
            @Override // java.lang.Runnable
            public void run() {
                WebView[] webViewArr2;
                for (WebView webView : webViewArr) {
                    if (webView != null) {
                        if (webView.getParent() != null) {
                            ((ViewGroup) webView.getParent()).removeView(webView);
                        }
                        try {
                            webView.destroy();
                        } catch (IllegalArgumentException e) {
                            ViewManager.this.logger.w("Caught an IllegalArgumentException while destroying a WebView: %s", e.getMessage());
                        }
                    }
                }
            }
        });
    }
}
