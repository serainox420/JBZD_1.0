package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.flurry.sdk.d;
import com.flurry.sdk.ll;
import java.lang.ref.WeakReference;
import java.util.Collections;
/* loaded from: classes2.dex */
public abstract class o implements r {

    /* renamed from: a  reason: collision with root package name */
    static final String f3066a = o.class.getSimpleName();
    public final int b;
    public final String c;
    final dv d;
    long g;
    au h;
    public au i;
    public e j;
    private final WeakReference<Context> k;
    private final WeakReference<ViewGroup> l;
    boolean e = false;
    boolean f = false;
    private final kh<ls> m = new kh<ls>() { // from class: com.flurry.sdk.o.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(ls lsVar) {
            o.this.q();
            o.this.g = System.currentTimeMillis();
        }
    };
    private final kh<d> n = new kh<d>() { // from class: com.flurry.sdk.o.2
        @Override // com.flurry.sdk.kh
        public final /* bridge */ /* synthetic */ void a(d dVar) {
            d dVar2 = dVar;
            if (dVar2.f2524a != o.this || dVar2.b == null) {
                return;
            }
            o.this.a(dVar2);
        }
    };
    private final kh<ll> o = new kh<ll>() { // from class: com.flurry.sdk.o.3
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(ll llVar) {
            ll llVar2 = llVar;
            if (llVar2.b != null) {
                switch (AnonymousClass4.f3070a[llVar2.c - 1]) {
                    case 1:
                        o oVar = o.this;
                        if (!oVar.f) {
                            return;
                        }
                        km.a(3, o.f3066a, "Session created. Fetching ad now for " + oVar);
                        oVar.d.a(oVar, oVar.j(), oVar.k());
                        oVar.f = false;
                        return;
                    case 2:
                        o oVar2 = o.this;
                        oVar2.e = false;
                        oVar2.f = false;
                        return;
                    default:
                        return;
                }
            }
        }
    };

    /* renamed from: com.flurry.sdk.o$4  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3070a = new int[ll.a.a().length];

        static {
            try {
                f3070a[ll.a.c - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3070a[ll.a.e - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public o(Context context, ViewGroup viewGroup, String str) {
        i a2 = i.a();
        if (a2 == null) {
            throw new IllegalStateException("A session must be started before ad objects may be instantiated.");
        }
        this.b = fi.a();
        this.k = new WeakReference<>(context);
        this.l = new WeakReference<>(viewGroup);
        this.c = str;
        this.d = new dv(str);
        a2.b.a(context, this);
        u();
        ki.a().a("com.flurry.android.impl.ads.AdStateEvent", this.n);
        ki.a().a("com.flurry.android.sdk.FlurrySessionEvent", this.o);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        a();
    }

    @Override // com.flurry.sdk.r
    public void a() {
        v();
        ki.a().a(this.n);
        ki.a().a(this.o);
        this.e = false;
        this.f = false;
        i.a().b.b(f(), this);
        b();
        if (this.d != null) {
            this.d.a();
        }
        this.j = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        if (i.a().i != null) {
            ab.a(this);
        }
    }

    @Override // com.flurry.sdk.r
    public void c() {
        v();
    }

    @Override // com.flurry.sdk.r
    public final int e() {
        return this.b;
    }

    @Override // com.flurry.sdk.r
    public final Context f() {
        return this.k.get();
    }

    @Override // com.flurry.sdk.r
    public final ViewGroup g() {
        return this.l.get();
    }

    @Override // com.flurry.sdk.r
    public final String h() {
        return this.c;
    }

    @Override // com.flurry.sdk.r
    public final dv i() {
        return this.d;
    }

    public dw j() {
        return i.a().f2821a.a(this.c, null, this.j).f3109a;
    }

    public y k() {
        return i.a().f2821a.a(this.c, null, this.j).b;
    }

    @Override // com.flurry.sdk.r
    public final au l() {
        return this.i;
    }

    @Override // com.flurry.sdk.r
    public final e m() {
        return this.j;
    }

    @Override // com.flurry.sdk.r
    public final void a(au auVar) {
        this.h = auVar;
    }

    @Override // com.flurry.sdk.r
    public final void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.d.b();
            k().a(str);
        }
    }

    @Override // com.flurry.sdk.r
    public void a(au auVar, long j, boolean z) {
        km.a(3, "VerifyPackageLog", "Getting nextAdUnit...  current cacheSize: " + k().a());
        this.d.d();
        if (k().a() == 0 && !z) {
            km.a(3, "VerifyPackageLog", "nextAdUnit() cacheSize is empty");
            d dVar = new d();
            dVar.f2524a = this;
            dVar.b = d.a.kOnFetchFailed;
            dVar.b();
            return;
        }
        this.d.a(this, j(), k());
    }

    @Override // com.flurry.sdk.r
    public final void n() {
        this.d.c();
    }

    private void u() {
        this.g = System.currentTimeMillis();
        lt.a().a(this.m);
    }

    private void v() {
        lt.a().b(this.m);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void o() {
        ly.b();
        if (!this.h.h() && this.h.g()) {
            km.a(3, f3066a, "Precaching optional for ad, copying assets before display");
            i.a().i.a(this, this.h);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void p() {
        this.i = this.h;
        this.h = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void q() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(d dVar) {
        int a2;
        if ((d.a.kOnFetched.equals(dVar.b) || d.a.kOnFetchFailed.equals(dVar.b)) && (a2 = k().a()) == 0) {
            km.a(3, f3066a, "Starting ad request from EnsureCacheNotEmpty size: " + a2);
            j().a(this, k(), (au) null);
        }
        if (d.a.kOnAppExit.equals(dVar.b) && dVar.f2524a.equals(this)) {
            s();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void r() {
        jk.a();
        if (TextUtils.isEmpty(jk.b())) {
            km.a(3, f3066a, "Session Id not created yet. Delaying the fetch until session is created." + this);
            this.f = true;
            return;
        }
        km.a(3, f3066a, "Fetching ad now for " + this);
        this.d.a(this, j(), k());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void s() {
        this.e = true;
        this.i.c(bc.EV_AD_CLOSED.ag);
    }

    @Override // com.flurry.sdk.r
    public void d() {
        if (this.e && this.i.a(bc.EV_AD_CLOSED.ag)) {
            ff.a(bc.EV_AD_CLOSED, Collections.emptyMap(), f(), this, this.i, 0);
            this.i.b(bc.EV_AD_CLOSED.ag);
        }
        u();
    }
}
