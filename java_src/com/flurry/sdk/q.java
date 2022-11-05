package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.flurry.sdk.d;
import java.lang.ref.WeakReference;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class q extends o implements s {
    private static final String m = q.class.getSimpleName();
    public a k;
    WeakReference<RelativeLayout> l;
    private boolean n;
    private long o;
    private long p;

    /* loaded from: classes2.dex */
    public enum a {
        INIT,
        READY,
        DISPLAY,
        NEXT
    }

    public q(Context context, ViewGroup viewGroup, String str) {
        super(context, viewGroup, str);
        this.k = a.INIT;
        this.l = new WeakReference<>(null);
    }

    @Override // com.flurry.sdk.o, com.flurry.sdk.r
    public final void a() {
        jy.a().a(new ma() { // from class: com.flurry.sdk.q.1
            @Override // com.flurry.sdk.ma
            public final void a() {
                q qVar = q.this;
                ly.a();
                RelativeLayout relativeLayout = qVar.l.get();
                if (relativeLayout != null) {
                    while (relativeLayout.getChildCount() > 0) {
                        View childAt = relativeLayout.getChildAt(0);
                        relativeLayout.removeView(childAt);
                        if (childAt instanceof gz) {
                            ((gz) childAt).onActivityDestroy();
                        }
                    }
                    ViewGroup g = qVar.g();
                    if (g != null) {
                        g.removeView(relativeLayout);
                        g.setBackgroundColor(0);
                    }
                }
                qVar.l.clear();
            }
        });
        super.a();
    }

    @Override // com.flurry.sdk.o, com.flurry.sdk.r
    public final void c() {
        super.c();
    }

    @Override // com.flurry.sdk.o, com.flurry.sdk.r
    public final void d() {
        super.d();
        this.p = this.o;
    }

    @Override // com.flurry.sdk.o
    public final dw j() {
        return i.a().f2821a.a(this.c, fi.b(), this.j).f3109a;
    }

    @Override // com.flurry.sdk.o
    public final y k() {
        return i.a().f2821a.a(this.c, fi.b(), this.j).b;
    }

    @Override // com.flurry.sdk.o, com.flurry.sdk.r
    public final void a(au auVar, long j, boolean z) {
        if (u() != null && u().getChildCount() > 0) {
            a(j);
        } else {
            this.d.a(this, j(), k());
        }
    }

    @Override // com.flurry.sdk.r
    public final boolean t() {
        if (a.INIT.equals(this.k)) {
            return false;
        }
        return this.i.n();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.o
    public final void q() {
        boolean z = false;
        super.q();
        if (this.o > 0) {
            this.p -= System.currentTimeMillis() - this.g;
            if (this.p > 0) {
                return;
            }
            if (lw.a()) {
                km.a(3, m, "Device is locked: banner will NOT rotate for adSpace: " + this.c);
            } else if (this.l.get() == null) {
                km.a(3, m, "No banner holder: banner will NOT rotate for adSpace: " + this.c);
            } else {
                z = true;
            }
            if (z) {
                km.a(3, m, "Rotating banner for adSpace: " + this.c);
                this.d.a(this, j(), k());
            }
            this.p = this.o;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.o
    public final void a(d dVar) {
        int a2;
        if ((d.a.kOnRendered.equals(dVar.b) || d.a.kOnFetchFailed.equals(dVar.b)) && (a2 = k().a()) == 0) {
            km.a(3, m, "Starting ad request from EnsureCacheNotEmpty size: " + a2);
            j().a(this, k(), (au) null);
        }
        if (d.a.kOnFetched.equals(dVar.b)) {
            synchronized (this) {
                if (a.INIT.equals(this.k)) {
                    this.k = a.READY;
                } else if (a.DISPLAY.equals(this.k)) {
                    this.k = a.NEXT;
                }
            }
            if (this.n || a.NEXT.equals(this.k)) {
                jy.a().b(new ma() { // from class: com.flurry.sdk.q.2
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        q.a(q.this);
                    }
                });
            }
        }
        if (d.a.kOnAppExit.equals(dVar.b) && dVar.f2524a.equals(this)) {
            s();
        }
    }

    @Override // com.flurry.sdk.s
    public final RelativeLayout u() {
        return this.l.get();
    }

    @Override // com.flurry.sdk.s
    public final void a(RelativeLayout relativeLayout) {
        this.l = new WeakReference<>(relativeLayout);
    }

    public final boolean v() {
        boolean equals;
        synchronized (this) {
            equals = a.READY.equals(this.k);
        }
        return equals;
    }

    public final void w() {
        this.n = false;
        synchronized (this) {
            if (a.INIT.equals(this.k)) {
                r();
            } else if (a.READY.equals(this.k)) {
                km.a(m, "BannerAdObject fetched: " + this);
                fh.a(this);
            } else if (a.DISPLAY.equals(this.k) || a.NEXT.equals(this.k)) {
                fh.b(this);
            }
        }
    }

    public final void x() {
        this.n = true;
        synchronized (this) {
            if (a.INIT.equals(this.k)) {
                r();
            } else if (a.READY.equals(this.k)) {
                jy.a().b(new ma() { // from class: com.flurry.sdk.q.4
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        q.a(q.this);
                    }
                });
            } else if (a.DISPLAY.equals(this.k) || a.NEXT.equals(this.k)) {
                fh.b(this);
            }
        }
    }

    private void a(long j) {
        km.a(3, m, "Scheduled banner rotation for adSpace: " + this.c);
        this.o = j;
        this.p = j;
    }

    static /* synthetic */ void a(q qVar) {
        ly.b();
        synchronized (qVar) {
            if (a.READY.equals(qVar.k) || a.NEXT.equals(qVar.k)) {
                qVar.k = a.DISPLAY;
                km.a(3, m, "render banner (" + qVar + ")");
                Context f = qVar.f();
                ViewGroup g = qVar.g();
                if (f == null || !(f instanceof Activity)) {
                    fh.b(qVar, bb.kNoContext);
                } else if (g == null) {
                    fh.b(qVar, bb.kNoViewGroup);
                } else {
                    au auVar = qVar.h;
                    if (auVar == null) {
                        fh.b(qVar, bb.kMissingAdController);
                    } else if (auVar.n()) {
                        fh.b(qVar, bb.kAdExpired);
                    } else if (!jr.a().b) {
                        km.a(5, m, "There is no network connectivity (ad will not display)");
                        HashMap hashMap = new HashMap();
                        hashMap.put("errorCode", Integer.toString(bb.kNoNetworkConnectivity.z));
                        ff.a(bc.EV_RENDER_FAILED, hashMap, f, qVar, auVar, 1);
                    } else {
                        cs csVar = auVar.b.b;
                        if (csVar == null) {
                            fh.b(qVar, bb.kInvalidAdUnit);
                        } else if (!cu.BANNER.equals(csVar.f2516a)) {
                            fh.a(qVar, bb.kIncorrectClassForAdSpace);
                        } else if (!bd.BANNER.equals(auVar.b())) {
                            fh.a(qVar, bb.kIncorrectClassForAdSpace);
                        } else if (!fi.b().equals(csVar.y)) {
                            fh.b(qVar, bb.kWrongOrientation);
                        } else {
                            qVar.o();
                            jy.a().a(new ma() { // from class: com.flurry.sdk.q.5
                                @Override // com.flurry.sdk.ma
                                public final void a() {
                                    q.b(q.this);
                                }
                            });
                        }
                    }
                }
            }
        }
    }

    static /* synthetic */ void b(q qVar) {
        ly.a();
        qVar.a(0L);
        qVar.p();
        hd.a(qVar.f(), qVar);
        km.a(m, "BannerAdObject rendered: " + qVar);
        fh.b(qVar);
    }
}
