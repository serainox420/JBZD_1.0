package com.amazon.device.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewDatabase;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class WebViewFactory {
    private static WebViewFactory instance = new WebViewFactory();
    private final MobileAdsCookieManager cookieManager;
    private final DebugProperties debugProperties;
    private final MobileAdsInfoStore infoStore;
    private final MobileAdsLoggerFactory loggerFactory;
    private final WebViewConstructor webViewConstructor;
    private boolean webViewDebugging;

    protected WebViewFactory() {
        this(MobileAdsInfoStore.getInstance(), new MobileAdsLoggerFactory(), DebugProperties.getInstance(), new MobileAdsCookieManager(), new WebViewConstructor());
    }

    WebViewFactory(MobileAdsInfoStore mobileAdsInfoStore, MobileAdsLoggerFactory mobileAdsLoggerFactory, DebugProperties debugProperties, MobileAdsCookieManager mobileAdsCookieManager, WebViewConstructor webViewConstructor) {
        this.webViewDebugging = false;
        this.infoStore = mobileAdsInfoStore;
        this.loggerFactory = mobileAdsLoggerFactory;
        this.debugProperties = debugProperties;
        this.cookieManager = mobileAdsCookieManager;
        this.webViewConstructor = webViewConstructor;
    }

    public static final WebViewFactory getInstance() {
        return instance;
    }

    public synchronized WebView createWebView(Context context) {
        WebView createWebView;
        shouldDebugWebViews();
        createWebView = this.webViewConstructor.createWebView(context.getApplicationContext());
        this.infoStore.getDeviceInfo().setUserAgentString(createWebView.getSettings().getUserAgentString());
        createWebView.getSettings().setUserAgentString(this.infoStore.getDeviceInfo().getUserAgentString());
        this.cookieManager.createCookieSyncManager(context);
        updateAdIdCookie();
        return createWebView;
    }

    private void updateAdIdCookie() {
        if (this.cookieManager.isCookieSyncManagerCreated()) {
            String adId = this.infoStore.getRegistrationInfo().getAdId();
            if (adId == null) {
                adId = "";
            }
            this.cookieManager.setCookie("http://amazon-adsystem.com", "ad-id=" + adId + "; Domain=.amazon-adsystem.com");
        }
    }

    public boolean isWebViewOk(Context context) {
        try {
            return WebViewDatabase.getInstance(context) != null;
        } catch (Exception e) {
            return false;
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public boolean setJavaScriptEnabledForWebView(boolean z, WebView webView, String str) {
        try {
            webView.getSettings().setJavaScriptEnabled(z);
            return true;
        } catch (NullPointerException e) {
            this.loggerFactory.createMobileAdsLogger(str).w("Could not set JavaScriptEnabled because a NullPointerException was encountered.");
            return false;
        }
    }

    private void shouldDebugWebViews() {
        boolean booleanValue = this.debugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_WEBVIEWS, Boolean.valueOf(this.webViewDebugging)).booleanValue();
        if (booleanValue != this.webViewDebugging) {
            this.webViewDebugging = booleanValue;
            AndroidTargetUtils.enableWebViewDebugging(this.webViewDebugging);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class MobileAdsCookieManager {
        private boolean cookieSyncManagerCreated = false;

        public void createCookieSyncManager(Context context) {
            if (!this.cookieSyncManagerCreated) {
                CookieSyncManager.createInstance(context);
                this.cookieSyncManagerCreated = true;
            }
        }

        public void setCookie(String str, String str2) {
            CookieManager.getInstance().setCookie(str, str2);
        }

        public boolean isCookieSyncManagerCreated() {
            return this.cookieSyncManagerCreated;
        }

        public void startSync() {
            CookieSyncManager.getInstance().startSync();
        }

        public void stopSync() {
            CookieSyncManager.getInstance().stopSync();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class WebViewConstructor {
        WebViewConstructor() {
        }

        public WebView createWebView(Context context) {
            return new WebView(context);
        }
    }
}
