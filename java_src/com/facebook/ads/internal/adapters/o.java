package com.facebook.ads.internal.adapters;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.util.g;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class o implements g.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f2106a;
    private final String b;
    private final String c;
    private final com.facebook.ads.internal.util.f d;
    private final String e;
    private final Collection<String> f;
    private final Map<String, String> g;
    private final String h;
    private final int i;
    private final int j;
    private final int k;
    private final String l;

    private o(String str, String str2, String str3, com.facebook.ads.internal.util.f fVar, String str4, Collection<String> collection, Map<String, String> map, String str5, int i, int i2, int i3, String str6) {
        this.f2106a = str;
        this.b = str2;
        this.c = str3;
        this.d = fVar;
        this.e = str4;
        this.f = collection;
        this.g = map;
        this.h = str5;
        this.i = i;
        this.j = i2;
        this.k = i3;
        this.l = str6;
    }

    public static o a(Bundle bundle) {
        return new o(com.facebook.ads.internal.util.h.a(bundle.getByteArray("markup")), null, bundle.getString("native_impression_report_url"), com.facebook.ads.internal.util.f.NONE, "", null, null, bundle.getString("request_id"), bundle.getInt("viewability_check_initial_delay"), bundle.getInt("viewability_check_interval"), bundle.getInt("skip_after_seconds", 0), bundle.getString("ct"));
    }

    public static o a(JSONObject jSONObject) {
        JSONArray jSONArray;
        int i = 0;
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("markup");
        String optString2 = jSONObject.optString("activation_command");
        String optString3 = jSONObject.optString("native_impression_report_url");
        String optString4 = jSONObject.optString("request_id");
        String a2 = com.facebook.ads.internal.util.h.a(jSONObject, "ct");
        com.facebook.ads.internal.util.f a3 = com.facebook.ads.internal.util.f.a(jSONObject.optString("invalidation_behavior"));
        String optString5 = jSONObject.optString("invalidation_report_url");
        try {
            jSONArray = new JSONArray(jSONObject.optString("detection_strings"));
        } catch (JSONException e) {
            e.printStackTrace();
            jSONArray = null;
        }
        Collection<String> a4 = com.facebook.ads.internal.util.g.a(jSONArray);
        JSONObject optJSONObject = jSONObject.optJSONObject("metadata");
        HashMap hashMap = new HashMap();
        if (optJSONObject != null) {
            Iterator<String> keys = optJSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, optJSONObject.optString(next));
            }
        }
        int i2 = 1000;
        int parseInt = hashMap.containsKey("viewability_check_initial_delay") ? Integer.parseInt((String) hashMap.get("viewability_check_initial_delay")) : 0;
        if (hashMap.containsKey("viewability_check_interval")) {
            i2 = Integer.parseInt((String) hashMap.get("viewability_check_interval"));
        }
        if (hashMap.containsKey("skip_after_seconds")) {
            i = Integer.parseInt((String) hashMap.get("skip_after_seconds"));
        }
        return new o(optString, optString2, optString3, a3, optString5, a4, hashMap, optString4, parseInt, i2, i, a2);
    }

    public static o b(Intent intent) {
        return new o(com.facebook.ads.internal.util.h.a(intent.getByteArrayExtra("markup")), intent.getStringExtra("activation_command"), intent.getStringExtra("native_impression_report_url"), com.facebook.ads.internal.util.f.NONE, "", null, null, intent.getStringExtra("request_id"), intent.getIntExtra("viewability_check_initial_delay", 0), intent.getIntExtra("viewability_check_interval", 1000), intent.getIntExtra(AudienceNetworkActivity.SKIP_DELAY_SECONDS_KEY, 0), intent.getStringExtra("ct"));
    }

    @Override // com.facebook.ads.internal.util.g.a
    public String B() {
        return this.l;
    }

    @Override // com.facebook.ads.internal.util.g.a
    public com.facebook.ads.internal.util.f D() {
        return this.d;
    }

    @Override // com.facebook.ads.internal.util.g.a
    public String E() {
        return this.e;
    }

    @Override // com.facebook.ads.internal.util.g.a
    public Collection<String> F() {
        return this.f;
    }

    public String a() {
        return this.f2106a;
    }

    public void a(Intent intent) {
        intent.putExtra("markup", com.facebook.ads.internal.util.h.a(this.f2106a));
        intent.putExtra("activation_command", this.b);
        intent.putExtra("native_impression_report_url", this.c);
        intent.putExtra("request_id", this.h);
        intent.putExtra("viewability_check_initial_delay", this.i);
        intent.putExtra("viewability_check_interval", this.j);
        intent.putExtra(AudienceNetworkActivity.SKIP_DELAY_SECONDS_KEY, this.k);
        intent.putExtra("ct", this.l);
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return "facebookAd.sendImpression();";
    }

    public Map<String, String> e() {
        return this.g;
    }

    public String f() {
        return this.h;
    }

    public int g() {
        return this.i;
    }

    public int h() {
        return this.j;
    }

    public Bundle i() {
        Bundle bundle = new Bundle();
        bundle.putByteArray("markup", com.facebook.ads.internal.util.h.a(this.f2106a));
        bundle.putString("native_impression_report_url", this.c);
        bundle.putString("request_id", this.h);
        bundle.putInt("viewability_check_initial_delay", this.i);
        bundle.putInt("viewability_check_interval", this.j);
        bundle.putInt("skip_after_seconds", this.k);
        bundle.putString("ct", this.l);
        return bundle;
    }
}
