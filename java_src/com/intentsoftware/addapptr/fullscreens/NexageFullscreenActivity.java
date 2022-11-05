package com.intentsoftware.addapptr.fullscreens;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.ads.AudienceNetworkActivity;
import com.intentsoftware.addapptr.c.c;
/* loaded from: classes2.dex */
public class NexageFullscreenActivity extends Activity {
    public static final String ActivityFinish = "RTB1_ACTIVITY_FINISH";
    public static final String AdClicked = "RTB1_AD_CLICKED";
    private static final int CLOSE_BUTTON_SIZE = 44;
    public static final String INTENT_BASE_URL = "Intent_base_URL";
    public static final String INTENT_HTML = "Intent_HTML";
    private FrameLayout adFrame;
    private String baseUrl;
    private String htmlString;
    private WebView webView;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        Intent intent = getIntent();
        this.baseUrl = intent.getStringExtra(INTENT_BASE_URL);
        this.htmlString = intent.getStringExtra(INTENT_HTML);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.adFrame = new FrameLayout(this);
        this.webView = new WebView(getApplicationContext());
        this.webView.setWebViewClient(createWebViewClient());
        this.webView.getSettings().setLoadWithOverviewMode(true);
        if (Build.VERSION.SDK_INT >= 21) {
            this.webView.getSettings().setMixedContentMode(2);
        }
        this.webView.loadDataWithBaseURL(this.baseUrl, this.htmlString, null, AudienceNetworkActivity.WEBVIEW_ENCODING, this.baseUrl);
        ImageView imageView = new ImageView(this);
        imageView.setBackgroundDrawable(new a(true));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.intentsoftware.addapptr.fullscreens.NexageFullscreenActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NexageFullscreenActivity.this.finishActivity();
            }
        });
        float f = getResources().getDisplayMetrics().density;
        this.adFrame.addView(this.webView, new FrameLayout.LayoutParams(-1, -1));
        this.adFrame.addView(imageView, new FrameLayout.LayoutParams((int) (44.0f * f), (int) (f * 44.0f), 53));
        show();
    }

    private void show() {
        setContentView(this.adFrame, new FrameLayout.LayoutParams(-1, -1));
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
        Intent intent = new Intent();
        intent.setAction(ActivityFinish);
        sendBroadcast(intent);
        finish();
    }

    private WebViewClient createWebViewClient() {
        return new WebViewClient() { // from class: com.intentsoftware.addapptr.fullscreens.NexageFullscreenActivity.2
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (Uri.parse(str).getHost() != null) {
                    Intent intent = new Intent();
                    intent.setAction(NexageFullscreenActivity.AdClicked);
                    NexageFullscreenActivity.this.sendBroadcast(intent);
                    Intent intent2 = new Intent("android.intent.action.VIEW");
                    intent2.setData(Uri.parse(str));
                    NexageFullscreenActivity.this.startActivity(intent2);
                    NexageFullscreenActivity.this.finishActivity();
                    return true;
                }
                return false;
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                if (c.isLoggable(6)) {
                    c.e(NexageFullscreenActivity.this, "WebView has encountered an error: " + str);
                }
                NexageFullscreenActivity.this.finishActivity();
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                if (c.isLoggable(6)) {
                    c.e(NexageFullscreenActivity.this, "WebView has encountered an error: " + ((Object) webResourceError.getDescription()));
                }
                NexageFullscreenActivity.this.finishActivity();
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                if (c.isLoggable(6)) {
                    c.e(NexageFullscreenActivity.this, "WebView has encountered an error: " + webResourceResponse.toString());
                }
                NexageFullscreenActivity.this.finishActivity();
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                sslErrorHandler.cancel();
                if (c.isLoggable(6)) {
                    c.e(NexageFullscreenActivity.this, "WebView has encountered an SSL error: " + sslError.toString());
                }
                NexageFullscreenActivity.this.finishActivity();
            }
        };
    }
}
