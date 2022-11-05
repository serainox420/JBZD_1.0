package com.inmobi.monetization.internal.imai;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.Constants;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class WebviewLoader {

    /* renamed from: a  reason: collision with root package name */
    static boolean f3898a = false;
    static AtomicBoolean b = null;
    private WebView c = null;

    @SuppressLint({"SetJavaScriptEnabled"})
    public WebviewLoader(final Context context) {
        RequestResponseManager.b.post(new Runnable() { // from class: com.inmobi.monetization.internal.imai.WebviewLoader.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebviewLoader.this.c = new WebView(context);
                    WebviewLoader.b = new AtomicBoolean(false);
                    WebviewLoader.this.c.setWebViewClient(new MyWebViewClient());
                    WebviewLoader.this.c.getSettings().setJavaScriptEnabled(true);
                    WebviewLoader.this.c.getSettings().setPluginState(WebSettings.PluginState.ON);
                    WebviewLoader.this.c.getSettings().setCacheMode(2);
                } catch (Exception e) {
                    Log.internal(Constants.LOG_TAG, "Exception init webview", e);
                }
            }
        });
    }

    public void deinit(int i) {
        RequestResponseManager.b.postDelayed(new Runnable() { // from class: com.inmobi.monetization.internal.imai.WebviewLoader.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (WebviewLoader.this.c != null) {
                        WebviewLoader.this.c.stopLoading();
                        WebviewLoader.this.c.destroy();
                        WebviewLoader.this.c = null;
                        WebviewLoader.b.set(false);
                    }
                } catch (Exception e) {
                    Log.internal(Constants.LOG_TAG, "Exception deinit webview ", e);
                }
            }
        }, i);
    }

    public void stopLoading() {
        RequestResponseManager.b.post(new Runnable() { // from class: com.inmobi.monetization.internal.imai.WebviewLoader.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (WebviewLoader.this.c != null) {
                        WebviewLoader.b.set(false);
                    }
                    WebviewLoader.this.c.stopLoading();
                } catch (Exception e) {
                    Log.internal(Constants.LOG_TAG, "Exception stop loading", e);
                }
            }
        });
    }

    public void loadInWebview(final String str, final HashMap<String, String> hashMap) {
        RequestResponseManager.b.post(new Runnable() { // from class: com.inmobi.monetization.internal.imai.WebviewLoader.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebviewLoader.b.set(true);
                    WebviewLoader.this.c.loadUrl(str, hashMap);
                } catch (Exception e) {
                    Log.internal(Constants.LOG_TAG, "Exception load in webview", e);
                }
            }
        });
    }

    /* loaded from: classes2.dex */
    protected static class MyWebViewClient extends WebViewClient {
        protected MyWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            try {
                Log.internal(Constants.LOG_TAG, "Processing click in webview error " + i + " Failing url: " + str2 + "Error description " + str);
                WebviewLoader.b.set(false);
                RequestResponseManager.c.set(false);
                super.onReceivedError(webView, i, str, str2);
                synchronized (RequestResponseManager.f3896a) {
                    RequestResponseManager.f3896a.notify();
                }
            } catch (Exception e) {
                Log.internal(Constants.LOG_TAG, "Exception onReceived error callback webview", e);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            try {
                Log.internal(Constants.LOG_TAG, "On page Finished " + str);
                if (WebviewLoader.b.compareAndSet(true, false)) {
                    RequestResponseManager.c.set(true);
                    synchronized (RequestResponseManager.f3896a) {
                        RequestResponseManager.f3896a.notify();
                    }
                }
                super.onPageFinished(webView, str);
            } catch (Exception e) {
                Log.internal(Constants.LOG_TAG, "Exception onPageFinished", e);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Log.internal(Constants.LOG_TAG, "Should override " + str);
            webView.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            Log.internal(Constants.LOG_TAG, "SSL Error.Webview will proceed " + sslError);
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }
    }
}
