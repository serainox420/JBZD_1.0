package com.apprupt.sdk;

import com.amazon.device.ads.AdWebViewClient;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class CvUnderscore {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f1888a = new JSONObject();

    static CvUnderscore a() {
        return new CvUnderscore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CvUnderscore b() {
        return a().d();
    }

    private CvUnderscore() {
    }

    CvUnderscore c() {
        a("uid", CvAppInfo.a().m());
        return this;
    }

    CvUnderscore d() {
        c();
        CvAppInfo a2 = CvAppInfo.a();
        a("deviceInfo", a2.f());
        a("bundleId", a2.n());
        a("screen", a2.h());
        a("optOut", Boolean.valueOf(a2.u()));
        a(AdWebViewClient.GEO, CvGeoLocation.a());
        a("bssid", a2.k());
        a("locale", a2.t());
        a("language", a2.r());
        a(PubMaticConstants.COUNTRY_PARAM, a2.s());
        a("connectionType", a2.b().d());
        a("carrier", a2.c());
        a("volume", Integer.valueOf(a2.i()));
        a("storage", a2.g().f1969a);
        a("musicIsPlaying", Boolean.valueOf(a2.j()));
        a("accessories", a2.l());
        a2.b.a(this);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvUnderscore a(String str, Object obj) {
        try {
            this.f1888a.put(str, obj);
        } catch (JSONException e) {
            Logger.a().c(e, "Invalid value passed to JSON");
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvUnderscore a(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                a(next, jSONObject.get(next));
            } catch (JSONException e) {
                Logger.a().c(e, "Invalid JSON key", next);
            }
        }
        return this;
    }

    public String toString() {
        return CvCrypto.a(this.f1888a.toString().getBytes());
    }
}
