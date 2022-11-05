package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
class cp extends cn {

    /* renamed from: a  reason: collision with root package name */
    private int f1638a;
    private final AppLovinNativeAdLoadListener b;

    public cp(AppLovinSdkImpl appLovinSdkImpl, int i, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        super(NativeAdImpl.SIZE_NATIVE, NativeAdImpl.TYPE_NATIVE, null, appLovinSdkImpl);
        this.b = appLovinNativeAdLoadListener;
        this.f1638a = i;
    }

    @Override // com.applovin.impl.sdk.cn
    protected bw a(JSONObject jSONObject) {
        return new cx(jSONObject, this.f, this.b);
    }

    @Override // com.applovin.impl.sdk.cn
    protected void a(int i) {
        if (this.b != null) {
            this.b.onNativeAdsFailedToLoad(i);
        }
    }

    @Override // com.applovin.impl.sdk.cn
    protected void b(Map map) {
        map.put("slot_count", Integer.toString(this.f1638a));
    }

    @Override // com.applovin.impl.sdk.cn
    protected void c(Map map) {
        de a2 = dc.a().a("tFNW");
        if (a2 != null) {
            map.put("etfw", Long.toString(a2.b()));
            map.put("ntfw", a2.a());
        }
    }

    @Override // com.applovin.impl.sdk.cn
    protected String d() {
        return q.b("nad", this.f);
    }

    @Override // com.applovin.impl.sdk.cn, com.applovin.impl.sdk.dh
    public String e() {
        return "tFNW";
    }
}
