package com.adcolony.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.util.Base64;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.adcolony.sdk.be;
import com.adcolony.sdk.bn;
import com.adcolony.sdk.cm;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.openx.view.mraid.JSInterface;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ca {

    /* renamed from: a  reason: collision with root package name */
    private AdColonyPubServicesInAppMsgActivity f1238a;
    private cm d;
    private d b = new d();
    private a c = new a();
    private cn e = bz.aK().az();
    private by f = bz.aK().ap();
    private c g = new c();
    private bu h = new bu();

    /* JADX INFO: Access modifiers changed from: package-private */
    public ca(AdColonyPubServicesInAppMsgActivity adColonyPubServicesInAppMsgActivity) {
        this.f1238a = adColonyPubServicesInAppMsgActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d() {
        return "AdColonyPubServices";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AdColonyPubServicesInAppMsgActivity adColonyPubServicesInAppMsgActivity) {
        this.f1238a = adColonyPubServicesInAppMsgActivity;
        this.d = this.e.m();
        if (this.b == null) {
            this.b = new d();
        }
        this.b.a();
        this.b.b();
        this.b.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(AdColonyPubServicesInAppMsgActivity adColonyPubServicesInAppMsgActivity) {
        this.f1238a = adColonyPubServicesInAppMsgActivity;
        this.d = this.e.m();
        if (this.c == null) {
            this.c = new a();
        }
        this.c.b();
        this.c.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        b();
        e();
        this.f1238a = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.c != null) {
            this.c.a();
        }
    }

    private void e() {
        if (this.b != null) {
            this.b.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f.b(this.g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animation a(cm cmVar) {
        if (cmVar != null) {
            Animation g = cmVar.g(cmVar.g());
            g.setDuration(cmVar.h());
            g.setFillAfter(true);
            g.setFillEnabled(true);
            g.setFillBefore(true);
            g.setAnimationListener(new Animation.AnimationListener() { // from class: com.adcolony.sdk.ca.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    ca.this.e.a(cm.a.NATURAL_TIMEOUT);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            return g;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animation b(final cm cmVar) {
        if (cmVar != null) {
            Animation a2 = cmVar.a(cmVar.e());
            a2.setDuration(cmVar.f());
            a2.setAnimationListener(new Animation.AnimationListener() { // from class: com.adcolony.sdk.ca.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    cmVar.d = System.currentTimeMillis();
                    ca.this.f.b(ca.this.g, cmVar.b());
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            return a2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        FrameLayout f1260a;
        LinearLayout b;
        WebView c;
        WebSettings d;
        FrameLayout.LayoutParams e;
        ImageView f;

        private d() {
        }

        void a() {
            ca.this.h.a(new bv() { // from class: com.adcolony.sdk.ca.d.1
                @Override // com.adcolony.sdk.bv
                public void a() {
                    ca.this.d.b = cm.c.QUEUED;
                    d.this.f1260a = new FrameLayout(ca.this.f1238a);
                    d.this.f1260a.setBackgroundColor(0);
                    d.this.b = new LinearLayout(ca.this.f1238a);
                    d.this.b.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                    d.this.f1260a.addView(d.this.b);
                    int i = ca.this.f1238a.getResources().getConfiguration().orientation;
                    if (bz.aK().at().F()) {
                        ca.this.f1238a.setRequestedOrientation(14);
                        if (i == 0) {
                            d.this.b.setOrientation(0);
                        } else if (i == 1) {
                            d.this.b.setOrientation(1);
                        }
                    }
                    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                    d.this.f1260a.setBackgroundColor(0);
                    d.this.f1260a.setLayoutParams(layoutParams);
                    d.this.c = new WebView(ca.this.f1238a);
                    d.this.c.setLayerType(1, null);
                    ca.this.d.a(new b(d.this.c, ca.this.f1238a));
                    cb.b(ca.this.f1238a.e(), "show toastModal was called", true);
                    d.this.c.setVerticalScrollBarEnabled(false);
                    d.this.c.setHorizontalScrollBarEnabled(false);
                    d.this.c.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
                    ca.this.d.a();
                    d.this.f1260a.addView(d.this.c);
                    ca.this.f1238a.a().addView(d.this.f1260a);
                    d.this.c.setBackgroundColor(Color.argb(1, 255, 255, 255));
                    d.this.d = d.this.c.getSettings();
                    d.this.d.setDomStorageEnabled(true);
                    d.this.d.setAppCachePath(ca.this.f1238a.getApplicationContext().getCacheDir().getAbsolutePath());
                    d.this.d.setAllowFileAccess(true);
                    d.this.d.setAppCacheEnabled(true);
                    d.this.d.setJavaScriptEnabled(true);
                    d.this.d.setCacheMode(-1);
                    d.this.c.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    d.this.c.addJavascriptInterface(new ba(new a(d.this.c)), "Android");
                    d.this.c.setWebViewClient(new WebViewClient() { // from class: com.adcolony.sdk.ca.d.1.1
                        @Override // android.webkit.WebViewClient
                        public void onPageFinished(WebView webView, String str) {
                            super.onPageFinished(webView, str);
                            if (webView != null) {
                                webView.setAlpha(1.0f);
                            }
                        }
                    });
                }
            });
        }

        void b() {
            ca.this.h.a(new bv() { // from class: com.adcolony.sdk.ca.d.2
                @Override // com.adcolony.sdk.bv
                public void a() {
                    ca.this.d.b = cm.c.SHOWING;
                    d.this.c.loadDataWithBaseURL("http://www.yvolver.com", ca.this.d.c(), "text/html", "UTF-8", null);
                    ca.this.d.a();
                }
            });
        }

        void c() {
            ca.this.h.a(new bv() { // from class: com.adcolony.sdk.ca.d.3
                @Override // com.adcolony.sdk.bv
                public void a() {
                    if (ca.this.f1238a != null) {
                        if (d.this.c != null) {
                            d.this.c.stopLoading();
                            d.this.c.invalidate();
                            d.this.c.removeAllViews();
                            d.this.c.destroy();
                        }
                        if (d.this.d != null) {
                            d.this.d.setJavaScriptEnabled(false);
                        }
                        if (d.this.f1260a != null) {
                            d.this.f1260a.removeAllViews();
                            d.this.f1260a.invalidate();
                            ca.this.f1238a.a().removeView(d.this.f1260a);
                        }
                        d.this.f1260a = null;
                        d.this.c = null;
                        d.this.d = null;
                        System.gc();
                    }
                }
            });
        }

        void d() {
            ca.this.h.a(new bv() { // from class: com.adcolony.sdk.ca.d.4
                @Override // com.adcolony.sdk.bv
                public void a() {
                    int a2 = (int) ((co.a() * 30.0f) + 0.5f);
                    int a3 = (int) ((co.a() * 30.0f) + 0.5f);
                    d.this.e = new FrameLayout.LayoutParams(a2, a3, 53);
                    d.this.f = new ImageView(bz.aK().l());
                    be.a b2 = bz.aK().as().b("catalog_close_button");
                    if (b2 != null) {
                        byte[] decode = Base64.decode(b2.b(), 0);
                        d.this.f.setImageBitmap(BitmapFactory.decodeByteArray(decode, 0, decode.length));
                    }
                    int Q = bz.aK().Q();
                    int R = bz.aK().R();
                    int intValue = bz.aK().aq().containsKey("xPos") ? ((Integer) bz.aK().aq().get("xPos")).intValue() : Q;
                    int intValue2 = bz.aK().aq().containsKey("yPos") ? ((Integer) bz.aK().aq().get("yPos")).intValue() : R;
                    cb.b(ca.this.f1238a.e(), "modal buttonOffset=(" + intValue + ", " + intValue2 + ")", true);
                    d.this.e.width = a2;
                    d.this.e.height = a3;
                    d.this.e.gravity = 8388661;
                    d.this.e.rightMargin = (int) (intValue * co.a());
                    d.this.e.topMargin = (int) (intValue2 * co.a());
                    d.this.f1260a.addView(d.this.f);
                    d.this.f.setLayoutParams(d.this.e);
                    d.this.f.setVisibility(4);
                    d.this.f.setOnClickListener(new View.OnClickListener() { // from class: com.adcolony.sdk.ca.d.4.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            bz.aK().az().a(cm.a.USER_CLOSE_BUTTON);
                        }
                    });
                }
            });
        }

        /* loaded from: classes.dex */
        class b implements cm.d {
            private WebView b;
            private Context c;

            public b(WebView webView, Context context) {
                this.b = null;
                this.c = null;
                this.b = webView;
                this.c = context;
            }

            @Override // com.adcolony.sdk.cm.d
            public WebView a() {
                return this.b;
            }

            @Override // com.adcolony.sdk.cm.d
            public Context b() {
                return this.c;
            }

            @Override // com.adcolony.sdk.cm.d
            public void c() {
                ca.this.f.a(new bv() { // from class: com.adcolony.sdk.ca.d.b.1
                    @Override // com.adcolony.sdk.bv
                    public void a() {
                        if (b.this.b != null) {
                            co.a(b.this.b, "javascript:finishDigitalRedemptionTransaction()");
                        }
                    }
                });
            }

            @Override // com.adcolony.sdk.cm.d
            public void a(final bk bkVar) {
                ca.this.f.a(new bv() { // from class: com.adcolony.sdk.ca.d.b.2
                    @Override // com.adcolony.sdk.bv
                    public void a() {
                        d.this.c();
                        bkVar.a(bn.a.YVOLVER_ERROR_NONE);
                    }
                });
            }
        }

        /* loaded from: classes.dex */
        class a implements cr {
            private static final int d = 500;
            private WebView b;
            private boolean c = false;

            public a(WebView webView) {
                this.b = null;
                this.b = webView;
            }

            @Override // com.adcolony.sdk.cr
            public WebView a() {
                return this.b;
            }

            @Override // com.adcolony.sdk.cr
            public void a(final Map<String, Object> map) {
                bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.ca.d.a.1
                    @Override // com.adcolony.sdk.bv
                    public void a() {
                        if (map.containsKey(JSInterface.JSON_X) && map.containsKey(JSInterface.JSON_Y)) {
                            int intValue = ((Number) map.get(JSInterface.JSON_X)).intValue();
                            int intValue2 = ((Number) map.get(JSInterface.JSON_Y)).intValue();
                            d.this.e.rightMargin = (int) (intValue * co.a());
                            d.this.e.topMargin = (int) (intValue2 * co.a());
                            d.this.e.gravity = 53;
                        }
                        d.this.f.setLayoutParams(d.this.e);
                        if (map.containsKey("enabled")) {
                            if (((Boolean) map.get("enabled")).booleanValue()) {
                                d.this.f.setVisibility(0);
                                if (!a.this.c) {
                                    AlphaAnimation alphaAnimation = new AlphaAnimation((float) BitmapDescriptorFactory.HUE_RED, 1.0f);
                                    alphaAnimation.setDuration(500L);
                                    d.this.f.startAnimation(alphaAnimation);
                                    a.this.c = true;
                                    return;
                                }
                                return;
                            }
                            d.this.f.setVisibility(4);
                        }
                    }
                });
            }

            @Override // com.adcolony.sdk.cr
            public void b() {
                ca.this.e.h();
            }

            @Override // com.adcolony.sdk.cr
            public void c() {
                ca.this.e.i();
            }

            @Override // com.adcolony.sdk.cr
            public void a(String str, String str2) {
                cb.b(ca.this.f1238a.e(), "openCatalogItem was called", true);
                ca.this.e.a(str, str2, ca.this.d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        b f1241a;
        RelativeLayout b;
        private C0053a d;
        private b e;

        private a() {
            this.d = new C0053a();
            this.e = new b();
        }

        void a() {
            ca.this.h.a(new bv() { // from class: com.adcolony.sdk.ca.a.1
                @Override // com.adcolony.sdk.bv
                public void a() {
                    if (a.this.b != null) {
                        a.this.b.setVisibility(8);
                    }
                    a.this.d();
                    ca.this.f.b(a.this.e);
                    ca.this.f.b(a.this.d);
                }
            });
        }

        void b() {
            ca.this.h.a(new bv() { // from class: com.adcolony.sdk.ca.a.2
                @Override // com.adcolony.sdk.bv
                public void a() {
                    cb.b(ca.this.d(), "showToastNonModal()", true);
                    final cm.c cVar = ca.this.d.b;
                    ca.this.d.c = 0L;
                    ca.this.d.b = cm.c.QUEUED;
                    a.this.f1241a = new b(ca.this.f1238a);
                    a.this.f1241a.addJavascriptInterface(new ba(new d(a.this.f1241a, ca.this.d)), "Android");
                    if (bz.aK().ar().c() > 7) {
                        a.this.f1241a.setWebChromeClient(new WebChromeClient() { // from class: com.adcolony.sdk.ca.a.2.1
                            @Override // android.webkit.WebChromeClient
                            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                                cb.b(ca.this.d(), consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId(), true);
                                return true;
                            }
                        });
                    } else {
                        a.this.f1241a.setWebChromeClient(new WebChromeClient() { // from class: com.adcolony.sdk.ca.a.2.2
                            @Override // android.webkit.WebChromeClient
                            public void onConsoleMessage(String str, int i, String str2) {
                                cb.b(ca.this.d(), str + " -- From line " + i + " of " + str2, true);
                            }
                        });
                    }
                    a.this.f1241a.setWebChromeClient(new WebChromeClient() { // from class: com.adcolony.sdk.ca.a.2.3
                        @Override // android.webkit.WebChromeClient
                        public void onProgressChanged(WebView webView, int i) {
                            super.onProgressChanged(webView, i);
                            if (i == 100 && a.this.b != null && a.this.f1241a != null) {
                                ca.this.f.b(cVar == cm.c.PAUSED ? a.this.e : a.this.d, bz.aK().at().d());
                            }
                        }
                    });
                    ca.this.d.j = new c(a.this.f1241a, null);
                }
            });
        }

        void c() {
            ca.this.h.a(new bv() { // from class: com.adcolony.sdk.ca.a.3
                @Override // com.adcolony.sdk.bv
                public void a() {
                    a.this.f1241a.loadDataWithBaseURL("http://www.yvolver.com", ca.this.d.c(), "text/html", "UTF-8", null);
                    if (ca.this.d != null) {
                        ca.this.d.a();
                    }
                    a.this.b = new RelativeLayout(ca.this.f1238a);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    int d2 = ca.this.d.d();
                    if (d2 == 1 || d2 == 3 || d2 == 2) {
                        layoutParams.addRule(10);
                        if (d2 == 1) {
                            layoutParams.addRule(9);
                        } else if (d2 == 2) {
                            layoutParams.addRule(14);
                        } else {
                            layoutParams.addRule(11);
                        }
                    } else if (d2 == 7 || d2 == 9 || d2 == 8) {
                        layoutParams.addRule(15);
                        if (d2 == 7) {
                            layoutParams.addRule(9);
                        } else if (d2 == 8) {
                            layoutParams.addRule(14);
                        } else {
                            layoutParams.addRule(11);
                        }
                    } else if (d2 == 4 || d2 == 6 || d2 == 5) {
                        layoutParams.addRule(12);
                        if (d2 == 4) {
                            layoutParams.addRule(9);
                        } else if (d2 == 5) {
                            layoutParams.addRule(14);
                        } else {
                            layoutParams.addRule(11);
                        }
                    }
                    a.this.b.setLayoutParams(layoutParams);
                    a.this.b.setVisibility(4);
                    a.this.b.addView(a.this.f1241a);
                    ca.this.d.b = cm.c.SHOWING;
                    ca.this.f1238a.a().addView(a.this.b);
                }
            });
        }

        void d() {
            ca.this.h.a(new bv() { // from class: com.adcolony.sdk.ca.a.4
                @Override // com.adcolony.sdk.bv
                public void a() {
                    if (ca.this.f1238a != null) {
                        if (a.this.f1241a != null) {
                            ViewGroup viewGroup = (ViewGroup) a.this.f1241a.getParent();
                            a.this.f1241a.removeAllViews();
                            viewGroup.removeAllViews();
                            viewGroup.invalidate();
                        }
                        try {
                            if (a.this.f1241a != null) {
                                a.this.f1241a.stopLoading();
                                a.this.f1241a.invalidate();
                                a.this.f1241a.removeAllViews();
                                if (a.this.b != null) {
                                    a.this.b.removeView(a.this.f1241a);
                                    a.this.b.invalidate();
                                }
                                a.this.f1241a.destroy();
                            }
                            try {
                                if (a.this.b != null) {
                                    a.this.b.setVisibility(8);
                                    ca.this.f1238a.a().removeView(a.this.b);
                                }
                            } catch (Exception e) {
                                cb.b(ca.this.d(), "toastLayout not attached to window mgr", true);
                            }
                        } catch (Exception e2) {
                            cb.a(ca.this.d(), "Caught Exception->" + e2.getMessage(), e2);
                        }
                        a.this.b = null;
                        a.this.f1241a = null;
                    }
                }
            });
        }

        /* loaded from: classes.dex */
        class d implements cr {
            private WebView b;
            private cm c;

            public d(WebView webView, cm cmVar) {
                this.b = null;
                this.c = null;
                this.b = webView;
                this.c = cmVar;
            }

            @Override // com.adcolony.sdk.cr
            public WebView a() {
                return this.b;
            }

            @Override // com.adcolony.sdk.cr
            @SuppressLint({"RtlHardcoded"})
            public void a(Map<String, Object> map) {
            }

            @Override // com.adcolony.sdk.cr
            public void b() {
                ca.this.h.a(new bv() { // from class: com.adcolony.sdk.ca.a.d.1
                    @Override // com.adcolony.sdk.bv
                    public void a() {
                        if (ca.this.e.j()) {
                            d.this.c.w();
                            ca.this.e.a(cm.a.FROM_JS);
                        }
                    }
                });
            }

            @Override // com.adcolony.sdk.cr
            public void c() {
                cb.b(ca.this.d(), "openCatalog()", true);
                a(null, null);
            }

            @Override // com.adcolony.sdk.cr
            public void a(final String str, final String str2) {
                ca.this.h.a(new bv() { // from class: com.adcolony.sdk.ca.a.d.2
                    @Override // com.adcolony.sdk.bv
                    public void a() {
                        cb.b(ca.this.d(), "openCatalogItem was called", true);
                        d.this.c.w();
                        String str3 = str == null ? "" : str;
                        String str4 = str2 == null ? "" : str2;
                        HashMap hashMap = new HashMap();
                        hashMap.put("path", str3);
                        hashMap.put(NativeProtocol.WEB_DIALOG_PARAMS, str4);
                        if (ca.this.e.j()) {
                            d.this.c.i = hashMap;
                            ca.this.e.a(cm.a.REDIRECT_TO_CATALOG);
                        }
                        ca.this.e.a(str3, str4, d.this.c);
                    }
                });
            }
        }

        /* loaded from: classes.dex */
        class c implements cm.d {
            private WebView b;
            private Context c;

            public c(WebView webView, Context context) {
                this.b = null;
                this.c = null;
                this.b = webView;
                this.c = context;
            }

            @Override // com.adcolony.sdk.cm.d
            public WebView a() {
                return this.b;
            }

            @Override // com.adcolony.sdk.cm.d
            public Context b() {
                return this.c;
            }

            @Override // com.adcolony.sdk.cm.d
            public void c() {
                ca.this.f.a(new bv() { // from class: com.adcolony.sdk.ca.a.c.1
                    @Override // com.adcolony.sdk.bv
                    public void a() {
                        if (c.this.b != null) {
                            co.a(c.this.b, "javascript:finishDigitalRedemptionTransaction()");
                        }
                    }
                });
            }

            @Override // com.adcolony.sdk.cm.d
            public void a(final bk bkVar) {
                ca.this.f.a(new bv() { // from class: com.adcolony.sdk.ca.a.c.2
                    @Override // com.adcolony.sdk.bv
                    public void a() {
                        TranslateAnimation translateAnimation;
                        cb.b(ca.this.d(), "handleCloseView() called", true);
                        if (ca.this.d != null) {
                            if (ca.this.d.f1339a == cm.a.USER_SWIPE_LEFT || ca.this.d.f1339a == cm.a.USER_SWIPE_RIGHT || ca.this.d.f1339a == cm.a.USER_SWIPE_UP || ca.this.d.f1339a == cm.a.USER_SWIPE_DOWN) {
                                if (ca.this.d.f1339a != cm.a.USER_SWIPE_LEFT) {
                                    if (ca.this.d.f1339a != cm.a.USER_SWIPE_RIGHT) {
                                        if (ca.this.d.f1339a == cm.a.USER_SWIPE_UP) {
                                            translateAnimation = cm.m;
                                        } else {
                                            translateAnimation = cm.n;
                                        }
                                    } else {
                                        translateAnimation = cm.k;
                                    }
                                } else {
                                    translateAnimation = cm.l;
                                }
                                translateAnimation.setDuration(ca.this.d.h());
                                translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.adcolony.sdk.ca.a.c.2.1
                                    @Override // android.view.animation.Animation.AnimationListener
                                    public void onAnimationStart(Animation animation) {
                                    }

                                    @Override // android.view.animation.Animation.AnimationListener
                                    public void onAnimationEnd(Animation animation) {
                                        c.this.b(bkVar);
                                    }

                                    @Override // android.view.animation.Animation.AnimationListener
                                    public void onAnimationRepeat(Animation animation) {
                                    }
                                });
                                a.this.b.startAnimation(translateAnimation);
                                return;
                            }
                            c.this.b(bkVar);
                        }
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void b(bk bkVar) {
                if (ca.this.d != null && 2 != ca.this.d.r()) {
                    ca.this.f.b(ca.this.g);
                    a.this.d();
                    bkVar.a(bn.a.YVOLVER_ERROR_NONE);
                }
            }
        }

        /* renamed from: com.adcolony.sdk.ca$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0053a implements bv {
            C0053a() {
            }

            @Override // com.adcolony.sdk.bv
            public void a() {
                if (a.this.f1241a != null && a.this.b != null && ca.this.d != null) {
                    if (!bz.aK().au() || !ca.this.e.f1344a.get()) {
                        ca.this.e.e();
                        return;
                    }
                    a.this.b.setVisibility(0);
                    a.this.b.startAnimation(ca.this.b(ca.this.d));
                }
            }
        }

        /* loaded from: classes.dex */
        class b implements bv {
            b() {
            }

            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(ca.this.d(), "show paused was executed.", true);
                if (a.this.f1241a != null && a.this.b != null) {
                    if (!bz.aK().au() || !ca.this.e.f1344a.get()) {
                        ca.this.e.e();
                        return;
                    }
                    a.this.b.setVisibility(0);
                    ca.this.d.d = System.currentTimeMillis();
                    if (1 == ca.this.d.r()) {
                        ca.this.f.b(ca.this.g, ca.this.d.b());
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements bv {
        c() {
        }

        @Override // com.adcolony.sdk.bv
        public void a() {
            ca.this.f.b(ca.this.g);
            if (ca.this.c == null || ca.this.c.b == null || ca.this.c.f1241a == null || ca.this.d.r() != 1) {
                if (ca.this.b != null && ca.this.b.f1260a != null && ca.this.b.c != null) {
                    ca.this.b.f1260a.setVisibility(4);
                }
                ca.this.e.a(cm.a.NATURAL_TIMEOUT);
                return;
            }
            ca.this.c.b.startAnimation(ca.this.a(ca.this.d));
            cb.b(ca.this.d(), "animate exit", true);
        }
    }

    /* loaded from: classes.dex */
    class b extends WebView {
        private static final int b = 150;
        private static final int c = 500;
        private Pair<Float, Float> d;
        private long e;
        private long f;
        private Pair<Float, Float> g;

        public b(Context context) {
            super(context);
            this.d = null;
            this.e = 0L;
            this.f = 0L;
            this.g = null;
            try {
                setBackgroundColor(0);
                setVerticalScrollBarEnabled(false);
                setHorizontalScrollBarEnabled(false);
                setLayerType(1, null);
                setLayoutParams(new FrameLayout.LayoutParams(co.a(ca.this.d.i()), co.a(ca.this.d.j())));
                Context l = bz.aK().l();
                getSettings().setDomStorageEnabled(true);
                getSettings().setAppCachePath(l.getCacheDir().getAbsolutePath());
                getSettings().setAllowFileAccess(true);
                getSettings().setAppCacheEnabled(true);
                getSettings().setJavaScriptEnabled(true);
                getSettings().setCacheMode(-1);
            } catch (Exception e) {
                cb.b("Webview", "caught exception during construction: e=" + e.toString(), true);
            }
        }

        @Override // android.webkit.WebView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (bz.aK().at().G()) {
                switch (motionEvent.getAction()) {
                    case 0:
                        this.d = new Pair<>(Float.valueOf(motionEvent.getX()), Float.valueOf(motionEvent.getY()));
                        this.e = System.currentTimeMillis();
                        break;
                    case 1:
                        this.g = new Pair<>(Float.valueOf(motionEvent.getX()), Float.valueOf(motionEvent.getY()));
                        this.f = System.currentTimeMillis();
                        a();
                        break;
                }
            }
            return super.onTouchEvent(motionEvent);
        }

        private void a() {
            cm m;
            if (bz.aK().at().G() && this.d != null && this.g != null) {
                float floatValue = ((Float) this.d.first).floatValue() - ((Float) this.g.first).floatValue();
                float floatValue2 = ((Float) this.g.first).floatValue() - ((Float) this.d.first).floatValue();
                float floatValue3 = ((Float) this.d.second).floatValue() - ((Float) this.g.second).floatValue();
                float floatValue4 = ((Float) this.g.second).floatValue() - ((Float) this.d.second).floatValue();
                long j = (this.e == 0 || this.f == 0) ? 0L : this.f - this.e;
                if (j > 0 && j <= 500) {
                    if (j <= 500 && (m = bz.aK().az().m()) != null && m.z()) {
                        cb.b("TEST_SWIPE", "xDistRl=" + floatValue + ", xDistLr=" + floatValue2 + ", yDistUpDown=" + floatValue4 + ", yDistDownUp=" + floatValue3, true);
                        if (m.A() && floatValue > 150.0f) {
                            bz.aK().az().a(cm.a.USER_SWIPE_LEFT);
                            return;
                        } else if (m.B() && floatValue2 > 150.0f) {
                            bz.aK().az().a(cm.a.USER_SWIPE_RIGHT);
                            return;
                        } else if (m.D() && floatValue4 > 150.0f) {
                            bz.aK().az().a(cm.a.USER_SWIPE_DOWN);
                            return;
                        } else if (m.C() && floatValue3 > 150.0f) {
                            bz.aK().az().a(cm.a.USER_SWIPE_UP);
                            return;
                        } else {
                            cb.b("TEST_SWIPE", "direction is not supported or distance was not met.", true);
                            return;
                        }
                    }
                    return;
                }
                cb.b("TEST_SWIPE", "swipe time was going to slow " + j + "ms. not swiping", true);
            }
        }
    }
}
