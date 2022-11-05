package com.applovin.impl.adview;

import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes.dex */
class n extends WebChromeClient {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinLogger f1561a;

    public n(AppLovinSdk appLovinSdk) {
        this.f1561a = appLovinSdk.getLogger();
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i, String str2) {
        this.f1561a.w("AdWebView", "console.log[" + i + "] :" + str);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        this.f1561a.d("AdWebView", consoleMessage.sourceId() + ": " + consoleMessage.lineNumber() + ": " + consoleMessage.message());
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        this.f1561a.w("AdWebView", "Alert attempted: " + str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        this.f1561a.w("AdWebView", "JS onBeforeUnload attempted: " + str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        this.f1561a.w("AdWebView", "JS confirm attempted: " + str2);
        return true;
    }
}
