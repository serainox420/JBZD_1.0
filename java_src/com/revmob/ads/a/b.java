package com.revmob.ads.a;

import com.facebook.share.internal.ShareConstants;
import com.pubmatic.sdk.banner.mraid.Consts;
import com.revmob.RevMobAdsListener;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class b extends com.revmob.client.f {

    /* renamed from: a  reason: collision with root package name */
    protected RevMobAdsListener f4741a;
    protected a b;

    public b(a aVar, RevMobAdsListener revMobAdsListener) {
        this.b = aVar;
        this.f4741a = revMobAdsListener;
    }

    public static int a(JSONObject jSONObject, String str) {
        if (jSONObject.has(str)) {
            return jSONObject.getInt(str);
        }
        return 0;
    }

    public static String a(JSONArray jSONArray) {
        return a(jSONArray, "clicks");
    }

    public static String a(JSONArray jSONArray, String str) {
        for (int i = 0; i < jSONArray.length(); i++) {
            if (jSONArray.getJSONObject(i).getString("rel").equals(str)) {
                return jSONArray.getJSONObject(i).getString(ShareConstants.WEB_DIALOG_PARAM_HREF);
            }
        }
        return null;
    }

    public static String a(JSONArray jSONArray, String str, String str2) {
        for (int i = 0; i < jSONArray.length(); i++) {
            if (jSONArray.getJSONObject(i).getString("rel").equals(str)) {
                return jSONArray.getJSONObject(i).getString(str2);
            }
        }
        return null;
    }

    public static String a(JSONObject jSONObject, String str, String str2) {
        try {
            return jSONObject.getString(str);
        } catch (JSONException e) {
            return str2;
        }
    }

    public static String a(JSONObject jSONObject, String str, String str2, String str3) {
        try {
            return jSONObject.getJSONObject(str).getString(str2);
        } catch (JSONException e) {
            return str3;
        }
    }

    public static void a(JSONArray jSONArray, String str, ArrayList arrayList) {
        for (int i = 0; i < jSONArray.length(); i++) {
            if (jSONArray.getJSONObject(i).getString("rel").equals(str)) {
                arrayList.add(jSONArray.getJSONObject(i).getString(ShareConstants.WEB_DIALOG_PARAM_HREF));
            }
        }
    }

    public static void a(JSONArray jSONArray, ArrayList arrayList) {
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
    }

    public static boolean a(JSONObject jSONObject) {
        return Boolean.parseBoolean(a(jSONObject, "follow_redirect", "true"));
    }

    public static double b(JSONObject jSONObject, String str) {
        if (jSONObject.has(str)) {
            return jSONObject.getDouble(str);
        }
        return 0.0d;
    }

    public static int b(JSONArray jSONArray, String str, String str2) {
        for (int i = 0; i < jSONArray.length(); i++) {
            if (jSONArray.getJSONObject(i).getString("rel").equals(str)) {
                return jSONArray.getJSONObject(i).getInt(str2);
            }
        }
        return 999;
    }

    public static String b(JSONArray jSONArray) {
        return a(jSONArray, "impressions");
    }

    public static String b(JSONObject jSONObject) {
        return a(jSONObject, "app_or_site", "app");
    }

    public static String c(JSONArray jSONArray) {
        return a(jSONArray, "adReceived");
    }

    public static boolean c(JSONObject jSONObject) {
        return Boolean.parseBoolean(a(jSONObject, "open_inside", Consts.False));
    }

    @Override // com.revmob.client.f
    public void a(String str) {
    }

    @Override // com.revmob.client.f
    public final void b(String str) {
        if (this.f4741a != null) {
            this.f4741a.onRevMobAdNotReceived("Ad not received: " + str);
        }
    }
}
