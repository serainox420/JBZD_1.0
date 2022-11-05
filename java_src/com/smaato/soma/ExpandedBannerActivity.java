package com.smaato.soma;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.CloseButtonBitmapFailed;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public class ExpandedBannerActivity extends Activity implements com.smaato.soma.bannerutilities.h {

    /* renamed from: a  reason: collision with root package name */
    public static WeakReference<com.smaato.soma.bannerutilities.a> f4841a = null;
    private AtomicInteger r;
    private ImageButton f = null;
    private ImageButton g = null;
    private TextView h = null;
    private String i = null;
    private j j = null;
    private ImageButton k = null;
    private ImageButton l = null;
    private ImageButton m = null;
    private com.smaato.soma.internal.e.a n = null;
    private boolean o = false;
    private boolean p = true;
    private boolean q = false;
    private RelativeLayout s = null;
    private RelativeLayout t = null;
    int b = 40;
    int c = 40;
    private boolean u = false;
    private RelativeLayout v = null;
    View.OnKeyListener d = new View.OnKeyListener() { // from class: com.smaato.soma.ExpandedBannerActivity.8
        @Override // android.view.View.OnKeyListener
        public boolean onKey(final View view, final int i, final KeyEvent keyEvent) {
            return new l<Boolean>() { // from class: com.smaato.soma.ExpandedBannerActivity.8.1
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Boolean b() throws Exception {
                    if (view == null) {
                        return false;
                    }
                    if (i == 4 && keyEvent.getAction() == 1 && ExpandedBannerActivity.a() != null) {
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("ExpandedBannerActivity", "ExpandedBannerActivity being finish invoked from WebViewKeyListener", 1, DebugCategory.DEBUG));
                        ExpandedBannerActivity.this.c();
                    }
                    return false;
                }
            }.c().booleanValue();
        }
    };
    View.OnTouchListener e = new View.OnTouchListener() { // from class: com.smaato.soma.ExpandedBannerActivity.9
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(final View view, final MotionEvent motionEvent) {
            return new l<Boolean>() { // from class: com.smaato.soma.ExpandedBannerActivity.9.1
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Boolean b() throws Exception {
                    switch (motionEvent.getAction()) {
                        case 0:
                        case 1:
                            if (!view.hasFocus()) {
                                view.requestFocus();
                                break;
                            }
                            break;
                    }
                    return false;
                }
            }.c().booleanValue();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum a {
        CLOSE,
        OPEN,
        LEFT,
        REFRESH,
        RIGHT
    }

    public static com.smaato.soma.bannerutilities.a a() {
        if (f4841a != null) {
            return f4841a.get();
        }
        return null;
    }

    public boolean b() {
        return this.o;
    }

    public void a(boolean z) {
        this.o = z;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (f4841a != null && a() != null) {
            this.j = a().j();
            setRequestedOrientation(com.smaato.soma.internal.requests.settings.a.a().a(getIntent().getIntExtra("rotation", 0), getIntent().getIntExtra("orientation", 1)));
            a(false);
            this.r = new AtomicInteger(100);
            this.n = (com.smaato.soma.internal.e.a) a().e();
            this.n.setOnKeyListener(this.d);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            if (this.n != null && this.n.getParent() != null) {
                ((ViewGroup) this.n.getParent()).removeView(this.n);
            }
            this.v = new RelativeLayout(this);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            this.b = (int) (displayMetrics.density * 40.0f);
            this.c = (int) (displayMetrics.density * 40.0f);
            if (a() != null && a().k() != null && (a() instanceof com.smaato.soma.bannerutilities.d)) {
                this.u = true;
            }
            this.t = new RelativeLayout(this);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, this.c);
            layoutParams2.addRule(10);
            this.t.setLayoutParams(layoutParams2);
            this.t.setBackgroundColor(Color.rgb(250, 250, 250));
            this.t.setId(this.r.incrementAndGet());
            this.s = new RelativeLayout(this);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, this.c);
            layoutParams3.addRule(12);
            this.s.setLayoutParams(layoutParams3);
            this.s.setBackgroundColor(Color.rgb(200, 200, 200));
            this.s.setId(this.r.incrementAndGet());
            this.v.addView(this.t);
            try {
                if (Build.VERSION.SDK_INT >= 11 && getActionBar() != null) {
                    getActionBar().hide();
                }
            } catch (Exception e) {
            }
            if (!this.u) {
                i();
                j();
                this.t.addView(a(this.c));
                f();
                g();
                h();
                this.v.addView(this.s);
            }
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams4.addRule(3, this.t.getId());
            layoutParams4.addRule(2, this.s.getId());
            this.n.setLayoutParams(layoutParams4);
            this.v.addView(this.n);
            setContentView(this.v, layoutParams);
            this.n.requestFocus(130);
            a().a(new WeakReference<>(this));
            if (this.u) {
                this.t.setVisibility(8);
                this.s.setVisibility(8);
                a().k().a(this.n);
            } else {
                a().a(this);
                this.n.setOnTouchListener(this.e);
            }
            a().k().a(this.n);
            new l<Void>() { // from class: com.smaato.soma.ExpandedBannerActivity.1
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    g bannerStateListener = ExpandedBannerActivity.this.j.getBannerStateListener();
                    ExpandedBannerActivity.this.j.getBannerState();
                    if (bannerStateListener != null) {
                    }
                    if (ExpandedBannerActivity.this.u) {
                        ExpandedBannerActivity.a().k().a("expanded");
                        return null;
                    }
                    return null;
                }
            }.c();
            this.j.d = true;
            return;
        }
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("ExpandedBannerActivity", "ExpandedBannerActivity.currentPackage is null ExpandedBannerActivity being finish invoked from manageCloseButton", 1, DebugCategory.DEBUG));
        c();
    }

    public void c() {
        try {
            e();
        } catch (Exception e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("ExpandedBannerActivity", "ExpandedBannerActivity cleanup failed", 1, DebugCategory.DEBUG));
        }
        finish();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (a() != null) {
            d();
        }
        super.onDestroy();
        System.gc();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("ExpandedBannerActivity", "ExpandedBannerActivity onBackPressed() invoked", 1, DebugCategory.DEBUG));
        finish();
    }

    public void d() {
        if (!this.o) {
            a(true);
            if (!a().a()) {
                this.j.getBannerAnimatorHandler().sendMessage(this.j.getBannerAnimatorHandler().obtainMessage(102));
            }
            if (a().g()) {
                new l<Void>() { // from class: com.smaato.soma.ExpandedBannerActivity.5
                    @Override // com.smaato.soma.l
                    /* renamed from: a */
                    public Void b() throws Exception {
                        com.smaato.soma.internal.e.a aVar = (com.smaato.soma.internal.e.a) ExpandedBannerActivity.a().e();
                        ((ViewGroup) aVar.getParent()).removeView(aVar);
                        ExpandedBannerActivity.this.j.addView(aVar);
                        aVar.setOnKeyListener(null);
                        if (!(ExpandedBannerActivity.this.j instanceof com.smaato.soma.interstitial.b)) {
                            ExpandedBannerActivity.a().k().a("default");
                        }
                        return null;
                    }
                }.c();
            }
        }
    }

    public final void e() {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.ExpandedBannerActivity.6
            });
            final com.smaato.soma.internal.e.a aVar = (com.smaato.soma.internal.e.a) a().e();
            if (aVar != null) {
                synchronized (aVar) {
                    new l<Void>() { // from class: com.smaato.soma.ExpandedBannerActivity.7
                        @Override // com.smaato.soma.l
                        /* renamed from: a */
                        public Void b() throws Exception {
                            if (Build.VERSION.SDK_INT < 18) {
                                aVar.clearView();
                            } else {
                                aVar.loadUrl("about:blank");
                            }
                            aVar.setWebChromeClient(null);
                            return null;
                        }
                    }.c();
                }
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("ExpandedBannerActivity", "Exception in clearing views in ExpandedBannerActivity", 1, DebugCategory.DEBUG));
        }
    }

    private TextView a(int i) {
        TextView textView = new TextView(this);
        if (!this.u) {
            textView.setText("Loading...");
        }
        textView.setId(this.r.incrementAndGet());
        textView.setGravity(17);
        textView.setBackgroundColor(Color.rgb(250, 250, 250));
        this.h = textView;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, i);
        layoutParams.addRule(6, this.g.getId());
        layoutParams.addRule(1, this.g.getId());
        layoutParams.addRule(0, this.f.getId());
        layoutParams.addRule(8, this.f.getId());
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    private void a(ImageButton imageButton, a aVar) {
        try {
            if (Build.VERSION.SDK_INT < 16) {
                imageButton.setImageDrawable(a(aVar));
            } else {
                imageButton.setBackground(a(aVar));
            }
        } catch (CloseButtonBitmapFailed e) {
            e.printStackTrace();
        }
    }

    private Drawable a(a aVar) throws CloseButtonBitmapFailed {
        switch (aVar) {
            case OPEN:
                return com.smaato.soma.b.a.a().c(getResources(), this);
            case CLOSE:
                return com.smaato.soma.b.a.a().d(getResources(), this);
            case LEFT:
                return com.smaato.soma.b.a.a().g(getResources(), this);
            case REFRESH:
                return com.smaato.soma.b.a.a().e(getResources(), this);
            case RIGHT:
                return com.smaato.soma.b.a.a().f(getResources(), this);
            default:
                return null;
        }
    }

    @Override // com.smaato.soma.bannerutilities.h
    public void a(String str) {
        this.i = str;
    }

    @Override // com.smaato.soma.bannerutilities.h
    public void a(WebView webView, int i) {
        this.f.setEnabled(false);
        this.k.setEnabled(false);
        this.m.setVisibility(8);
        this.l.setVisibility(8);
        if (i == 100) {
            if (this.p) {
                this.p = false;
                if (webView.canGoBack()) {
                    this.q = true;
                }
            }
            this.f.setEnabled(true);
            if (this.i != null) {
                this.h.setText(this.i);
            } else {
                this.h.setText(webView.getUrl());
            }
            this.k.setEnabled(true);
            if (webView.canGoBack()) {
                if (this.q) {
                    if (webView.canGoBackOrForward(-2)) {
                        this.m.setVisibility(0);
                    } else {
                        this.m.setVisibility(4);
                    }
                } else {
                    this.m.setVisibility(0);
                }
            } else {
                this.m.setVisibility(8);
            }
            if (webView.canGoForward()) {
                this.l.setVisibility(0);
            } else {
                this.l.setVisibility(8);
            }
        }
    }

    @Override // com.smaato.soma.bannerutilities.h
    public void b(boolean z) {
        if (a().f4875a && !z) {
            a().o();
            a().a((com.smaato.soma.bannerutilities.h) null);
        } else if (z) {
            if (this.h != null) {
                this.h.setText("Loading...");
            }
            a().a((com.smaato.soma.bannerutilities.h) null);
            c();
        }
        a().f4875a = false;
    }

    private void f() {
        this.l = new ImageButton(this);
        a(this.l, a.RIGHT);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.b, this.c);
        layoutParams.addRule(11);
        this.l.setLayoutParams(layoutParams);
        this.s.addView(this.l);
        this.l.setVisibility(4);
        this.l.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.ExpandedBannerActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ExpandedBannerActivity.this.n.canGoForward()) {
                    ExpandedBannerActivity.this.n.goForward();
                }
            }
        });
    }

    private void g() {
        this.m = new ImageButton(this);
        a(this.m, a.LEFT);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.b, this.c);
        layoutParams.addRule(9);
        this.m.setLayoutParams(layoutParams);
        this.s.addView(this.m);
        this.m.setVisibility(4);
        this.m.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.ExpandedBannerActivity.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ExpandedBannerActivity.this.n.canGoBack()) {
                    ExpandedBannerActivity.this.n.goBack();
                }
            }
        });
    }

    private void h() {
        this.k = new ImageButton(this);
        a(this.k, a.REFRESH);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.b, this.c);
        layoutParams.addRule(13, -1);
        this.k.setLayoutParams(layoutParams);
        this.k.setEnabled(false);
        this.s.addView(this.k);
        this.k.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.ExpandedBannerActivity.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExpandedBannerActivity.this.n.reload();
            }
        });
    }

    private void i() {
        this.g = new ImageButton(this);
        a(this.g, a.CLOSE);
        this.g.setId(this.r.incrementAndGet());
        this.g.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.ExpandedBannerActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("ExpandedBannerActivity", "ExpandedBannerActivity being finish invoked from manageCloseButton", 1, DebugCategory.DEBUG));
                ExpandedBannerActivity.this.c();
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.b, this.c);
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        this.g.setLayoutParams(layoutParams);
        this.t.addView(this.g);
    }

    private void j() {
        this.f = new ImageButton(this);
        a(this.f, a.OPEN);
        this.f.setId(this.r.incrementAndGet());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.b, this.c);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        this.f.setLayoutParams(layoutParams);
        this.t.addView(this.f);
        this.f.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.ExpandedBannerActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExpandedBannerActivity.a().a(true);
                ExpandedBannerActivity.this.j.getBannerAnimatorHandler().sendMessage(ExpandedBannerActivity.this.j.getBannerAnimatorHandler().obtainMessage(108));
            }
        });
        this.f.setEnabled(false);
    }
}
