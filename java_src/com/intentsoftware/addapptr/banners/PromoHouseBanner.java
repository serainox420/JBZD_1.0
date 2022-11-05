package com.intentsoftware.addapptr.banners;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.b.a;
import com.intentsoftware.addapptr.c.k;
import com.intentsoftware.addapptr.c.m;
import java.util.Formatter;
/* loaded from: classes2.dex */
public class PromoHouseBanner extends BannerAd {
    private static final int AdTypePhone = 11;
    private static final int AdTypeTablet = 12;
    private static final String ServerResponseClose = "krassapp://close";
    private static final String ServerResponseNoAd = "internal:noad";
    private static final String UrlFormat = "https://house.aatkit.com/cgi-bin/house.cgi?type=%d&slot=%d&app=%s&lang=%s&model=%s&idfa=%s";
    private boolean failed;
    private WebView promoBannerView;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        int i = m.isTablet(activity) ? 12 : 11;
        Formatter formatter = new Formatter();
        formatter.format(UrlFormat, i, Integer.valueOf(str), a.getAppID(), a.getLang(), a.getModel(), a.getAdvertisingId());
        String formatter2 = formatter.toString();
        formatter.close();
        this.promoBannerView = new WebView(activity.getApplicationContext());
        this.promoBannerView.setWebViewClient(createWebViewClient());
        if (Build.VERSION.SDK_INT >= 21) {
            this.promoBannerView.getSettings().setMixedContentMode(2);
        }
        this.promoBannerView.loadUrl(formatter2);
    }

    private WebViewClient createWebViewClient() {
        return new WebViewClient() { // from class: com.intentsoftware.addapptr.banners.PromoHouseBanner.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                String host = Uri.parse(str).getHost();
                if (str.equals(PromoHouseBanner.ServerResponseClose)) {
                    return false;
                }
                if (str.equals(PromoHouseBanner.ServerResponseNoAd)) {
                    if (!PromoHouseBanner.this.failed) {
                        PromoHouseBanner.this.notifyListenerThatAdFailedToLoad("no ad");
                    }
                    PromoHouseBanner.this.failed = true;
                    return false;
                } else if (host == null) {
                    return false;
                } else {
                    if (host.contains("krassgames")) {
                        if (!PromoHouseBanner.this.failed) {
                            PromoHouseBanner.this.notifyListenerThatAdFailedToLoad("host contains krassgames");
                        }
                        PromoHouseBanner.this.failed = true;
                        return false;
                    }
                    PromoHouseBanner.this.notifyListenerThatAdWasClicked();
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(str));
                    PromoHouseBanner.this.getActivity().startActivity(intent);
                    return true;
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                if (str.equals(PromoHouseBanner.ServerResponseClose) || str.equals(PromoHouseBanner.ServerResponseNoAd)) {
                    if (!PromoHouseBanner.this.failed) {
                        PromoHouseBanner.this.notifyListenerThatAdFailedToLoad("no ad or close");
                    }
                    PromoHouseBanner.this.failed = true;
                } else if (!PromoHouseBanner.this.failed) {
                    PromoHouseBanner.this.notifyListenerThatAdWasLoaded();
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                if (!PromoHouseBanner.this.failed) {
                    PromoHouseBanner.this.stopLoading();
                    PromoHouseBanner.this.notifyListenerThatAdFailedToLoad("webview received error: " + ((Object) webResourceError.getDescription()));
                    PromoHouseBanner.this.failed = true;
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                if (!PromoHouseBanner.this.failed) {
                    PromoHouseBanner.this.stopLoading();
                    PromoHouseBanner.this.notifyListenerThatAdFailedToLoad("webview received HTTP error: " + webResourceResponse.getReasonPhrase());
                    PromoHouseBanner.this.failed = true;
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                sslErrorHandler.cancel();
                if (!PromoHouseBanner.this.failed) {
                    PromoHouseBanner.this.stopLoading();
                    PromoHouseBanner.this.notifyListenerThatAdFailedToLoad("webview received SSL error: " + sslError.toString());
                    PromoHouseBanner.this.failed = true;
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                if (!PromoHouseBanner.this.failed) {
                    PromoHouseBanner.this.stopLoading();
                    PromoHouseBanner.this.notifyListenerThatAdFailedToLoad("webview received error: " + str);
                    PromoHouseBanner.this.failed = true;
                }
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.promoBannerView;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        stopLoading();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopLoading() {
        if (this.promoBannerView != null) {
            this.promoBannerView.stopLoading();
            this.promoBannerView = null;
        }
    }
}
