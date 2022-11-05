package com.smaato.soma.bannerutilities;

import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.smaato.soma.BannerView;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.ExpandingBannerFailed;
import com.smaato.soma.exception.UnableToAnimateCloseView;
import com.smaato.soma.j;
import com.smaato.soma.l;
import com.smaato.soma.m;
/* compiled from: BannerAnimator.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static b f4895a = null;
    private com.smaato.soma.b.b e;
    private final String b = "BannerAnimator";
    private final int c = 250;
    private boolean d = false;
    private boolean f = false;

    protected b() {
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            if (f4895a == null) {
                f4895a = new b();
            }
            bVar = f4895a;
        }
        return bVar;
    }

    public final void a(final a aVar, final j jVar) throws ExpandingBannerFailed {
        WebView e;
        try {
            m.a().a(System.currentTimeMillis());
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.b.1
            });
            if (jVar == null || aVar == null) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BannerAnimator", "Unable to expand the view ...", 1, DebugCategory.WARNING));
                return;
            }
            com.smaato.soma.g bannerStateListener = jVar.getBannerStateListener();
            if (bannerStateListener != null) {
                bannerStateListener.onWillOpenLandingPage(jVar);
            }
            View rootView = jVar.getRootView();
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BannerAnimator", "RootViewName: " + rootView.getClass().getCanonicalName(), 1, DebugCategory.DEBUG));
            if ((rootView.findViewById(16908290) != null || (jVar instanceof com.smaato.soma.interstitial.b)) && aVar != null && (e = aVar.e()) != null) {
                synchronized (e) {
                    e.bringToFront();
                    e.requestFocus(130);
                    e.setOnKeyListener(new View.OnKeyListener() { // from class: com.smaato.soma.bannerutilities.b.2
                        @Override // android.view.View.OnKeyListener
                        public boolean onKey(final View view, final int i, final KeyEvent keyEvent) {
                            return new l<Boolean>() { // from class: com.smaato.soma.bannerutilities.b.2.1
                                @Override // com.smaato.soma.l
                                /* renamed from: a */
                                public Boolean b() throws Exception {
                                    if (view == null) {
                                        return false;
                                    }
                                    if (i == 4 && keyEvent.getAction() == 1 && aVar != null) {
                                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BannerAnimator", "Back pressed", 1, DebugCategory.DEBUG));
                                        jVar.getBannerAnimatorHandler().sendMessage(jVar.getBannerAnimatorHandler().obtainMessage(102));
                                        b.this.b(aVar, jVar);
                                        return true;
                                    }
                                    return false;
                                }
                            }.c().booleanValue();
                        }
                    });
                    e.setOnTouchListener(new View.OnTouchListener() { // from class: com.smaato.soma.bannerutilities.b.3
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(final View view, final MotionEvent motionEvent) {
                            return new l<Boolean>() { // from class: com.smaato.soma.bannerutilities.b.3.1
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
                    });
                    new AnonymousClass4(e, jVar, aVar).c();
                }
            }
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new ExpandingBannerFailed(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BannerAnimator.java */
    /* renamed from: com.smaato.soma.bannerutilities.b$4  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 extends l<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WebView f4901a;
        final /* synthetic */ j b;
        final /* synthetic */ a c;

        AnonymousClass4(WebView webView, j jVar, a aVar) {
            this.f4901a = webView;
            this.b = jVar;
            this.c = aVar;
        }

        @Override // com.smaato.soma.l
        /* renamed from: a */
        public Void b() throws Exception {
            if (b.this.c()) {
                b.this.e = new com.smaato.soma.b.b(this.f4901a.getContext());
                b.this.e.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.bannerutilities.b.4.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        new l<Void>() { // from class: com.smaato.soma.bannerutilities.b.4.1.1
                            @Override // com.smaato.soma.l
                            /* renamed from: a */
                            public Void b() throws Exception {
                                AnonymousClass4.this.b.getBannerAnimatorHandler().sendMessage(AnonymousClass4.this.b.getBannerAnimatorHandler().obtainMessage(102));
                                b.this.b(AnonymousClass4.this.c, AnonymousClass4.this.b);
                                return null;
                            }
                        }.c();
                    }
                });
            }
            if (this.c != null && this.c.k() != null && (this.c instanceof d)) {
                this.c.k().a("expanded");
                return null;
            }
            return null;
        }
    }

    public void b(final a aVar, final j jVar) throws UnableToAnimateCloseView {
        View rootView;
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.b.5
            });
            if (jVar != null && (rootView = jVar.getRootView()) != null && rootView.findViewById(16908290) != null && aVar != null && aVar.e() != null) {
                if (aVar.g()) {
                    new l<Void>() { // from class: com.smaato.soma.bannerutilities.b.6
                        @Override // com.smaato.soma.l
                        /* renamed from: a */
                        public Void b() throws Exception {
                            WebView e = aVar.e();
                            ((ViewGroup) e.getParent()).removeView(e);
                            jVar.addView(e);
                            e.setOnKeyListener(null);
                            aVar.k().a("default");
                            return null;
                        }
                    }.c();
                }
                if (!aVar.g()) {
                    new l<Void>() { // from class: com.smaato.soma.bannerutilities.b.7
                        @Override // com.smaato.soma.l
                        /* renamed from: a */
                        public Void b() throws Exception {
                            if (aVar != null) {
                                synchronized (aVar) {
                                    WebView e = aVar.e();
                                    if (e != null) {
                                        synchronized (e) {
                                            if (e.getParent() != null) {
                                                ((ViewGroup) e.getParent()).removeView(e);
                                                if (!(jVar instanceof com.smaato.soma.b.c)) {
                                                    if (!b.this.f) {
                                                        if (jVar instanceof BannerView) {
                                                            if (((BannerView) jVar).b()) {
                                                                jVar.e();
                                                            }
                                                        } else {
                                                            jVar.e();
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            return null;
                        }
                    }.c();
                }
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToAnimateCloseView(e2);
        }
    }

    public final boolean b() {
        return this.f;
    }

    public final void a(boolean z) {
        this.f = z;
    }

    public boolean c() {
        return this.d;
    }
}
