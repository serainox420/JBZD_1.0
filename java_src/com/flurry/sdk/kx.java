package com.flurry.sdk;

import com.flurry.sdk.kw;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class kx<ReportInfo extends kw> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2986a = kx.class.getSimpleName();
    public static long b = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
    public boolean c;
    public long d;
    private final kf<List<ReportInfo>> f;
    private int h;
    private final int e = Integer.MAX_VALUE;
    private final List<ReportInfo> g = new ArrayList();
    private final Runnable i = new ma() { // from class: com.flurry.sdk.kx.1
        @Override // com.flurry.sdk.ma
        public final void a() {
            kx.this.b();
        }
    };
    private final kh<jq> j = new kh<jq>() { // from class: com.flurry.sdk.kx.2
        @Override // com.flurry.sdk.kh
        public final /* bridge */ /* synthetic */ void a(jq jqVar) {
            if (jqVar.f2934a) {
                kx.this.b();
            }
        }
    };

    public abstract kf<List<ReportInfo>> a();

    public abstract void a(ReportInfo reportinfo);

    public kx() {
        ki.a().a("com.flurry.android.sdk.NetworkStateEvent", this.j);
        this.f = a();
        this.d = b;
        this.h = -1;
        jy.a().b(new ma() { // from class: com.flurry.sdk.kx.3
            @Override // com.flurry.sdk.ma
            public final void a() {
                kx.this.b(kx.this.g);
                kx.this.b();
            }
        });
    }

    public final void c() {
        this.c = false;
        jy.a().b(new ma() { // from class: com.flurry.sdk.kx.4
            @Override // com.flurry.sdk.ma
            public final void a() {
                kx.this.b();
            }
        });
    }

    public final synchronized void b(ReportInfo reportinfo) {
        if (reportinfo != null) {
            this.g.add(reportinfo);
            jy.a().b(new ma() { // from class: com.flurry.sdk.kx.5
                @Override // com.flurry.sdk.ma
                public final void a() {
                    kx.this.b();
                }
            });
        }
    }

    public final synchronized void c(ReportInfo reportinfo) {
        reportinfo.o = true;
        jy.a().b(new ma() { // from class: com.flurry.sdk.kx.6
            @Override // com.flurry.sdk.ma
            public final void a() {
                kx.this.d();
            }
        });
    }

    public final synchronized void d(ReportInfo reportinfo) {
        reportinfo.a_();
        jy.a().b(new ma() { // from class: com.flurry.sdk.kx.7
            @Override // com.flurry.sdk.ma
            public final void a() {
                kx.this.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b() {
        if (!this.c) {
            if (this.h >= 0) {
                km.a(3, f2986a, "Transmit is in progress");
            } else {
                f();
                if (this.g.isEmpty()) {
                    this.d = b;
                    this.h = -1;
                } else {
                    this.h = 0;
                    jy.a().b(new ma() { // from class: com.flurry.sdk.kx.8
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            kx.this.d();
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() {
        ReportInfo reportinfo;
        ly.b();
        if (jr.a().b) {
            while (this.h < this.g.size()) {
                List<ReportInfo> list = this.g;
                int i = this.h;
                this.h = i + 1;
                reportinfo = list.get(i);
                if (!reportinfo.o) {
                    break;
                }
            }
        } else {
            km.a(3, f2986a, "Network is not available, aborting transmission");
        }
        reportinfo = null;
        if (reportinfo == null) {
            e();
        } else {
            a((kx<ReportInfo>) reportinfo);
        }
    }

    private synchronized void e() {
        f();
        a(this.g);
        if (this.c) {
            km.a(3, f2986a, "Reporter paused");
            this.d = b;
        } else if (this.g.isEmpty()) {
            km.a(3, f2986a, "All reports sent successfully");
            this.d = b;
        } else {
            this.d <<= 1;
            km.a(3, f2986a, "One or more reports failed to send, backing off: " + this.d + "ms");
            jy.a().a(this.i, this.d);
        }
        this.h = -1;
    }

    public synchronized void b(List<ReportInfo> list) {
        ly.b();
        List<ReportInfo> a2 = this.f.a();
        if (a2 != null) {
            list.addAll(a2);
        }
    }

    public synchronized void a(List<ReportInfo> list) {
        ly.b();
        this.f.a(new ArrayList(list));
    }

    private synchronized void f() {
        Iterator<ReportInfo> it = this.g.iterator();
        while (it.hasNext()) {
            ReportInfo next = it.next();
            if (next.o) {
                km.a(3, f2986a, "Url transmitted - " + next.q + " Attempts: " + next.p);
                it.remove();
            } else if (next.p > next.a()) {
                km.a(3, f2986a, "Exceeded max no of attempts - " + next.q + " Attempts: " + next.p);
                it.remove();
            } else if (System.currentTimeMillis() > next.n && next.p > 0) {
                km.a(3, f2986a, "Expired: Time expired - " + next.q + " Attempts: " + next.p);
                it.remove();
            }
        }
    }
}
