package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import com.flurry.sdk.d;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class u extends o {
    private static final String l = u.class.getSimpleName();
    public a k;

    /* loaded from: classes2.dex */
    public enum a {
        INIT,
        READY,
        DISPLAY,
        NEXT
    }

    public u(Context context, String str) {
        super(context, null, str);
        this.k = a.INIT;
    }

    @Override // com.flurry.sdk.o, com.flurry.sdk.r
    public final void a() {
        super.a();
    }

    @Override // com.flurry.sdk.o
    public final dw j() {
        return i.a().f2821a.a(this.c, fi.b(), this.j).f3109a;
    }

    @Override // com.flurry.sdk.o
    public final y k() {
        return i.a().f2821a.a(this.c, fi.b(), this.j).b;
    }

    @Override // com.flurry.sdk.r
    public final boolean t() {
        if (a.INIT.equals(this.k)) {
            return false;
        }
        return this.i.n();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    @Override // com.flurry.sdk.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(d dVar) {
        super.a(dVar);
        if (d.a.kOnFetched.equals(dVar.b)) {
            synchronized (this) {
                synchronized (this) {
                    if (a.INIT.equals(this.k)) {
                        this.k = a.READY;
                    } else if (a.DISPLAY.equals(this.k)) {
                        this.k = a.NEXT;
                    }
                }
                if (!a.NEXT.equals(this.k)) {
                    jy.a().b(new ma() { // from class: com.flurry.sdk.u.1
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            u.a(u.this);
                        }
                    });
                    return;
                }
                return;
            }
            if (!a.NEXT.equals(this.k)) {
            }
        }
    }

    public final boolean u() {
        boolean equals;
        synchronized (this) {
            equals = a.READY.equals(this.k);
        }
        return equals;
    }

    public final void v() {
        synchronized (this) {
            if (a.INIT.equals(this.k)) {
                r();
            } else if (a.READY.equals(this.k)) {
                km.a(l, "InterstitialAdObject fetched: " + this);
                fh.a(this);
            } else if (a.DISPLAY.equals(this.k) || a.NEXT.equals(this.k)) {
                fh.b(this);
            }
        }
    }

    static /* synthetic */ void a(u uVar) {
        ly.b();
        synchronized (uVar) {
            if (a.READY.equals(uVar.k) || a.NEXT.equals(uVar.k)) {
                uVar.k = a.DISPLAY;
                km.a(3, l, "render interstitial (" + uVar + ")");
                Context f = uVar.f();
                if (f == null || !(f instanceof Activity)) {
                    fh.b(uVar, bb.kNoContext);
                    return;
                }
                au auVar = uVar.h;
                if (auVar == null) {
                    fh.b(uVar, bb.kMissingAdController);
                } else if (auVar.n()) {
                    fh.b(uVar, bb.kAdExpired);
                } else if (!jr.a().b) {
                    km.a(5, l, "There is no network connectivity (ad will not display)");
                    HashMap hashMap = new HashMap();
                    hashMap.put("errorCode", Integer.toString(bb.kNoNetworkConnectivity.z));
                    ff.a(bc.EV_RENDER_FAILED, hashMap, f, uVar, auVar, 1);
                } else {
                    cs csVar = auVar.b.b;
                    if (csVar == null) {
                        fh.b(uVar, bb.kInvalidAdUnit);
                    } else if (csVar.h == 1) {
                        fh.b(uVar, bb.kInvalidAdUnit);
                    } else if (!cu.INTERSTITIAL.equals(csVar.f2516a)) {
                        fh.a(uVar, bb.kIncorrectClassForAdSpace);
                    } else if (!fi.b().equals(csVar.y)) {
                        fh.b(uVar, bb.kWrongOrientation);
                    } else {
                        uVar.o();
                        jy.a().a(new ma() { // from class: com.flurry.sdk.u.3
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                u.b(u.this);
                            }
                        });
                    }
                }
            }
        }
    }

    static /* synthetic */ void b(u uVar) {
        ly.a();
        uVar.p();
        i.a();
        hl a2 = i.d().a(uVar.f(), uVar);
        if (a2 != null) {
            a2.a();
        }
        km.a(l, "InterstitialAdObject rendered: " + uVar);
        fh.b(uVar);
    }
}
