package com.flurry.sdk;

import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.view.ViewGroup;
import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes2.dex */
public class dw {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2579a = dw.class.getSimpleName();
    private final String d;
    private r g;
    private au h;
    private y i;
    private List<au> j;
    private final kq<cq> b = new kq<>("ad response", new dz());
    private final kq<cp> c = new kq<>("ad request", new dy());
    private final kh<jm> k = new kh<jm>() { // from class: com.flurry.sdk.dw.1
        @Override // com.flurry.sdk.kh
        public final /* bridge */ /* synthetic */ void a(jm jmVar) {
            dw.this.d();
        }
    };
    private final List<Integer> e = Arrays.asList(0, 1, 2, 3, 4, 5);
    private a f = a.NONE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum a {
        NONE,
        WAIT_FOR_REPORTED_IDS,
        BUILD_REQUEST,
        REQUEST,
        PREPROCESS
    }

    public dw(String str) {
        this.d = str;
        b();
    }

    public final synchronized void a() {
        b();
    }

    public final synchronized void a(r rVar, y yVar, au auVar) {
        km.a(3, f2579a, "requestAd: adSpace = " + this.d);
        if (!a.NONE.equals(this.f)) {
            km.a(3, f2579a, "requestAds: request pending " + this.f);
        } else if (!jr.a().b) {
            km.a(5, f2579a, "There is no network connectivity (requestAds will fail)");
            f();
        } else {
            this.g = rVar;
            this.h = auVar;
            this.i = yVar;
            i.a().h.b();
            if (jl.a().b()) {
                a(a.BUILD_REQUEST);
                jy.a().b(new ma() { // from class: com.flurry.sdk.dw.2
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        dw.this.a(dw.this.g, dw.this.h);
                    }
                });
            } else {
                km.a(3, f2579a, "No reported ids yet; waiting");
                a(a.WAIT_FOR_REPORTED_IDS);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void b() {
        jw.a().a(this);
        a(a.NONE);
        this.i = null;
        this.g = null;
        this.h = null;
        this.j = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(a aVar) {
        if (aVar == null) {
            aVar = a.NONE;
        }
        km.a(3, f2579a, "Setting state from " + this.f + " to " + aVar);
        if (a.NONE.equals(this.f) && !a.NONE.equals(aVar)) {
            km.a(3, f2579a, "Adding request listeners for adspace: " + this.d);
            ki.a().a("com.flurry.android.sdk.IdProviderFinishedEvent", this.k);
        } else if (a.NONE.equals(aVar) && !a.NONE.equals(this.f)) {
            km.a(3, f2579a, "Removing request listeners for adspace: " + this.d);
            ki.a().a(this.k);
        }
        this.f = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() {
        if (a.WAIT_FOR_REPORTED_IDS.equals(this.f)) {
            km.a(3, f2579a, "Reported ids retrieved; request may continue");
            a(a.BUILD_REQUEST);
            jy.a().b(new ma() { // from class: com.flurry.sdk.dw.3
                @Override // com.flurry.sdk.ma
                public final void a() {
                    dw.this.a(dw.this.g, dw.this.h);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v91, types: [byte[], RequestObjectType] */
    public synchronized void a(final r rVar, au auVar) {
        cu cuVar;
        Pair create;
        boolean z;
        List<dl> emptyList;
        Map<String, String> map;
        boolean z2;
        String str;
        boolean z3;
        String str2;
        if (a.BUILD_REQUEST.equals(this.f)) {
            a(a.REQUEST);
            ViewGroup g = rVar.g();
            e m = rVar.m();
            if (rVar instanceof q) {
                cuVar = cu.BANNER;
            } else if (rVar instanceof u) {
                cuVar = cu.INTERSTITIAL;
            } else if (rVar instanceof x) {
                cuVar = cu.NATIVE;
            } else if (rVar instanceof t) {
                cuVar = cu.NATIVE;
            } else {
                cuVar = cu.LEGACY;
            }
            int e = lw.e();
            int a2 = lw.a(lw.b().x);
            int a3 = lw.a(lw.b().y);
            switch (e) {
                case 2:
                    create = Pair.create(Integer.valueOf(a3), Integer.valueOf(a2));
                    break;
                default:
                    create = Pair.create(Integer.valueOf(a2), Integer.valueOf(a3));
                    break;
            }
            int intValue = ((Integer) create.first).intValue();
            int intValue2 = ((Integer) create.second).intValue();
            Pair create2 = Pair.create(Integer.valueOf(lw.a(lw.b().x)), Integer.valueOf(lw.a(lw.b().y)));
            int intValue3 = ((Integer) create2.first).intValue();
            int intValue4 = (g == null || g.getHeight() <= 0) ? ((Integer) create2.second).intValue() : lw.a(g.getHeight());
            int a4 = (g == null || g.getWidth() <= 0) ? intValue3 : lw.a(g.getWidth());
            ct ctVar = new ct();
            ctVar.d = intValue2;
            ctVar.c = intValue;
            ctVar.b = intValue4;
            ctVar.f2517a = a4;
            ctVar.e = lw.d().density;
            DisplayMetrics d = lw.d();
            float f = d.widthPixels / d.xdpi;
            float f2 = d.heightPixels / d.ydpi;
            ctVar.f = ((float) Math.round(Math.sqrt((f2 * f2) + (f * f)) * 100.0d)) / 100.0f;
            ctVar.g = fi.b();
            db c = fi.c();
            Map<String, String> emptyMap = Collections.emptyMap();
            dm dmVar = new dm();
            dmVar.c = Collections.emptyList();
            dmVar.f2538a = -1;
            dmVar.b = -1;
            Long l = (Long) lp.a().a("Age");
            Byte b = (Byte) lp.a().a("Gender");
            if (b != null && b.byteValue() != -1) {
                dmVar.b = b.intValue();
            }
            if (l != null) {
                dmVar.f2538a = fp.a(l);
            }
            if (m == null) {
                z = false;
            } else {
                z = m.getEnableTestAds();
            }
            List<co> e2 = fi.e();
            List<cy> f3 = fi.f();
            if (cu.STREAM.equals(cu.STREAM)) {
                emptyList = fi.g();
            } else {
                emptyList = Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (m != null) {
                String fixedAdId = m.getFixedAdId();
                if (!TextUtils.isEmpty(fixedAdId)) {
                    arrayList.add("FLURRY_VIEWER");
                    arrayList.add(fixedAdId);
                }
            }
            Map<String, String> emptyMap2 = Collections.emptyMap();
            if (auVar == null) {
                map = emptyMap2;
                z2 = false;
            } else {
                cs csVar = auVar.b.b;
                boolean z4 = csVar.w;
                map = csVar.x;
                z2 = z4;
            }
            dc dcVar = new dc();
            List<Integer> list = null;
            List<String> list2 = null;
            if (rVar instanceof x) {
                x xVar = (x) rVar;
                list = xVar.l;
                list2 = xVar.m;
            } else if (rVar instanceof t) {
                t tVar = (t) rVar;
                list = tVar.k;
                list2 = tVar.l;
            }
            if (list == null) {
                dcVar.f2528a = Collections.emptyList();
            } else {
                dcVar.f2528a = list;
            }
            if (list2 == null) {
                dcVar.b = Collections.emptyList();
            } else {
                dcVar.b = list2;
            }
            String str3 = this.d;
            i.a();
            ec e3 = i.e();
            if (e3 == null) {
                str = null;
            } else {
                str = e3.i;
            }
            String str4 = "";
            List arrayList2 = new ArrayList();
            List arrayList3 = new ArrayList();
            if (!(rVar instanceof t)) {
                z3 = false;
                str2 = "";
            } else {
                t tVar2 = (t) rVar;
                List list3 = tVar2.m;
                List list4 = tVar2.n;
                str2 = tVar2.o;
                str3 = "";
                str = tVar2.p;
                arrayList3 = list4;
                arrayList2 = list3;
                str4 = tVar2.q;
                z3 = true;
            }
            try {
                cp cpVar = new cp();
                cpVar.f2513a = System.currentTimeMillis();
                cpVar.b = jy.a().d;
                cpVar.c = Integer.toString(jz.a());
                cpVar.d = cuVar;
                cpVar.e = str3;
                cpVar.f = arrayList2;
                cpVar.g = z3;
                jk.a();
                cpVar.h = jk.c();
                cpVar.i = arrayList3;
                cpVar.j = e2;
                cpVar.k = c;
                cpVar.l = z;
                cpVar.m = this.e;
                cpVar.n = ctVar;
                jo.a();
                cpVar.o = jo.b();
                jo.a();
                cpVar.p = TimeZone.getDefault().getID();
                ju.a();
                cpVar.q = ju.b();
                ju.a();
                cpVar.r = ju.c();
                ju.a();
                cpVar.s = ju.a(rVar.f());
                ju.a();
                cpVar.t = ju.d();
                ju.a();
                cpVar.u = ju.e();
                ju.a();
                cpVar.v = ju.f();
                cpVar.w = str4;
                cpVar.x = emptyMap;
                cpVar.y = false;
                jk.a();
                cpVar.z = jk.g().e;
                cpVar.A = f3;
                cpVar.B = emptyList;
                cpVar.C = jl.a().c();
                cpVar.D = Locale.getDefault().getLanguage();
                cpVar.E = arrayList;
                cpVar.F = str;
                cpVar.G = dmVar;
                cpVar.H = i.a().j == null;
                cpVar.I = fi.d();
                cpVar.J = z2;
                cpVar.K = map;
                cpVar.L = dcVar;
                cpVar.M = str2;
                cpVar.N = lv.a(rVar.f());
                ?? a5 = this.c.a((kq<cp>) cpVar);
                ks ksVar = new ks();
                ksVar.f = j.a().c();
                ksVar.w = 20000;
                ksVar.g = ku.a.kPost;
                ksVar.a("Content-Type", "application/x-flurry");
                ksVar.a("Accept", "application/x-flurry");
                ksVar.a("FM-Checksum", Integer.toString(kq.a((byte[]) a5)));
                ksVar.c = new lc();
                ksVar.d = new lc();
                ksVar.b = a5;
                km.b(f2579a, "AdRequest: url:" + j.a().c());
                ksVar.f2978a = new ks.a<byte[], byte[]>() { // from class: com.flurry.sdk.dw.4
                    /* JADX WARN: Removed duplicated region for block: B:44:0x0123  */
                    @Override // com.flurry.sdk.ks.a
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final /* synthetic */ void a(ks<byte[], byte[]> ksVar2, byte[] bArr) {
                        List<cs> list5;
                        cw cwVar;
                        byte[] bArr2 = bArr;
                        km.a(3, dw.f2579a, "AdRequest: HTTP status code is:" + ksVar2.p);
                        if (ksVar2.e()) {
                            km.a(3, dw.f2579a, ksVar2.o.getMessage());
                        }
                        dw.this.j = new ArrayList();
                        List<cs> emptyList2 = Collections.emptyList();
                        if (ksVar2.c() && bArr2 != null) {
                            cq cqVar = null;
                            try {
                                cqVar = (cq) dw.this.b.b(bArr2);
                            } catch (Exception e4) {
                                km.a(5, dw.f2579a, "Failed to decode ad response: " + e4);
                            }
                            if (cqVar != null) {
                                cx cxVar = cqVar.f;
                                if (cxVar != null && (cwVar = cxVar.f2521a) != null) {
                                    km.a(3, dw.f2579a, "Ad server responded with configuration.");
                                    du duVar = new du();
                                    duVar.f2556a = cwVar;
                                    ki.a().a(duVar);
                                }
                                if (cqVar.b != null) {
                                    for (cz czVar : cqVar.b) {
                                        i.a().h.a(new bf(czVar));
                                    }
                                }
                                if (cqVar.c.size() > 0) {
                                    km.b(dw.f2579a, "Ad server responded with the following error(s):");
                                    for (String str5 : cqVar.c) {
                                        km.b(dw.f2579a, str5);
                                    }
                                }
                                if (!TextUtils.isEmpty(cqVar.d)) {
                                    km.b(dw.f2579a, "Ad server responded with the following internal error:" + cqVar.d);
                                }
                                list5 = cqVar.f2514a != null ? cqVar.f2514a : emptyList2;
                                if (!TextUtils.isEmpty(dw.this.d) && list5.size() == 0) {
                                    km.b(dw.f2579a, "Ad server responded but sent no ad units.");
                                }
                                if (list5.size() > 0) {
                                    if (rVar instanceof t) {
                                        kd kdVar = new kd();
                                        boolean z5 = false;
                                        for (cs csVar2 : list5) {
                                            if (!TextUtils.isEmpty(csVar2.c)) {
                                                z5 = true;
                                                kdVar.a((kd) csVar2.c, (String) new ay(csVar2));
                                            }
                                            z5 = z5;
                                        }
                                        if (z5) {
                                            dw.this.j.add(new au(kdVar));
                                        }
                                    } else {
                                        for (cs csVar3 : list5) {
                                            if (csVar3.f.size() != 0) {
                                                if (rVar instanceof x) {
                                                    f.a().a("nativeAdReturned");
                                                }
                                                dw.this.j.add(new au(csVar3));
                                            }
                                        }
                                    }
                                }
                                dw.this.a(a.PREPROCESS);
                                jy.a().b(new ma() { // from class: com.flurry.sdk.dw.4.1
                                    @Override // com.flurry.sdk.ma
                                    public final void a() {
                                        dw.this.e();
                                    }
                                });
                            }
                        }
                        list5 = emptyList2;
                        if (list5.size() > 0) {
                        }
                        dw.this.a(a.PREPROCESS);
                        jy.a().b(new ma() { // from class: com.flurry.sdk.dw.4.1
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                dw.this.e();
                            }
                        });
                    }
                };
                if (rVar instanceof x) {
                    f.a().a("nativeAdRequest");
                }
                jw.a().a((Object) this, (dw) ksVar);
            } catch (Exception e4) {
                km.a(5, f2579a, "Ad request failed with exception: " + e4);
                b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e() {
        if (a.PREPROCESS.equals(this.f)) {
            for (au auVar : this.j) {
                cs csVar = auVar.b.b;
                if (csVar.g != null) {
                    for (cz czVar : csVar.g) {
                        i.a().h.a(new bf(czVar));
                    }
                }
                List<cn> list = csVar.f;
                for (int i = 0; i < list.size(); i++) {
                    cn cnVar = list.get(i);
                    if (cnVar.b != null && !cnVar.b.isEmpty()) {
                        fr a2 = ft.a(cnVar.b);
                        if (a2 != null) {
                            auVar.a(i, a2);
                            if (a2.d) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else if (csVar.f2516a.equals(cu.NATIVE)) {
                        Iterator<de> it = csVar.z.f.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                de next = it.next();
                                if (next.b == df.VAST_VIDEO) {
                                    fr a3 = ft.a(next.c);
                                    if (a3 != null) {
                                        auVar.a(i, a3);
                                        if (a3.d) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                for (int i2 = 0; i2 < list.size(); i2++) {
                    List<String> a4 = ad.a(auVar, i2);
                    ay ayVar = auVar.b;
                    if (i2 >= 0 && i2 < ayVar.c.size()) {
                        ayVar.c.get(i2).c = a4;
                    }
                }
            }
            km.a(3, f2579a, "Handling ad response for adSpace: " + this.d + ", size: " + this.j.size());
            if (this.j.size() > 0) {
                if (this.i != null) {
                    this.i.a(this.j);
                }
                jy.a().b(new ma() { // from class: com.flurry.sdk.dw.5
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        i.a().i.a(dw.this.j);
                    }
                });
            }
            f();
            b();
        }
    }

    private void f() {
        dx dxVar = new dx();
        dxVar.f2587a = this;
        dxVar.b = this.d;
        dxVar.c = this.j;
        ki.a().a(dxVar);
    }
}
