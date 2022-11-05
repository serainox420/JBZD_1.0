package com.intentsoftware.addapptr.fullscreens;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.http.SslError;
import android.os.Build;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import com.intentsoftware.addapptr.c.m;
import java.util.Formatter;
/* loaded from: classes2.dex */
public class PromoHouseFullscreen extends FullscreenAd {
    private static final int AdTypePhone = 11;
    private static final int AdTypeTablet = 12;
    private static final String ServerResponseClose = "krassapp://close";
    private static final String ServerResponseNoAd = "internal:noad";
    private static final String UrlFormat = "https://house.aatkit.com/cgi-bin/house.cgi?type=%d&slot=%d&app=%s&lang=%s&model=%s&idfa=%s";
    private BroadcastReceiver broadcastReceiver;
    private String currentUrl;
    private boolean failed;
    private IntentFilter intentFilter;
    private boolean shown;
    private WebView webView;

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        this.broadcastReceiver = createBroadcastReceiver();
        this.intentFilter = new IntentFilter();
        this.intentFilter.addAction(PromoHouseFullscreenActivity.PromoHouseAdFailed);
        this.intentFilter.addAction(PromoHouseFullscreenActivity.PromoHouseAdClicked);
        this.intentFilter.addAction(PromoHouseFullscreenActivity.PromoHouseActivityFinish);
        getActivity().registerReceiver(this.broadcastReceiver, this.intentFilter);
        this.shown = true;
        notifyListenerThatAdIsShown();
        Intent intent = new Intent(getActivity(), PromoHouseFullscreenActivity.class);
        intent.putExtra(PromoHouseFullscreenActivity.INTENT_URL, this.currentUrl);
        getActivity().startActivity(intent);
        return true;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        int i = m.isTablet(activity) ? 12 : 11;
        Formatter formatter = new Formatter();
        formatter.format(UrlFormat, i, Integer.valueOf(str), com.intentsoftware.addapptr.b.a.getAppID(), com.intentsoftware.addapptr.b.a.getLang(), com.intentsoftware.addapptr.b.a.getModel(), com.intentsoftware.addapptr.b.a.getAdvertisingId());
        this.currentUrl = formatter.toString();
        formatter.close();
        this.webView = new WebView(activity.getApplicationContext());
        this.webView.setWebViewClient(createWebViewClient());
        this.webView.getSettings().setCacheMode(2);
        if (Build.VERSION.SDK_INT >= 21) {
            this.webView.getSettings().setMixedContentMode(2);
        }
        this.webView.loadUrl(this.currentUrl);
    }

    private BroadcastReceiver createBroadcastReceiver() {
        return new BroadcastReceiver() { // from class: com.intentsoftware.addapptr.fullscreens.PromoHouseFullscreen.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (PromoHouseFullscreen.this.broadcastReceiver == null || !intent.getAction().equals(PromoHouseFullscreenActivity.PromoHouseAdClicked)) {
                    if (PromoHouseFullscreen.this.broadcastReceiver == null || !intent.getAction().equals(PromoHouseFullscreenActivity.PromoHouseAdFailed)) {
                        if (PromoHouseFullscreen.this.broadcastReceiver != null && intent.getAction().equals(PromoHouseFullscreenActivity.PromoHouseActivityFinish)) {
                            PromoHouseFullscreen.this.tryUnregisterReceiver();
                            PromoHouseFullscreen.this.broadcastReceiver = null;
                            return;
                        }
                        return;
                    }
                    PromoHouseFullscreen.this.tryUnregisterReceiver();
                    if (!PromoHouseFullscreen.this.failed) {
                        PromoHouseFullscreen.this.notifyListenerThatAdFailedToLoad(null);
                    }
                    PromoHouseFullscreen.this.failed = true;
                    PromoHouseFullscreen.this.broadcastReceiver = null;
                    return;
                }
                PromoHouseFullscreen.this.tryUnregisterReceiver();
                PromoHouseFullscreen.this.notifyListenerThatAdWasClicked();
                PromoHouseFullscreen.this.broadcastReceiver = null;
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        tryUnregisterReceiver();
        if (this.webView != null) {
            this.webView.stopLoading();
            this.webView = null;
        }
        this.broadcastReceiver = null;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        super.resume(activity);
        if (this.broadcastReceiver != null && activity != null && !this.shown) {
            activity.registerReceiver(this.broadcastReceiver, this.intentFilter);
        }
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void pause() {
        super.pause();
        if (!this.shown) {
            tryUnregisterReceiver();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryUnregisterReceiver() {
        if (getActivity() != null && this.broadcastReceiver != null) {
            try {
                getActivity().unregisterReceiver(this.broadcastReceiver);
            } catch (IllegalArgumentException e) {
                if (c.isLoggable(5)) {
                    c.w(this, "Broadcast receiver already unregistered!");
                }
            }
        }
    }

    private WebViewClient createWebViewClient() {
        return new WebViewClient() { // from class: com.intentsoftware.addapptr.fullscreens.PromoHouseFullscreen.2
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                if (str.equals(PromoHouseFullscreen.ServerResponseClose) || str.equals(PromoHouseFullscreen.ServerResponseNoAd)) {
                    if (!PromoHouseFullscreen.this.failed) {
                        PromoHouseFullscreen.this.notifyListenerThatAdFailedToLoad("response close or noad");
                    }
                    PromoHouseFullscreen.this.failed = true;
                } else if (!PromoHouseFullscreen.this.failed) {
                    PromoHouseFullscreen.this.notifyListenerThatAdWasLoaded();
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                if (!PromoHouseFullscreen.this.failed) {
                    if (PromoHouseFullscreen.this.webView != null) {
                        PromoHouseFullscreen.this.webView.stopLoading();
                        PromoHouseFullscreen.this.webView = null;
                    }
                    PromoHouseFullscreen.this.notifyListenerThatAdFailedToLoad("webview received error: " + ((Object) webResourceError.getDescription()));
                    PromoHouseFullscreen.this.failed = true;
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                if (!PromoHouseFullscreen.this.failed) {
                    if (PromoHouseFullscreen.this.webView != null) {
                        PromoHouseFullscreen.this.webView.stopLoading();
                        PromoHouseFullscreen.this.webView = null;
                    }
                    PromoHouseFullscreen.this.notifyListenerThatAdFailedToLoad("webview received HTTP error: " + webResourceResponse.getReasonPhrase());
                    PromoHouseFullscreen.this.failed = true;
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                sslErrorHandler.cancel();
                if (!PromoHouseFullscreen.this.failed) {
                    if (PromoHouseFullscreen.this.webView != null) {
                        PromoHouseFullscreen.this.webView.stopLoading();
                        PromoHouseFullscreen.this.webView = null;
                    }
                    PromoHouseFullscreen.this.notifyListenerThatAdFailedToLoad("webview received SSL error: " + sslError.toString());
                    PromoHouseFullscreen.this.failed = true;
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                if (!PromoHouseFullscreen.this.failed) {
                    if (PromoHouseFullscreen.this.webView != null) {
                        PromoHouseFullscreen.this.webView.stopLoading();
                        PromoHouseFullscreen.this.webView = null;
                    }
                    PromoHouseFullscreen.this.notifyListenerThatAdFailedToLoad("webview received error: " + str);
                    PromoHouseFullscreen.this.failed = true;
                }
            }
        };
    }
}
