package com.applovin.impl.sdk;

import android.graphics.Point;
import com.applovin.adview.AppLovinInterstitialActivity;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.facebook.appevents.AppEventsConstants;
import com.loopme.common.StaticParams;
import com.loopme.debugging.Params;
import com.mopub.common.AdType;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cn extends bw implements dh {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinAdSize f1636a;
    private final AppLovinAdType b;
    private final AppLovinAdLoadListener c;
    private boolean d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cn(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, AppLovinAdLoadListener appLovinAdLoadListener, AppLovinSdkImpl appLovinSdkImpl) {
        super("FetchNextAd", appLovinSdkImpl);
        this.d = false;
        this.f1636a = appLovinAdSize;
        this.b = appLovinAdType;
        this.c = appLovinAdLoadListener;
    }

    private List a(List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((u) it.next()).c);
        }
        return arrayList;
    }

    private void a(cc ccVar) {
        if (System.currentTimeMillis() - ccVar.b("ad_session_start") > ((Integer) this.f.a(bx.r)).intValue() * 60000) {
            ccVar.b("ad_session_start", System.currentTimeMillis());
            ccVar.c("ad_imp_session");
        }
    }

    private void a(StringBuffer stringBuffer) {
        if (((Boolean) this.f.a(bx.aS)).booleanValue()) {
            try {
                stringBuffer.append("&vx=").append(h());
            } catch (Exception e) {
                this.g.e(this.e, "Unable to populate vx field", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        this.g.e(this.e, "Unable to fetch " + this.f1636a + " ad: server returned " + i);
        try {
            a(i);
        } catch (Throwable th) {
            this.g.userError(this.e, "Unable process a failure to recieve an ad", th);
        }
        q.b(i, this.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(JSONObject jSONObject) {
        q.a(jSONObject, this.f);
        this.f.a().a(a(jSONObject), cs.MAIN);
    }

    private void d(Map map) {
        map.put("api_did", this.f.a(bx.c));
        map.put("sdk_key", this.f.getSdkKey());
        map.put(Params.SDK_VERSION, AppLovinSdk.VERSION);
        map.put("app_version", this.f.getDataCollector().b().b);
        if (!AppLovinSdk.CIS_BUILD_TAG.equals(AppLovinSdk.CIS_BUILD_TAG)) {
            map.put("build_tag", AppLovinSdk.CIS_BUILD_TAG);
        }
        String str = (String) this.f.a(bx.z);
        if (str != null && str.length() > 0) {
            map.put("plugin_version", str);
        }
        map.put("accept", g());
        map.put("v1", Boolean.toString(n.a("android.permission.WRITE_EXTERNAL_STORAGE", this.h)));
        map.put("v2", Boolean.toString(n.a(AppLovinInterstitialActivity.class, this.h)));
        map.put("preloading", String.valueOf(this.d));
        map.put("size", this.f1636a.getLabel());
        map.put(StaticParams.FORMAT_TAG, AdType.STATIC_NATIVE);
        map.put("ia", Long.toString(this.f.getDataCollector().b().d));
    }

    private void e(Map map) {
        if (((Boolean) this.f.a(bx.F)).booleanValue()) {
            cc b = this.f.b();
            map.put("li", String.valueOf(b.b("ad_imp")));
            map.put("si", String.valueOf(b.b("ad_imp_session")));
        }
    }

    private void f(Map map) {
        Map a2;
        if (!((Boolean) this.f.a(bx.F)).booleanValue() || (a2 = ((m) this.f.getTargetingData()).a()) == null || a2.isEmpty()) {
            return;
        }
        map.putAll(a2);
    }

    private String g() {
        return (!n.b() || !n.a(AppLovinInterstitialActivity.class, this.h)) ? "custom_size,launch_app" : "custom_size,launch_app,video";
    }

    private void g(Map map) {
        Map a2 = a.a(this.f);
        if (a2.isEmpty()) {
            try {
                h(a2);
                a.a(a2, this.f);
            } catch (Exception e) {
                this.g.e(this.e, "Unable to populate device information", e);
            }
        }
        map.putAll(a2);
        map.put("network", q.a(this.f));
        j(map);
        map.put("vz", di.a(this.f.getApplicationContext().getPackageName(), this.f));
    }

    private String h() {
        return di.a(a(this.f.getDataCollector().d()), ",", ((Integer) this.f.a(bx.aR)).intValue());
    }

    private void h(Map map) {
        v a2 = this.f.getDataCollector().a();
        map.put("brand", di.c(a2.c));
        map.put("carrier", di.c(a2.g));
        map.put("locale", a2.h.toString());
        map.put(PubMaticConstants.MODEL_PARAM, di.c(a2.f1670a));
        map.put(PubMaticConstants.OS_PARAM, di.c(a2.b));
        map.put("platform", io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE);
        map.put("revision", di.c(a2.d));
        map.put("wvvc", String.valueOf(a2.i));
        i(map);
    }

    private void i(Map map) {
        Point a2 = n.a(this.f.getApplicationContext());
        map.put("dx", Integer.toString(a2.x));
        map.put("dy", Integer.toString(a2.y));
    }

    private void j(Map map) {
        t c = this.f.getDataCollector().c();
        String str = c.b;
        boolean z = c.f1668a;
        if ((!z || ((Boolean) this.f.getSettingsManager().a(bx.aT)).booleanValue()) && AppLovinSdkUtils.isValidString(str)) {
            map.put("idfa", str);
        }
        map.put("dnt", Boolean.toString(z));
    }

    protected bw a(JSONObject jSONObject) {
        return new cw(jSONObject, this.c, this.f);
    }

    protected void a(int i) {
        if (this.c != null) {
            if (this.c instanceof x) {
                ((x) this.c).a(new c(this.f1636a, this.b), i);
            } else {
                this.c.failedToReceiveAd(i);
            }
        }
    }

    protected void a(Map map) {
        f(map);
        g(map);
        e(map);
        d(map);
        b(map);
        c(map);
    }

    public void a(boolean z) {
        this.d = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.impl.sdk.bw
    public void b() {
        super.b();
        b(-410);
    }

    protected void b(Map map) {
        if (this.b != null) {
            map.put("require", this.b.getLabel());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        HashMap hashMap = new HashMap();
        a(hashMap);
        String d = d();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(d);
        stringBuffer.append("?");
        stringBuffer.append(di.a(hashMap));
        a(stringBuffer);
        return stringBuffer.toString();
    }

    protected void c(Map map) {
        de a2 = dc.a().a("tFNA");
        if (a2 != null) {
            map.put("etf", Long.toString(a2.b()));
            map.put("ntf", a2.a());
        }
        de a3 = dc.a().a("tRA");
        if (a3 != null) {
            map.put("etr", Long.toString(a3.b()));
            map.put("ntr", a3.a());
            map.put("fvr", a3.c() ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
    }

    protected String d() {
        return q.b("2.0/ad", this.f);
    }

    @Override // com.applovin.impl.sdk.dh
    public String e() {
        return "tFNA";
    }

    @Override // com.applovin.impl.sdk.dh
    public boolean f() {
        return false;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.d) {
            this.g.d(this.e, "Preloading next ad...");
        } else {
            this.g.d(this.e, "Fetching next ad...");
        }
        cc b = this.f.b();
        b.a("ad_req");
        a(b);
        try {
            co coVar = new co(this, "RepeatFetchNextAd", bx.h, this.f);
            coVar.a(bx.k);
            coVar.run();
        } catch (Throwable th) {
            this.g.e(this.e, "Unable to fetch " + this.f1636a + " ad", th);
            b(0);
        }
    }
}
