package com.adcolony.sdk;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.webkit.ConsoleMessage;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.adcolony.sdk.be;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.loopme.debugging.Params;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class bi extends Activity {

    /* renamed from: a  reason: collision with root package name */
    static final String f1181a = "command";
    static final String b = "catalogPage";
    static final String c = "openedFromToast";
    static final String d = "source_id";
    static final String e = "close";
    static final String f = "redemptionResult";
    static final String g = "redemptionError";
    static final String h = "packageComplete";
    static final String i = "displayType";
    static final String j = "coordinates";
    static final String k = "x";
    static final String l = "y";
    static final String m = "enabled";
    static final String n = "callbackId";
    boolean A;
    ImageView B;
    FrameLayout.LayoutParams C;
    WebSettings D;
    int p;
    WebView q;
    long s;
    long t;
    long u;
    FrameLayout w;
    LinearLayout x;
    int y;
    String z;
    boolean o = false;
    String r = "";
    int v = 200;
    d E = d.NONE;
    f F = f.NONE;
    e G = new e();
    by H = new by(Looper.getMainLooper());
    bu I = new bu();
    Boolean J = false;
    int K = 0;
    String L = "<!DOCTYPE html><html><head><title>Page Title</title><style>html, body {height: 100%;margin: 0;padding: 0;width: 100%;background-color:lightgrey;}body {display: table;}.err-msg-group {text-align: center;display: table-cell;vertical-align: middle;}</style></head><body><div class=\"err-msg-group\"><h3>Unable to Connect to Server</h3><p>Please try again later.</p></div></body></html>";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum d {
        NONE,
        SPLASH,
        BASE,
        FINISHED,
        ERROR
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum f {
        NONE,
        SPLASH_LOADING,
        SPLASH_LOADED,
        OVERLAY_LOADING,
        OVERLAY_LOADED,
        OVERLAY_LOAD_ERROR
    }

    abstract void a();

    abstract void a(boolean z, String str);

    abstract void b();

    abstract void c();

    abstract String d();

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i2) {
        this.I.a(new bv() { // from class: com.adcolony.sdk.bi.1
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (i2 != 0) {
                    cb.b(bi.this.d(), "overlay error", true);
                    bi.this.E = d.ERROR;
                    bi.this.q.loadDataWithBaseURL("http://www.yvolver.com", bi.this.L, "text/html", "UTF-8", null);
                    return;
                }
                cb.b(bi.this.d(), "the splash was requested", true);
                be.a b2 = bz.aK().as().b("catalog_splash");
                if (b2 != null) {
                    bi.this.q.loadDataWithBaseURL("http://www.yvolver.com", b2.b(), "text/html", "UTF-8", null);
                    return;
                }
                cb.b(bi.this.d(), "Unable to load splash asset", true);
                bi.this.a(bi.this.q, bi.this.h());
                bi.this.t = System.currentTimeMillis();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String h() {
        try {
            if (bz.aK().at().a("catalog") == null || bz.aK().at().a("catalog").isEmpty()) {
                return null;
            }
            String[] split = (bz.aK().at().a("catalog") + this.r).split(Pattern.quote("?"), 2);
            HashMap hashMap = new HashMap();
            if (split.length == 2) {
                hashMap.putAll(co.k(split[1]));
            }
            hashMap.put(Params.DEVICE_ID, bz.aK().ar().j());
            hashMap.put("consumer_key", bz.aK().r());
            hashMap.put(Params.SDK_VERSION, "3.0.7");
            return split[0] + co.d(hashMap);
        } catch (Exception e2) {
            return "";
        }
    }

    void a(final WebView webView, final String str) {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.bi.2
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                cb.b(bi.this.d(), " -- DISPATCH loadWebViewInEventHack --", true);
                bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bi.2.1
                    @Override // com.adcolony.sdk.bv
                    public void a() {
                        co.a(webView, str);
                        b();
                    }
                });
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    @SuppressLint({"NewApi", "RtlHardcoded"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        this.w = new FrameLayout(this);
        this.x = new LinearLayout(this);
        this.x.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        this.w.setBackgroundColor(0);
        this.w.addView(this.x);
        setContentView(this.w, layoutParams);
        this.s = System.currentTimeMillis();
        cb.b(d(), "openCatalogMs: " + this.s, true);
        Window window = getWindow();
        this.p = getResources().getConfiguration().orientation;
        if (bz.aK().at().F()) {
            setRequestedOrientation(14);
            if (this.p == 2) {
                cb.b(d(), " Overlay Orientation == LANDSCAPE", true);
                this.x.setOrientation(0);
            } else if (this.p == 1) {
                cb.b(d(), " Overlay Orientation == PORTRAIT", true);
                this.x.setOrientation(1);
            }
        }
        WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
        layoutParams2.format = -2;
        layoutParams2.width = -1;
        layoutParams2.height = -1;
        layoutParams2.flags = 1024;
        window.setAttributes(layoutParams2);
        window.setBackgroundDrawableResource(17170445);
        this.q = new WebView(this);
        Intent intent = getIntent();
        i();
        a(intent.getExtras());
    }

    private void i() {
        this.I.a(new bv() { // from class: com.adcolony.sdk.bi.3
            @Override // com.adcolony.sdk.bv
            public void a() {
                int a2 = (int) ((25.0f * co.a()) + 0.5f);
                int a3 = (int) ((co.a() * 25.0f) + 0.5f);
                bi.this.C = new FrameLayout.LayoutParams(a2, a3, 8388661);
                bi.this.q.setLayoutParams(new LinearLayout.LayoutParams(-1, -1, 17.0f));
                bi.this.x.addView(bi.this.q);
                bi.this.w.setVerticalScrollBarEnabled(false);
                bi.this.w.setHorizontalScrollBarEnabled(false);
                bi.this.q.setVerticalScrollBarEnabled(false);
                bi.this.q.setHorizontalScrollBarEnabled(false);
                bi.this.q.setOverScrollMode(2);
                bi.this.a();
                bi.this.B = new ImageView(bz.aK().l());
                be.a b2 = bz.aK().as().b("catalog_close_button");
                if (b2 != null) {
                    byte[] decode = Base64.decode(b2.b(), 0);
                    bi.this.B.setImageBitmap(BitmapFactory.decodeByteArray(decode, 0, decode.length));
                }
                int Q = bz.aK().Q();
                int R = bz.aK().R();
                int intValue = bz.aK().aq().containsKey("xPos") ? ((Integer) bz.aK().aq().get("xPos")).intValue() : Q;
                int intValue2 = bz.aK().aq().containsKey("yPos") ? ((Integer) bz.aK().aq().get("yPos")).intValue() : R;
                cb.b(bi.this.d(), "buttonOffset = (" + intValue + ", " + intValue2 + ")", true);
                bi.this.C.width = a2;
                bi.this.C.height = a3;
                bi.this.C.gravity = 53;
                bi.this.C.rightMargin = (int) (intValue * co.a());
                bi.this.C.topMargin = (int) (intValue2 * co.a());
                bi.this.w.addView(bi.this.B);
                bi.this.B.setLayoutParams(bi.this.C);
                bi.this.B.setVisibility(0);
                bi.this.B.setOnClickListener(new View.OnClickListener() { // from class: com.adcolony.sdk.bi.3.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        cp.b().d();
                    }
                });
                bi.this.D = bi.this.q.getSettings();
                bi.this.q.setBackgroundColor(Color.argb(1, 255, 255, 255));
                bi.this.D.setSupportZoom(false);
                bi.this.D.setDomStorageEnabled(true);
                bi.this.D.setAppCachePath(bi.this.getApplicationContext().getCacheDir().getAbsolutePath());
                bi.this.D.setAllowFileAccess(true);
                bi.this.D.setAppCacheEnabled(true);
                bi.this.D.setJavaScriptEnabled(true);
                bi.this.D.setCacheMode(-1);
                cb.b(bi.this.d(), "User Agent: " + bi.this.D.getUserAgentString(), true);
                bi.this.q.setWebChromeClient(new WebChromeClient() { // from class: com.adcolony.sdk.bi.3.2
                    @Override // android.webkit.WebChromeClient
                    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                        cb.b(bi.this.d(), MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId(), true);
                        return true;
                    }
                });
                bi.this.q.addJavascriptInterface(new ba(new g(bi.this.q)), "Android");
                if (Build.VERSION.SDK_INT >= 23) {
                    bi.this.q.setWebViewClient(new c());
                } else {
                    bi.this.q.setWebViewClient(new b());
                }
                bi.this.q.setWebChromeClient(new a());
                bi.this.b();
                bi.this.a(0);
            }
        });
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        cb.b(d(), "back button pressed", true);
        if (this.q != null) {
            if (this.q.getUrl().contains(bz.aK().at().a("catalog"))) {
                co.a(this.q, "javascript:handleBackButton()");
                return;
            }
            cb.b(d(), "non-yvolver page", true);
            if (this.q.canGoBack()) {
                cb.b(d(), "go back was called", true);
                this.q.goBack();
            }
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        a(intent.getExtras());
    }

    public void injectCallbackResult(int i2, String str) {
        cq.a(this.q, i2, str);
    }

    private void a(final Bundle bundle) {
        this.I.a(new bv() { // from class: com.adcolony.sdk.bi.4
            @Override // com.adcolony.sdk.bv
            public void a() {
                int i2 = 0;
                cb.b(bi.this.d(), "processBundle was executed", true);
                bi.this.r = bundle.getString(bi.b);
                boolean z = bundle.getBoolean("close", false);
                boolean z2 = bundle.getBoolean(bi.f, false);
                String string = bundle.getString(bi.g);
                if (z) {
                    cp.b().d();
                }
                if (bundle.containsKey(bi.f)) {
                    bi.this.b(z2, string);
                }
                if (bundle.containsKey(bi.h) && bi.this.q != null) {
                    co.a(bi.this.q, "javascript:finishDigitalRedemptionTransaction()");
                }
                if (bundle.containsKey(bi.c)) {
                    bi.this.A = bundle.getBoolean(bi.c, false);
                }
                if (bundle.containsKey(bi.i)) {
                    bi.this.y = bundle.getInt(bi.i);
                }
                if (bundle.containsKey(bi.d)) {
                    bi.this.z = bundle.getString(bi.d);
                }
                if (bundle.containsKey(bi.j)) {
                    boolean containsKey = bundle.containsKey("x");
                    boolean containsKey2 = bundle.containsKey("y");
                    if (containsKey) {
                        bi.this.C.rightMargin = (int) (bundle.getInt("x", 0) * co.a());
                    }
                    if (containsKey2) {
                        bi.this.C.topMargin = (int) (bundle.getInt("y", 0) * co.a());
                    }
                    if (containsKey && containsKey2) {
                        bi.this.C.gravity = 53;
                        bi.this.B.setLayoutParams(bi.this.C);
                    }
                    if (bundle.containsKey(bi.m)) {
                        if (bundle.getBoolean(bi.m, true)) {
                            bi.this.B.setVisibility(0);
                        } else {
                            bi.this.B.setVisibility(4);
                        }
                    }
                }
                if (bundle.containsKey(bi.n)) {
                    ArrayList arrayList = new ArrayList();
                    int i3 = bundle.getInt(bi.n);
                    while (true) {
                        int i4 = i2 + 1;
                        String str = "callbackIdParam" + i2;
                        if (!bundle.containsKey(str)) {
                            break;
                        }
                        arrayList.add(bundle.getString(str));
                        i2 = i4;
                    }
                    bi.this.injectCallbackResult(i3, co.a((List<Object>) arrayList));
                }
                bi.this.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z, String str) {
        if (str != null) {
            a(z, str);
            if (z && this.q != null) {
                co.a(this.q, "javascript:updateDigitalRedemptionStatus(\"" + str + "\");");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        if (this.q != null && str != null) {
            co.a(this.q, "javascript:finishServerRewardTransaction(" + str.toString() + ");");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final int i2, final JSONArray jSONArray) {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bi.5
            @Override // com.adcolony.sdk.bv
            public void a() {
                JSONArray jSONArray2 = new JSONArray();
                jSONArray2.put(jSONArray);
                cb.b(bi.this.d(), "finalArray: " + jSONArray2, true);
                co.a(bi.this.q, "javascript:NativeBridge.resultForCallback(" + i2 + ", " + jSONArray2.toString() + ");");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bi.6
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (bi.this.q != null) {
                    co.a(bi.this.q, "javascript:finishDigitalRedemptionTransaction()");
                }
            }
        });
    }

    void f() {
        this.I.a(new bv() { // from class: com.adcolony.sdk.bi.7
            @Override // com.adcolony.sdk.bv
            public void a() {
                long currentTimeMillis = System.currentTimeMillis() - bi.this.s;
                HashMap hashMap = new HashMap();
                hashMap.put("duration_ms", Long.valueOf(currentTimeMillis));
                hashMap.put("download_ms", 0);
                hashMap.put("document_ready_ms", 0);
                hashMap.put("http_status_code", Integer.valueOf(bi.this.v));
                if (bi.this.u != 0) {
                    hashMap.put("loadtime_ms", Long.valueOf(bi.this.u));
                }
                hashMap.put("request_url", bi.this.h());
                if (bi.this.A) {
                    hashMap.put(bi.d, bi.this.z);
                    hashMap.put("reward_type", Integer.valueOf(bi.this.y));
                }
                cb.b(bi.this.d(), hashMap.toString(), true);
                bz.aK().a("close_catalog", hashMap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        this.I.a(new bv() { // from class: com.adcolony.sdk.bi.8
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(bi.this.d(), "closeCatalog", true);
                bi.this.f();
                cp.b().a((AdColonyPubServicesOverlayActivity) null);
                bi.this.D.setJavaScriptEnabled(false);
                bi.this.q.stopLoading();
                bi.this.o = false;
                bi.this.H.b(bi.this.G);
                bi.this.q.invalidate();
                bi.this.q.removeAllViews();
                bi.this.w.removeAllViews();
                bi.this.w.invalidate();
                bi.this.q.destroy();
                bi.this.q = null;
                bi.this.w = null;
                bi.this.finish();
                System.gc();
                cp.b().a((AdColonyPubServicesOverlayActivity) null);
                bz.aK().aB().b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements bv {
        e() {
        }

        @Override // com.adcolony.sdk.bv
        public void a() {
            bi.this.o = false;
            bi.this.H.b(bi.this.G);
            cb.b(bi.this.d(), "overlay timeout", true);
            bi.this.J = true;
            bi.this.F = f.OVERLAY_LOAD_ERROR;
            if (bi.this.q != null) {
                bi.this.q.stopLoading();
            }
            bi.this.a(503);
        }
    }

    /* loaded from: classes.dex */
    class g implements cr {
        private static final int d = 500;
        private WebView b;
        private boolean c = false;

        public g(WebView webView) {
            this.b = null;
            this.b = webView;
        }

        @Override // com.adcolony.sdk.cr
        public WebView a() {
            return this.b;
        }

        @Override // com.adcolony.sdk.cr
        @SuppressLint({"RtlHardcoded"})
        public void a(final Map<String, Object> map) {
            bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.bi.g.1
                @Override // com.adcolony.sdk.bv
                public void a() {
                    if (map.containsKey("x") && map.containsKey("y")) {
                        int intValue = ((Number) map.get("x")).intValue();
                        int intValue2 = ((Number) map.get("y")).intValue();
                        bi.this.C.rightMargin = (int) (intValue * co.a());
                        bi.this.C.topMargin = (int) (intValue2 * co.a());
                        bi.this.C.gravity = 53;
                    }
                    if (map.containsKey(bi.m)) {
                        if (((Boolean) map.get(bi.m)).booleanValue()) {
                            bi.this.B.setVisibility(0);
                            if (!g.this.c) {
                                AlphaAnimation alphaAnimation = new AlphaAnimation((float) BitmapDescriptorFactory.HUE_RED, 1.0f);
                                alphaAnimation.setDuration(500L);
                                bi.this.B.startAnimation(alphaAnimation);
                                g.this.c = true;
                            }
                        } else {
                            bi.this.B.setVisibility(4);
                        }
                    }
                    bi.this.B.setLayoutParams(bi.this.C);
                }
            });
        }

        @Override // com.adcolony.sdk.cr
        public void b() {
            cb.b(bi.this.d(), " OverlayActivityImpl::handleClose", true);
            cp.b().d();
        }

        @Override // com.adcolony.sdk.cr
        public void c() {
        }

        @Override // com.adcolony.sdk.cr
        public void a(String str, String str2) {
        }
    }

    /* loaded from: classes.dex */
    class a extends WebChromeClient {
        a() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            super.onProgressChanged(webView, i);
            try {
                bi.this.K = i;
                cb.b("WebChromeClient", "progress changed:" + i, true);
                if (i < 100) {
                    if (bi.this.F == f.NONE) {
                        bi.this.F = f.SPLASH_LOADING;
                    } else if (bi.this.F == f.SPLASH_LOADED) {
                        bi.this.F = f.OVERLAY_LOADING;
                    }
                    if (!bi.this.o && bi.this.E != d.ERROR) {
                        bi.this.o = true;
                        bi.this.H.b(bi.this.G, bz.aK().at().A());
                        return;
                    }
                    return;
                }
                if (bi.this.F == f.SPLASH_LOADING) {
                    bi.this.F = f.SPLASH_LOADED;
                } else if (bi.this.F == f.OVERLAY_LOADING) {
                    bi.this.F = f.OVERLAY_LOADED;
                }
                a(webView);
            } catch (Exception e) {
                cb.a(bi.this.d(), "Exception caught in customWebChromeClient", e);
            }
        }

        private void a(WebView webView) {
            if (webView.getUrl() == null || bi.this.J.booleanValue()) {
                cb.b(bi.this.d(), "Unknown err with webview's URL", true);
                return;
            }
            cb.b(bi.this.d(), "onPageFinished " + webView.getUrl() + " progress: " + Integer.toString(webView.getProgress()), true);
            cb.b(bi.this.d(), " catalogUrl: " + bi.this.h(), true);
            if (bi.this.E == d.SPLASH) {
                bi.this.E = d.BASE;
                bi.this.u = System.currentTimeMillis() - bi.this.t;
                cb.b(bi.this.d(), "LoadTime: " + bi.this.u, true);
            }
            if (!bi.this.J.booleanValue() && bi.this.E == d.NONE && bi.this.h() != null) {
                if (!webView.isShown()) {
                    webView.setVisibility(0);
                }
                if (webView.isShown()) {
                    bi.this.a(webView, bi.this.h());
                    bi.this.t = System.currentTimeMillis();
                } else {
                    cp.b().d();
                }
            }
            if (bi.this.E == d.NONE) {
                bi.this.E = d.SPLASH;
            }
            if (bi.this.E == d.BASE) {
                bi.this.E = d.FINISHED;
            }
            if (bi.this.F == f.OVERLAY_LOADED) {
                bi.this.o = false;
                bi.this.H.b(bi.this.G);
            }
        }
    }

    /* loaded from: classes.dex */
    class b extends WebViewClient {
        b() {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            cb.b(bi.this.d(), " There was an error loading url " + str2 + ": " + i, true);
            bi.this.v = i;
            bi.this.J = true;
            bi.this.u = System.currentTimeMillis() - bi.this.t;
            cb.b(bi.this.d(), " loadTime:" + bi.this.u, true);
            bi.this.a(i);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            if (Build.VERSION.SDK_INT > 14) {
                cb.b(bi.this.d(), "There was an SSL error loading url " + sslError.getUrl() + ": " + sslError.toString(), true);
            }
            bi.this.v = sslError.getPrimaryError();
            bi.this.J = true;
            bi.this.u = System.currentTimeMillis() - bi.this.t;
            cb.b(bi.this.d(), " loadTime: " + bi.this.u, true);
            bi.this.a(bi.this.v);
        }
    }

    @TargetApi(23)
    /* loaded from: classes.dex */
    class c extends b {
        c() {
            super();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            onReceivedError(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
        }
    }
}
