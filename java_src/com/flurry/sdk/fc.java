package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public class fc extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2663a = fc.class.getName();
    private WebView b;
    private String c;
    private b d;
    private ProgressBar e;

    /* loaded from: classes2.dex */
    public interface b {
        void a(String str);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public fc(Context context, String str) {
        super(context);
        this.b = null;
        this.c = "";
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("AuthUrl cannot be null");
        }
        this.c = str;
        this.b = new WebView(context);
        this.b.getSettings().setJavaScriptEnabled(true);
        this.b.getSettings().setUseWideViewPort(true);
        this.b.getSettings().setLoadWithOverviewMode(true);
        this.b.getSettings().setBuiltInZoomControls(true);
        this.b.setWebViewClient(new a(this, (byte) 0));
        this.b.setWebChromeClient(new c(this, (byte) 0));
        this.b.loadUrl(this.c);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(12);
        this.b.setLayoutParams(layoutParams);
        addView(this.b);
        this.e = new ProgressBar(context, null, 16842872);
        this.e.setMax(100);
        this.e.setProgress(0);
        this.e.setLayoutParams(new RelativeLayout.LayoutParams(-1, lw.b(5)));
        addView(this.e);
    }

    public void setRequestCompleteListener(b bVar) {
        this.d = bVar;
    }

    /* loaded from: classes2.dex */
    class a extends WebViewClient {
        private a() {
        }

        /* synthetic */ a(fc fcVar, byte b) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith(er.c())) {
                km.a(5, fc.f2663a, "Auth token is:" + str);
                fc.this.removeView(fc.this.b);
                fc.this.d.a(Uri.parse(str).getQueryParameter("oauth_verifier"));
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            fc.this.e.setVisibility(0);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            fc.this.e.setVisibility(8);
        }
    }

    /* loaded from: classes2.dex */
    final class c extends WebChromeClient {
        private c() {
        }

        /* synthetic */ c(fc fcVar, byte b) {
            this();
        }

        @Override // android.webkit.WebChromeClient
        public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            fc.this.e.setVisibility(0);
        }

        @Override // android.webkit.WebChromeClient
        public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
            fc.this.e.setVisibility(0);
        }

        @Override // android.webkit.WebChromeClient
        public final void onHideCustomView() {
            fc.this.e.setVisibility(8);
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            fc.this.e.setProgress(i);
            super.onProgressChanged(webView, i);
            if (i == 100) {
                fc.this.e.setVisibility(8);
            }
        }
    }
}
