package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import com.facebook.AccessToken;
import com.facebook.internal.NativeProtocol;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class df extends bu {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinAdImpl f1653a;
    private final AppLovinAdRewardListener b;
    private final Object c;
    private volatile boolean d;

    public df(AppLovinSdkImpl appLovinSdkImpl, AppLovinAd appLovinAd, AppLovinAdRewardListener appLovinAdRewardListener) {
        super("TaskValidateReward", appLovinSdkImpl);
        this.c = new Object();
        this.d = false;
        this.f1653a = (AppLovinAdImpl) appLovinAd;
        this.b = appLovinAdRewardListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (c()) {
            return;
        }
        String str = "network_timeout";
        if (i < 400 || i > 500) {
            this.b.validationRequestFailed(this.f1653a, i);
        } else {
            this.b.userRewardRejected(this.f1653a, new HashMap(0));
            str = "rejected";
        }
        bm.a().a(this.f1653a, str);
    }

    private void a(String str, Map map) {
        if (c()) {
            return;
        }
        bm a2 = bm.a();
        a2.a(this.f1653a, str);
        a2.a(this.f1653a, map);
        if (str.equals("accepted")) {
            this.b.userRewardVerified(this.f1653a, map);
        } else if (str.equals("quota_exceeded")) {
            this.b.userOverQuota(this.f1653a, map);
        } else if (str.equals("rejected")) {
            this.b.userRewardRejected(this.f1653a, map);
        } else {
            this.b.validationRequestFailed(this.f1653a, AppLovinErrorCodes.INCENTIVIZED_UNKNOWN_SERVER_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        String str;
        if (c()) {
            return;
        }
        try {
            JSONObject a2 = q.a(jSONObject);
            q.a(a2, this.f);
            Map a3 = ay.a((JSONObject) a2.get(NativeProtocol.WEB_DIALOG_PARAMS));
            try {
                str = a2.getString("result");
            } catch (Throwable th) {
                str = "network_timeout";
            }
            a(str, a3);
        } catch (JSONException e) {
            this.g.e(this.e, "Unable to parse API response", e);
        }
    }

    public void a(boolean z) {
        synchronized (this.c) {
            this.d = z;
        }
    }

    boolean c() {
        boolean z;
        synchronized (this.c) {
            z = this.d;
        }
        return z;
    }

    @Override // java.lang.Runnable
    public void run() {
        String b = aa.b();
        String clCode = this.f1653a.getClCode();
        HashMap hashMap = new HashMap(2);
        if (AppLovinSdkUtils.isValidString(clCode)) {
            hashMap.put("clcode", clCode);
        } else {
            hashMap.put("clcode", "NO_CLCODE");
        }
        if (b != null) {
            hashMap.put(AccessToken.USER_ID_KEY, b);
        }
        a("vr", new JSONObject(hashMap), new dg(this));
    }
}
