package com.facebook.ads.internal.server;

import android.text.TextUtils;
import com.facebook.ads.internal.server.d;
import com.facebook.share.internal.ShareConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static c f2207a = new c();

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            cVar = f2207a;
        }
        return cVar;
    }

    private e a(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject.getJSONArray("placements").getJSONObject(0);
        com.facebook.ads.internal.f.d dVar = new com.facebook.ads.internal.f.d(com.facebook.ads.internal.f.e.a(jSONObject2.getJSONObject("definition")), jSONObject2.optString("feature_config"));
        if (jSONObject2.has("ads")) {
            JSONArray jSONArray = jSONObject2.getJSONArray("ads");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                dVar.a(new com.facebook.ads.internal.f.a(jSONObject3.optString("adapter"), jSONObject3.optJSONObject("data"), jSONObject3.optJSONArray("trackers")));
            }
        }
        return new e(dVar);
    }

    private f b(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONArray("placements").getJSONObject(0);
            return new f(jSONObject.optString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, ""), jSONObject.optInt("code", 0), new com.facebook.ads.internal.f.d(com.facebook.ads.internal.f.e.a(jSONObject2.getJSONObject("definition")), jSONObject2.optString("feature_config")));
        } catch (JSONException e) {
            return c(jSONObject);
        }
    }

    private f c(JSONObject jSONObject) {
        return new f(jSONObject.optString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, ""), jSONObject.optInt("code", 0), null);
    }

    public d a(String str) {
        if (!TextUtils.isEmpty(str)) {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("type");
            char c = 65535;
            switch (optString.hashCode()) {
                case 96432:
                    if (optString.equals("ads")) {
                        c = 0;
                        break;
                    }
                    break;
                case 96784904:
                    if (optString.equals("error")) {
                        c = 1;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    return a(jSONObject);
                case 1:
                    return b(jSONObject);
                default:
                    JSONObject optJSONObject = jSONObject.optJSONObject("error");
                    if (optJSONObject != null) {
                        return c(optJSONObject);
                    }
                    break;
            }
        }
        return new d(d.a.UNKNOWN, null);
    }
}
