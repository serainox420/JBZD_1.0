package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.flurry.sdk.gx;
import com.flurry.sdk.ha;
import com.flurry.sdk.mj;
import com.google.firebase.a.a;
import com.loopme.debugging.Params;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    static final String f2703a = g.class.getSimpleName();
    fg b = new fg();
    public boolean c;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x056c, code lost:
        if (r4.equals("next") != false) goto L158;
     */
    /* JADX WARN: Removed duplicated region for block: B:156:0x04de  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x052c  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(a aVar, int i) {
        int i2;
        au auVar;
        bd c;
        String str;
        boolean parseBoolean;
        boolean z;
        boolean z2 = true;
        boolean z3 = false;
        bc bcVar = null;
        if (aVar.c != null) {
            bcVar = aVar.c.f2471a;
        }
        km.a(3, f2703a, "performAction:action=" + aVar.toString());
        if (i > 10) {
            km.a(5, f2703a, "Maximum depth for event/action loop exceeded when performing action:" + aVar.toString());
            return;
        }
        switch (aVar.f2410a) {
            case AC_DIRECT_OPEN:
                Context context = aVar.c.c;
                r rVar = aVar.c.d;
                au auVar2 = aVar.c.e;
                String a2 = aVar.a("url");
                if (!TextUtils.isEmpty(a2)) {
                    if (mc.d(a2)) {
                        fo.a(context, a2);
                        break;
                    } else {
                        boolean equals = "true".equals(aVar.a("native"));
                        boolean z4 = !"true".equals(aVar.a("is_privacy"));
                        if (equals) {
                            km.a(2, f2703a, "Explictly instructed to use native browser");
                            fo.d(context, this.b.a(aVar, a2));
                            break;
                        } else {
                            String a3 = this.b.a(aVar, a2);
                            if (auVar2.b.g) {
                                b(rVar, a3, z4);
                                break;
                            } else {
                                if (!equals) {
                                    z3 = true;
                                }
                                a(context, a3, z3, rVar, z4);
                                break;
                            }
                        }
                    }
                } else {
                    km.a(6, f2703a, "failed to perform directOpen action: no url in " + aVar.c.f2471a);
                    break;
                }
            case AC_MRAID_PLAY_VIDEO:
                Context context2 = aVar.c.c;
                r rVar2 = aVar.c.d;
                au auVar3 = aVar.c.e;
                String a4 = aVar.a("url");
                if (!TextUtils.isEmpty(a4)) {
                    if (mc.d(a4)) {
                        fo.a(context2, a4);
                        break;
                    } else {
                        boolean equals2 = "true".equals(aVar.a("native"));
                        if ("true".equals(aVar.a("is_privacy"))) {
                            z2 = false;
                        }
                        if (equals2) {
                            km.a(2, f2703a, "Explictly instructed to use native browser");
                            fo.d(context2, this.b.a(aVar, a4));
                            break;
                        } else {
                            auVar3.j();
                            if (auVar3.b.g) {
                                b(rVar2, a4, z2);
                                break;
                            } else {
                                fo.a(context2, rVar2, a4, z2);
                                break;
                            }
                        }
                    }
                } else {
                    km.a(6, f2703a, "failed to perform directOpen action: no url in " + aVar.c.f2471a);
                    break;
                }
            case AC_MRAID_OPEN:
                Context context3 = aVar.c.c;
                r rVar3 = aVar.c.d;
                au auVar4 = aVar.c.e;
                String a5 = aVar.a("url");
                if (!TextUtils.isEmpty(a5)) {
                    if (mc.d(a5)) {
                        fo.a(context3, a5);
                        break;
                    } else {
                        boolean equals3 = "true".equals(aVar.a("native"));
                        boolean z5 = !"true".equals(aVar.a("is_privacy"));
                        if (equals3) {
                            km.a(2, f2703a, "Explictly instructed to use native browser");
                            fo.d(context3, this.b.a(aVar, a5));
                            break;
                        } else {
                            auVar4.j();
                            if (auVar4.b.g) {
                                b(rVar3, a5, z5);
                                break;
                            } else {
                                if (!equals3) {
                                    z3 = true;
                                }
                                a(context3, a5, z3, rVar3, z5);
                                break;
                            }
                        }
                    }
                } else {
                    km.a(6, f2703a, "failed to perform directOpen action: no url in " + aVar.c.f2471a);
                    break;
                }
            case AC_DELETE:
                r rVar4 = aVar.c.d;
                String a6 = aVar.a("groupId");
                if (!TextUtils.isEmpty(a6)) {
                    rVar4.a(a6);
                    break;
                }
                break;
            case AC_PROCESS_REDIRECT:
                Context context4 = aVar.c.c;
                r rVar5 = aVar.c.d;
                Map<String, String> map = aVar.c.b;
                if (map != null && map.containsKey("hide_view")) {
                    String str2 = map.get("hide_view");
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            z = Boolean.parseBoolean(str2);
                        } catch (Exception e) {
                            km.a(6, f2703a, "caught Exception with hideView parameter in onProcessRedirect:" + str2);
                            z = false;
                        }
                        if (z) {
                            km.e(f2703a, "Not processing click in the SDK.");
                            break;
                        }
                    }
                }
                String a7 = aVar.a("url");
                if (!TextUtils.isEmpty(a7)) {
                    String a8 = aVar.a("native");
                    if (!TextUtils.isEmpty(a8)) {
                        try {
                            parseBoolean = Boolean.parseBoolean(a8);
                        } catch (Exception e2) {
                            km.a(6, f2703a, "caught Exception with useNative parameter in onProcessRedirect:" + a8);
                        }
                        if (!TextUtils.isEmpty(a7)) {
                            String a9 = mc.a(this.b.a(aVar, a7));
                            if (!TextUtils.isEmpty(a9)) {
                                if (!parseBoolean) {
                                    z3 = true;
                                }
                                a(context4, a9, z3, rVar5, true);
                                break;
                            }
                        }
                    }
                    parseBoolean = false;
                    if (!TextUtils.isEmpty(a7)) {
                    }
                }
                break;
            case AC_VERIFY_URL:
                Context context5 = aVar.c.c;
                r rVar6 = aVar.c.d;
                au auVar5 = aVar.c.e;
                String a10 = aVar.a("url");
                if (!TextUtils.isEmpty(a10)) {
                    bc bcVar2 = a(a10) ? bc.EV_URL_VERIFIED : bc.EV_URL_NOT_VERIFIED;
                    f.a().a(bcVar2.ag);
                    ff.a(bcVar2, Collections.emptyMap(), context5, rVar6, auVar5, i + 1);
                    break;
                }
                break;
            case AC_VERIFY_PACKAGE:
                Context context6 = aVar.c.c;
                r rVar7 = aVar.c.d;
                au auVar6 = aVar.c.e;
                String a11 = aVar.a("url");
                if (!TextUtils.isEmpty(a11)) {
                    bc bcVar3 = a(a11) ? bc.EV_PACKAGE_VERIFIED : bc.EV_PACKAGE_NOT_VERIFIED;
                    f.a().a(bcVar3.ag);
                    HashMap hashMap = new HashMap();
                    if (aVar.c.f2471a.equals(bc.EV_FILLED)) {
                        hashMap.put(a.b.ORIGIN, bc.EV_FILLED.ag);
                    }
                    km.a(3, "VerifyPackageLog", "onVerifyPackage() called for pkg: " + a11 + " packageInstalled: " + a(a11));
                    ff.a(bcVar3, hashMap, context6, rVar7, auVar6, i + 1);
                    break;
                }
                break;
            case AC_LAUNCH_PACKAGE:
                Context context7 = aVar.c.c;
                String a12 = aVar.a(Params.PACKAGE_ID);
                if (!TextUtils.isEmpty(a12)) {
                    fo.b(context7, a12, aVar.c.d);
                    break;
                }
                break;
            case AC_SEND_URL_ASYNC:
                a(aVar);
                break;
            case AC_SEND_AD_LOGS:
                i.a();
                ec e3 = i.e();
                if (e3 != null) {
                    e3.a();
                    break;
                }
                break;
            case AC_LOG_EVENT:
                boolean z6 = aVar.b.containsKey("__sendToServer") && aVar.a("__sendToServer").equals("true");
                if (aVar.b != null && !TextUtils.isEmpty("__sendToServer")) {
                    aVar.b.remove("__sendToServer");
                }
                String a13 = aVar.c.e.b.a();
                bc bcVar4 = aVar.c.f2471a;
                Map<String, String> map2 = aVar.b;
                au auVar7 = aVar.c.e;
                String str3 = aVar.c.f2471a.ag;
                ay ayVar = auVar7.b;
                av avVar = ayVar.c.get(ayVar.e);
                if (!TextUtils.isEmpty(str3) && (!avVar.d.contains(str3) || !avVar.f.contains(str3))) {
                    z3 = true;
                }
                if (z3) {
                    km.a(3, f2703a, "onLogEvent(" + a13 + ", " + bcVar4 + ", " + z6 + ", " + map2 + ")");
                    i.a();
                    i.a(a13, bcVar4, z6, map2);
                    ay ayVar2 = auVar7.b;
                    av avVar2 = ayVar2.c.get(ayVar2.e);
                    if (!TextUtils.isEmpty(str3) && avVar2.d.contains(str3)) {
                        avVar2.f.add(str3);
                        break;
                    }
                } else {
                    km.a(3, f2703a, "Event already logged for " + str3);
                    break;
                }
                break;
            case AC_NEXT_FRAME:
                au auVar8 = aVar.c.e;
                int i3 = auVar8.b.e + 1;
                String a14 = aVar.a(VastIconXmlManager.OFFSET);
                if (a14 != null) {
                    switch (a14.hashCode()) {
                        case 3377907:
                            break;
                        case 1126940025:
                            if (a14.equals("current")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        default:
                            z3 = true;
                            break;
                    }
                    switch (z3) {
                        case false:
                            i2 = auVar8.b.e + 1;
                            r rVar8 = aVar.c.d;
                            auVar = aVar.c.e;
                            km.a(3, f2703a, "goToFrame: triggering event = " + aVar.c.c);
                            if (i2 != auVar.b.e && i2 < auVar.b.b.f.size()) {
                                km.a(3, f2703a, "goToFrame: currentIndex = " + auVar.b.e + " and go to index: " + i2);
                                c = auVar.b.c();
                                str = auVar.b.b.f.get(i2).d.d;
                                if (str.equalsIgnoreCase(c.toString())) {
                                    km.a(3, f2703a, "goToFrame: Moving now from " + c.toString() + " to format " + str);
                                    if (str.equalsIgnoreCase(bd.TAKEOVER.toString())) {
                                        auVar.a(i2);
                                        fo.a(aVar.c.c, rVar8);
                                        break;
                                    }
                                } else {
                                    km.a(3, f2703a, "goToFrame: Already a takeover Ad, just move to next frame. " + c.toString() + " to format " + str);
                                    auVar.a(i2);
                                    b(rVar8, null, true);
                                    break;
                                }
                            }
                            break;
                        case true:
                            break;
                        default:
                            try {
                                i2 = Integer.parseInt(a14);
                            } catch (Exception e4) {
                                km.a(6, f2703a, "caught: " + e4.getMessage());
                                break;
                            }
                            r rVar82 = aVar.c.d;
                            auVar = aVar.c.e;
                            km.a(3, f2703a, "goToFrame: triggering event = " + aVar.c.c);
                            if (i2 != auVar.b.e) {
                                km.a(3, f2703a, "goToFrame: currentIndex = " + auVar.b.e + " and go to index: " + i2);
                                c = auVar.b.c();
                                str = auVar.b.b.f.get(i2).d.d;
                                if (str.equalsIgnoreCase(c.toString())) {
                                }
                                break;
                            }
                            break;
                    }
                }
                i2 = i3;
                r rVar822 = aVar.c.d;
                auVar = aVar.c.e;
                km.a(3, f2703a, "goToFrame: triggering event = " + aVar.c.c);
                if (i2 != auVar.b.e) {
                }
                break;
            case AC_NEXT_AD_UNIT:
                r rVar9 = aVar.c.d;
                boolean z7 = (!aVar.c.f2471a.equals(bc.EV_PACKAGE_VERIFIED) && !aVar.c.f2471a.equals(bc.EV_PACKAGE_NOT_VERIFIED)) || !aVar.c.b.containsValue(bc.EV_FILLED.ag);
                if ((rVar9 instanceof v) && ((v) rVar9).f.b().equals(bd.BANNER)) {
                    z3 = true;
                }
                if ((rVar9 instanceof q) || z3) {
                    if (i > 10) {
                        km.a(5, f2703a, "Maximum depth for event/action loop exceeded when performing action:" + aVar.toString());
                        break;
                    } else {
                        String a15 = aVar.a("delay");
                        long j = 30;
                        if (!TextUtils.isEmpty(a15)) {
                            try {
                                j = Long.parseLong(a15);
                            } catch (Exception e5) {
                                km.a(6, f2703a, "caught Exception with delay parameter in nextAdUnit:" + a15);
                            }
                        }
                        rVar9.a(aVar.c.e, j * 1000, true);
                        break;
                    }
                } else {
                    rVar9.a(aVar.c.e, 0L, z7);
                    break;
                }
            case AC_CHECK_CAP:
                b(aVar, i);
                break;
            case AC_UPDATE_VIEW_COUNT:
                b(aVar);
                break;
            case AC_CLOSE_AD:
                km.a(3, f2703a, "closing ad");
                ha haVar = new ha();
                haVar.b = aVar;
                haVar.c = 0;
                haVar.f2784a = ha.a.b;
                haVar.b();
                break;
            case AC_NOTIFY_USER:
                km.a(3, f2703a, "notify user");
                ha haVar2 = new ha();
                haVar2.b = aVar;
                haVar2.c = i;
                haVar2.f2784a = ha.a.f2785a;
                haVar2.b();
                break;
            case AC_MRAID_DO_EXPAND:
                km.a(3, f2703a, "expanding ad");
                ha haVar3 = new ha();
                haVar3.b = aVar;
                haVar3.c = 0;
                haVar3.f2784a = ha.a.c;
                haVar3.b();
                break;
            case AC_MRAID_DO_COLLAPSE:
                km.a(3, f2703a, "closing ad");
                ha haVar4 = new ha();
                haVar4.b = aVar;
                haVar4.c = 0;
                haVar4.f2784a = ha.a.d;
                haVar4.b();
                break;
            default:
                km.a(5, f2703a, "Unknown action:" + aVar.f2410a + ",triggered by:" + bcVar);
                break;
        }
        String str4 = aVar.c.b.get("requiresCallComplete");
        if (TextUtils.isEmpty(str4) || !str4.equals("true")) {
            return;
        }
        km.a(3, f2703a, "Fire call complete");
        ha haVar5 = new ha();
        haVar5.b = aVar;
        haVar5.f2784a = ha.a.e;
        haVar5.b();
    }

    private void a(a aVar) {
        String a2 = aVar.a("url");
        if (!TextUtils.isEmpty(a2)) {
            long currentTimeMillis = 60000 + System.currentTimeMillis();
            String a3 = aVar.a("expirationTimeEpochSeconds");
            if (!TextUtils.isEmpty(a3)) {
                try {
                    currentTimeMillis = 1000 * Long.parseLong(a3);
                } catch (Exception e) {
                    km.a(6, f2703a, "caught Exception with expirationTime parameter in onSendUrlAsync:" + a3);
                }
            }
            int i = 2;
            String a4 = aVar.a("maxRetries");
            if (!TextUtils.isEmpty(a4)) {
                try {
                    i = Integer.parseInt(a4);
                } catch (Exception e2) {
                    km.a(6, f2703a, "caught Exception with maxRetries parameter in onSendUrlAsync:2");
                }
            }
            r rVar = aVar.c.d;
            bc bcVar = aVar.c.f2471a;
            Map<String, String> map = aVar.c.b;
            if (bcVar.equals(bc.EV_VIDEO_START) || bcVar.equals(bc.EV_VIDEO_VIEWED) || bcVar.equals(bc.EV_VIDEO_VIEWED_3P) || bcVar.equals(bc.EV_VIDEO_FIRST_QUARTILE) || bcVar.equals(bc.EV_VIDEO_MIDPOINT) || bcVar.equals(bc.EV_VIDEO_THIRD_QUARTILE) || bcVar.equals(bc.EV_VIDEO_COMPLETED) || bcVar.equals(bc.EV_CALL_CLICK_BEACON)) {
                if (map != null) {
                    int length = fl.f2680a.length;
                    int i2 = 0;
                    while (i2 < length) {
                        String replace = map.containsKey(fl.f2680a[i2]) ? a2.replace(fl.b[i2], map.get(fl.f2680a[i2])) : a2;
                        i2++;
                        a2 = replace;
                    }
                    Log.e(f2703a, "sendUrlAsync: New Url: " + a2 + " adObj: " + rVar);
                }
                km.a(5, f2703a, "BeaconTest: event name: " + aVar.c.f2471a.ag + " beacon Url: " + a2 + " adObj: " + rVar);
                Log.e(f2703a, "BeaconTest: event name: " + aVar.c.f2471a.ag + " beacon Url: " + a2 + " adObj: " + rVar);
            }
            String str = a2;
            if (!(rVar instanceof t)) {
                i.a().f.b((dp) new Cdo(aVar.c.f2471a.ag, aVar.c.e.d().f, this.b.a(aVar, str), currentTimeMillis, i));
                return;
            }
            HashMap<String, Object> hashMap = rVar.l().b.j;
            if (hashMap != null) {
                hashMap.put(mj.b.URL.e, str);
                if (aVar.c.f2471a.equals(bc.EV_NATIVE_IMPRESSION)) {
                    hashMap.put(mj.b.BEACON_ERROR_CODE.e, Integer.valueOf(mh.o));
                } else if (aVar.c.f2471a.equals(bc.EV_VIDEO_START) || aVar.c.f2471a.equals(bc.EV_VIDEO_FIRST_QUARTILE) || aVar.c.f2471a.equals(bc.EV_VIDEO_MIDPOINT) || aVar.c.f2471a.equals(bc.EV_VIDEO_THIRD_QUARTILE) || aVar.c.f2471a.equals(bc.EV_VIDEO_COMPLETED)) {
                    hashMap.put(mj.b.BEACON_ERROR_CODE.e, Integer.valueOf(mh.p));
                } else if (aVar.c.f2471a.equals(bc.EV_CALL_CLICK_BEACON)) {
                    hashMap.put(mj.b.BEACON_ERROR_CODE.e, Integer.valueOf(mh.q));
                }
            }
            i.a().f.b((dp) new Cdo(aVar.c.f2471a.ag, aVar.c.e.d().f, this.b.a(aVar, str), currentTimeMillis, i, hashMap));
        }
    }

    private static void b(a aVar) {
        String a2 = aVar.a("idHash");
        if (!TextUtils.isEmpty(a2)) {
            for (bf bfVar : i.a().h.a(a2)) {
                bfVar.i++;
                bfVar.j = System.currentTimeMillis();
                km.a(4, f2703a, "updateViewCount:capType=" + bfVar.f2477a + ",id=" + bfVar.b + ",capRemaining=" + bfVar.f + ",totalCap=" + bfVar.g + ",views=" + bfVar.i);
                if (bfVar.i >= bfVar.f) {
                    String str = aVar.c.a().b;
                    if (bfVar.i > bfVar.f) {
                        km.a(6, f2703a, "FlurryAdAction: !! rendering a capped object for id: " + bfVar.b + " for adspace: " + str);
                    } else {
                        km.a(4, f2703a, "FlurryAdAction: hit cap for id: " + bfVar.b + " for adspace: " + str);
                    }
                    be beVar = new be();
                    beVar.f2476a = bfVar;
                    beVar.b();
                }
            }
        }
    }

    private static boolean a(String str) {
        Intent launchIntentForPackage = jy.a().f2947a.getPackageManager().getLaunchIntentForPackage(str);
        return launchIntentForPackage != null && ly.a(launchIntentForPackage);
    }

    public final void a(final Context context, final String str, final boolean z, final r rVar, final boolean z2) {
        if (context == null) {
            km.a(5, f2703a, "Unable to launch url, null context");
        } else {
            jy.a().b(new ma() { // from class: com.flurry.sdk.g.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    if (!TextUtils.isEmpty(str)) {
                        String a2 = mc.a(str);
                        if (!TextUtils.isEmpty(a2)) {
                            boolean z3 = false;
                            if (mc.d(a2)) {
                                z3 = fo.a(context, a2);
                            }
                            if (!z3 && mc.f(a2)) {
                                z3 = fo.b(context, a2);
                            }
                            if (!z3 && mc.e(a2)) {
                                z3 = fo.c(context, a2);
                            }
                            if (z3 && z2) {
                                g.a(context, rVar);
                                return;
                            }
                            au l = rVar.l();
                            if (!z3 && l.b.g) {
                                g.b(rVar, a2, z2);
                                return;
                            } else if (!z3 && z) {
                                fo.a(context, rVar, a2, z2);
                                return;
                            } else {
                                fo.d(context, a2);
                                return;
                            }
                        }
                        return;
                    }
                    km.a(6, g.f2703a, "Failed to launch: " + str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(r rVar, String str, boolean z) {
        gx gxVar = new gx();
        gxVar.d = gx.a.f2760a;
        gxVar.f2759a = rVar;
        gxVar.b = str;
        gxVar.c = z;
        ki.a().a(gxVar);
    }

    private static void b(a aVar, int i) {
        bc bcVar;
        Context context = aVar.c.c;
        String a2 = aVar.a("idHash");
        if (TextUtils.isEmpty(a2)) {
            return;
        }
        bg bgVar = i.a().h;
        for (bf bfVar : bgVar.a(a2)) {
            bc bcVar2 = bc.EV_CAP_NOT_EXHAUSTED;
            if (bfVar != null && bg.a(bfVar.d)) {
                km.a(4, f2703a, "Discarding expired frequency cap info for id=" + a2);
                bgVar.a(bfVar.f2477a, a2);
                bfVar = null;
            }
            if (bfVar == null || bfVar.i < bfVar.f) {
                bcVar = bcVar2;
            } else {
                km.a(4, f2703a, "Frequency cap exhausted for id=" + a2);
                bcVar = bc.EV_CAP_EXHAUSTED;
            }
            f.a().a(bcVar.ag);
            ff.a(bcVar, Collections.emptyMap(), context, aVar.c.d, aVar.c.e, i + 1);
        }
    }

    static /* synthetic */ void a(Context context, r rVar) {
        au l = rVar.l();
        if (l.e()) {
            gx gxVar = new gx();
            ff.a(bc.INTERNAL_EV_APP_EXIT, Collections.emptyMap(), context, rVar, l, 0);
            gxVar.d = gx.a.b;
            ki.a().a(gxVar);
            return;
        }
        ff.a(bc.INTERNAL_EV_APP_EXIT, Collections.emptyMap(), context, rVar, l, 0);
    }
}
