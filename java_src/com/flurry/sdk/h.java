package com.flurry.sdk;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.flurry.sdk.d;
import com.flurry.sdk.gx;
import com.openx.view.mraid.JSInterface;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2781a = h.class.getSimpleName();
    private static Map<String, ba> c = Collections.unmodifiableMap(new HashMap<String, ba>() { // from class: com.flurry.sdk.h.1
        {
            put(JSInterface.ACTION_PLAY_VIDEO, ba.AC_MRAID_PLAY_VIDEO);
            put("open", ba.AC_MRAID_OPEN);
            put("expand", ba.AC_MRAID_DO_EXPAND);
            put("collapse", ba.AC_MRAID_DO_COLLAPSE);
        }
    });
    private static Set<ba> d = Collections.unmodifiableSet(new HashSet<ba>() { // from class: com.flurry.sdk.h.2
        {
            add(ba.AC_NOTIFY_USER);
            add(ba.AC_NEXT_FRAME);
            add(ba.AC_CLOSE_AD);
            add(ba.AC_MRAID_DO_EXPAND);
            add(ba.AC_MRAID_DO_COLLAPSE);
            add(ba.AC_VERIFY_URL);
        }
    });
    public final kh<c> b = new kh<c>() { // from class: com.flurry.sdk.h.3
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(c cVar) {
            c cVar2 = cVar;
            km.a(3, h.f2781a, "Detected event was fired :" + cVar2.f2498a + " for adSpace:" + cVar2.f2498a.a().b);
            h.a(cVar2);
        }
    };

    static void a(c cVar) {
        b bVar = cVar.f2498a;
        String str = bVar.f2471a.ag;
        cn d2 = bVar.e.d();
        ArrayList<a> arrayList = new ArrayList();
        List<cv> list = d2.e;
        String str2 = bVar.f2471a.ag;
        for (cv cvVar : list) {
            if (cvVar.f2519a.equals(str2)) {
                for (String str3 : cvVar.b) {
                    HashMap hashMap = new HashMap();
                    int indexOf = str3.indexOf(63);
                    if (indexOf != -1) {
                        String substring = str3.substring(0, indexOf);
                        String substring2 = str3.substring(indexOf + 1);
                        if (substring2.contains("%{eventParams}")) {
                            substring2 = substring2.replace("%{eventParams}", "");
                            hashMap.putAll(bVar.b);
                        }
                        hashMap.putAll(ly.h(substring2));
                        str3 = substring;
                    }
                    arrayList.add(new a(a.b(str3), hashMap, bVar));
                }
            }
        }
        km.a(4, f2781a, "Ad EventType:" + str + " for adUnit:" + bVar.e.b.f2466a);
        f.a().a(str);
        i.a();
        i.b().a(bVar);
        if (arrayList.isEmpty()) {
            for (Map.Entry<String, ba> entry : c.entrySet()) {
                if (entry.getKey().equals(bVar.f2471a.ag)) {
                    arrayList.add(new a(entry.getValue(), bVar.b, bVar));
                }
            }
        }
        switch (bVar.f2471a) {
            case EV_RENDER_FAILED:
                boolean z = bVar.b.remove("binding_3rd_party") != null;
                if (bVar.a().f.get(0).f2511a == 4) {
                    z = true;
                }
                if (bVar.b.remove("preRender") != null || z) {
                    b(bVar, arrayList);
                } else {
                    km.a(3, f2781a, "Firing onRenderFailed, adObject=" + bVar.d);
                    d dVar = new d();
                    dVar.f2524a = bVar.d;
                    dVar.b = d.a.kOnRenderFailed;
                    dVar.b();
                }
                fs.b(bVar.e, bVar.f2471a.ag, bVar.e.d().f);
                if (bVar.e.e()) {
                    b();
                }
                i.a().i.c(bVar.e);
                ab abVar = i.a().i;
                ab.a(bVar.d);
                i.a().i.d();
                break;
            case EV_RENDERED:
                gp f = bVar.e.f();
                if (!f.b) {
                    fs.d(bVar.e, bVar.f2471a.ag, bVar.e.d().f);
                    f.b = true;
                    bVar.e.a(f);
                    break;
                }
                break;
            case EV_VIDEO_START:
                fs.e(bVar.e, bVar.f2471a.ag, bVar.e.d().f);
                gp f2 = bVar.e.f();
                f2.c = true;
                bVar.e.a(f2);
                break;
            case EV_VIDEO_FIRST_QUARTILE:
                fs.f(bVar.e, bVar.f2471a.ag, bVar.e.d().f);
                gp f3 = bVar.e.f();
                f3.d = true;
                bVar.e.a(f3);
                break;
            case EV_VIDEO_MIDPOINT:
                fs.g(bVar.e, bVar.f2471a.ag, bVar.e.d().f);
                gp f4 = bVar.e.f();
                f4.e = true;
                bVar.e.a(f4);
                break;
            case EV_VIDEO_THIRD_QUARTILE:
                fs.h(bVar.e, bVar.f2471a.ag, bVar.e.d().f);
                gp f5 = bVar.e.f();
                f5.f = true;
                bVar.e.a(f5);
                break;
            case EV_VIDEO_COMPLETED:
                fs.i(bVar.e, bVar.f2471a.ag, bVar.e.d().f);
                if (TextUtils.isEmpty(bVar.b.get("doNotRemoveAssets"))) {
                    ab abVar2 = i.a().i;
                    ab.a(bVar.d);
                    i.a().i.d();
                }
                km.a(3, f2781a, "initLayout onVideoCompleted " + bVar.c);
                if (bVar.a().q) {
                    km.a(3, f2781a, "Ad unit is rewardable, onVideoCompleted listener will fire");
                    km.a(3, f2781a, "Firing onVideoCompleted, adObject=" + bVar.d);
                    d dVar2 = new d();
                    dVar2.f2524a = bVar.d;
                    dVar2.b = d.a.kOnVideoCompleted;
                    dVar2.b();
                    break;
                } else {
                    km.a(3, f2781a, "Ad unit is not rewardable, onVideoCompleted listener will not fire");
                    break;
                }
            case EV_CLICKED:
                bVar.e.i();
                km.a(3, f2781a, "Firing onClicked, adObject=" + bVar.d);
                if (bVar.d instanceof x) {
                    f.a().a("nativeAdClick");
                }
                d dVar3 = new d();
                dVar3.f2524a = bVar.d;
                dVar3.b = d.a.kOnClicked;
                dVar3.b();
                au auVar = bVar.e;
                fr c2 = auVar.c();
                if (c2 != null) {
                    gp f6 = bVar.e.f();
                    String b = c2.b();
                    if (f6 != null && !TextUtils.isEmpty(b)) {
                        auVar.a(f6);
                        i.a();
                        g c3 = i.c();
                        Context context = bVar.c;
                        r rVar = bVar.d;
                        if (context == null) {
                            km.a(5, g.f2703a, "Cannot process redirect, null context");
                        } else {
                            c3.a(context, b, true, rVar, false);
                        }
                    }
                    if (f6 != null && !f6.h) {
                        f6.h = true;
                        auVar.a(f6);
                        fs.c(bVar.e, bVar.f2471a.ag, bVar.e.d().f);
                        break;
                    }
                }
                break;
            case EV_USER_CONFIRMED:
                ab abVar3 = i.a().i;
                ab.a(bVar.d);
                i.a().i.d();
                break;
            case EV_AD_WILL_CLOSE:
                c(bVar, arrayList);
                break;
            case EV_PRIVACY:
                for (a aVar : arrayList) {
                    if (aVar.f2410a.equals(ba.AC_DIRECT_OPEN)) {
                        aVar.a("is_privacy", "true");
                    }
                }
                break;
            case EV_AD_CLOSED:
                b(bVar);
                break;
            case EV_VIDEO_CLOSED:
                km.a(3, f2781a, "Firing onVideoClose, adObject=" + bVar.d);
                d dVar4 = new d();
                dVar4.f2524a = bVar.d;
                dVar4.b = d.a.kOnClose;
                dVar4.b();
                break;
            case EV_REQUEST_AD_COLLAPSE:
                b(bVar);
                break;
            case EV_NATIVE_IMPRESSION:
                km.a(3, f2781a, "Firing onAdImpressionLogged, adObject=" + bVar.d);
                d dVar5 = new d();
                dVar5.f2524a = bVar.d;
                dVar5.b = d.a.kOnImpressionLogged;
                dVar5.b();
                break;
            case EV_FILLED:
                if (bVar.d instanceof x) {
                    f.a().a("nativeAdFilled");
                    break;
                }
                break;
            case EV_PACKAGE_VERIFIED:
                a(bVar, arrayList);
                break;
            case EV_PACKAGE_NOT_VERIFIED:
                if (bVar.b.containsValue(bc.EV_FILLED.ag)) {
                    km.a(3, "VerifyPackageLog", "onPackageNotVerified() ready to fire PRE-RENDER.");
                    a(bVar);
                    break;
                }
                break;
            case EV_AD_EXPANDED:
                km.a(3, f2781a, "Firing onExpanded, adObject=" + bVar.d);
                d dVar6 = new d();
                dVar6.f2524a = bVar.d;
                dVar6.b = d.a.kOnExpanded;
                dVar6.b();
                break;
            case EV_AD_COLLAPSED:
                km.a(3, f2781a, "Firing onCollapsed, adObject=" + bVar.d);
                d dVar7 = new d();
                dVar7.f2524a = bVar.d;
                dVar7.b = d.a.kOnCollapsed;
                dVar7.b();
                break;
            case INTERNAL_EV_AD_OPENED:
                km.a(3, f2781a, "Firing onOpen, adObject=" + bVar.d);
                d dVar8 = new d();
                dVar8.f2524a = bVar.d;
                dVar8.b = d.a.kOnOpen;
                dVar8.b();
                break;
            case INTERNAL_EV_APP_EXIT:
                km.a(3, f2781a, "Firing onAppExit, adObject=" + bVar.d);
                d dVar9 = new d();
                dVar9.f2524a = bVar.d;
                dVar9.b = d.a.kOnAppExit;
                dVar9.b();
                b();
                break;
            case INTERNAL_EV_CALL_CLICKED:
                r rVar2 = bVar.d;
                Map<String, String> map = bVar.b;
                if (map != null && map.containsKey("phoneNumber")) {
                    fo.a(rVar2.f(), Uri.parse("tel://" + map.get("phoneNumber")));
                    break;
                }
                break;
            case EV_CALL_CLICK_BEACON:
                km.a(3, f2781a, "Firing onCallBeaconFire, adObject=" + bVar.d);
                break;
            default:
                km.a(3, f2781a, "Event not handled: { " + bVar.f2471a + " for adSpace: {" + bVar.e.i());
                break;
        }
        a(cVar, arrayList);
    }

    private static void a(b bVar, List<a> list) {
        boolean z;
        Iterator<a> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (it.next().f2410a.equals(ba.AC_NEXT_AD_UNIT) && bVar.b.containsValue(bc.EV_FILLED.ag)) {
                z = true;
                break;
            }
        }
        if (!z) {
            km.a(3, "VerifyPackageLog", "onPackageVerified() no nextAdUnit or different originator, ready to fire PRE-RENDER. ");
            a(bVar);
        }
    }

    private static void a(b bVar) {
        km.a(3, "VerifyPackageLog", "onStartPrerender() Ready to pre-render.");
        bVar.d.i().e();
    }

    private static void b(b bVar, List<a> list) {
        boolean z;
        Iterator<a> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            } else if (ba.AC_NEXT_AD_UNIT.equals(it.next().f2410a)) {
                z = false;
                break;
            }
        }
        if (z) {
            km.a(3, f2781a, "Firing onFetchFailed, adObject=" + bVar.d);
            d dVar = new d();
            dVar.f2524a = bVar.d;
            dVar.b = d.a.kOnFetchFailed;
            dVar.b();
        }
    }

    private static void b() {
        gx gxVar = new gx();
        gxVar.d = gx.a.b;
        ki.a().a(gxVar);
    }

    private static void b(b bVar) {
        km.a(3, f2781a, "Firing onClose, adObject=" + bVar.d);
        d dVar = new d();
        dVar.f2524a = bVar.d;
        dVar.b = d.a.kOnClose;
        dVar.b();
        b();
    }

    private static void a(c cVar, List<a> list) {
        a aVar;
        a aVar2 = null;
        for (a aVar3 : list) {
            if (aVar3.f2410a.equals(ba.AC_LOG_EVENT)) {
                aVar3.a("__sendToServer", "true");
                aVar = aVar3;
            } else {
                aVar = aVar2;
            }
            if (aVar3.f2410a.equals(ba.AC_LOAD_AD_COMPONENTS)) {
                for (Map.Entry<String, String> entry : aVar3.c.b.entrySet()) {
                    aVar3.a(entry.getKey(), entry.getValue());
                }
            }
            km.d(f2781a, aVar3.toString());
            i.a();
            i.c().a(aVar3, cVar.b + 1);
            aVar2 = aVar;
        }
        if (aVar2 == null) {
            HashMap hashMap = new HashMap();
            hashMap.put("__sendToServer", Consts.False);
            a aVar4 = new a(ba.AC_LOG_EVENT, hashMap, cVar.f2498a);
            km.d(f2781a, aVar4.toString());
            i.a();
            i.c().a(aVar4, cVar.b + 1);
        }
    }

    private static void c(b bVar, List<a> list) {
        boolean z;
        fs.a(bVar.e, bVar.f2471a.ag, bVar.e.d().f);
        Iterator<a> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (d.contains(it.next().f2410a)) {
                z = true;
                break;
            }
        }
        if (!z) {
            list.add(0, new a(ba.AC_CLOSE_AD, Collections.emptyMap(), bVar));
            ab abVar = i.a().i;
            ab.a(bVar.d);
            i.a().i.d();
        }
    }
}
