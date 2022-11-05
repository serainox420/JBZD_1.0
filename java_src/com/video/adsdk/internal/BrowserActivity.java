package com.video.adsdk.internal;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.ProgressBar;
/* loaded from: classes3.dex */
public class BrowserActivity extends Activity {
    public static final String EXTRA_URL = "url";
    private Button backButton;
    private Button forwardButton;
    private ProgressBar spinner;
    private WebView webView;
    private WebViewClient webViewClient = new WebViewClient() { // from class: com.video.adsdk.internal.BrowserActivity.1
        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            BrowserActivity.this.spinner.setVisibility(4);
            BrowserActivity.this.checkBackAndForwardButtons();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onLoadResource(webView, str);
            BrowserActivity.this.spinner.setVisibility(0);
        }
    };
    private View.OnClickListener backListener = new View.OnClickListener() { // from class: com.video.adsdk.internal.BrowserActivity.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BrowserActivity.this.goBack();
        }
    };
    private View.OnClickListener forwardListener = new View.OnClickListener() { // from class: com.video.adsdk.internal.BrowserActivity.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BrowserActivity.this.goForward();
        }
    };
    private View.OnClickListener closeListener = new View.OnClickListener() { // from class: com.video.adsdk.internal.BrowserActivity.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BrowserActivity.this.finish();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void checkBackAndForwardButtons() {
        if (this.webView.canGoBack()) {
            this.backButton.setEnabled(true);
        } else {
            this.backButton.setEnabled(false);
        }
        if (this.webView.canGoForward()) {
            this.forwardButton.setEnabled(true);
        } else {
            this.forwardButton.setEnabled(false);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(getApplicationContext().getResources().getIdentifier("activity_browser", "layout", getApplicationContext().getPackageName()));
        setupSpinner();
        setupWebView();
        setupButtons();
    }

    private void setupSpinner() {
        this.spinner = (ProgressBar) findViewById(getApplicationContext().getResources().getIdentifier("progressBar", "id", getApplicationContext().getPackageName()));
    }

    private void setupWebView() {
        this.webView = (WebView) findViewById(getApplicationContext().getResources().getIdentifier("webView", "id", getApplicationContext().getPackageName()));
        this.webView.setWebViewClient(this.webViewClient);
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.loadUrl(getIntent().getStringExtra("url"));
    }

    private void setupButtons() {
        this.backButton = (Button) findViewById(getApplicationContext().getResources().getIdentifier("backButton", "id", getApplicationContext().getPackageName()));
        this.backButton.setOnClickListener(this.backListener);
        this.forwardButton = (Button) findViewById(getApplicationContext().getResources().getIdentifier("forwardButton", "id", getApplicationContext().getPackageName()));
        this.forwardButton.setOnClickListener(this.forwardListener);
        findViewById(getApplicationContext().getResources().getIdentifier("closeButton", "id", getApplicationContext().getPackageName())).setOnClickListener(this.closeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goBack() {
        if (this.webView.canGoBack()) {
            this.webView.goBack();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goForward() {
        if (this.webView.canGoForward()) {
            this.webView.goForward();
        }
    }
}
