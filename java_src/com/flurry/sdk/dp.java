package com.flurry.sdk;

import android.text.TextUtils;
import android.widget.Toast;
import com.flurry.sdk.Cdo;
import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
import com.flurry.sdk.mj;
import com.mdotm.android.constants.MdotMConstants;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2.dex */
public class dp extends kx<Cdo> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2545a = dp.class.getSimpleName();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.kx
    public final kf<List<Cdo>> a() {
        return new kf<>(jy.a().f2947a.getFileStreamPath(".yflurryreporter"), ".yflurryreporter", 3, new lj<List<Cdo>>() { // from class: com.flurry.sdk.dp.1
            @Override // com.flurry.sdk.lj
            public final lg<List<Cdo>> a(int i) {
                if (i == 3) {
                    return new lf(new Cdo.c());
                }
                if (i == 2) {
                    return new lf(new Cdo.b());
                }
                return new lf(new Cdo.a());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.kx
    public final void a(final Cdo cdo) {
        km.a(3, f2545a, "Sending next report for original url: " + cdo.q + " to current url:" + cdo.r);
        ks ksVar = new ks();
        ksVar.f = cdo.r;
        ksVar.w = 100000;
        ksVar.g = ku.a.kGet;
        ksVar.j = false;
        ksVar.f2978a = new ks.a<Void, Void>() { // from class: com.flurry.sdk.dp.2
            @Override // com.flurry.sdk.ks.a
            public final /* synthetic */ void a(final ks<Void, Void> ksVar2, Void r7) {
                km.a(3, dp.f2545a, "AsyncReportInfo request: HTTP status code is:" + ksVar2.p);
                int i = ksVar2.p;
                if (i >= 200 && i < 300) {
                    km.a(3, dp.f2545a, "Send report successful to url: " + ksVar2.f);
                    dp.this.c((dp) cdo);
                    if (km.c() <= 3 && km.d()) {
                        jy.a().a(new Runnable() { // from class: com.flurry.sdk.dp.2.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                Toast.makeText(jy.a().f2947a, "ADS AR HTTP Response Code: " + ksVar2.p + " for url: " + ksVar2.f, 1).show();
                            }
                        });
                    }
                    dp.a(cdo, i);
                } else if (i >= 300 && i < 400) {
                    String str = null;
                    List<String> a2 = ksVar2.a("Location");
                    if (a2 != null && a2.size() > 0) {
                        str = mc.b(a2.get(0), cdo.r);
                    }
                    if (!TextUtils.isEmpty(str)) {
                        km.a(3, dp.f2545a, "Send report redirecting to url: " + str);
                        cdo.r = str;
                        dp.this.a(cdo);
                        return;
                    }
                    km.a(3, dp.f2545a, "Send report successful to url: " + ksVar2.f);
                    dp.this.c((dp) cdo);
                    if (km.c() <= 3 && km.d()) {
                        jy.a().a(new Runnable() { // from class: com.flurry.sdk.dp.2.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                Toast.makeText(jy.a().f2947a, "ADS AR HTTP Response Code: " + ksVar2.p + " for url: " + ksVar2.f, 1).show();
                            }
                        });
                    }
                    dp.a(cdo, i);
                } else {
                    km.a(3, dp.f2545a, "Send report failed to url: " + ksVar2.f);
                    if (cdo.p == 0) {
                        dp.a(cdo, i);
                    }
                    if (mc.h(cdo.r)) {
                        dp.this.d(cdo);
                        return;
                    }
                    km.a(3, dp.f2545a, "Oops! url: " + ksVar2.f + " is invalid, aborting transmission");
                    dp.this.c((dp) cdo);
                }
            }
        };
        jw.a().a((Object) this, (dp) ksVar);
    }

    static /* synthetic */ void a(Cdo cdo, int i) {
        if (cdo == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("event", cdo.f2540a);
        hashMap.put("url", cdo.q);
        hashMap.put(MdotMConstants.RESPONSE, String.valueOf(i));
        i.a();
        i.a(cdo.b, bc.EV_SEND_URL_STATUS_RESULT, true, hashMap);
        if ((i >= 200 && i < 300) || cdo.c == null) {
            return;
        }
        ((Integer) cdo.c.get(mj.b.BEACON_ERROR_CODE.e)).intValue();
        mj mjVar = mh.b().f3060a;
    }
}
