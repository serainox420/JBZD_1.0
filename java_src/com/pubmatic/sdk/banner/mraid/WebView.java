package com.pubmatic.sdk.banner.mraid;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import com.pubmatic.sdk.banner.BannerConstants;
import com.pubmatic.sdk.common.PMLogger;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Formatter;
import java.util.Locale;
/* loaded from: classes3.dex */
public class WebView extends android.webkit.WebView {
    private static String MRAID_JAVASCRIPT_INTERFACE_NAME = "MASTMRAIDWebView";
    private Handler handler;
    private boolean loaded;
    private Object mraidBridgeJavascript;

    /* loaded from: classes3.dex */
    public interface Handler {
        void webViewPageFinished(WebView webView);

        void webViewPageStarted(WebView webView);

        void webViewReceivedError(WebView webView, int i, String str, String str2);

        boolean webViewShouldOverrideUrlLoading(WebView webView, String str);
    }

    @SuppressLint({"SetJavaScriptEnabled", "ClickableViewAccessibility"})
    public WebView(Context context) {
        super(context);
        this.handler = null;
        this.loaded = false;
        this.mraidBridgeJavascript = null;
        setWebViewClient(new ViewClient());
        setWebChromeClient(new ChromeClient());
        getSettings().setJavaScriptEnabled(true);
        getSettings().setCacheMode(2);
        setOnTouchListener(new TouchListener());
        setScrollBarStyle(0);
    }

    public void setHandler(Handler handler) {
        this.handler = handler;
    }

    public void loadUrl(String str, Bridge bridge) {
        addJavascriptInterface(bridge, MRAID_JAVASCRIPT_INTERFACE_NAME);
        super.loadUrl(str);
    }

    public void loadFragment(String str, Bridge bridge, String str2) {
        addJavascriptInterface(bridge, MRAID_JAVASCRIPT_INTERFACE_NAME);
        Formatter formatter = new Formatter(Locale.US);
        formatter.format(BannerConstants.RICHMEDIA_FORMAT, this.mraidBridgeJavascript, str);
        String formatter2 = formatter.toString();
        formatter.close();
        loadDataWithBaseURL(str2, formatter2, "text/html", "UTF-8", null);
    }

    public void injectJavascript(String str) {
        Activity activity;
        if (str != null && str.length() > 0) {
            final String str2 = "javascript:" + str;
            Context context = getContext();
            if (context != null && (context instanceof Activity) && (activity = (Activity) context) != null) {
                activity.runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.mraid.WebView.1
                    @Override // java.lang.Runnable
                    public void run() {
                        WebView.this.loadUrl(str2);
                    }
                });
            }
        }
    }

    public boolean isLoaded() {
        return this.loaded;
    }

    /* loaded from: classes3.dex */
    private class TouchListener implements View.OnTouchListener {
        private TouchListener() {
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            switch (motionEvent.getAction()) {
                case 0:
                case 1:
                    if (!view.hasFocus()) {
                        view.requestFocus();
                        return false;
                    }
                    return false;
                default:
                    return false;
            }
        }
    }

    /* loaded from: classes3.dex */
    private class ViewClient extends WebViewClient {
        public ViewClient() {
            initJavascriptBridge();
        }

        protected void initJavascriptBridge() {
            if (WebView.this.mraidBridgeJavascript == null) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(WebView.class.getResourceAsStream("/MASTMRAIDController.js"), "UTF-8"), 16384);
                    StringBuilder sb = new StringBuilder();
                    char[] cArr = new char[4096];
                    while (true) {
                        int read = bufferedReader.read(cArr);
                        if (read != -1) {
                            sb.append(cArr, 0, read);
                        } else {
                            WebView.this.mraidBridgeJavascript = sb.toString();
                            return;
                        }
                    }
                } catch (Exception e) {
                    PMLogger.logEvent("PM-WebView : Error during injecting mraid script in creative. " + e.getMessage(), PMLogger.LogLevel.Error);
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(android.webkit.WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            WebView.this.loaded = false;
            if (WebView.this.handler != null) {
                WebView.this.handler.webViewPageStarted((WebView) webView);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(android.webkit.WebView webView, String str) {
            super.onPageFinished(webView, str);
            WebView.this.loaded = true;
            if (WebView.this.handler != null) {
                WebView.this.handler.webViewPageFinished((WebView) webView);
            }
            webView.setFocusableInTouchMode(true);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(android.webkit.WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            if (WebView.this.handler != null) {
                WebView.this.handler.webViewReceivedError((WebView) webView, i, str, str2);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(android.webkit.WebView webView, String str) {
            if (WebView.this.handler != null) {
                return WebView.this.handler.webViewShouldOverrideUrlLoading((WebView) webView, str);
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    private class ChromeClient extends WebChromeClient {
        private ChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            PMLogger.logEvent("PMSDK WebView : Console Log : " + consoleMessage.message(), PMLogger.LogLevel.Debug);
            return true;
        }
    }
}
