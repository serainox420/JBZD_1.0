package com.revmob.internal;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.revmob.RevMobAdsListener;
/* loaded from: classes3.dex */
public class s extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private RevMobAdsListener f4812a;
    private t b;
    private String c;
    private double d;
    private boolean e;

    public s(RevMobAdsListener revMobAdsListener, t tVar) {
        this.e = false;
        this.d = System.currentTimeMillis();
        this.f4812a = revMobAdsListener;
        this.b = tVar;
    }

    public s(RevMobAdsListener revMobAdsListener, t tVar, String str) {
        this(revMobAdsListener, tVar);
        this.c = str;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        if (!this.e) {
            this.e = true;
            com.revmob.a.e.a(this.c, (System.currentTimeMillis() - this.d) / 1000.0d);
        }
        if (this.b != null) {
            this.b.a();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        if (this.f4812a != null) {
            this.f4812a.onRevMobAdNotReceived("Content was not loaded");
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return this.b != null ? this.b.a(str) : super.shouldOverrideUrlLoading(webView, str);
    }
}
