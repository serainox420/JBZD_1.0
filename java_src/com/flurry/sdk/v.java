package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.flurry.android.FlurryAdListener;
import com.flurry.android.FlurryAdType;
import com.flurry.sdk.d;
import com.flurry.sdk.ll;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class v implements r, s {

    /* renamed from: a  reason: collision with root package name */
    static final String f3083a = v.class.getSimpleName();
    final int b;
    final String c;
    public a d;
    public final dv e;
    public au f;
    long i;
    WeakReference<RelativeLayout> j;
    public boolean k;
    long l;
    long m;
    private final WeakReference<Context> n;
    private final WeakReference<ViewGroup> o;
    private au p;
    boolean g = false;
    boolean h = false;
    private final kh<ls> q = new kh<ls>() { // from class: com.flurry.sdk.v.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(ls lsVar) {
            boolean z = false;
            v vVar = v.this;
            if (vVar.l > 0) {
                vVar.m -= System.currentTimeMillis() - vVar.i;
                if (vVar.m <= 0) {
                    if (lw.a()) {
                        km.a(3, v.f3083a, "Device is locked: banner will NOT rotate for adSpace: " + vVar.c);
                    } else if (vVar.j.get() == null) {
                        km.a(3, v.f3083a, "No banner holder: banner will NOT rotate for adSpace: " + vVar.c);
                    } else {
                        z = true;
                    }
                    if (z) {
                        km.a(3, v.f3083a, "Rotating banner for adSpace: " + vVar.c);
                        vVar.e.a(vVar, vVar.b(), vVar.j());
                    }
                    vVar.m = vVar.l;
                }
            }
            v.this.i = System.currentTimeMillis();
        }
    };
    private final kh<ll> r = new kh<ll>() { // from class: com.flurry.sdk.v.2
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(ll llVar) {
            ll llVar2 = llVar;
            if (llVar2.b != null) {
                switch (AnonymousClass9.f3093a[llVar2.c - 1]) {
                    case 1:
                        v vVar = v.this;
                        if (!vVar.h) {
                            return;
                        }
                        vVar.e.a(vVar, vVar.b(), vVar.j());
                        vVar.h = false;
                        return;
                    case 2:
                        v vVar2 = v.this;
                        vVar2.g = false;
                        vVar2.h = false;
                        return;
                    default:
                        return;
                }
            }
        }
    };
    private final kh<d> s = new kh<d>() { // from class: com.flurry.sdk.v.3
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(d dVar) {
            int a2;
            final d dVar2 = dVar;
            if (dVar2.f2524a != v.this || dVar2.b == null) {
                return;
            }
            final v vVar = v.this;
            if ((d.a.kOnRendered.equals(dVar2.b) || d.a.kOnFetchFailed.equals(dVar2.b)) && (a2 = vVar.j().a()) == 0) {
                km.a(3, v.f3083a, "Starting ad request from EnsureCacheNotEmpty size: " + a2);
                vVar.b().a(vVar, vVar.j(), (au) null);
            }
            if (d.a.kOnFetched.equals(dVar2.b)) {
                synchronized (vVar) {
                    if (a.INIT.equals(vVar.d)) {
                        vVar.d = a.READY;
                    } else if (a.DISPLAY.equals(vVar.d)) {
                        vVar.d = a.NEXT;
                    }
                }
                if (vVar.k || a.NEXT.equals(vVar.d)) {
                    jy.a().b(new ma() { // from class: com.flurry.sdk.v.7
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            v.b(v.this);
                        }
                    });
                }
            }
            if (d.a.kOnAppExit.equals(dVar2.b)) {
                vVar.p();
            }
            final FlurryAdListener b = j.a().b();
            if (b == null) {
                return;
            }
            final String h = dVar2.f2524a.h();
            jy.a().a(new ma() { // from class: com.flurry.sdk.v.3.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    switch (AnonymousClass9.b[dVar2.b.ordinal()]) {
                        case 1:
                            b.spaceDidReceiveAd(h);
                            return;
                        case 2:
                            b.spaceDidFailToReceiveAd(h);
                            return;
                        case 3:
                            b.onRendered(h);
                            return;
                        case 4:
                            b.onRenderFailed(h);
                            return;
                        case 5:
                            v.this.p();
                            b.onApplicationExit(h);
                            return;
                        case 6:
                            b.onAdClicked(h);
                            return;
                        case 7:
                            b.onVideoCompleted(h);
                            return;
                        case 8:
                            b.onAdOpened(h);
                            return;
                        case 9:
                            b.onAdClosed(h);
                            return;
                        default:
                            return;
                    }
                }
            });
        }
    };

    /* loaded from: classes2.dex */
    public enum a {
        INIT,
        READY,
        DISPLAY,
        NEXT
    }

    /* renamed from: com.flurry.sdk.v$9  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass9 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3093a;
        static final /* synthetic */ int[] b = new int[d.a.values().length];

        static {
            try {
                b[d.a.kOnFetched.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                b[d.a.kOnFetchFailed.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                b[d.a.kOnRendered.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                b[d.a.kOnRenderFailed.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                b[d.a.kOnAppExit.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                b[d.a.kOnClicked.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                b[d.a.kOnVideoCompleted.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                b[d.a.kOnOpen.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                b[d.a.kOnClose.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            f3093a = new int[ll.a.a().length];
            try {
                f3093a[ll.a.c - 1] = 1;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f3093a[ll.a.e - 1] = 2;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    public v(Context context, ViewGroup viewGroup, String str) {
        i a2 = i.a();
        if (a2 == null) {
            throw new IllegalStateException("A session must be started before ad objects may be instantiated.");
        }
        this.b = fi.a();
        this.n = new WeakReference<>(context);
        this.o = new WeakReference<>(viewGroup);
        this.c = str;
        this.d = a.INIT;
        this.e = new dv(str);
        this.j = new WeakReference<>(null);
        a2.c.a(context, str, this);
        q();
        ki.a().a("com.flurry.android.impl.ads.AdStateEvent", this.s);
        ki.a().a("com.flurry.android.sdk.FlurrySessionEvent", this.r);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        a();
    }

    @Override // com.flurry.sdk.r
    public final int e() {
        return this.b;
    }

    @Override // com.flurry.sdk.r
    public final void a() {
        r();
        ki.a().a(this.s);
        ki.a().a(this.r);
        this.g = false;
        this.h = false;
        i.a().c.a(this.c, this);
        if (i.a().i != null) {
            ab.a(this);
        }
        jy.a().a(new ma() { // from class: com.flurry.sdk.v.4
            @Override // com.flurry.sdk.ma
            public final void a() {
                v vVar = v.this;
                RelativeLayout relativeLayout = vVar.j.get();
                if (relativeLayout != null) {
                    while (relativeLayout.getChildCount() > 0) {
                        View childAt = relativeLayout.getChildAt(0);
                        relativeLayout.removeView(childAt);
                        if (childAt instanceof gz) {
                            ((gz) childAt).onActivityDestroy();
                        }
                    }
                    ViewGroup g = vVar.g();
                    if (g != null) {
                        g.removeView(relativeLayout);
                        g.setBackgroundColor(0);
                    }
                }
                vVar.j.clear();
            }
        });
        if (this.e != null) {
            this.e.a();
        }
    }

    @Override // com.flurry.sdk.r
    public final void c() {
        r();
    }

    @Override // com.flurry.sdk.r
    public final void d() {
        q();
        this.m = this.l;
        if (!this.g || !this.f.a(bc.EV_AD_CLOSED.ag)) {
            return;
        }
        ff.a(bc.EV_AD_CLOSED, Collections.emptyMap(), f(), this, this.f, 0);
        this.f.b(bc.EV_AD_CLOSED.ag);
    }

    @Override // com.flurry.sdk.r
    public final Context f() {
        return this.n.get();
    }

    @Override // com.flurry.sdk.r
    public final ViewGroup g() {
        return this.o.get();
    }

    @Override // com.flurry.sdk.r
    public final String h() {
        return this.c;
    }

    @Override // com.flurry.sdk.r
    public final dv i() {
        return this.e;
    }

    public final dw b() {
        return i.a().f2821a.a(this.c, fi.b(), j.a().c).f3109a;
    }

    public final y j() {
        return i.a().f2821a.a(this.c, fi.b(), j.a().c).b;
    }

    @Override // com.flurry.sdk.r
    public final au l() {
        return this.f;
    }

    @Override // com.flurry.sdk.r
    public final e m() {
        return j.a().c;
    }

    @Override // com.flurry.sdk.r
    public final void a(au auVar) {
        this.p = auVar;
    }

    @Override // com.flurry.sdk.r
    public final void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.e.b();
            j().a(str);
        }
    }

    @Override // com.flurry.sdk.r
    public final void a(au auVar, long j, boolean z) {
        if (auVar.b().equals(bd.BANNER)) {
            if (u() != null && u().getChildCount() > 0) {
                a(j);
                return;
            }
            jk.a();
            if (TextUtils.isEmpty(jk.b())) {
                km.a(3, f3083a, "Session Id not created yet. Delaying the fetch until session is created." + this);
                this.h = true;
                return;
            }
            km.a(3, f3083a, "Fetching ad now for " + this);
            this.e.a(this, b(), j());
            return;
        }
        jk.a();
        if (TextUtils.isEmpty(jk.b())) {
            km.a(3, f3083a, "Session Id not created yet. Delaying the fetch until session is created." + this);
            this.h = true;
            return;
        }
        this.e.d();
        if (j().a() == 0 && !z) {
            km.a(3, "VerifyPackageLog", "nextAdUnit() cacheSize is empty");
            d dVar = new d();
            dVar.f2524a = this;
            dVar.b = d.a.kOnFetchFailed;
            dVar.b();
            return;
        }
        km.a(3, f3083a, "Fetching ad now for " + this);
        this.e.a(this, b(), j());
    }

    @Override // com.flurry.sdk.r
    public final void n() {
        this.e.c();
    }

    @Override // com.flurry.sdk.r
    public final boolean t() {
        if (a.INIT.equals(this.d)) {
            return false;
        }
        return this.f.n();
    }

    @Override // com.flurry.sdk.s
    public final RelativeLayout u() {
        return this.j.get();
    }

    @Override // com.flurry.sdk.s
    public final void a(RelativeLayout relativeLayout) {
        this.j = new WeakReference<>(relativeLayout);
    }

    public final boolean k() {
        boolean equals;
        synchronized (this) {
            equals = a.READY.equals(this.d);
        }
        return equals;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
        if (com.flurry.sdk.v.a.d.equals(r4.d) == false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean o() {
        boolean z = true;
        this.k = true;
        synchronized (this) {
            if (!a.INIT.equals(this.d)) {
                if (a.READY.equals(this.d)) {
                    jy.a().b(new ma() { // from class: com.flurry.sdk.v.6
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            v.b(v.this);
                        }
                    });
                } else if (!a.DISPLAY.equals(this.d)) {
                }
            }
            this.e.a(this, b(), j());
            z = false;
        }
        return z;
    }

    private void q() {
        this.i = System.currentTimeMillis();
        lt.a().a(this.q);
    }

    private void r() {
        lt.a().b(this.q);
    }

    private void s() {
        ly.b();
        if (!this.p.h() && this.p.g()) {
            km.a(3, f3083a, "Precaching optional for ad, copying assets before display");
            i.a().i.a(this, this.p);
        }
    }

    private void a(long j) {
        km.a(3, f3083a, "Scheduled banner rotation for adSpace: " + this.c);
        this.l = j;
        this.m = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void p() {
        this.g = true;
        this.f.c(bc.EV_AD_CLOSED.ag);
    }

    static /* synthetic */ void b(v vVar) {
        ly.b();
        synchronized (vVar) {
            if (a.READY.equals(vVar.d) || a.NEXT.equals(vVar.d)) {
                if (a.READY.equals(vVar.d) && vVar.p != null) {
                    FlurryAdListener b = j.a().b();
                    km.a(3, f3083a, "Firing shouldDisplayAd, listener=" + b);
                    if (b != null) {
                        if (!b.shouldDisplayAd(vVar.c, bd.BANNER.equals(vVar.p.b()) ? FlurryAdType.WEB_BANNER : FlurryAdType.WEB_TAKEOVER)) {
                            return;
                        }
                    }
                }
                vVar.d = a.DISPLAY;
                km.a(3, f3083a, "render banner (" + vVar + ")");
                Context f = vVar.f();
                ViewGroup g = vVar.g();
                if (f == null || !(f instanceof Activity)) {
                    fh.b(vVar, bb.kNoContext);
                } else if (g == null) {
                    fh.b(vVar, bb.kNoViewGroup);
                } else {
                    au auVar = vVar.p;
                    if (auVar == null) {
                        fh.b(vVar, bb.kMissingAdController);
                    } else if (auVar.n()) {
                        fh.b(vVar, bb.kAdExpired);
                    } else if (!jr.a().b) {
                        km.a(5, f3083a, "There is no network connectivity (ad will not display)");
                        HashMap hashMap = new HashMap();
                        hashMap.put("errorCode", Integer.toString(bb.kNoNetworkConnectivity.z));
                        ff.a(bc.EV_RENDER_FAILED, hashMap, f, vVar, auVar, 1);
                    } else {
                        cs csVar = auVar.b.b;
                        if (csVar == null) {
                            fh.b(vVar, bb.kInvalidAdUnit);
                        } else if (csVar.h == 1) {
                            fh.b(vVar, bb.kInvalidAdUnit);
                        } else if (!cu.LEGACY.equals(csVar.f2516a)) {
                            fh.b(vVar, bb.kIncorrectClassForAdSpace);
                        } else if (!bd.BANNER.equals(auVar.b()) && !bd.TAKEOVER.equals(auVar.b())) {
                            fh.a(vVar, bb.kIncorrectClassForAdSpace);
                        } else if (!fi.b().equals(csVar.y)) {
                            fh.b(vVar, bb.kWrongOrientation);
                        } else {
                            vVar.s();
                            jy.a().a(new ma() { // from class: com.flurry.sdk.v.8
                                @Override // com.flurry.sdk.ma
                                public final void a() {
                                    v.c(v.this);
                                }
                            });
                        }
                    }
                }
            }
        }
    }

    static /* synthetic */ void c(v vVar) {
        ly.a();
        vVar.a(0L);
        vVar.f = vVar.p;
        vVar.p = null;
        if (bd.BANNER.equals(vVar.f.b())) {
            hd.a(vVar.f(), vVar);
        } else {
            i.a();
            hl a2 = i.d().a(vVar.f(), vVar);
            if (a2 != null) {
                a2.a();
            }
        }
        fh.b(vVar);
    }
}
