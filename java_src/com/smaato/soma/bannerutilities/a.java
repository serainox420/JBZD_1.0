package com.smaato.soma.bannerutilities;

import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.android.gms.drive.DriveFile;
import com.smaato.soma.AdDimension;
import com.smaato.soma.BannerView;
import com.smaato.soma.ExpandedBannerActivity;
import com.smaato.soma.bannerutilities.g;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.CalculatingScaleFailed;
import com.smaato.soma.exception.ClearViewFailed;
import com.smaato.soma.exception.ClosingPackageFailedException;
import com.smaato.soma.exception.CreatingBannerPageFailed;
import com.smaato.soma.exception.CreatingBaseViewFailedException;
import com.smaato.soma.exception.CreatingSomaBanerPageFailed;
import com.smaato.soma.exception.OptimalHeightCalculationFailed;
import com.smaato.soma.exception.OrmmaConnectorInitialisationFailed;
import com.smaato.soma.exception.TransitionDisplayingBannerFailedException;
import com.smaato.soma.exception.UnableToApplySDKSettings;
import com.smaato.soma.exception.UnableToGenerateImageBanner;
import com.smaato.soma.exception.UnableToGenerateRichMediaBanner;
import com.smaato.soma.exception.UnableToGenerateTextBanner;
import com.smaato.soma.exception.UnableToSendGooglePlayMessageToBannerView;
import com.smaato.soma.exception.WebViewInitialisationFailed;
import com.smaato.soma.internal.connector.OrmmaBridge;
import com.smaato.soma.internal.statemachine.BannerState;
import com.smaato.soma.internal.statemachine.LoadingState;
import com.smaato.soma.j;
import com.smaato.soma.l;
import com.smaato.soma.n;
import com.smaato.soma.p;
import java.lang.ref.WeakReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AbstractBannerPackage.java */
/* loaded from: classes3.dex */
public abstract class a {
    private e o;
    private final Handler c = new Handler();

    /* renamed from: a  reason: collision with root package name */
    public boolean f4875a = false;
    private g.c d = null;
    private WebView e = null;
    private p f = null;
    private OrmmaBridge g = null;
    private com.smaato.soma.internal.connector.a h = null;
    private boolean i = false;
    private boolean j = false;
    private boolean k = false;
    private Context l = null;
    private Context m = null;
    private g.a n = null;
    protected j b = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractBannerPackage.java */
    /* loaded from: classes3.dex */
    public interface e {
        void a(WebSettings webSettings) throws UnableToApplySDKSettings;
    }

    protected abstract StringBuffer a(p pVar, int i, int i2, boolean z) throws UnableToGenerateTextBanner, UnableToGenerateImageBanner, UnableToGenerateRichMediaBanner;

    public boolean a() {
        return this.k;
    }

    public void a(boolean z) {
        this.k = z;
    }

    public Context b() {
        return this.m;
    }

    public void a(WeakReference<Context> weakReference) {
        if (weakReference != null) {
            this.m = weakReference.get();
        }
    }

    public a() {
        this.o = null;
        if (Build.VERSION.SDK_INT >= 8) {
            this.o = new d();
        } else if (Build.VERSION.SDK_INT == 7) {
            this.o = new c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.smaato.soma.internal.connector.OrmmaBridge, com.smaato.soma.p] */
    public final void c() throws ClearViewFailed {
        try {
            try {
                try {
                    this.c.removeCallbacksAndMessages(null);
                    com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.a.1
                    });
                    if (l() != null) {
                        if ((this instanceof f) && m() != null) {
                            m().a();
                        }
                        l().a();
                        final WebView e2 = e();
                        if (e2 != null) {
                            synchronized (e2) {
                                new l<Void>() { // from class: com.smaato.soma.bannerutilities.a.4
                                    @Override // com.smaato.soma.l
                                    /* renamed from: a */
                                    public Void b() throws Exception {
                                        e2.loadUrl("about:blank");
                                        e2.destroy();
                                        return null;
                                    }
                                }.c();
                            }
                        }
                    }
                } catch (Exception e3) {
                    throw new ClearViewFailed(e3);
                }
            } catch (RuntimeException e4) {
                throw e4;
            }
        } finally {
            a((p) null);
            a((OrmmaBridge) null);
        }
    }

    public final void d() throws ClosingPackageFailedException {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.a.5
            });
            l().a();
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new ClosingPackageFailedException(e3);
        }
    }

    public final void a(Context context, j jVar, LoadingState loadingState, Handler handler) throws CreatingSomaBanerPageFailed {
        try {
            a(context, jVar, loadingState, handler, a(context, jVar.getHeight()), -1);
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new CreatingSomaBanerPageFailed(e3);
        }
    }

    public void a(Context context, j jVar, LoadingState loadingState, Handler handler, int i, int i2) throws CreatingBannerPageFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.a.6
            });
            b(jVar);
            b(new WeakReference<>(context));
            if (f() != null) {
                a(q());
                switch (f().d()) {
                    case VIDEO:
                        ((f) this).a(jVar);
                        return;
                    default:
                        StringBuffer a2 = a(jVar, i, i2, loadingState);
                        a(new g(this).a());
                        e().setWebChromeClient(l());
                        a(new OrmmaBridge(handler, h(), this));
                        i().setWebView(e());
                        e().addJavascriptInterface(i(), "smaato_bridge");
                        e().addJavascriptInterface(new C0541a(), "HTMLOUT");
                        e().loadDataWithBaseURL(null, a2.toString(), "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING, null);
                        return;
                }
            }
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new CreatingBannerPageFailed(e3);
        }
    }

    private void a(j jVar) throws OrmmaConnectorInitialisationFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.a.7
            });
            a(new com.smaato.soma.internal.connector.a(h()));
            k().a(jVar);
            k().a(e());
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new OrmmaConnectorInitialisationFailed(e3);
        }
    }

    private StringBuffer a(j jVar, int i, int i2, LoadingState loadingState) throws WebViewInitialisationFailed {
        StringBuffer a2;
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.a.8
            });
            new StringBuffer();
            if (i2 > 0) {
                a2 = a(f(), i2, i, true);
            } else if (jVar instanceof n.a) {
                a2 = a(f(), (com.smaato.soma.internal.requests.settings.a.a().g() * 70) / 100, com.smaato.soma.internal.requests.settings.a.a().h(), false);
            } else if (jVar.getAdSettings().d() == AdDimension.INTERSTITIAL_PORTRAIT) {
                a2 = a(f(), com.smaato.soma.internal.requests.settings.a.a().g(), com.smaato.soma.internal.requests.settings.a.a().h(), true);
            } else if (jVar.getAdSettings().d() == AdDimension.INTERSTITIAL_LANDSCAPE) {
                a2 = a(f(), com.smaato.soma.internal.requests.settings.a.a().h(), com.smaato.soma.internal.requests.settings.a.a().g(), true);
            } else {
                a2 = a(f(), jVar.getWidth(), i, false);
            }
            e().setWebViewClient(new b(loadingState));
            a(jVar);
            return a2;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new WebViewInitialisationFailed(e3);
        }
    }

    private int a(Context context, int i) throws OptimalHeightCalculationFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.a.9
            });
            int a2 = com.smaato.soma.internal.c.d.a().a(context);
            return i < a2 ? a2 : i;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new OptimalHeightCalculationFailed(e3);
        }
    }

    private WebView q() throws CreatingBaseViewFailedException {
        RelativeLayout.LayoutParams layoutParams;
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.a.10
            });
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "SDK_INT = " + Build.VERSION.SDK_INT, 1, DebugCategory.DEBUG));
            com.smaato.soma.internal.e.a aVar = new com.smaato.soma.internal.e.a(h(), f(), j());
            aVar.clearCache(true);
            aVar.setFocusable(true);
            try {
                aVar.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
            } catch (RuntimeException e2) {
            } catch (Exception e3) {
            }
            aVar.getSettings().setCacheMode(-1);
            if (j() != null) {
                aVar.setBackgroundColor(j().getBackgroundColor());
            }
            WebSettings settings = aVar.getSettings();
            settings.setSupportZoom(false);
            settings.setBuiltInZoomControls(false);
            settings.setJavaScriptEnabled(true);
            try {
                settings.setMediaPlaybackRequiresUserGesture(false);
            } catch (NoSuchMethodError e4) {
            }
            if (this.o != null) {
                this.o.a(settings);
            }
            settings.setUseWideViewPort(false);
            if (j().getAdSettings().d() == AdDimension.MEDIUMRECTANGLE && (j() instanceof n.a)) {
                layoutParams = new RelativeLayout.LayoutParams(com.smaato.soma.internal.c.d.a().a(this.l, 300), com.smaato.soma.internal.c.d.a().a(this.l, 250));
            } else if (j().getAdSettings().d() == AdDimension.INTERSTITIAL_PORTRAIT && (j() instanceof n.a)) {
                layoutParams = new RelativeLayout.LayoutParams(com.smaato.soma.internal.c.d.a().a(this.l, 320), com.smaato.soma.internal.c.d.a().a(this.l, 480));
            } else if (j().getAdSettings().d() == AdDimension.INTERSTITIAL_LANDSCAPE && (j() instanceof n.a)) {
                layoutParams = new RelativeLayout.LayoutParams(com.smaato.soma.internal.c.d.a().a(this.l, 480), com.smaato.soma.internal.c.d.a().a(this.l, 320));
            } else {
                layoutParams = new RelativeLayout.LayoutParams(-2, -1);
            }
            aVar.setLayoutParams(layoutParams);
            aVar.setVerticalScrollBarEnabled(false);
            aVar.setHorizontalScrollBarEnabled(false);
            return aVar;
        } catch (RuntimeException e5) {
            throw e5;
        } catch (Exception e6) {
            throw new CreatingBaseViewFailedException(e6);
        }
    }

    public final WebView e() {
        return this.e;
    }

    public final void a(WebView webView) {
        this.e = webView;
    }

    public final p f() {
        return this.f;
    }

    public final void a(p pVar) {
        this.f = pVar;
    }

    public final boolean g() {
        return this.i;
    }

    public final void b(boolean z) {
        this.i = z;
    }

    public final Context h() {
        return this.l;
    }

    public final void b(WeakReference<Context> weakReference) {
        if (weakReference != null) {
            this.l = weakReference.get();
        }
        if (i() != null) {
            i().setContext(weakReference.get());
        }
    }

    public final OrmmaBridge i() {
        return this.g;
    }

    protected void a(OrmmaBridge ormmaBridge) {
        this.g = ormmaBridge;
    }

    public j j() {
        return this.b;
    }

    public final com.smaato.soma.internal.connector.a k() {
        return this.h;
    }

    protected void a(com.smaato.soma.internal.connector.a aVar) {
        this.h = aVar;
    }

    public g.a l() {
        return this.n;
    }

    public void a(h hVar) {
        l().a(hVar);
    }

    private void a(g.a aVar) {
        this.n = aVar;
    }

    private void b(j jVar) {
        this.b = jVar;
    }

    public g.c m() {
        return this.d;
    }

    public void a(g.c cVar) {
        this.d = cVar;
    }

    public void n() throws UnableToSendGooglePlayMessageToBannerView {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.a.11
            });
            Handler bannerAnimatorHandler = j().getBannerAnimatorHandler();
            bannerAnimatorHandler.dispatchMessage(bannerAnimatorHandler.obtainMessage(107));
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new UnableToSendGooglePlayMessageToBannerView(e3);
        }
    }

    public void o() {
        this.f4875a = true;
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Banner_Package", "Page FAILED TO LOAD... at showPageFailed ", 1, DebugCategory.DEBUG));
        this.e.loadDataWithBaseURL(null, "<html><head><title>Page not available</title></head><body bgcolor='#FFFFFF' style='height:100%;width:100%'><h2>Page not available</h2>Closing in <span id='seconds'>3</span> seconds...<script>var timeout = 3;setInterval(function(){if (timeout > 0){document.getElementById('seconds').innerText = '' + (--timeout);}}, 1000);</script></body></html>", "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING, null);
        try {
            this.b.getBannerState().e();
        } catch (TransitionDisplayingBannerFailedException e2) {
            e2.printStackTrace();
        }
        try {
            this.c.postDelayed(new Runnable() { // from class: com.smaato.soma.bannerutilities.a.2
                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.e.getRootView().getContext() instanceof ExpandedBannerActivity) {
                        ((ExpandedBannerActivity) a.this.e.getRootView().getContext()).finish();
                    }
                    a.this.b.getBannerAnimatorHandler().sendMessage(a.this.b.getBannerAnimatorHandler().obtainMessage(102));
                }
            }, 3000L);
        } catch (ActivityNotFoundException e3) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Banner_Package", "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml. ActivityNotFoundException", 0, DebugCategory.ERROR));
        } catch (Exception e4) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Banner_Package", "Exception inside Internal Browser", 0, DebugCategory.ERROR));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float p() throws CalculatingScaleFailed {
        try {
            return h().getResources().getDisplayMetrics().density;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new CalculatingScaleFailed(e3);
        }
    }

    /* compiled from: AbstractBannerPackage.java */
    /* loaded from: classes3.dex */
    private class c implements e {
        private c() {
        }

        @Override // com.smaato.soma.bannerutilities.a.e
        public void a(WebSettings webSettings) throws UnableToApplySDKSettings {
            webSettings.setLoadWithOverviewMode(true);
        }
    }

    /* compiled from: AbstractBannerPackage.java */
    /* loaded from: classes3.dex */
    private class d extends c implements e {
        private d() {
            super();
        }

        @Override // com.smaato.soma.bannerutilities.a.c, com.smaato.soma.bannerutilities.a.e
        public void a(WebSettings webSettings) throws UnableToApplySDKSettings {
            try {
                super.a(webSettings);
                webSettings.setPluginState(WebSettings.PluginState.ON);
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new UnableToApplySDKSettings(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractBannerPackage.java */
    /* loaded from: classes3.dex */
    public class b extends WebViewClient {

        /* renamed from: a  reason: collision with root package name */
        final LoadingState f4891a;

        private b(LoadingState loadingState) {
            this.f4891a = loadingState;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return new l<Boolean>() { // from class: com.smaato.soma.bannerutilities.a.b.1
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Boolean b() throws Exception {
                    return false;
                }
            }.c().booleanValue();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            a.this.f4875a = true;
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Banner_Package", "Page FAILED TO LOAD in AbstractBannerPackage... " + this.f4891a.a(), 1, DebugCategory.DEBUG));
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(final WebView webView, String str) {
            new l<Void>() { // from class: com.smaato.soma.bannerutilities.a.b.2
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Banner_Package", "Page Finished Loading... " + b.this.f4891a.a(), 1, DebugCategory.DEBUG));
                    if (a.this.b instanceof BannerView) {
                        a.this.b.getBannerState().e();
                    }
                    if (b.this.f4891a.a() == LoadingState.State.STATE_BANNERLOADING && (a.this.b instanceof com.smaato.soma.interstitial.b)) {
                        b.this.f4891a.f();
                    } else if (!(a.this.b instanceof com.smaato.soma.interstitial.b)) {
                        b.this.f4891a.f();
                    }
                    webView.loadUrl("javascript:(function() {  var metaTags = document.getElementsByTagName('meta');  var results = [];  for (var i = 0; i < metaTags.length; i++) {    var property = metaTags[i].getAttribute('property');    if (property && property.substring(0, 'al:'.length) === 'al:') {      var tag = { \"property\": metaTags[i].getAttribute('property') };      if (metaTags[i].hasAttribute('content')) {        tag['content'] = metaTags[i].getAttribute('content');      }      results.push(tag);    }  }  window.HTMLOUT.processJSON(JSON.stringify(results));})()");
                    return null;
                }
            }.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractBannerPackage.java */
    /* renamed from: com.smaato.soma.bannerutilities.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0541a {
        private C0541a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AbstractBannerPackage.java */
        /* renamed from: com.smaato.soma.bannerutilities.a$a$1  reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 extends l<Void> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f4888a;

            AnonymousClass1(String str) {
                this.f4888a = str;
            }

            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (this.f4888a != null && this.f4888a.length() >= 1 && a.this.j().getBannerState().a() == BannerState.State.STATE_BANNEREXPANDED) {
                    final com.smaato.soma.internal.a.a aVar = new com.smaato.soma.internal.a.a();
                    try {
                        JSONArray jSONArray = new JSONArray(this.f4888a);
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            if (jSONObject.getString("property").equalsIgnoreCase("al:android:package")) {
                                aVar.b(jSONObject.getString("content").toString());
                            } else if (jSONObject.getString("property").equalsIgnoreCase("al:android:url")) {
                                aVar.a(jSONObject.getString("content").toString());
                            } else if (jSONObject.getString("property").equalsIgnoreCase("al:android:class")) {
                                aVar.c(jSONObject.getString("content").toString());
                            } else if (jSONObject.getString("property").equalsIgnoreCase("al:android:app_name")) {
                                aVar.d(jSONObject.getString("content").toString());
                            }
                            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Banner_Package", aVar.toString(), 1, DebugCategory.DEBUG));
                        }
                        if (aVar.a(a.this.h())) {
                            final AlertDialog show = new AlertDialog.Builder(a.this.h()).setTitle("Redirecting ...").setMessage("Opening " + aVar.c()).show();
                            new Handler().postDelayed(new Runnable() { // from class: com.smaato.soma.bannerutilities.a.a.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    new l<Void>() { // from class: com.smaato.soma.bannerutilities.a.a.1.1.1
                                        @Override // com.smaato.soma.l
                                        /* renamed from: a */
                                        public Void b() throws Exception {
                                            Intent parseUri;
                                            show.dismiss();
                                            if (aVar.b() != null) {
                                                parseUri = a.this.h().getPackageManager().getLaunchIntentForPackage(aVar.b());
                                            } else {
                                                parseUri = aVar.a() != null ? Intent.parseUri(aVar.a(), 1) : null;
                                            }
                                            parseUri.addFlags(DriveFile.MODE_READ_ONLY);
                                            a.this.h().getApplicationContext().startActivity(parseUri);
                                            return null;
                                        }
                                    }.c();
                                }
                            }, 3000L);
                        }
                    } catch (JSONException e) {
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Banner_Package", "JSON parsing exception", 1, DebugCategory.ERROR));
                    }
                }
                return null;
            }
        }

        @JavascriptInterface
        public void processJSON(String str) {
            new AnonymousClass1(str).c();
        }
    }
}
