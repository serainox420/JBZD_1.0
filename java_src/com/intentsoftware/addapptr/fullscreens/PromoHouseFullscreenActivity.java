package com.intentsoftware.addapptr.fullscreens;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.intentsoftware.addapptr.c.c;
/* loaded from: classes2.dex */
public class PromoHouseFullscreenActivity extends Activity {
    public static final String INTENT_URL = "Intent_URL";
    public static final String PromoHouseActivityFinish = "PROMO_HOUSE_ACTIVITY_FINISH";
    public static final String PromoHouseAdClicked = "PROMO_HOUSE_AD_CLICKED";
    public static final String PromoHouseAdFailed = "PROMO_HOUSE_AD_FAILED";
    private static final String ServerResponseClose = "krassapp://close";
    private static final String ServerResponseNoAd = "internal:noad";
    private String currentUrl;
    private Intent intent;
    private WebView webView;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        this.currentUrl = getIntent().getStringExtra(INTENT_URL);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.webView = new WebView(getApplicationContext());
        this.webView.setWebViewClient(createWebViewClient());
        this.webView.getSettings().setCacheMode(1);
        if (Build.VERSION.SDK_INT >= 21) {
            this.webView.getSettings().setMixedContentMode(2);
        }
        this.webView.loadUrl(this.currentUrl);
        show();
    }

    private void show() {
        setContentView(this.webView, new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        finishActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishActivity() {
        ViewGroup viewGroup = (ViewGroup) this.webView.getParent();
        if (viewGroup != null) {
            this.webView.stopLoading();
            viewGroup.removeView(this.webView);
        }
        this.intent = new Intent();
        this.intent.setAction(PromoHouseActivityFinish);
        sendBroadcast(this.intent);
        finish();
    }

    private WebViewClient createWebViewClient() {
        return new WebViewClient() { // from class: com.intentsoftware.addapptr.fullscreens.PromoHouseFullscreenActivity.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                String host = Uri.parse(str).getHost();
                if (str.equals(PromoHouseFullscreenActivity.ServerResponseClose)) {
                    PromoHouseFullscreenActivity.this.finishActivity();
                    return false;
                } else if (str.equals(PromoHouseFullscreenActivity.ServerResponseNoAd)) {
                    PromoHouseFullscreenActivity.this.intent = new Intent();
                    PromoHouseFullscreenActivity.this.intent.setAction(PromoHouseFullscreenActivity.PromoHouseAdFailed);
                    PromoHouseFullscreenActivity.this.sendBroadcast(PromoHouseFullscreenActivity.this.intent);
                    PromoHouseFullscreenActivity.this.finishActivity();
                    return false;
                } else if (host == null || host.contains("krassgames")) {
                    return false;
                } else {
                    PromoHouseFullscreenActivity.this.intent = new Intent();
                    PromoHouseFullscreenActivity.this.intent.setAction(PromoHouseFullscreenActivity.PromoHouseAdClicked);
                    PromoHouseFullscreenActivity.this.sendBroadcast(PromoHouseFullscreenActivity.this.intent);
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(str));
                    PromoHouseFullscreenActivity.this.startActivity(intent);
                    PromoHouseFullscreenActivity.this.finishActivity();
                    return true;
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                if (str.equals(PromoHouseFullscreenActivity.ServerResponseNoAd)) {
                    PromoHouseFullscreenActivity.this.intent = new Intent();
                    PromoHouseFullscreenActivity.this.intent.setAction(PromoHouseFullscreenActivity.PromoHouseAdFailed);
                    PromoHouseFullscreenActivity.this.sendBroadcast(PromoHouseFullscreenActivity.this.intent);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                if (c.isLoggable(6)) {
                    c.e(PromoHouseFullscreenActivity.this, "WebView has encountered an error: " + str);
                }
                PromoHouseFullscreenActivity.this.finishActivity();
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                if (c.isLoggable(6)) {
                    c.e(PromoHouseFullscreenActivity.this, "WebView has encountered an error: " + ((Object) webResourceError.getDescription()));
                }
                PromoHouseFullscreenActivity.this.finishActivity();
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                if (c.isLoggable(6)) {
                    c.e(PromoHouseFullscreenActivity.this, "WebView has encountered an error: " + webResourceResponse.toString());
                }
                PromoHouseFullscreenActivity.this.finishActivity();
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                sslErrorHandler.cancel();
                if (c.isLoggable(6)) {
                    c.e(PromoHouseFullscreenActivity.this, "WebView has encountered an SSL error: " + sslError.toString());
                }
                PromoHouseFullscreenActivity.this.finishActivity();
            }
        };
    }
}
