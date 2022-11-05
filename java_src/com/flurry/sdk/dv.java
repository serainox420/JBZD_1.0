package com.flurry.sdk;

import android.text.TextUtils;
import com.flurry.sdk.fr;
import com.flurry.sdk.ks;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* loaded from: classes2.dex */
public class dv {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2557a = dv.class.getSimpleName();
    private final String b;
    private final dw c;
    private final TreeSet<au> d;
    private final TreeSet<au> e;
    private a f;
    private r g;
    private dw h;
    private y i;
    private au j;
    private au k;
    private int l;
    private long m;
    private long n;
    private long o;
    private long p;
    private long q;
    private volatile boolean r = false;
    private final kh<ls> s = new kh<ls>() { // from class: com.flurry.sdk.dv.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(ls lsVar) {
            if (!a.REQUEST.equals(dv.this.f)) {
                if (!a.CSRTB_AWAIT_AUCTION.equals(dv.this.f)) {
                    if (!a.SELECT.equals(dv.this.f)) {
                        if (!a.PRERENDER.equals(dv.this.f)) {
                            return;
                        }
                        jy.a().b(new ma() { // from class: com.flurry.sdk.dv.1.4
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                dv.this.k();
                            }
                        });
                        return;
                    }
                    jy.a().b(new ma() { // from class: com.flurry.sdk.dv.1.3
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            dv.this.j();
                        }
                    });
                    return;
                }
                jy.a().b(new ma() { // from class: com.flurry.sdk.dv.1.2
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        dv.this.i();
                    }
                });
                return;
            }
            jy.a().b(new ma() { // from class: com.flurry.sdk.dv.1.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    dv.this.h();
                }
            });
        }
    };
    private final kh<ae> t = new kh<ae>() { // from class: com.flurry.sdk.dv.5
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(ae aeVar) {
            final ae aeVar2 = aeVar;
            jy.a().b(new ma() { // from class: com.flurry.sdk.dv.5.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    dv.this.a(aeVar2.f2423a, aeVar2.b);
                }
            });
        }
    };
    private final kh<dx> u = new kh<dx>() { // from class: com.flurry.sdk.dv.6
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(dx dxVar) {
            final dx dxVar2 = dxVar;
            if (dv.this.h != dxVar2.f2587a) {
                if (dv.this.c != dxVar2.f2587a) {
                    return;
                }
                jy.a().b(new ma() { // from class: com.flurry.sdk.dv.6.2
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        dv.this.a(dxVar2.c);
                    }
                });
                return;
            }
            jy.a().b(new ma() { // from class: com.flurry.sdk.dv.6.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    dv.this.g();
                }
            });
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum a {
        NONE,
        REQUEST,
        CSRTB_AUCTION_REQUIRED,
        CSRTB_AWAIT_AUCTION,
        SELECT,
        PREPARE,
        FILLED,
        PRERENDER
    }

    public dv(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("adSpace cannot be null");
        }
        this.b = str;
        this.c = new dw(str);
        this.d = new TreeSet<>();
        this.e = new TreeSet<>();
        this.f = a.NONE;
        d();
    }

    public final synchronized void a() {
        d();
        this.c.a();
        this.d.clear();
    }

    public final synchronized void a(r rVar, dw dwVar, y yVar) {
        if (rVar != null && dwVar != null && yVar != null) {
            km.a(3, f2557a, "fetchAd: adObject=" + rVar);
            if (a.NONE.equals(this.f) || a.FILLED.equals(this.f)) {
                this.g = rVar;
                this.i = yVar;
                this.h = dwVar;
                if (!jr.a().b) {
                    km.a(5, f2557a, "There is no network connectivity (ad will not fetch)");
                    fh.a(this.g, bb.kNoNetworkConnectivity);
                    d();
                } else {
                    i.a().i.d();
                    if (this.d.isEmpty()) {
                        this.d.addAll(this.i.b());
                    }
                    if (this.d.isEmpty()) {
                        a(a.REQUEST);
                        if (15000 > 0) {
                            km.a(3, f2557a, "Setting ad request timeout for 15000 ms");
                            this.m = System.currentTimeMillis() + 15000;
                        }
                        km.a(3, f2557a, "AdCacheState: Cache empty. Fetching new ad.");
                        this.h.a(this.g, this.i, (au) null);
                    } else {
                        km.a(3, f2557a, "AdCacheState: Found " + (this.i.a() + this.d.size()) + " ads in cache. Using 1 now.");
                        this.j = this.d.pollFirst();
                        a(a.SELECT);
                        jy.a().b(new ma() { // from class: com.flurry.sdk.dv.7
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                dv.this.m();
                            }
                        });
                    }
                }
            }
        }
    }

    public final synchronized void b() {
        this.d.clear();
    }

    public final synchronized void c() {
        if (this.h != null) {
            this.h.b();
        }
        d();
    }

    public final synchronized void d() {
        km.a(3, f2557a, "Fetch finished for adObject:" + this.g + " adSpace:" + this.b);
        this.c.b();
        jw.a().a(this);
        a(a.NONE);
        if (this.i != null) {
            this.i.a(this.e);
        }
        this.e.clear();
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = 0;
        this.m = 0L;
        this.n = 0L;
        this.o = 0L;
        this.p = 0L;
        this.q = 0L;
    }

    private synchronized void a(a aVar) {
        if (aVar == null) {
            aVar = a.NONE;
        }
        km.a(3, f2557a, "Setting state from " + this.f + " to " + aVar + " for adspace: " + this.b);
        if (a.NONE.equals(this.f) && !a.NONE.equals(aVar)) {
            km.a(3, f2557a, "Adding fetch listeners for adspace: " + this.b);
            lt.a().a(this.s);
            ki.a().a("com.flurry.android.sdk.AssetStatusEvent", this.t);
            ki.a().a("com.flurry.android.sdk.AdResponseEvent", this.u);
        } else if (a.NONE.equals(aVar) && !a.NONE.equals(this.f)) {
            km.a(3, f2557a, "Removing fetch listeners for adspace: " + this.b);
            lt.a().b(this.s);
            ki.a().a(this.t);
            ki.a().a(this.u);
        }
        this.f = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g() {
        if (a.REQUEST.equals(this.f)) {
            this.d.addAll(this.i.b());
            if (!this.d.isEmpty()) {
                this.j = this.d.pollFirst();
            }
            a(a.SELECT);
            jy.a().b(new ma() { // from class: com.flurry.sdk.dv.8
                @Override // com.flurry.sdk.ma
                public final void a() {
                    dv.this.m();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(List<au> list) {
        Map<String, String> map;
        if (a.CSRTB_AWAIT_AUCTION.equals(this.f)) {
            if (list == null || list.isEmpty() || list.size() > 1) {
                o();
            } else {
                au auVar = list.get(0);
                if (!auVar.b.b.w) {
                    o();
                } else {
                    List<cn> list2 = auVar.b.b.f;
                    if (list2 == null || list2.isEmpty() || list2.get(0).f2511a == 6) {
                        o();
                    } else {
                        String str = null;
                        if (auVar.b.b != null && (map = auVar.b.b.x) != null && map.containsKey("GROUP_ID")) {
                            str = map.get("GROUP_ID");
                        }
                        if (str == null) {
                            List<cn> list3 = auVar.b.b.f;
                            List<cn> list4 = this.k.b.b.f;
                            list4.clear();
                            list4.addAll(list3);
                            auVar.b.b.f = list4;
                            auVar.b.b.i = this.k.b.b.i;
                            if (auVar.b.b.x != null && auVar.b.b.x.isEmpty()) {
                                auVar.b.b.x = this.k.b.b.x;
                            }
                            this.j = auVar;
                        } else {
                            this.j = auVar;
                        }
                        a(a.SELECT);
                        jy.a().b(new ma() { // from class: com.flurry.sdk.dv.9
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                dv.this.m();
                            }
                        });
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void h() {
        if (this.m > 0 && System.currentTimeMillis() > this.m) {
            fh.a(this.g, bb.kUnfilled);
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void i() {
        if (this.n > 0 && System.currentTimeMillis() > this.n) {
            o();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void j() {
        if (this.p > 0 && System.currentTimeMillis() > this.p) {
            a(this.j, bb.kVASTResolveTimeout);
            d();
        } else if (this.o > 0 && System.currentTimeMillis() > this.o) {
            if (a.SELECT.equals(this.f) && this.j != null && !this.j.h() && this.j.g()) {
                a(a.PREPARE);
                jy.a().a(new ma() { // from class: com.flurry.sdk.dv.10
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        km.a(3, dv.f2557a, "Skip timer expired. Start streaming now.");
                        dv.this.p();
                    }
                });
            } else {
                n();
                m();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void k() {
        if (this.q > 0 && System.currentTimeMillis() > this.q) {
            jw.a().a(this);
            a(this.j, bb.kPrerenderDownloadTimeout);
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(String str, al alVar) {
        if (a.SELECT.equals(this.f)) {
            ab abVar = i.a().i;
            if (ab.a(this.j, str)) {
                km.a(3, f2557a, "Detected asset status change for asset:" + str + " status:" + alVar);
                if (al.COMPLETE.equals(alVar) || al.ERROR.equals(alVar)) {
                    jy.a().b(new ma() { // from class: com.flurry.sdk.dv.11
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            dv.this.m();
                        }
                    });
                }
            }
        }
    }

    private synchronized void l() {
        if (a.CSRTB_AUCTION_REQUIRED.equals(this.f)) {
            if (this.j == null) {
                km.a(6, f2557a, "An auction is required, but there is no ad unit!");
                fh.a(this.g, bb.kMissingAdController);
                d();
            } else {
                a(a.CSRTB_AWAIT_AUCTION);
                long j = this.j.b.b.r;
                if (j > 0) {
                    km.a(3, f2557a, "Setting CSRTB auction timeout for " + j + " ms");
                    this.n = j + System.currentTimeMillis();
                }
                this.k = this.j;
                this.c.a(this.g, (y) null, this.j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x003d, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0051, code lost:
        a(r11.j, com.flurry.sdk.bb.kInvalidAdUnit);
        d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d0, code lost:
        r11.p = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00da, code lost:
        if (r11.j.h() != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e2, code lost:
        if (r11.j.g() == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e4, code lost:
        r0 = r2.a(r11.j);
        r4 = r11.j.b.b.s;
        com.flurry.sdk.km.a(3, com.flurry.sdk.dv.f2557a, "Pre-caching required for ad, AdUnitCachedStatus: " + r0 + ", skip time limit: " + r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0118, code lost:
        if (com.flurry.sdk.ag.COMPLETE.equals(r0) != false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x011c, code lost:
        if (r4 <= 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0122, code lost:
        if (r11.o != 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0124, code lost:
        com.flurry.sdk.km.a(3, com.flurry.sdk.dv.f2557a, "Setting skip timer for " + r4 + " ms");
        r11.o = java.lang.System.currentTimeMillis() + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x014c, code lost:
        if (com.flurry.sdk.ag.COMPLETE.equals(r0) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x014e, code lost:
        com.flurry.sdk.km.a(3, com.flurry.sdk.dv.f2557a, "Pre-caching completed, ad may proceed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0158, code lost:
        if (r11.j != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x015a, code lost:
        com.flurry.sdk.i.a();
        com.flurry.sdk.i.a(null, com.flurry.sdk.bc.EV_UNFILLED, true, java.util.Collections.emptyMap());
        com.flurry.sdk.fh.a(r11.g, com.flurry.sdk.bb.kUnfilled);
        d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x017a, code lost:
        if (com.flurry.sdk.ag.IN_PROGRESS.equals(r0) == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x017e, code lost:
        if (r4 != 0) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0180, code lost:
        com.flurry.sdk.km.a(3, com.flurry.sdk.dv.f2557a, "No skip timer");
        n();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x018f, code lost:
        if (r4 <= 0) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0199, code lost:
        if (java.lang.System.currentTimeMillis() <= r11.o) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x019b, code lost:
        com.flurry.sdk.km.a(3, com.flurry.sdk.dv.f2557a, "Skip timer expired");
        n();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01a8, code lost:
        com.flurry.sdk.km.a(3, com.flurry.sdk.dv.f2557a, "Waiting for skip timer");
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01b4, code lost:
        if (r4 != 0) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01b6, code lost:
        com.flurry.sdk.km.a(3, com.flurry.sdk.dv.f2557a, "No skip timer");
        n();
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01c3, code lost:
        r0 = r11.l + 1;
        r11.l = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01c9, code lost:
        if (r0 <= 1) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01d1, code lost:
        if (r11.j.h() == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01d3, code lost:
        com.flurry.sdk.km.a(3, com.flurry.sdk.dv.f2557a, "Too many precaching attempts, precaching failed");
        a(r11.j, com.flurry.sdk.bb.kPrecachingDownloadFailed);
        d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01ef, code lost:
        if (com.flurry.sdk.dv.a.e.equals(r11.f) == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01f1, code lost:
        com.flurry.sdk.km.a(3, com.flurry.sdk.dv.f2557a, "Too many precaching attempts, precaching failed. Trying streaming now.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01fb, code lost:
        com.flurry.sdk.km.a(3, com.flurry.sdk.dv.f2557a, "Do nothing. State change request tick must have started prepare.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0205, code lost:
        r0 = r2.b(r11.j);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x020b, code lost:
        if (r0 <= 0) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x020d, code lost:
        com.flurry.sdk.km.a(3, com.flurry.sdk.dv.f2557a, "Requesting " + r0 + " asset(s), attempt #" + r11.l);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0230, code lost:
        com.flurry.sdk.km.a(3, com.flurry.sdk.dv.f2557a, "No assets to cache");
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x023a, code lost:
        com.flurry.sdk.km.a(3, com.flurry.sdk.dv.f2557a, "Pre-caching not required for ad");
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0244, code lost:
        a(com.flurry.sdk.dv.a.f);
        com.flurry.sdk.jy.a().a(new com.flurry.sdk.dv.AnonymousClass12(r11));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void m() {
        if (a.SELECT.equals(this.f)) {
            if (this.g.f() == null) {
                fh.a(this.g, bb.kNoContext);
                d();
            } else if (lw.a()) {
                fh.a(this.g, bb.kDeviceLocked);
                d();
            } else {
                ab abVar = i.a().i;
                loop0: while (true) {
                    if (this.j == null) {
                        break;
                    }
                    List<cn> list = this.j.b.b.f;
                    if (list == null || list.isEmpty()) {
                        break;
                    }
                    int i = 0;
                    while (true) {
                        if (i >= list.size()) {
                            break;
                        } else if (list.get(i).f2511a == 6) {
                            this.j.b.b.w = true;
                            a(a.CSRTB_AUCTION_REQUIRED);
                            l();
                            break loop0;
                        } else {
                            fr b = this.j.b(i);
                            if (b == null || b.c) {
                                i++;
                            } else if (!b.d) {
                                long j = this.j.b.b.r;
                                if (j > 0 && this.p == 0) {
                                    km.a(3, f2557a, "Setting VAST resolve timeout for " + j + " ms");
                                    this.p = j + System.currentTimeMillis();
                                }
                                a(this.j, i, b);
                            }
                        }
                    }
                }
            }
        }
    }

    private synchronized void a(final au auVar, final int i, final fr frVar) {
        final String str;
        gb gbVar;
        List<String> list;
        List<fz> list2 = frVar.b;
        if (list2 != null && !list2.isEmpty() && (gbVar = list2.get(0).c) != null && (list = gbVar.d) != null && !list.isEmpty()) {
            str = list.get(list.size() - 1);
        } else {
            str = null;
        }
        ks ksVar = new ks();
        ksVar.f = str;
        ksVar.w = 20000;
        ksVar.d = new lh();
        ksVar.f2978a = new ks.a<Void, String>() { // from class: com.flurry.sdk.dv.2
            @Override // com.flurry.sdk.ks.a
            public final /* synthetic */ void a(ks<Void, String> ksVar2, String str2) {
                String str3 = str2;
                km.a(3, dv.f2557a, "VAST resolver: HTTP status code is:" + ksVar2.p + " for url: " + str);
                fr frVar2 = null;
                if (ksVar2.c()) {
                    km.a(3, dv.f2557a, "VAST resolver response:" + str3 + " for url: " + str);
                    frVar2 = fr.a(frVar, ft.a(str3));
                }
                if (frVar2 == null) {
                    km.a(3, dv.f2557a, "VAST resolver failed for frame: " + i);
                    auVar.a(i, new fr.a().a().f2692a);
                } else {
                    km.a(3, dv.f2557a, "VAST resolver successful for frame: " + i);
                    auVar.a(i, frVar2);
                }
                jy.a().b(new ma() { // from class: com.flurry.sdk.dv.2.1
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        dv.this.m();
                    }
                });
            }
        };
        jw.a().a((Object) this, (dv) ksVar);
    }

    private synchronized void n() {
        if (a.SELECT.equals(this.f)) {
            km.a(3, f2557a, "Precaching required for incomplete ad unit, skipping ad group -- adspace: " + this.b + " groupId: " + ((Object) this.j.b.b.i));
            this.e.add(this.j);
            this.j = null;
            this.e.addAll(this.d);
            this.d.clear();
            this.d.addAll(this.i.b());
            if (!this.d.isEmpty()) {
                this.j = this.d.pollFirst();
            }
            f.a().a("precachingAdGroupSkipped");
            this.l = 0;
            this.o = 0L;
        }
    }

    private synchronized void o() {
        boolean z;
        if (a.CSRTB_AUCTION_REQUIRED.equals(this.f) || a.CSRTB_AWAIT_AUCTION.equals(this.f)) {
            Iterator<com.flurry.sdk.a> it = fi.a(this.j.b.b.f.get(0), new b(bc.EV_UNFILLED, null, null, null, null)).iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                } else if (ba.AC_NEXT_AD_UNIT.equals(it.next().f2410a)) {
                    z = false;
                    break;
                }
            }
            ff.a(bc.EV_UNFILLED, Collections.emptyMap(), this.g.f(), this.g, this.j, 0);
            if (z) {
                a(this.j, bb.kCSRTBAuctionTimeout);
            }
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p() {
        ly.a();
        if (a.PREPARE.equals(this.f)) {
            km.a(3, f2557a, "Preparing ad");
            if (this.g.f() == null) {
                a(this.j, bb.kNoContext);
                d();
            } else {
                ff.a(bc.EV_FILLED, Collections.emptyMap(), this.g.f(), this.g, this.j, 1);
                this.g.a(this.j);
                boolean z = false;
                for (com.flurry.sdk.a aVar : fi.a(this.j.b.b.f.get(0), new b(bc.EV_FILLED, null, null, null, null))) {
                    z = ba.AC_VERIFY_PACKAGE.equals(aVar.f2410a) ? true : z;
                }
                if (z) {
                    a(a.FILLED);
                } else {
                    e();
                }
            }
        }
    }

    public final synchronized void e() {
        a(a.PRERENDER);
        jy.a().b(new ma() { // from class: com.flurry.sdk.dv.3
            @Override // com.flurry.sdk.ma
            public final void a() {
                dv.this.q();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void q() {
        synchronized (this) {
            if (a.PRERENDER.equals(this.f)) {
                km.a(3, f2557a, "Pre-rendering ad");
                List<cn> list = this.j.b.b.f;
                for (int i = 0; i < list.size(); i++) {
                    fr b = this.j.b(i);
                    if (b != null && (!b.c || b.d)) {
                        a(this.j, bb.kInvalidVASTAd);
                        d();
                        break;
                    }
                }
                ab abVar = i.a().i;
                if (this.j.h()) {
                    km.a(3, f2557a, "Precaching required for ad, copying assets");
                    if (ag.COMPLETE.equals(abVar.a(this.j))) {
                        f.a().a("precachingAdAssetsAvailable");
                        if (!i.a().i.a(this.g, this.j)) {
                            km.a(3, f2557a, "Could not copy required ad assets");
                            f.a().a("precachingAdAssetCopyFailed");
                            a(this.j, bb.kPrecachingCopyFailed);
                            d();
                        }
                    } else {
                        km.a(3, f2557a, "Ad assets incomplete");
                        f.a().a("precachingAdAssetsIncomplete");
                        a(this.j, bb.kPrecachingMissingAssets);
                        d();
                    }
                } else if (this.j.g()) {
                    km.a(3, f2557a, "Precaching optional for ad, copying assets");
                    i.a().i.a(this.g, this.j);
                }
                ff.a(bc.EV_PREPARED, Collections.emptyMap(), this.g.f(), this.g, this.j, 0);
                cn cnVar = list.get(0);
                if (cnVar.f2511a == 1) {
                    km.a(3, f2557a, "Binding is HTML_URL, pre-render required");
                    long j = this.j.b.b.r;
                    if (j > 0) {
                        km.a(3, f2557a, "Setting pre-render timeout for " + j + " ms");
                        this.q = j + System.currentTimeMillis();
                    }
                    a(this.j, cnVar.b);
                } else {
                    fh.a(this.g);
                    d();
                }
            }
        }
    }

    private synchronized void a(final au auVar, final String str) {
        km.a(3, f2557a, "Pre-render: HTTP get for url: " + str);
        ks ksVar = new ks();
        ksVar.f = str;
        ksVar.w = 20000;
        ksVar.d = new lh();
        ksVar.f2978a = new ks.a<Void, String>() { // from class: com.flurry.sdk.dv.4
            @Override // com.flurry.sdk.ks.a
            public final /* synthetic */ void a(ks<Void, String> ksVar2, String str2) {
                String str3 = str2;
                km.a(3, dv.f2557a, "Prerender: HTTP status code is:" + ksVar2.p + " for url: " + str);
                if (!ksVar2.c()) {
                    dv.this.a(auVar, bb.kPrerenderDownloadFailed);
                    dv.this.d();
                    return;
                }
                auVar.b.i = str3;
                fh.a(dv.this.g);
                dv.this.d();
            }
        };
        jw.a().a((Object) this, (dv) ksVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(au auVar, bb bbVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("preRender", "true");
        if (bbVar == null) {
            bbVar = bb.kUnknown;
        }
        hashMap.put("errorCode", Integer.toString(bbVar.z));
        ff.a(bc.EV_RENDER_FAILED, hashMap, this.g.f(), this.g, auVar, 0);
    }
}
