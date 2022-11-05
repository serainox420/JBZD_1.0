package com.smaato.soma;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.gms.drive.DriveFile;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.AdReceiveFailed;
import com.smaato.soma.exception.BannerViewInstantiationException;
import com.smaato.soma.exception.BannerViewXmlAttributeFailed;
import com.smaato.soma.exception.LoadingAttributesFromLayoutFailed;
import com.smaato.soma.exception.UnableToPauseAutoReload;
import com.smaato.soma.exception.UnableToResumeAutoReload;
import com.smaato.soma.internal.requests.settings.UserSettings;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class BannerView extends j implements h {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f4821a;
    private boolean m;
    private int n;
    @Deprecated
    private WeakReference<com.smaato.soma.mediation.f> o;
    @Deprecated
    private WeakReference<com.smaato.soma.mediation.f> p;
    private Runnable q;

    @Deprecated
    public void setMediationReference(WeakReference<com.smaato.soma.mediation.f> weakReference) {
        this.o = weakReference;
    }

    @Deprecated
    public void setCustomMediationReference(WeakReference<com.smaato.soma.mediation.f> weakReference) {
        this.p = weakReference;
    }

    public BannerView(Context context, final AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4821a = true;
        this.m = true;
        this.n = 60;
        this.q = new Runnable() { // from class: com.smaato.soma.BannerView.1
            @Override // java.lang.Runnable
            public void run() {
                new l<Void>() { // from class: com.smaato.soma.BannerView.1.1
                    @Override // com.smaato.soma.l
                    /* renamed from: a */
                    public Void b() throws Exception {
                        BannerView.this.getBannerAnimatorHandler().removeCallbacks(BannerView.this.q);
                        if (BannerView.this.b()) {
                            BannerView.this.e();
                            BannerView.this.postDelayed(BannerView.this.q, BannerView.this.n * 1000);
                            return null;
                        }
                        return null;
                    }
                }.c();
            }
        };
        new l<Void>() { // from class: com.smaato.soma.BannerView.6
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                BannerView.this.a();
                BannerView.this.a(attributeSet, 0);
                return null;
            }
        }.c();
    }

    public BannerView(Context context, final AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4821a = true;
        this.m = true;
        this.n = 60;
        this.q = new Runnable() { // from class: com.smaato.soma.BannerView.1
            @Override // java.lang.Runnable
            public void run() {
                new l<Void>() { // from class: com.smaato.soma.BannerView.1.1
                    @Override // com.smaato.soma.l
                    /* renamed from: a */
                    public Void b() throws Exception {
                        BannerView.this.getBannerAnimatorHandler().removeCallbacks(BannerView.this.q);
                        if (BannerView.this.b()) {
                            BannerView.this.e();
                            BannerView.this.postDelayed(BannerView.this.q, BannerView.this.n * 1000);
                            return null;
                        }
                        return null;
                    }
                }.c();
            }
        };
        new l<Void>() { // from class: com.smaato.soma.BannerView.7
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                BannerView.this.a();
                BannerView.this.a(attributeSet, 0);
                return null;
            }
        }.c();
    }

    public BannerView(Context context) {
        super(context);
        this.f4821a = true;
        this.m = true;
        this.n = 60;
        this.q = new Runnable() { // from class: com.smaato.soma.BannerView.1
            @Override // java.lang.Runnable
            public void run() {
                new l<Void>() { // from class: com.smaato.soma.BannerView.1.1
                    @Override // com.smaato.soma.l
                    /* renamed from: a */
                    public Void b() throws Exception {
                        BannerView.this.getBannerAnimatorHandler().removeCallbacks(BannerView.this.q);
                        if (BannerView.this.b()) {
                            BannerView.this.e();
                            BannerView.this.postDelayed(BannerView.this.q, BannerView.this.n * 1000);
                            return null;
                        }
                        return null;
                    }
                }.c();
            }
        };
        new l<Void>() { // from class: com.smaato.soma.BannerView.8
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                BannerView.this.a();
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.smaato.soma.j
    public void a() throws BannerViewInstantiationException {
        setBackgroundColor(0);
        super.a();
        a(new c() { // from class: com.smaato.soma.BannerView.9
            @Override // com.smaato.soma.c
            public void onReceiveAd(b bVar, final p pVar) throws AdReceiveFailed {
                new l<Void>() { // from class: com.smaato.soma.BannerView.9.1
                    @Override // com.smaato.soma.l
                    /* renamed from: a */
                    public Void b() throws Exception {
                        if (pVar.k() != ErrorCode.NO_ERROR) {
                        }
                        return null;
                    }
                }.c();
            }
        });
    }

    public boolean b() {
        return this.f4821a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.smaato.soma.j
    public void c() throws UnableToPauseAutoReload {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.BannerView.10
            });
            this.f4821a = false;
            getBannerAnimatorHandler().removeCallbacksAndMessages(null);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToPauseAutoReload(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() throws UnableToResumeAutoReload {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.BannerView.11
            });
            getBannerAnimatorHandler().removeCallbacksAndMessages(null);
            this.f4821a = this.m;
            if (b()) {
                getBannerAnimatorHandler().postDelayed(this.q, this.n * 1000);
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToResumeAutoReload(e2);
        }
    }

    public void setAutoReloadEnabled(final boolean z) {
        new l<Void>() { // from class: com.smaato.soma.BannerView.12
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.BannerView.12.1
                });
                BannerView.this.f4821a = z;
                BannerView.this.m = z;
                if (BannerView.this.f4821a) {
                    BannerView.this.l();
                    return null;
                }
                com.smaato.soma.internal.requests.f.b().a(0);
                BannerView.this.c();
                return null;
            }
        }.c();
    }

    public final int getAutoReloadFrequency() {
        return new l<Integer>() { // from class: com.smaato.soma.BannerView.13
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Integer b() throws Exception {
                return Integer.valueOf(BannerView.this.n);
            }
        }.c().intValue();
    }

    public final void setAutoReloadFrequency(final int i) {
        new l<Void>() { // from class: com.smaato.soma.BannerView.2
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (i < 10 || i > 600) {
                    BannerView.this.n = 60;
                } else {
                    BannerView.this.n = i;
                }
                com.smaato.soma.internal.requests.f.b().a(BannerView.this.n);
                return null;
            }
        }.c();
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        new l<Void>() { // from class: com.smaato.soma.BannerView.3
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (z) {
                    com.smaato.soma.internal.requests.settings.a.a().m();
                    BannerView.this.l();
                    if (BannerView.this.d) {
                        BannerView.this.d = false;
                        return null;
                    } else if (BannerView.this.f4821a) {
                        BannerView.this.e();
                        return null;
                    } else {
                        return null;
                    }
                }
                try {
                    if (BannerView.this.g != null && BannerView.this.g.e() != null && BannerView.this.g.g()) {
                        BannerView.this.g.e().loadUrl("javascript:mraid.viewableChange(false);");
                    }
                } catch (Exception e) {
                }
                BannerView.this.c();
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.smaato.soma.j, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        new l<Void>() { // from class: com.smaato.soma.BannerView.4
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (BannerView.this.f4821a) {
                    BannerView.this.d = true;
                    return null;
                }
                return null;
            }
        }.c();
        super.onAttachedToWindow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(AttributeSet attributeSet, int i) throws LoadingAttributesFromLayoutFailed {
        try {
            if (isInEditMode() || i >= attributeSet.getAttributeCount()) {
                return true;
            }
            a(attributeSet.getAttributeName(i), attributeSet.getAttributeValue(i));
            return a(attributeSet, i + 1);
        } catch (Exception e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BannerView", "Check the BannerView inputs in xml" + e.getMessage(), 3, DebugCategory.ERROR));
            throw new LoadingAttributesFromLayoutFailed(e);
        }
    }

    private void a(String str, String str2) throws BannerViewXmlAttributeFailed {
        try {
            String trim = str2.trim();
            if (str.equalsIgnoreCase("publisherId")) {
                getAdSettings().a(Integer.parseInt(trim));
            } else if (str.equalsIgnoreCase("adSpaceId")) {
                getAdSettings().b(Integer.parseInt(trim));
            } else if (str.equalsIgnoreCase("autoReloadEnabled")) {
                setAutoReloadEnabled(Boolean.parseBoolean(trim));
            } else if (str.equalsIgnoreCase("autoReloadFrequency")) {
                setAutoReloadFrequency(Integer.parseInt(trim));
            } else if (str.equalsIgnoreCase("AdType")) {
                getAdSettings().a(AdType.getValueForString(trim));
            } else if (str.equalsIgnoreCase("backgroundColor")) {
                setBackgroundColor(Color.parseColor("#" + trim));
            } else if (str.equalsIgnoreCase("locationUpdateEnabled")) {
                this.c.setLocationUpdateEnabled(Boolean.parseBoolean(trim));
            } else if (str.equalsIgnoreCase("keywordList")) {
                getUserSettings().a(trim);
            } else if (str.equalsIgnoreCase("searchQuery")) {
                getUserSettings().b(trim);
            } else if (str.equalsIgnoreCase("age")) {
                getUserSettings().a(Integer.parseInt(trim));
            } else if (str.equalsIgnoreCase("gender")) {
                getUserSettings().a(UserSettings.Gender.getValueForString(trim));
            } else if (str.equalsIgnoreCase("region")) {
                getUserSettings().c(trim);
            } else if (str.equalsIgnoreCase(PubMaticConstants.USER_STATE)) {
                getUserSettings().d(trim);
            } else if (str.equalsIgnoreCase("latitude")) {
                getUserSettings().a(Double.parseDouble(trim));
            } else if (str.equalsIgnoreCase("longitude")) {
                getUserSettings().b(Double.parseDouble(trim));
            } else if (str.equalsIgnoreCase("userProfileEnabled")) {
                getUserSettings().a(Boolean.parseBoolean(trim));
            } else if (str.equalsIgnoreCase("adDimension")) {
                getAdSettings().a(AdDimension.getValueForString(trim));
            } else if (str.equalsIgnoreCase("bannerWidth")) {
                getAdSettings().a(Integer.parseInt(trim));
            } else if (str.equalsIgnoreCase("bannerHeight")) {
                getAdSettings().b(Integer.parseInt(trim));
            } else if (str.equalsIgnoreCase("loadNewBanner") && Boolean.parseBoolean(trim)) {
                e();
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new BannerViewXmlAttributeFailed(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.smaato.soma.j, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        new l<Void>() { // from class: com.smaato.soma.BannerView.5
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                BannerView.this.c();
                BannerView.this.d();
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.j
    public Handler getBannerAnimatorHandler() {
        if (this.i == null) {
            setBannerAnimatorHandler(new a(this));
        }
        return this.i;
    }

    public void d() {
        try {
            if (this.o != null && this.o.get() != null) {
                this.o.get().a();
            }
        } catch (NoClassDefFoundError e) {
        } catch (RuntimeException e2) {
        } catch (Exception e3) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BannerView:onDetachedFromWindow()", "Exception during clearing MoPubMediationBannerReference", 1, DebugCategory.DEBUG));
        }
        try {
            if (this.p != null && this.p.get() != null) {
                this.p.get().a();
            }
        } catch (RuntimeException e4) {
        } catch (Exception e5) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BannerView:onDetachedFromWindow()", "Exception during clearing CustomBannerReference", 1, DebugCategory.DEBUG));
        } catch (NoClassDefFoundError e6) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a extends Handler {
        private WeakReference<j> b;
        private j c;

        private a(j jVar) {
            this.b = null;
            this.c = jVar;
        }

        protected WeakReference<j> a() {
            if (this.b == null) {
                this.b = new WeakReference<>(this.c);
            }
            return this.b;
        }

        @Override // android.os.Handler
        public void handleMessage(final Message message) {
            super.handleMessage(message);
            new l<Void>() { // from class: com.smaato.soma.BannerView.a.1
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    j jVar = a.this.a().get();
                    if (jVar != null) {
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BannerView", "handleMessage() with" + message.what, 1, DebugCategory.DEBUG));
                        if (message.what == 101) {
                            jVar.getBannerState().b();
                            com.smaato.soma.bannerutilities.b.a().a(BannerView.this.getCurrentPackage(), jVar);
                            BannerView.this.c();
                            com.smaato.soma.measurements.a.a().e();
                            BannerView.this.g.a(false);
                            BannerView.this.h();
                        } else if (message.what == 102) {
                            if (jVar != null && jVar.getCurrentPackage() != null) {
                                if (jVar.getCurrentPackage().g() && !BannerView.this.g.a()) {
                                    jVar.getBannerState().d();
                                    BannerView.this.i();
                                    BannerView.this.g.a(true);
                                } else {
                                    jVar.getBannerState().c();
                                    if (BannerView.this.b()) {
                                        BannerView.this.e();
                                    }
                                }
                                BannerView.this.l();
                            }
                        } else if (message.what == 103) {
                            BannerView.this.getCurrentPackage().e().setLayoutParams(new FrameLayout.LayoutParams(message.arg1, message.arg2));
                            BannerView.this.getCurrentPackage().e().requestLayout();
                        } else if (message.what == 107) {
                            try {
                                com.smaato.soma.bannerutilities.b.a().a(true);
                                jVar.getBannerState().d();
                                BannerView.this.i();
                                BannerView.this.g.a(true);
                            } catch (Exception e) {
                            }
                        } else if (message.what == 108) {
                            jVar.getBannerState().c();
                            try {
                                String str = new String(BannerView.this.getCurrentPackage().e().getUrl());
                                ((ExpandedBannerActivity) BannerView.this.getCurrentPackage().b()).finish();
                                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                                intent.addFlags(DriveFile.MODE_READ_ONLY);
                                BannerView.this.getContext().startActivity(intent);
                            } catch (ActivityNotFoundException e2) {
                                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BannerView", "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml", 0, DebugCategory.ERROR));
                            } catch (Exception e3) {
                                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BannerView", "Exception inside Internal Browser", 0, DebugCategory.ERROR));
                            }
                        }
                    }
                    return null;
                }
            }.c();
        }
    }
}
