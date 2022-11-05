package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinSdkUtils;
import com.facebook.AccessToken;
import com.facebook.internal.NativeProtocol;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
class da extends bu {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinAdImpl f1649a;

    public da(AppLovinSdkImpl appLovinSdkImpl, AppLovinAd appLovinAd) {
        super("TaskReportReward", appLovinSdkImpl);
        this.f1649a = (AppLovinAdImpl) appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        String b = aa.b();
        String clCode = this.f1649a.getClCode();
        HashMap hashMap = new HashMap(2);
        if (AppLovinSdkUtils.isValidString(clCode)) {
            hashMap.put("clcode", clCode);
        } else {
            hashMap.put("clcode", "NO_CLCODE");
        }
        if (b != null) {
            hashMap.put(AccessToken.USER_ID_KEY, b);
        }
        bm a2 = bm.a();
        String b2 = a2.b(this.f1649a);
        if (b2 == null) {
            this.g.d("TaskReportReward", "No reward result was found for ad: " + this.f1649a);
            return;
        }
        hashMap.put("result", b2);
        Map a3 = a2.a(this.f1649a);
        if (a3 != null) {
            hashMap.put(NativeProtocol.WEB_DIALOG_PARAMS, a3);
        }
        a("cr", new JSONObject(hashMap), new db(this));
    }
}
