package com.smaato.soma.internal.requests;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import com.smaato.soma.AdType;
import com.smaato.soma.BannerView;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.bannerutilities.constant.BannerStatus;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.AdDownloaderInstantiationException;
import com.smaato.soma.exception.BannerHttpRequestFailed;
import com.smaato.soma.exception.RequestingBannerFailed;
import com.smaato.soma.exception.UnableToMakeAdRequestUrl;
import com.smaato.soma.exception.UnableToNotifyAdListener;
import com.smaato.soma.internal.requests.settings.UserSettings;
import com.smaato.soma.j;
import com.smaato.soma.l;
import com.smaato.soma.mediation.CSMAdFormat;
import com.smaato.soma.mediation.f;
import com.smaato.soma.mediation.g;
import com.smaato.soma.mediation.h;
import com.smaato.soma.mediation.j;
import com.smaato.soma.mediation.k;
import com.smaato.soma.mediation.n;
import com.smaato.soma.mediation.o;
import com.smaato.soma.mediation.q;
import com.smaato.soma.mediation.r;
import com.smaato.soma.mediation.s;
import com.smaato.soma.mediation.t;
import com.smaato.soma.nativead.NativeAd;
import com.smaato.soma.p;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
/* compiled from: AdDownloader.java */
/* loaded from: classes3.dex */
public class a implements com.smaato.soma.b, com.smaato.soma.internal.c.b {
    private static final Handler A = new Handler(Looper.getMainLooper());
    private j B;
    private p C;
    private com.smaato.soma.mediation.j D;
    private TreeMap<Integer, o> F;

    /* renamed from: a  reason: collision with root package name */
    WeakReference<NativeAd> f5035a;
    CSMAdFormat b;
    private g h;
    private k i;
    private com.smaato.soma.mediation.d j;
    private com.smaato.soma.mediation.e k;
    private com.smaato.soma.mediation.c l;
    private com.smaato.soma.mediation.a m;
    private com.smaato.soma.mediation.b n;
    private r o;
    private s p;
    private q q;
    private com.smaato.soma.mediation.p r;
    private a w;
    private Context x;
    private com.smaato.soma.internal.requests.settings.c y;
    private d z;
    private transient com.smaato.soma.d s = new com.smaato.soma.d();
    private transient UserSettings t = new UserSettings();
    private boolean u = false;
    private final List<com.smaato.soma.c> v = new ArrayList();
    private o E = null;
    public String c = "AdDowndloader_Med_Banner";
    public String d = "AdDowndloader_Med";
    n.a e = new n.a() { // from class: com.smaato.soma.internal.requests.a.6
        @Override // com.smaato.soma.mediation.n.a
        public void a(com.smaato.soma.internal.b.a aVar) {
            try {
                a.this.a(a.this.d, "onNativeAdLoaded successfully");
                if (aVar != null) {
                    a.this.C.a(aVar);
                    if (a.this.b() != null) {
                        a.this.b().a(ErrorCode.NO_ERROR);
                        a.this.b().a(BannerStatus.SUCCESS);
                        a.this.b().a(true);
                        a.this.b().a(CSMAdFormat.NATIVE);
                        a.this.b().a(AdType.NATIVE);
                    }
                    a.this.g();
                } else {
                    a.this.d();
                }
                a.this.a(a.this.d, "Ad added successfully received");
            } catch (Exception e) {
                a.this.d();
            } catch (NoClassDefFoundError e2) {
                a.this.d();
            }
        }

        @Override // com.smaato.soma.mediation.n.a
        public void a(ErrorCode errorCode) {
            if (errorCode != null) {
                a.this.a(a.this.d, "onNativeAdFailed with ErrorCode" + errorCode);
            }
            a.this.d();
        }

        @Override // com.smaato.soma.mediation.n.a
        public void a() {
            if (a.this.E != null && a.this.E.h() != null) {
                a.this.a(a.this.E.h());
                a.this.a(a.this.c, "Impression Tracking triggered on Native displayed");
            }
        }

        @Override // com.smaato.soma.mediation.n.a
        public void b() {
            if (a.this.E != null && a.this.E.i() != null) {
                a.this.a(a.this.c, "Click Tracking triggered through onBannerClicked");
                a.this.a(a.this.E.i());
            }
        }
    };
    j.a f = new j.a() { // from class: com.smaato.soma.internal.requests.a.7
        @Override // com.smaato.soma.interstitial.a
        public void onReadyToShow() {
            a.this.a(a.this.d, "onReadyToShow");
        }

        @Override // com.smaato.soma.interstitial.a
        public void onWillShow() {
            try {
                if (a.this.c() != null) {
                    a.this.c().a();
                    if (a.this.E != null && a.this.E.h() != null) {
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(a.this.d, "Impression Tracking triggered through onWillShow Interstitial", 1, DebugCategory.DEBUG));
                        a.this.a(a.this.E.h());
                    }
                }
            } catch (Exception e) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(a.this.d, "Please declare Mediation Networks dependent Activities in AndroidManifest.xml", 1, DebugCategory.ERROR));
                a.this.d();
            } catch (NoClassDefFoundError e2) {
                a.this.d();
            }
        }

        @Override // com.smaato.soma.interstitial.a
        public void onWillOpenLandingPage() {
            if (a.this.E != null && a.this.E.i() != null) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(a.this.d, "Click Tracking triggered through onWillOpenLandingPage ", 1, DebugCategory.DEBUG));
                a.this.a(a.this.E.i());
            }
        }

        @Override // com.smaato.soma.interstitial.a
        public void onWillClose() {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(a.this.d, "onWillClose", 1, DebugCategory.DEBUG));
        }

        @Override // com.smaato.soma.interstitial.a
        public void onFailedToLoadAd() {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(a.this.d, "onFailedToLoadAd", 1, DebugCategory.DEBUG));
        }

        @Override // com.smaato.soma.mediation.j.a
        public void a() {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(a.this.d, "onInterstitialLoaded successfully", 1, DebugCategory.DEBUG));
            onReadyToShow();
            if (a.this.b() != null) {
                a.this.b().a(ErrorCode.NO_ERROR);
                a.this.b().a(BannerStatus.SUCCESS);
                a.this.b().a(true);
                a.this.b().a(CSMAdFormat.INTERSTITIAL);
            }
            a.this.g();
        }

        @Override // com.smaato.soma.mediation.j.a
        public void a(ErrorCode errorCode) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(a.this.d, "onInterstitialFailed with ErrorCode" + errorCode, 1, DebugCategory.DEBUG));
            onFailedToLoadAd();
            a.this.d();
        }

        @Override // com.smaato.soma.mediation.j.a
        public void b() {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(a.this.d, "onInterstitialShown successfully", 1, DebugCategory.DEBUG));
        }

        @Override // com.smaato.soma.mediation.j.a
        public void c() {
            if (a.this.E != null && a.this.E.i() != null) {
                a.this.a(a.this.E.i());
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(a.this.d, "Click Tracking triggered through onInterstitialClicked ", 1, DebugCategory.DEBUG));
            }
        }

        @Override // com.smaato.soma.mediation.j.a
        public void d() {
            try {
                ((com.smaato.soma.interstitial.b) a.this.B).getInterstitialParent().d().onWillClose();
            } catch (Exception e) {
            }
        }
    };
    f.a g = new f.a() { // from class: com.smaato.soma.internal.requests.a.8
        @Override // com.smaato.soma.mediation.f.a
        public void a(final View view) {
            if (view != null) {
                try {
                    if (a.this.B != null) {
                        a.A.post(new Runnable() { // from class: com.smaato.soma.internal.requests.a.8.1
                            @Override // java.lang.Runnable
                            public void run() {
                                t.a(view);
                                a.this.B.removeAllViews();
                                a.this.B.addView(view);
                            }
                        });
                        if (a.this.E != null && a.this.E.h() != null) {
                            a.this.a(a.this.E.h());
                            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(a.this.c, "Impression Tracking triggered through on Banner displayed", 1, DebugCategory.DEBUG));
                        }
                        if (a.this.b() != null) {
                            a.this.b().a(ErrorCode.NO_ERROR);
                            a.this.b().a(BannerStatus.SUCCESS);
                            a.this.b().a(true);
                            a.this.b().a(CSMAdFormat.BANNER);
                        }
                        a.this.g();
                        a.this.a(a.this.c, "Ad added successfully onReceiveAd");
                    }
                } catch (Exception e) {
                    a.this.d();
                    return;
                } catch (NoClassDefFoundError e2) {
                    a.this.d();
                    return;
                }
            }
            a.this.d();
            a.this.a(a.this.c, "Ad added successfully onReceiveAd");
        }

        @Override // com.smaato.soma.mediation.f.a
        public void a(ErrorCode errorCode) {
            if (errorCode != null) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(a.this.c, "onBannerFailed with ErrorCode" + errorCode, 1, DebugCategory.DEBUG));
            }
            a.this.d();
        }

        @Override // com.smaato.soma.mediation.f.a
        public void a() {
        }

        @Override // com.smaato.soma.mediation.f.a
        public void b() {
        }

        @Override // com.smaato.soma.mediation.f.a
        public void c() {
            if (a.this.E != null && a.this.E.i() != null) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(a.this.c, "Click Tracking triggered through onBannerClicked", 1, DebugCategory.DEBUG));
                a.this.a(a.this.E.i());
            }
        }
    };

    public a(Context context, com.smaato.soma.j jVar) throws AdDownloaderInstantiationException {
        this.w = null;
        this.x = null;
        this.z = null;
        this.B = null;
        try {
            this.y = new com.smaato.soma.internal.requests.settings.c(this, context);
            f.b().a(context);
            this.w = this;
            this.z = com.smaato.soma.internal.a.a().b();
            this.z.a(this);
            this.x = context;
            this.B = jVar;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new AdDownloaderInstantiationException(e2);
        }
    }

    protected final URL a(com.smaato.soma.d dVar, UserSettings userSettings) throws UnableToMakeAdRequestUrl {
        try {
            return f.b().a(dVar, userSettings, this);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToMakeAdRequestUrl(e2);
        }
    }

    @Override // com.smaato.soma.i
    public final void e() {
        new l<Void>() { // from class: com.smaato.soma.internal.requests.a.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                com.smaato.soma.q.c().a(a.this.getAdSettings().a(), a.this.getAdSettings().b());
                a.this.b(a.this.getAdSettings(), a.this.getUserSettings());
                return null;
            }
        }.c();
    }

    public final boolean b(com.smaato.soma.d dVar, UserSettings userSettings) throws RequestingBannerFailed {
        try {
            return this.z.b(a(dVar, userSettings));
        } catch (RuntimeException e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "Error occured during AdDownloader:asyncLoadNewBanner()", 1, DebugCategory.DEBUG));
            throw e;
        } catch (Exception e2) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "Exception occured during AdDownloader:asyncLoadNewBanner()", 1, DebugCategory.DEBUG));
            throw new RequestingBannerFailed(e2);
        }
    }

    @Override // com.smaato.soma.i
    public final com.smaato.soma.d getAdSettings() {
        return this.s;
    }

    @Override // com.smaato.soma.i
    public final void setAdSettings(com.smaato.soma.d dVar) {
        this.s = dVar;
    }

    @Override // com.smaato.soma.r
    public final void a(final com.smaato.soma.c cVar) {
        new l<Void>() { // from class: com.smaato.soma.internal.requests.a.4
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                a.this.v.add(cVar);
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public final UserSettings getUserSettings() {
        return this.t;
    }

    @Override // com.smaato.soma.i
    public void setUserSettings(UserSettings userSettings) {
        this.t = userSettings;
    }

    public com.smaato.soma.internal.requests.settings.c a() {
        return this.y;
    }

    public p b() {
        return this.C;
    }

    public void a(p pVar) {
        this.C = pVar;
    }

    public com.smaato.soma.mediation.j c() {
        return this.D;
    }

    public void a(com.smaato.soma.mediation.j jVar) {
        this.D = jVar;
    }

    public final void d() {
        if (this.F != null && this.F.size() > 0) {
            Integer key = this.F.firstEntry().getKey();
            o value = this.F.firstEntry().getValue();
            this.F.remove(key);
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(this.c, key + " Priority => " + value.d(), 1, DebugCategory.DEBUG));
            this.E = value;
            if (this.B instanceof BannerView) {
                this.b = CSMAdFormat.BANNER;
            } else if (this.B instanceof com.smaato.soma.interstitial.b) {
                this.b = CSMAdFormat.INTERSTITIAL;
            } else if (getAdSettings() != null && getAdSettings().c() == AdType.NATIVE) {
                this.b = CSMAdFormat.NATIVE;
            } else {
                f();
                return;
            }
            this.C.a(this.b);
            if (value.d() != null) {
                try {
                    try {
                        try {
                            String d = value.d();
                            char c = 65535;
                            switch (d.hashCode()) {
                                case -443504037:
                                    if (d.equals("AdMob_CSM")) {
                                        c = 1;
                                        break;
                                    }
                                    break;
                                case -199077628:
                                    if (d.equals("Facebook_CSM")) {
                                        c = 0;
                                        break;
                                    }
                                    break;
                                case -127757959:
                                    if (d.equals("MoPub_CSM")) {
                                        c = 2;
                                        break;
                                    }
                                    break;
                                case 654750090:
                                    if (d.equals("iAd_CSM")) {
                                        c = 4;
                                        break;
                                    }
                                    break;
                                case 1123957943:
                                    if (d.equals("MillennialMedia_CSM")) {
                                        c = 3;
                                        break;
                                    }
                                    break;
                            }
                            switch (c) {
                                case 0:
                                    if (this.b == CSMAdFormat.NATIVE) {
                                        a(this.l);
                                        if (this.l == null) {
                                            this.l = new com.smaato.soma.mediation.c();
                                        }
                                        try {
                                            this.f5035a.get().a(new WeakReference<>(this.l));
                                        } catch (NoClassDefFoundError e) {
                                        }
                                        try {
                                            this.l.a(this.x, this.e, null, value);
                                            return;
                                        } catch (Exception e2) {
                                            return;
                                        }
                                    } else if (this.b == CSMAdFormat.INTERSTITIAL) {
                                        a((Object) this.n);
                                        if (this.n == null) {
                                            this.n = new com.smaato.soma.mediation.b();
                                        }
                                        try {
                                            ((com.smaato.soma.interstitial.b) this.B).setMediationReference(new WeakReference<>(this.n));
                                        } catch (NoClassDefFoundError e3) {
                                        }
                                        ((com.smaato.soma.interstitial.b) this.B).getInterstitialParent().a(this.f);
                                        a((com.smaato.soma.mediation.j) this.n);
                                        this.n.a(this.x, this.f, null, value);
                                        return;
                                    } else {
                                        a(this.m);
                                        if (this.m == null) {
                                            this.m = new com.smaato.soma.mediation.a();
                                        }
                                        try {
                                            ((BannerView) this.B).setMediationReference(new WeakReference<>(this.m));
                                        } catch (NoClassDefFoundError e4) {
                                        }
                                        this.m.a(this.x, this.g, null, value);
                                        return;
                                    }
                                case 1:
                                    if (this.b == CSMAdFormat.INTERSTITIAL) {
                                        a((Object) this.k);
                                        this.k = new com.smaato.soma.mediation.e();
                                        ((com.smaato.soma.interstitial.b) this.B).getInterstitialParent().a(this.f);
                                        a((com.smaato.soma.mediation.j) this.k);
                                        this.k.a(this.x, this.f, null, value);
                                        return;
                                    }
                                    a(this.j);
                                    this.j = new com.smaato.soma.mediation.d();
                                    this.j.a(this.x, this.g, null, value);
                                    return;
                                case 2:
                                    if (this.b == CSMAdFormat.INTERSTITIAL) {
                                        if (this.p == null) {
                                            this.p = new s();
                                        }
                                        try {
                                            ((com.smaato.soma.interstitial.b) this.B).setMediationReference(new WeakReference<>(this.p));
                                        } catch (NoClassDefFoundError e5) {
                                        }
                                        ((com.smaato.soma.interstitial.b) this.B).getInterstitialParent().a(this.f);
                                        a((com.smaato.soma.mediation.j) this.p);
                                        this.p.a(this.x, this.f, null, value);
                                        return;
                                    }
                                    if (this.o == null) {
                                        this.o = new r();
                                    }
                                    try {
                                        ((BannerView) this.B).setMediationReference(new WeakReference<>(this.o));
                                    } catch (NoClassDefFoundError e6) {
                                    }
                                    this.o.a(this.x, this.g, null, value);
                                    return;
                                case 3:
                                    if (this.b == CSMAdFormat.INTERSTITIAL) {
                                        this.q = new q();
                                        ((com.smaato.soma.interstitial.b) this.B).getInterstitialParent().a(this.f);
                                        a((com.smaato.soma.mediation.j) this.q);
                                        this.q.a(this.x, this.f, null, value);
                                        return;
                                    }
                                    this.r = new com.smaato.soma.mediation.p();
                                    this.r.a(this.x, this.g, null, value);
                                    return;
                                case 4:
                                    d();
                                    return;
                                default:
                                    if (value.b() == null || TextUtils.isEmpty(value.b())) {
                                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "Mediation Network Class Name is empty", 1, DebugCategory.ERROR));
                                        d();
                                        return;
                                    } else if (this.b == CSMAdFormat.INTERSTITIAL) {
                                        if (this.i != null && this.i.e() != null) {
                                            a((Object) this.i.e());
                                        }
                                        this.i = new com.smaato.soma.mediation.l().a(new com.smaato.soma.interstitial.b(this.x), value.b(), value, this.f);
                                        try {
                                            ((com.smaato.soma.interstitial.b) this.B).setCustomMediationReference(new WeakReference<>(this.i.e()));
                                        } catch (Exception e7) {
                                        } catch (NoClassDefFoundError e8) {
                                        }
                                        ((com.smaato.soma.interstitial.b) this.B).getInterstitialParent().a(this.f);
                                        if (this.i != null && this.i.e() != null) {
                                            a(this.i.e());
                                            this.i.f();
                                            return;
                                        }
                                        d();
                                        return;
                                    } else {
                                        if (this.h != null && this.h.d() != null) {
                                            a(this.h.d());
                                        }
                                        this.h = new h().a(this.B, value.b(), value, this.g);
                                        try {
                                            ((BannerView) this.B).setCustomMediationReference(new WeakReference<>(this.h.d()));
                                        } catch (Exception e9) {
                                        } catch (NoClassDefFoundError e10) {
                                        }
                                        this.h.e();
                                        return;
                                    }
                            }
                        } catch (NoClassDefFoundError e11) {
                            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "NoClassDefFoundError happened with Mediation. Check configurations for " + value.d(), 1, DebugCategory.ERROR));
                            d();
                        }
                    } catch (RuntimeException e12) {
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "NoClassDefFoundError happened with Mediation. Check configurations for " + value.d(), 1, DebugCategory.ERROR));
                        d();
                    }
                } catch (Exception e13) {
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "Exception happened with Mediation. Check configurations for " + value.d(), 1, DebugCategory.ERROR));
                    d();
                }
            }
        } else if (b() != null && b().o() != null && !TextUtils.isEmpty(b().o())) {
            try {
            } catch (BannerHttpRequestFailed e14) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "BannerHttpRequestFailed @SOMA", 1, DebugCategory.DEBUG));
                f();
            } catch (Exception e15) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "MalformedURL PassBack URL?", 1, DebugCategory.DEBUG));
                f();
            } finally {
                b().a((String) null);
            }
            if (this.z != null) {
                this.z.b(new URL(b().o()));
            } else {
                f();
            }
        } else {
            f();
        }
    }

    public final void f() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "Exiting through AdDownloader:exitMediationNetworkWithERROR()", 1, DebugCategory.DEBUG));
        if (b() != null) {
            b().a(ErrorCode.NO_AD_AVAILABLE);
            b().a(BannerStatus.ERROR);
            b().a(false);
            b().a(CSMAdFormat.UNDEFINED);
        }
        g();
    }

    public final void g() {
        try {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "Exiting through AdDownloader:exitMediationNetwork()", 1, DebugCategory.DEBUG));
            this.F = null;
            this.C.a((String) null);
            if (b() != null && this.v != null) {
                b().a((TreeMap<Integer, o>) null);
                for (com.smaato.soma.c cVar : this.v) {
                    cVar.onReceiveAd(this.w, b());
                }
            }
        } catch (Exception e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "Exception occured in AdDownloader:exitMediationNetwork()", 1, DebugCategory.DEBUG));
        }
    }

    @Override // com.smaato.soma.internal.c.b
    public final void b(p pVar) throws UnableToNotifyAdListener {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.a.5
            });
            if (pVar == null) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "No Banner Received !!", 1, DebugCategory.WARNING));
                return;
            }
            if (pVar.k() == ErrorCode.NO_AD_AVAILABLE) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "No Ad Available", 1, DebugCategory.DEBUG));
            }
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "Banner download complete", 1, DebugCategory.DEBUG));
            if (this.x != null && pVar != null && ((pVar.p() != null && pVar.p().size() > 0) || pVar.o() != null)) {
                this.F = pVar.p();
                a(pVar);
                d();
            } else if (this.v != null && this.v.size() > 0) {
                for (com.smaato.soma.c cVar : this.v) {
                    cVar.onReceiveAd(this.w, pVar);
                }
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToNotifyAdListener(e2);
        }
    }

    public void a(String str, String str2) {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(str, str2, 1, DebugCategory.DEBUG));
    }

    protected boolean a(String str) {
        boolean z = true;
        if (str == null) {
            return false;
        }
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    new b().execute(str);
                    return z;
                }
            } catch (RuntimeException e) {
                return false;
            } catch (Exception e2) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "Error during firing Mediation URL", 1, DebugCategory.ERROR));
                return false;
            }
        }
        z = false;
        return z;
    }

    private void a(Object obj) {
        if (obj != null) {
            try {
                if (obj instanceof n) {
                    ((n) obj).a();
                }
                if (obj instanceof com.smaato.soma.mediation.f) {
                    ((com.smaato.soma.mediation.f) obj).a();
                }
                if (obj instanceof com.smaato.soma.mediation.j) {
                    ((com.smaato.soma.mediation.j) obj).b();
                }
            } catch (NoClassDefFoundError e) {
            } catch (RuntimeException e2) {
            } catch (Exception e3) {
            }
        }
    }

    @Override // com.smaato.soma.i
    public final void setLocationUpdateEnabled(final boolean z) {
        com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.a.2
        });
        new l<Void>() { // from class: com.smaato.soma.internal.requests.a.3
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                a.this.y.a(z);
                a.this.u = z;
                return null;
            }
        }.c();
    }
}
