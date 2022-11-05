package com.facebook.ads.internal.util;

import com.loopme.debugging.Params;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private final String f2242a;
    private final String b;
    private final String c;
    private final List<String> d;
    private final String e;
    private final String f;

    private j(String str, String str2, String str3, List<String> list, String str4, String str5) {
        this.f2242a = str;
        this.b = str2;
        this.c = str3;
        this.d = list;
        this.e = str4;
        this.f = str5;
    }

    public static j a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString(Params.PACKAGE_ID);
        String optString2 = jSONObject.optString("appsite");
        String optString3 = jSONObject.optString("appsite_url");
        JSONArray optJSONArray = jSONObject.optJSONArray("key_hashes");
        ArrayList arrayList = new ArrayList();
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                arrayList.add(optJSONArray.optString(i));
            }
        }
        return new j(optString, optString2, optString3, arrayList, jSONObject.optString("market_uri"), jSONObject.optString("fallback_url"));
    }

    public String a() {
        return this.f2242a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }
}
