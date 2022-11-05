package com.facebook.ads.internal.view.a;

import android.annotation.TargetApi;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.ConsoleMessage;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.internal.util.i;
import com.facebook.ads.internal.util.m;
import java.util.HashSet;
import java.util.Set;
@TargetApi(19)
/* loaded from: classes.dex */
public class d extends com.facebook.ads.internal.view.b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2267a = d.class.getSimpleName();
    private static final Set<String> b = new HashSet(2);
    private a c;
    private m d;
    private long e;
    private long f;
    private long g;
    private long h;

    /* loaded from: classes.dex */
    public interface a {
        void a(int i);

        void a(String str);

        void b(String str);

        void c(String str);
    }

    static {
        b.add("http");
        b.add("https");
    }

    public d(Context context) {
        super(context);
        this.e = -1L;
        this.f = -1L;
        this.g = -1L;
        this.h = -1L;
        f();
    }

    public static boolean a(String str) {
        return b.contains(str);
    }

    private void f() {
        getSettings().setSupportZoom(true);
        getSettings().setBuiltInZoomControls(true);
        getSettings().setDisplayZoomControls(false);
        getSettings().setLoadWithOverviewMode(true);
        getSettings().setUseWideViewPort(true);
        this.d = new m(this);
    }

    private void g() {
        if (this.f <= -1 || this.g <= -1 || this.h <= -1) {
            return;
        }
        this.d.a(false);
    }

    @Override // com.facebook.ads.internal.view.b
    protected WebChromeClient a() {
        return new WebChromeClient() { // from class: com.facebook.ads.internal.view.a.d.1
            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                String message = consoleMessage.message();
                if (TextUtils.isEmpty(message) || consoleMessage.messageLevel() != ConsoleMessage.MessageLevel.LOG) {
                    return true;
                }
                d.this.d.a(message);
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                d.this.d.a();
                if (d.this.c != null) {
                    d.this.c.a(i);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onReceivedTitle(WebView webView, String str) {
                super.onReceivedTitle(webView, str);
                if (d.this.c != null) {
                    d.this.c.b(str);
                }
            }
        };
    }

    public void a(long j) {
        if (this.e < 0) {
            this.e = j;
        }
    }

    @Override // com.facebook.ads.internal.view.b
    protected WebViewClient b() {
        return new WebViewClient() { // from class: com.facebook.ads.internal.view.a.d.2
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                if (d.this.c != null) {
                    d.this.c.c(str);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                if (d.this.c != null) {
                    d.this.c.a(str);
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                Uri parse = Uri.parse(str);
                if (!d.b.contains(parse.getScheme())) {
                    try {
                        d.this.getContext().startActivity(new Intent("android.intent.action.VIEW", parse));
                        return true;
                    } catch (ActivityNotFoundException e) {
                        Log.w(d.f2267a, "Activity not found to handle URI.", e);
                    } catch (Exception e2) {
                        Log.e(d.f2267a, "Unknown exception occurred when trying to handle URI.", e2);
                    }
                }
                return false;
            }
        };
    }

    public void b(long j) {
        if (this.f < 0) {
            this.f = j;
        }
        g();
    }

    public void b(String str) {
        try {
            evaluateJavascript(str, null);
        } catch (IllegalStateException e) {
            loadUrl("javascript:" + str);
        }
    }

    public void c(long j) {
        if (this.h < 0) {
            this.h = j;
        }
        g();
    }

    @Override // com.facebook.ads.internal.view.b, android.webkit.WebView
    public void destroy() {
        i.a(this);
        super.destroy();
    }

    public long getDomContentLoadedMs() {
        return this.f;
    }

    public String getFirstUrl() {
        WebBackForwardList copyBackForwardList = copyBackForwardList();
        return copyBackForwardList.getSize() > 0 ? copyBackForwardList.getItemAtIndex(0).getUrl() : getUrl();
    }

    public long getLoadFinishMs() {
        return this.h;
    }

    public long getResponseEndMs() {
        return this.e;
    }

    public long getScrollReadyMs() {
        return this.g;
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.g >= 0 || computeVerticalScrollRange() <= getHeight()) {
            return;
        }
        this.g = System.currentTimeMillis();
        g();
    }

    public void setListener(a aVar) {
        this.c = aVar;
    }
}
