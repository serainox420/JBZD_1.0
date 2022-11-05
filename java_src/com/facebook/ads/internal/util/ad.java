package com.facebook.ads.internal.util;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes.dex */
public class ad extends aj {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.ads.internal.view.d.a.s f2216a;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.p> b;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.h> c;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.j> d;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.n> e;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b> f;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.o> g;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.t> h;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.u> i;
    private final com.facebook.ads.internal.view.m j;
    private boolean k;

    public ad(Context context, com.facebook.ads.internal.g.f fVar, com.facebook.ads.internal.view.m mVar, String str, String str2) {
        super(context, fVar, mVar, str, str2);
        this.f2216a = new com.facebook.ads.internal.view.d.a.s() { // from class: com.facebook.ads.internal.util.ad.1

            /* renamed from: a  reason: collision with root package name */
            static final /* synthetic */ boolean f2217a;

            static {
                f2217a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.r rVar) {
                if (f2217a || ad.this != null) {
                    if (ad.this == null) {
                        return;
                    }
                    ad.this.e();
                    return;
                }
                throw new AssertionError();
            }
        };
        this.b = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.p>() { // from class: com.facebook.ads.internal.util.ad.2

            /* renamed from: a  reason: collision with root package name */
            static final /* synthetic */ boolean f2218a;

            static {
                f2218a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.p> a() {
                return com.facebook.ads.internal.view.d.a.p.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.p pVar) {
                if (f2218a || ad.this != null) {
                    if (ad.this == null) {
                        return;
                    }
                    ad.this.h();
                    return;
                }
                throw new AssertionError();
            }
        };
        this.c = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.h>() { // from class: com.facebook.ads.internal.util.ad.3

            /* renamed from: a  reason: collision with root package name */
            static final /* synthetic */ boolean f2219a;

            static {
                f2219a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.h> a() {
                return com.facebook.ads.internal.view.d.a.h.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                if (f2219a || ad.this != null) {
                    if (ad.this == null) {
                        return;
                    }
                    ad.this.i();
                    return;
                }
                throw new AssertionError();
            }
        };
        this.d = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.j>() { // from class: com.facebook.ads.internal.util.ad.4

            /* renamed from: a  reason: collision with root package name */
            static final /* synthetic */ boolean f2220a;

            static {
                f2220a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.j> a() {
                return com.facebook.ads.internal.view.d.a.j.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                if (f2220a || ad.this != null) {
                    if (ad.this == null) {
                        return;
                    }
                    if (!ad.this.k) {
                        ad.this.k = true;
                        return;
                    } else {
                        ad.this.j();
                        return;
                    }
                }
                throw new AssertionError();
            }
        };
        this.e = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.n>() { // from class: com.facebook.ads.internal.util.ad.5
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.n> a() {
                return com.facebook.ads.internal.view.d.a.n.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.n nVar) {
                ad.this.a(ad.this.j.getCurrentPosition());
            }
        };
        this.f = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b>() { // from class: com.facebook.ads.internal.util.ad.6
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.b> a() {
                return com.facebook.ads.internal.view.d.a.b.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                ad.this.b(ad.this.j.getDuration());
            }
        };
        this.g = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.o>() { // from class: com.facebook.ads.internal.util.ad.7
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.o> a() {
                return com.facebook.ads.internal.view.d.a.o.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.o oVar) {
                ad.this.a(oVar.a(), oVar.b());
            }
        };
        this.h = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.t>() { // from class: com.facebook.ads.internal.util.ad.8
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.t> a() {
                return com.facebook.ads.internal.view.d.a.t.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.t tVar) {
                ad.this.b();
            }
        };
        this.i = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.u>() { // from class: com.facebook.ads.internal.util.ad.9
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.u> a() {
                return com.facebook.ads.internal.view.d.a.u.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.u uVar) {
                ad.this.c();
            }
        };
        this.k = false;
        this.j = mVar;
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f2216a);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.e);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.b);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.d);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.c);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.g);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.h);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.i);
    }

    public ad(Context context, com.facebook.ads.internal.g.f fVar, com.facebook.ads.internal.view.m mVar, String str, String str2, Bundle bundle) {
        super(context, fVar, mVar, str, str2, bundle);
        this.f2216a = new com.facebook.ads.internal.view.d.a.s() { // from class: com.facebook.ads.internal.util.ad.1

            /* renamed from: a  reason: collision with root package name */
            static final /* synthetic */ boolean f2217a;

            static {
                f2217a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.r rVar) {
                if (f2217a || ad.this != null) {
                    if (ad.this == null) {
                        return;
                    }
                    ad.this.e();
                    return;
                }
                throw new AssertionError();
            }
        };
        this.b = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.p>() { // from class: com.facebook.ads.internal.util.ad.2

            /* renamed from: a  reason: collision with root package name */
            static final /* synthetic */ boolean f2218a;

            static {
                f2218a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.p> a() {
                return com.facebook.ads.internal.view.d.a.p.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.p pVar) {
                if (f2218a || ad.this != null) {
                    if (ad.this == null) {
                        return;
                    }
                    ad.this.h();
                    return;
                }
                throw new AssertionError();
            }
        };
        this.c = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.h>() { // from class: com.facebook.ads.internal.util.ad.3

            /* renamed from: a  reason: collision with root package name */
            static final /* synthetic */ boolean f2219a;

            static {
                f2219a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.h> a() {
                return com.facebook.ads.internal.view.d.a.h.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                if (f2219a || ad.this != null) {
                    if (ad.this == null) {
                        return;
                    }
                    ad.this.i();
                    return;
                }
                throw new AssertionError();
            }
        };
        this.d = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.j>() { // from class: com.facebook.ads.internal.util.ad.4

            /* renamed from: a  reason: collision with root package name */
            static final /* synthetic */ boolean f2220a;

            static {
                f2220a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.j> a() {
                return com.facebook.ads.internal.view.d.a.j.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                if (f2220a || ad.this != null) {
                    if (ad.this == null) {
                        return;
                    }
                    if (!ad.this.k) {
                        ad.this.k = true;
                        return;
                    } else {
                        ad.this.j();
                        return;
                    }
                }
                throw new AssertionError();
            }
        };
        this.e = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.n>() { // from class: com.facebook.ads.internal.util.ad.5
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.n> a() {
                return com.facebook.ads.internal.view.d.a.n.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.n nVar) {
                ad.this.a(ad.this.j.getCurrentPosition());
            }
        };
        this.f = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b>() { // from class: com.facebook.ads.internal.util.ad.6
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.b> a() {
                return com.facebook.ads.internal.view.d.a.b.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                ad.this.b(ad.this.j.getDuration());
            }
        };
        this.g = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.o>() { // from class: com.facebook.ads.internal.util.ad.7
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.o> a() {
                return com.facebook.ads.internal.view.d.a.o.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.o oVar) {
                ad.this.a(oVar.a(), oVar.b());
            }
        };
        this.h = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.t>() { // from class: com.facebook.ads.internal.util.ad.8
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.t> a() {
                return com.facebook.ads.internal.view.d.a.t.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.t tVar) {
                ad.this.b();
            }
        };
        this.i = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.u>() { // from class: com.facebook.ads.internal.util.ad.9
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.u> a() {
                return com.facebook.ads.internal.view.d.a.u.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.u uVar) {
                ad.this.c();
            }
        };
        this.k = false;
        this.j = mVar;
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f2216a);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.e);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.b);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.d);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.c);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.h);
        mVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.i);
    }

    public void a() {
        this.j.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f2216a);
        this.j.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.e);
        this.j.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.b);
        this.j.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.d);
        this.j.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.c);
        this.j.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f);
        this.j.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.h);
        this.j.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.i);
    }
}
