package com.flurry.sdk;

import android.text.TextUtils;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.google.firebase.a.a;
import com.loopme.common.StaticParams;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class ea {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<cs> a(JSONObject jSONObject) throws JSONException {
        List<JSONObject> a2 = lz.a(jSONObject.getJSONArray("adUnits"));
        ArrayList arrayList = new ArrayList();
        for (JSONObject jSONObject2 : a2) {
            cs csVar = new cs();
            csVar.f2516a = a(jSONObject2.getString("adViewType"));
            csVar.b = jSONObject2.optString("adSpace", "");
            csVar.c = jSONObject2.optString("adUnitSection", "");
            csVar.d = jSONObject2.getLong("expiration");
            csVar.e = jSONObject2.optString("interactionType", "cpc");
            csVar.i = jSONObject2.getString("groupId");
            csVar.f = a(jSONObject2, csVar.c);
            csVar.g = d(jSONObject2);
            csVar.h = jSONObject2.getInt("combinable");
            csVar.j = jSONObject2.getLong(a.b.PRICE);
            csVar.k = jSONObject2.getString("adomain");
            csVar.l = jSONObject2.getLong("closableTimeMillis15SecOrLess");
            csVar.m = jSONObject2.getLong("closableTimeMillisLongerThan15Sec");
            csVar.n = jSONObject2.getLong("viewabilityDurationMillis");
            csVar.o = jSONObject2.getInt("viewabilityPercentVisible");
            csVar.p = f(jSONObject2);
            csVar.q = jSONObject2.getBoolean("rewardable");
            csVar.r = jSONObject2.getLong("preRenderTimeoutMillis");
            csVar.s = jSONObject2.getInt("preCacheAdSkippableTimeLimitMillis");
            csVar.t = jSONObject2.getBoolean("videoAutoPlay");
            csVar.u = jSONObject2.getBoolean("supportMRAID");
            csVar.v = jSONObject2.getBoolean("preRender");
            csVar.w = jSONObject2.getBoolean("renderTime");
            csVar.x = lz.a(jSONObject2.getJSONObject("clientSideRtbPayload"));
            csVar.y = c(jSONObject2.getString("screenOrientation"));
            csVar.z = c(jSONObject2);
            csVar.A = jSONObject2.getInt("videoPctCompletionForMoreInfo");
            csVar.B = jSONObject2.getInt("videoPctCompletionForReward");
            csVar.C = jSONObject2.getInt("videoTimeMillisForViewBeacon");
            arrayList.add(csVar);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<cz> b(JSONObject jSONObject) throws JSONException {
        List<JSONObject> a2 = lz.a(jSONObject.getJSONArray("frequencyCapResponseInfoList"));
        ArrayList arrayList = new ArrayList();
        for (JSONObject jSONObject2 : a2) {
            cz czVar = new cz();
            czVar.f2523a = b(jSONObject2.getString("capType"));
            czVar.b = jSONObject2.getString("id");
            czVar.c = jSONObject2.getLong("serveTime");
            czVar.d = jSONObject2.getLong("expirationTime");
            czVar.e = jSONObject2.getLong("streamCapDurationMillis");
            czVar.f = jSONObject2.getInt("capRemaining");
            czVar.g = jSONObject2.getInt("totalCap");
            czVar.h = jSONObject2.getInt("capDurationType");
            arrayList.add(czVar);
        }
        return arrayList;
    }

    private static List<cn> a(JSONObject jSONObject, String str) throws JSONException {
        cr crVar;
        int i;
        List<JSONObject> a2 = lz.a(jSONObject.getJSONArray("adFrames"));
        ArrayList arrayList = new ArrayList();
        for (JSONObject jSONObject2 : a2) {
            cn cnVar = new cn();
            cnVar.f2511a = jSONObject2.getInt("binding");
            cnVar.b = jSONObject2.getString(ServerProtocol.DIALOG_PARAM_DISPLAY);
            cnVar.c = jSONObject2.getString("content");
            JSONObject jSONObject3 = jSONObject2.getJSONObject("adSpaceLayout");
            if (jSONObject3 != null) {
                crVar = new cr();
                crVar.f2515a = jSONObject3.getInt("adWidth");
                crVar.b = jSONObject3.getInt("adHeight");
                crVar.c = jSONObject3.getString("fix");
                crVar.d = jSONObject3.getString(StaticParams.FORMAT_TAG);
                crVar.e = jSONObject3.getString("alignment");
            } else {
                crVar = null;
            }
            cnVar.d = crVar;
            cnVar.e = e(jSONObject2);
            cnVar.f = jSONObject2.getString("adGuid");
            if (TextUtils.isEmpty(str)) {
                i = jSONObject2.getInt("cachingEnum");
            } else {
                i = ah.STREAM_ONLY.d;
            }
            cnVar.g = i;
            cnVar.h = jSONObject2.getLong("assetExpirationTimestampUTCMillis");
            cnVar.i = lz.b(jSONObject2.getJSONArray("cacheWhitelistedAssets"));
            cnVar.j = lz.b(jSONObject2.getJSONArray("cacheBlacklistedAssets"));
            arrayList.add(cnVar);
        }
        return arrayList;
    }

    private static dd c(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject("nativeAdInfo");
        dd ddVar = new dd();
        if (jSONObject2 != null) {
            ddVar.f2529a = jSONObject2.getInt("style");
            ddVar.b = jSONObject2.optString("feedbackDomain");
            ddVar.c = jSONObject2.optString("carasoulgroup");
            ddVar.d = jSONObject2.optString("appInfo");
            ddVar.e = jSONObject2.optString("uiParams");
            ddVar.g = jSONObject2.getString("template");
            List<JSONObject> a2 = lz.a(jSONObject2.getJSONArray("assets"));
            ArrayList arrayList = new ArrayList();
            for (JSONObject jSONObject3 : a2) {
                de deVar = new de();
                deVar.f2530a = jSONObject3.getString("name");
                deVar.c = jSONObject3.getString("value");
                deVar.d = jSONObject3.getInt("width");
                deVar.e = jSONObject3.getInt("height");
                deVar.b = d(jSONObject3.getString("type"));
                deVar.f = lz.a(jSONObject3.getJSONObject(NativeProtocol.WEB_DIALOG_PARAMS));
                arrayList.add(deVar);
            }
            ddVar.f = arrayList;
        }
        return ddVar;
    }

    private static List<cz> d(JSONObject jSONObject) throws JSONException {
        List<JSONObject> a2 = lz.a(jSONObject.getJSONArray("frequencyCapResponseInfoList"));
        ArrayList arrayList = new ArrayList();
        for (JSONObject jSONObject2 : a2) {
            if (jSONObject2 != null) {
                cz czVar = new cz();
                czVar.f2523a = b(jSONObject2.getString("capType"));
                czVar.b = jSONObject2.getString("id");
                czVar.c = jSONObject2.getLong("serveTime");
                czVar.d = jSONObject2.getLong("expirationTime");
                czVar.e = jSONObject2.getLong("streamCapDurationMillis");
                czVar.f = jSONObject2.getInt("capRemaining");
                czVar.g = jSONObject2.getInt("totalCap");
                czVar.h = jSONObject2.getInt("capDurationType");
                arrayList.add(czVar);
            }
        }
        return arrayList;
    }

    private static List<cv> e(JSONObject jSONObject) throws JSONException {
        List<JSONObject> a2 = lz.a(jSONObject.getJSONArray("callbacks"));
        ArrayList arrayList = new ArrayList();
        for (JSONObject jSONObject2 : a2) {
            cv cvVar = new cv();
            cvVar.f2519a = jSONObject2.getString("event");
            cvVar.b = lz.b(jSONObject2.getJSONArray("actions"));
            arrayList.add(cvVar);
        }
        return arrayList;
    }

    private static List<dn> f(JSONObject jSONObject) throws JSONException {
        long j = 0;
        ArrayList arrayList = new ArrayList();
        if (jSONObject.has("viewabilityDurationMillis") || jSONObject.has("videoTimeMillisForViewBeacon") || jSONObject.has("viewabilityPercentVisible")) {
            long j2 = jSONObject.has("viewabilityDurationMillis") ? jSONObject.getLong("viewabilityDurationMillis") : 0L;
            if (jSONObject.has("videoTimeMillisForViewBeacon")) {
                j = jSONObject.getLong("videoTimeMillisForViewBeacon");
            }
            int i = jSONObject.has("viewabilityPercentVisible") ? jSONObject.getInt("viewabilityPercentVisible") : 0;
            if (j2 <= j) {
                j2 = j;
            }
            arrayList.add(new dn(j2, i));
        }
        if (jSONObject.has("viewabilityDefinitions")) {
            for (JSONObject jSONObject2 : lz.a(jSONObject.getJSONArray("viewabilityDefinitions"))) {
                arrayList.add(new dn(jSONObject2.getInt(AudienceNetworkActivity.VIEW_TYPE), 1000 * jSONObject2.getInt(VastIconXmlManager.DURATION), jSONObject2.getInt("viewPercentage"), jSONObject2.getInt("consecutiveFlag") != 0, jSONObject2.getInt("audioFlag") != 0));
            }
        }
        return arrayList;
    }

    private static cu a(String str) {
        cu cuVar = cu.BANNER;
        try {
            if (!TextUtils.isEmpty(str)) {
                return (cu) Enum.valueOf(cu.class, str);
            }
        } catch (Exception e) {
        }
        return cuVar;
    }

    private static da b(String str) {
        da daVar = da.ADSPACE;
        try {
            if (!TextUtils.isEmpty(str)) {
                return (da) Enum.valueOf(da.class, str);
            }
        } catch (Exception e) {
        }
        return daVar;
    }

    private static dg c(String str) {
        dg dgVar = dg.PORTRAIT;
        try {
            if (!TextUtils.isEmpty(str)) {
                return (dg) Enum.valueOf(dg.class, str);
            }
        } catch (Exception e) {
        }
        return dgVar;
    }

    private static df d(String str) {
        df dfVar = df.IMAGE;
        try {
            if (!TextUtils.isEmpty(str)) {
                return (df) Enum.valueOf(df.class, str);
            }
        } catch (Exception e) {
        }
        return dfVar;
    }
}
