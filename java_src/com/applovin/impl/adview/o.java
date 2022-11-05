package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.Rect;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.impl.sdk.AppLovinSdkImpl;
import com.applovin.impl.sdk.cb;
import com.applovin.impl.sdk.di;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o extends WebView {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinLogger f1562a;
    private AppLovinAd b;
    private boolean c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(r rVar, AppLovinSdk appLovinSdk, Context context) {
        super(context);
        this.b = null;
        this.c = false;
        this.f1562a = appLovinSdk.getLogger();
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        setWebViewClient(rVar);
        setWebChromeClient(new n(appLovinSdk));
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setScrollBarStyle(33554432);
        setOnTouchListener(new p(this));
        setOnLongClickListener(new q(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppLovinAd a() {
        return this.b;
    }

    public void a(AppLovinAd appLovinAd, String str, AppLovinSdkImpl appLovinSdkImpl) {
        if (this.c) {
            this.f1562a.userError("AdWebView", "Ad can not be loaded in a destroyed web view");
            return;
        }
        this.b = appLovinAd;
        if (appLovinSdkImpl != null) {
            try {
                if (new cb(appLovinSdkImpl).M()) {
                    loadUrl("about:blank");
                }
            } catch (Exception e) {
                this.f1562a.e("AdWebView", "Unable to render AppLovinAd with placement = \"" + str + "\"");
                return;
            }
        }
        loadDataWithBaseURL("/", di.a(str, ((AppLovinAdImpl) appLovinAd).getHtmlSource()), "text/html", null, "");
        this.f1562a.d("AdWebView", "AppLovinAd rendered");
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.c = true;
        try {
            super.destroy();
            this.f1562a.d("AdWebView", "Web view destroyed");
        } catch (Throwable th) {
            if (this.f1562a == null) {
                return;
            }
            this.f1562a.e("AdWebView", "destroy() threw exception", th);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        try {
            super.onFocusChanged(z, i, rect);
        } catch (Exception e) {
            this.f1562a.e("AdWebView", "onFocusChanged() threw exception", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
    }

    @Override // android.webkit.WebView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        try {
            super.onWindowFocusChanged(z);
        } catch (Exception e) {
            this.f1562a.e("AdWebView", "onWindowFocusChanged() threw exception", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onWindowVisibilityChanged(int i) {
        try {
            super.onWindowVisibilityChanged(i);
        } catch (Exception e) {
            this.f1562a.e("AdWebView", "onWindowVisibilityChanged() threw exception", e);
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        try {
            return super.requestFocus(i, rect);
        } catch (Exception e) {
            this.f1562a.e("AdWebView", "requestFocus() threw exception", e);
            return false;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
    }
}
