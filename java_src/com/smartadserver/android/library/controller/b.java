package com.smartadserver.android.library.controller;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.mopub.mobileads.resource.DrawableConstants;
import com.smartadserver.android.library.ui.SASAdView;
/* compiled from: SASWebChromeClient.java */
/* loaded from: classes3.dex */
public class b extends WebChromeClient {
    private static final String d = b.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public SASAdView f5401a;
    public WebChromeClient c;
    FrameLayout.LayoutParams b = new FrameLayout.LayoutParams(300, 200);
    private boolean e = false;
    private boolean f = false;

    public b(Context context) {
    }

    public void a(WebChromeClient webChromeClient) {
        this.c = webChromeClient;
    }

    public void a() {
        this.e = false;
    }

    public boolean b() {
        return !this.e;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        if (this.f5401a.k.d()) {
            if (i == 100) {
                if (this.f) {
                    this.f = false;
                    this.e = true;
                    synchronized (this) {
                        notifyAll();
                    }
                }
            } else {
                this.f = true;
            }
        }
        if (this.c != null) {
            this.c.onProgressChanged(webView, i);
        } else {
            super.onProgressChanged(webView, i);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView webView, String str) {
        if (this.c != null) {
            this.c.onReceivedTitle(webView, str);
        } else {
            super.onReceivedTitle(webView, str);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedIcon(WebView webView, Bitmap bitmap) {
        if (this.c != null) {
            this.c.onReceivedIcon(webView, bitmap);
        } else {
            super.onReceivedIcon(webView, bitmap);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
        if (this.c != null) {
            this.c.onReceivedTouchIconUrl(webView, str, z);
        } else {
            super.onReceivedTouchIconUrl(webView, str, z);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        if (this.c != null) {
            this.c.onShowCustomView(view, customViewCallback);
            return;
        }
        super.onShowCustomView(view, customViewCallback);
        RelativeLayout relativeLayout = new RelativeLayout(this.f5401a.getContext());
        relativeLayout.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        relativeLayout.addView(view, new RelativeLayout.LayoutParams(-1, -1));
        this.f5401a.setMediationView(relativeLayout);
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        if (this.c != null) {
            this.c.onHideCustomView();
            return;
        }
        super.onHideCustomView();
        this.f5401a.setMediationView(null);
        if (this.f5401a.l()) {
            this.f5401a.requestFocus();
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        if (this.c != null) {
            return this.c.onCreateWindow(webView, z, z2, message);
        }
        com.smartadserver.android.library.g.c.a(d, "onCreateWindow");
        WebView webView2 = new WebView(webView.getContext());
        webView2.setWebViewClient(new WebViewClient() { // from class: com.smartadserver.android.library.controller.b.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView3, String str) {
                com.smartadserver.android.library.g.c.a(b.d, "shouldOverrideUrlLoading from iframe interceptor");
                b.this.f5401a.a(str);
                return true;
            }
        });
        ((WebView.WebViewTransport) message.obj).setWebView(webView2);
        message.sendToTarget();
        return false;
    }

    @Override // android.webkit.WebChromeClient
    public void onRequestFocus(WebView webView) {
        if (this.c != null) {
            this.c.onRequestFocus(webView);
        } else {
            super.onRequestFocus(webView);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onCloseWindow(WebView webView) {
        if (this.c != null) {
            this.c.onCloseWindow(webView);
        } else {
            super.onCloseWindow(webView);
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return this.c != null ? this.c.onJsAlert(webView, str, str2, jsResult) : super.onJsAlert(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return this.c != null ? this.c.onJsConfirm(webView, str, str2, jsResult) : super.onJsConfirm(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return this.c != null ? this.c.onJsPrompt(webView, str, str2, str3, jsPromptResult) : super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return this.c != null ? this.c.onJsBeforeUnload(webView, str, str2, jsResult) : super.onJsBeforeUnload(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        if (this.c != null) {
            this.c.onGeolocationPermissionsShowPrompt(str, callback);
        } else {
            callback.invoke(str, com.smartadserver.android.library.g.c.c(), false);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsHidePrompt() {
        if (this.c != null) {
            this.c.onGeolocationPermissionsHidePrompt();
        } else {
            super.onGeolocationPermissionsHidePrompt();
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsTimeout() {
        if (this.c != null) {
            return this.c.onJsTimeout();
        }
        return super.onJsTimeout();
    }

    @Override // android.webkit.WebChromeClient
    public Bitmap getDefaultVideoPoster() {
        return this.c != null ? this.c.getDefaultVideoPoster() : super.getDefaultVideoPoster();
    }

    @Override // android.webkit.WebChromeClient
    public View getVideoLoadingProgressView() {
        return this.c != null ? this.c.getVideoLoadingProgressView() : super.getVideoLoadingProgressView();
    }

    @Override // android.webkit.WebChromeClient
    public void getVisitedHistory(ValueCallback<String[]> valueCallback) {
        if (this.c != null) {
            this.c.getVisitedHistory(valueCallback);
        } else {
            super.getVisitedHistory(valueCallback);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        if (this.c != null) {
            this.c.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
        } else {
            super.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReachedMaxAppCacheSize(long j, long j2, WebStorage.QuotaUpdater quotaUpdater) {
        if (this.c != null) {
            this.c.onReachedMaxAppCacheSize(j, j2, quotaUpdater);
        } else {
            super.onReachedMaxAppCacheSize(j, j2, quotaUpdater);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i, String str2) {
        if (this.c != null) {
            this.c.onConsoleMessage(str, i, str2);
        } else {
            super.onConsoleMessage(str, i, str2);
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        com.smartadserver.android.library.g.c.a(d, consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId());
        return this.c != null ? this.c.onConsoleMessage(consoleMessage) : super.onConsoleMessage(consoleMessage);
    }
}
