package com.madsdk;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
/* loaded from: classes2.dex */
public class BrowserActivity extends AppCompatActivity {
    public static final String KEY_URL = "url";
    private View backButton;
    private View forwardButton;
    private WebView mWebView;
    private ProgressBar progressBar;
    private View reloadButton;
    private WebViewClient webViewClient = new WebViewClient() { // from class: com.madsdk.BrowserActivity.1
        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            BrowserActivity.this.progressBar.setProgress(0);
            BrowserActivity.this.progressBar.setVisibility(0);
            super.onPageStarted(webView, str, bitmap);
            BrowserActivity.this.reloadButton.setEnabled(false);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            BrowserActivity.this.checkBackAndForwardButtons();
            BrowserActivity.this.reloadButton.setEnabled(true);
            BrowserActivity.this.progressBar.setVisibility(8);
        }
    };
    private View.OnClickListener backListener = new View.OnClickListener() { // from class: com.madsdk.BrowserActivity.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BrowserActivity.this.goBack();
        }
    };
    private View.OnClickListener forwardListener = new View.OnClickListener() { // from class: com.madsdk.BrowserActivity.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BrowserActivity.this.goForward();
        }
    };
    private View.OnClickListener reloadListener = new View.OnClickListener() { // from class: com.madsdk.BrowserActivity.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BrowserActivity.this.reloadPage();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void checkBackAndForwardButtons() {
        if (this.mWebView.canGoBack()) {
            this.backButton.setEnabled(true);
        } else {
            this.backButton.setEnabled(false);
        }
        if (this.mWebView.canGoForward()) {
            this.forwardButton.setEnabled(true);
        } else {
            this.forwardButton.setEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        requestWindowFeature(5);
        requestWindowFeature(2);
        super.onCreate(bundle);
        setContentView(R.layout.activity_browser);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        initWebView();
        initControlButtons();
    }

    private void initControlButtons() {
        this.backButton = findViewById(R.id.previous_page);
        this.forwardButton = findViewById(R.id.next_page);
        this.reloadButton = findViewById(R.id.reload_page);
        this.backButton.setOnClickListener(this.backListener);
        this.forwardButton.setOnClickListener(this.forwardListener);
        this.reloadButton.setOnClickListener(this.reloadListener);
        this.progressBar = (ProgressBar) findViewById(R.id.progress_bar);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void initWebView() {
        this.mWebView = (WebView) findViewById(R.id.browser);
        this.mWebView.setWebViewClient(this.webViewClient);
        this.mWebView.setWebChromeClient(new WebChromeClient() { // from class: com.madsdk.BrowserActivity.2
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                BrowserActivity.this.progressBar.setProgress(i);
            }
        });
        this.mWebView.getSettings().setJavaScriptEnabled(true);
        if (getIntent().hasExtra("url")) {
            this.mWebView.loadUrl(getIntent().getStringExtra("url"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goBack() {
        if (this.mWebView.canGoBack()) {
            this.mWebView.goBack();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goForward() {
        if (this.mWebView.canGoForward()) {
            this.mWebView.goForward();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadPage() {
        this.mWebView.reload();
    }
}
