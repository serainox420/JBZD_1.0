package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.GeolocationPermissions;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ZoomButtonsController;
import com.flurry.sdk.gz;
import com.flurry.sdk.mj;
import java.util.Collections;
import java.util.HashMap;
@SuppressLint({"SetJavaScriptEnabled", "ViewConstructor"})
/* loaded from: classes2.dex */
public final class he extends gz {

    /* renamed from: a  reason: collision with root package name */
    private final String f2788a;
    private boolean b;
    private long c;
    private boolean d;
    private final int e;
    private final int f;
    private long g;
    private WebView h;
    private WebViewClient i;
    private WebChromeClient j;
    private boolean k;
    private gm l;
    private ImageButton m;
    private ImageButton n;
    private ImageButton o;
    private ProgressBar p;
    private LinearLayout q;
    private boolean r;
    private gz.a s;

    /* loaded from: classes2.dex */
    public enum c {
        WEB_RESULT_UNKNOWN,
        WEB_RESULT_BACK,
        WEB_RESULT_CLOSE
    }

    @Override // com.flurry.sdk.gz
    public final void initLayout() {
        super.initLayout();
        setOrientation(4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.gz
    public final void onViewLoadTimeout() {
        ff.a(bc.EV_AD_WILL_CLOSE, Collections.emptyMap(), getContext(), getAdObject(), getAdController(), 0);
        if (getAdObject() == null || !(getAdObject() instanceof t)) {
            return;
        }
        HashMap<String, Object> hashMap = getAdObject().l().b.j;
        if (hashMap != null && !hashMap.isEmpty()) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.g;
            hashMap.put(mj.b.URL.e, this.h.getUrl());
            hashMap.put(mj.b.DELTA_ON_CLICK.e, String.valueOf(elapsedRealtime));
        }
        if (mh.b().f3060a == null) {
            return;
        }
        mj mjVar = mh.b().f3060a;
        int i = mh.l;
        mj mjVar2 = mh.b().f3060a;
        int i2 = mh.m;
    }

    /* loaded from: classes2.dex */
    final class b extends WebViewClient {
        private b() {
        }

        /* synthetic */ b(he heVar, byte b) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            km.a(3, he.this.f2788a, "shouldOverrideUrlLoading: url = " + str);
            if (str == null || webView == null || webView != he.this.h) {
                return false;
            }
            he.b();
            boolean a2 = he.this.a(str, he.this.r);
            he.this.r = false;
            return a2;
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            km.a(3, he.this.f2788a, "onPageStarted: url = " + str);
            if (str != null && webView != null && webView == he.this.h) {
                he.b();
                he.this.dismissProgressDialog();
                if (Build.VERSION.SDK_INT < 11 && he.this.r && he.this.a(str, true)) {
                    km.a(3, he.this.f2788a, "onPageStarted: stopLoading is called");
                    webView.stopLoading();
                }
                he.this.p.setVisibility(0);
                he.this.r = true;
                he.this.c = System.currentTimeMillis();
                he.this.c();
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            km.a(3, he.this.f2788a, "onPageFinished: duration:" + (System.currentTimeMillis() - he.this.c) + " for url = " + str);
            if (str != null && webView != null && webView == he.this.h) {
                he.this.p.setVisibility(8);
                he.this.r = false;
                if (!he.this.d) {
                    km.a(3, he.this.f2788a, "fireEvent(event=" + bc.EV_PAGE_LOAD_FINISHED + ",params=" + Collections.emptyMap() + ")");
                    ff.a(bc.EV_PAGE_LOAD_FINISHED, Collections.emptyMap(), he.this.getContext(), he.this.getAdObject(), he.this.getAdController(), 0);
                }
                he.this.c();
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            km.a(3, he.this.f2788a, "onReceivedError: error = " + i + " description= " + str + " failingUrl= " + str2);
            he.this.d = true;
            super.onReceivedError(webView, i, str, str2);
            webView.clearSslPreferences();
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            km.a(3, he.this.f2788a, "onReceivedSslError: error = " + sslError.toString());
            he.this.d = true;
            webView.clearSslPreferences();
        }
    }

    @Override // com.flurry.sdk.gz
    @TargetApi(11)
    public final void onActivityResume() {
        super.onActivityResume();
        if (this.h != null && Build.VERSION.SDK_INT >= 11) {
            this.h.onResume();
        }
    }

    @Override // com.flurry.sdk.gz
    @TargetApi(11)
    public final void onActivityPause() {
        super.onActivityPause();
        if (this.h != null && Build.VERSION.SDK_INT >= 11) {
            this.h.onPause();
        }
    }

    @Override // com.flurry.sdk.gz
    @TargetApi(11)
    public final void onActivityDestroy() {
        super.onActivityDestroy();
        if (this.h == null) {
            return;
        }
        dismissProgressDialog();
        removeView(this.h);
        this.h.stopLoading();
        if (Build.VERSION.SDK_INT >= 11) {
            this.h.onPause();
        }
        this.h.destroy();
        this.h = null;
    }

    /* loaded from: classes2.dex */
    final class a extends WebChromeClient {
        private a() {
        }

        /* synthetic */ a(he heVar, byte b) {
            this();
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            km.a(3, he.this.f2788a, "Javascript alert " + str + " message: " + str2 + " View URL: " + webView.getUrl());
            return super.onJsAlert(webView, str, str2, jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            km.a(3, he.this.f2788a, "onShowCustomView(7)");
            he.this.k = true;
            he.this.p.setVisibility(0);
            he.this.c();
        }

        @Override // android.webkit.WebChromeClient
        public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
            km.a(3, he.this.f2788a, "onShowCustomView(14)");
            he.this.k = true;
            he.this.p.setVisibility(0);
            he.this.c();
        }

        @Override // android.webkit.WebChromeClient
        public final void onHideCustomView() {
            km.a(3, he.this.f2788a, "onHideCustomView()");
            he.this.k = false;
            he.this.p.setVisibility(8);
            he.this.c();
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            he.this.p.setProgress(i);
            super.onProgressChanged(webView, i);
            if (i == 100) {
                he.this.p.setVisibility(8);
            }
        }

        @Override // android.webkit.WebChromeClient
        public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            super.onGeolocationPermissionsShowPrompt(str, callback);
            if (he.this.b) {
                callback.invoke(str, true, false);
            } else {
                callback.invoke(str, false, false);
            }
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            if (consoleMessage != null) {
                km.a(3, he.this.f2788a, consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId());
                return false;
            }
            return false;
        }
    }

    @TargetApi(11)
    public he(Context context, String str, r rVar, gz.a aVar) {
        super(context, rVar, aVar);
        this.f2788a = getClass().getSimpleName();
        this.b = false;
        this.c = 0L;
        this.d = false;
        this.e = lw.b(5);
        this.f = lw.b(9);
        this.g = 0L;
        this.s = new gz.a() { // from class: com.flurry.sdk.he.4
            @Override // com.flurry.sdk.gz.a
            public final void a() {
                if (he.this.l != null) {
                    he.this.a();
                    he.this.removeView(he.this.l);
                    he.this.l = null;
                }
            }

            @Override // com.flurry.sdk.gz.a
            public final void b() {
                if (he.this.l != null) {
                    he.this.a();
                    he.this.removeView(he.this.l);
                    he.this.l = null;
                }
            }

            @Override // com.flurry.sdk.gz.a
            public final void c() {
                if (he.this.l != null) {
                    he.this.a();
                    he.this.removeView(he.this.l);
                    he.this.l = null;
                }
            }
        };
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.q = new LinearLayout(context);
        this.q.setOrientation(1);
        this.q.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.h = new WebView(context);
        this.i = new b(this, (byte) 0);
        this.j = new a(this, (byte) 0);
        this.h.getSettings().setJavaScriptEnabled(true);
        this.h.getSettings().setUseWideViewPort(true);
        this.h.getSettings().setLoadWithOverviewMode(true);
        this.h.getSettings().setBuiltInZoomControls(true);
        this.h.getSettings().setDomStorageEnabled(true);
        this.h.getSettings().setLightTouchEnabled(true);
        this.h.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        this.h.getSettings().setLoadWithOverviewMode(true);
        this.h.getSettings().setLoadsImagesAutomatically(true);
        this.h.getSettings().setDefaultFontSize(16);
        this.h.getSettings().setDefaultFixedFontSize(13);
        this.h.getSettings().setSaveFormData(true);
        this.h.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.h.getSettings().setPluginState(WebSettings.PluginState.ON);
        this.h.getSettings().setSupportMultipleWindows(false);
        this.h.getSettings().setSupportZoom(true);
        this.h.getSettings().setBuiltInZoomControls(true);
        if (Build.VERSION.SDK_INT >= 11) {
            this.h.getSettings().setDisplayZoomControls(false);
        } else {
            try {
                ((ZoomButtonsController) this.h.getClass().getMethod("getZoomButtonsController", new Class[0]).invoke(this.h, null)).getContainer().setVisibility(8);
            } catch (Exception e) {
                km.a(5, this.f2788a, e.getMessage());
            }
        }
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 && context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
            this.b = true;
            this.h.getSettings().setGeolocationEnabled(true);
            this.h.getSettings().setGeolocationDatabasePath("/tmp/");
        }
        this.h.getSettings().setNeedInitialFocus(false);
        this.h.getSettings().setAllowFileAccess(false);
        this.h.getSettings().setAppCacheEnabled(true);
        this.h.getSettings().setDatabaseEnabled(true);
        this.h.setVerticalScrollBarEnabled(true);
        this.h.setScrollBarStyle(0);
        this.h.setScrollbarFadingEnabled(true);
        this.h.setWebViewClient(this.i);
        this.h.setWebChromeClient(this.j);
        this.h.setPadding(5, 5, 5, 5);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        try {
            CookieSyncManager.getInstance();
        } catch (Exception e2) {
            CookieSyncManager.createInstance(jy.a().f2947a);
        }
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        if (Build.VERSION.SDK_INT >= 21) {
            cookieManager.setAcceptThirdPartyCookies(this.h, true);
        }
        this.h.loadUrl(str);
        this.p = new ProgressBar(context, null, 16842872);
        this.p.setMax(100);
        this.p.setProgress(0);
        this.p.setLayoutParams(new RelativeLayout.LayoutParams(-1, lw.b(3)));
        this.m = new ImageButton(context);
        this.m.setImageBitmap(hi.a());
        this.m.setBackgroundColor(getResources().getColor(17170445));
        this.m.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.m.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.he.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                he.this.a(c.WEB_RESULT_CLOSE);
            }
        });
        this.n = new ImageButton(context);
        this.n.setId(1);
        this.n.setImageBitmap(hi.b());
        this.n.setBackgroundColor(getResources().getColor(17170445));
        this.n.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.n.setVisibility(0);
        this.n.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.he.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (he.this.h != null && he.this.h.canGoBack()) {
                    he.this.h.goBack();
                } else {
                    he.this.a(c.WEB_RESULT_BACK);
                }
            }
        });
        this.o = new ImageButton(context);
        this.o.setImageBitmap(hi.c());
        this.o.setBackgroundColor(getResources().getColor(17170445));
        this.o.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.o.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.he.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (he.this.h != null && he.this.h.canGoForward()) {
                    he.this.h.goForward();
                }
            }
        });
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setBackgroundColor(-1);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(lw.b(35), lw.b(35));
        layoutParams2.addRule(11);
        layoutParams2.addRule(13);
        layoutParams2.setMargins(this.e, this.e, this.e, this.e);
        this.m.setPadding(this.f, this.f, this.f, this.f);
        relativeLayout.addView(this.m, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(lw.b(35), lw.b(35));
        layoutParams3.addRule(9);
        layoutParams3.addRule(0, this.o.getId());
        layoutParams3.addRule(13);
        layoutParams3.setMargins(this.e, this.e, this.e, this.e);
        this.n.setPadding(this.f, this.f, this.f, this.f);
        relativeLayout.addView(this.n, layoutParams3);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(lw.b(35), lw.b(35));
        layoutParams4.addRule(1, this.n.getId());
        layoutParams4.addRule(13);
        layoutParams4.setMargins(this.e, this.e, this.e, this.e);
        this.o.setPadding(this.f, this.f, this.f, this.f);
        relativeLayout.addView(this.o, layoutParams4);
        showProgressDialog();
        relativeLayout.setGravity(17);
        c();
        this.q.addView(relativeLayout);
        this.q.addView(this.p);
        this.q.addView(this.h, layoutParams);
        setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        addView(this.q);
        this.g = SystemClock.elapsedRealtime();
    }

    public final String getUrl() {
        if (this.h == null) {
            return null;
        }
        return this.h.getUrl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.h.canGoForward()) {
            this.o.setVisibility(0);
        } else {
            this.o.setVisibility(4);
        }
    }

    public final boolean a(String str, boolean z) {
        boolean c2;
        if (mc.g(str)) {
            if (mc.g(str)) {
                if (getAdController().b.f) {
                    this.l = gn.a(getContext(), go.b, getAdObject(), this.s);
                } else {
                    this.l = gn.a(getContext(), go.c, getAdObject(), this.s);
                }
                if (this.l != null) {
                    this.l.initLayout();
                    addView(this.l);
                }
            }
            return true;
        } else if (mc.d(str)) {
            if (!z) {
                z = a(str, getUrl());
            }
            fo.a(getContext(), str);
            if (z) {
                onViewClose();
            }
            ff.a(bc.INTERNAL_EV_APP_EXIT, Collections.emptyMap(), getContext(), getAdObject(), getAdController(), 0);
            return true;
        } else {
            if (mc.f(str)) {
                c2 = fo.b(getContext(), str);
                if (c2) {
                    if (!z) {
                        z = a(str, getUrl());
                    }
                    if (z) {
                        onViewClose();
                    }
                    ff.a(bc.INTERNAL_EV_APP_EXIT, Collections.emptyMap(), getContext(), getAdObject(), getAdController(), 0);
                    return c2;
                }
            } else {
                c2 = fo.c(getContext(), str);
                if (c2) {
                    if (!z) {
                        z = a(str, getUrl());
                    }
                    if (z) {
                        onViewClose();
                    }
                    ff.a(bc.INTERNAL_EV_APP_EXIT, Collections.emptyMap(), getContext(), getAdObject(), getAdController(), 0);
                }
            }
            return c2;
        }
    }

    public final void a(c cVar) {
        if (cVar.equals(c.WEB_RESULT_CLOSE) || cVar.equals(c.WEB_RESULT_UNKNOWN)) {
            onViewClose();
        } else {
            onViewBack();
        }
    }

    private static boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        String queryParameter = Uri.parse(str2).getQueryParameter("link");
        return !TextUtils.isEmpty(queryParameter) && queryParameter.equalsIgnoreCase(str);
    }

    public final void a() {
        setVisibility(0);
        if (this.l != null) {
            this.l.c();
        }
    }

    @Override // com.flurry.sdk.gz
    public final boolean onBackKey() {
        if (!(this.k || (this.h != null && this.h.canGoBack()))) {
            a(c.WEB_RESULT_BACK);
        } else if (this.k) {
            this.j.onHideCustomView();
        } else if (this.h != null) {
            this.h.goBack();
        }
        a();
        return true;
    }

    static /* synthetic */ void b() {
        if (Build.VERSION.SDK_INT < 21) {
            CookieSyncManager.getInstance().sync();
        } else {
            CookieManager.getInstance().flush();
        }
    }
}
