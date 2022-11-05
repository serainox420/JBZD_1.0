package com.smartadserver.android.library.controller;

import android.graphics.Bitmap;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.HttpAuthHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.smartadserver.android.library.ui.SASAdView;
/* compiled from: SASWebViewClient.java */
/* loaded from: classes3.dex */
public class c extends WebViewClient {
    private static final String c = c.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public SASAdView f5403a;
    public WebViewClient b;
    private boolean d = false;

    public void a() {
        this.d = false;
    }

    public void a(WebViewClient webViewClient) {
        this.b = webViewClient;
    }

    public boolean b() {
        return this.d;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        com.smartadserver.android.library.g.c.a(c, "shouldOverrideUrlLoading: " + str);
        if (this.f5403a != null) {
            this.f5403a.a(str);
            return true;
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        if (this.b != null) {
            this.b.onPageFinished(webView, str);
        } else {
            super.onPageFinished(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onTooManyRedirects(WebView webView, Message message, Message message2) {
        if (this.b != null) {
            this.b.onTooManyRedirects(webView, message, message2);
        } else {
            super.onTooManyRedirects(webView, message, message2);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onFormResubmission(WebView webView, Message message, Message message2) {
        if (this.b != null) {
            this.b.onFormResubmission(webView, message, message2);
        } else {
            super.onFormResubmission(webView, message, message2);
        }
    }

    @Override // android.webkit.WebViewClient
    public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
        if (this.b != null) {
            this.b.doUpdateVisitedHistory(webView, str, z);
        } else {
            super.doUpdateVisitedHistory(webView, str, z);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
        if (this.b != null) {
            this.b.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        } else {
            super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        return this.b != null ? this.b.shouldOverrideKeyEvent(webView, keyEvent) : super.shouldOverrideKeyEvent(webView, keyEvent);
    }

    @Override // android.webkit.WebViewClient
    public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
        if (this.b != null) {
            this.b.onUnhandledKeyEvent(webView, keyEvent);
        } else {
            super.onUnhandledKeyEvent(webView, keyEvent);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onScaleChanged(WebView webView, float f, float f2) {
        if (this.b != null) {
            this.b.onScaleChanged(webView, f, f2);
        } else {
            super.onScaleChanged(webView, f, f2);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (this.b != null) {
            this.b.onPageStarted(webView, str, bitmap);
        } else {
            super.onPageStarted(webView, str, bitmap);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        com.smartadserver.android.library.g.c.a(c, "onLoadResource: " + str);
        if (this.b != null) {
            this.b.onLoadResource(webView, str);
        } else {
            super.onLoadResource(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        this.d = true;
        synchronized (this) {
            notifyAll();
        }
        com.smartadserver.android.library.g.c.a(c, "onReceivedError: code: " + i + "description: " + str + "failingUrl: " + str2);
        if (this.b != null) {
            this.b.onReceivedError(webView, i, str, str2);
        } else {
            super.onReceivedError(webView, i, str, str2);
        }
    }
}
