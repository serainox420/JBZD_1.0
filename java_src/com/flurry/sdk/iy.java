package com.flurry.sdk;

import com.amazon.device.ads.AdWebViewClient;
import com.applovin.sdk.AppLovinEventTypes;
import com.loopme.debugging.Params;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class iy implements lg<hy> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2885a = iy.class.getSimpleName();

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ void a(OutputStream outputStream, hy hyVar) throws IOException {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        hy hyVar2 = hyVar;
        if (outputStream != null && hyVar2 != null) {
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.iy.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            JSONObject jSONObject3 = new JSONObject();
            try {
                try {
                    a(jSONObject3, "project_key", hyVar2.f2819a);
                    a(jSONObject3, "bundle_id", hyVar2.b);
                    a(jSONObject3, "app_version", hyVar2.c);
                    jSONObject3.put(Params.SDK_VERSION, hyVar2.d);
                    jSONObject3.put("platform", hyVar2.e);
                    a(jSONObject3, "platform_version", hyVar2.f);
                    jSONObject3.put("limit_ad_tracking", hyVar2.g);
                    if (hyVar2.h == null || hyVar2.h.f2829a == null) {
                        jSONObject = null;
                    } else {
                        jSONObject = new JSONObject();
                        JSONObject jSONObject4 = new JSONObject();
                        a(jSONObject4, PubMaticConstants.MODEL_PARAM, hyVar2.h.f2829a.f2816a);
                        a(jSONObject4, "brand", hyVar2.h.f2829a.b);
                        a(jSONObject4, "id", hyVar2.h.f2829a.c);
                        a(jSONObject4, "device", hyVar2.h.f2829a.d);
                        a(jSONObject4, AppLovinEventTypes.USER_VIEWED_PRODUCT, hyVar2.h.f2829a.e);
                        a(jSONObject4, "version_release", hyVar2.h.f2829a.f);
                        jSONObject.put("com.flurry.proton.generated.avro.v2.AndroidTags", jSONObject4);
                    }
                    if (jSONObject != null) {
                        jSONObject3.put("device_tags", jSONObject);
                    } else {
                        jSONObject3.put("device_tags", JSONObject.NULL);
                    }
                    JSONArray jSONArray = new JSONArray();
                    for (ia iaVar : hyVar2.i) {
                        JSONObject jSONObject5 = new JSONObject();
                        jSONObject5.put("type", iaVar.f2828a);
                        a(jSONObject5, "id", iaVar.b);
                        jSONArray.put(jSONObject5);
                    }
                    jSONObject3.put("device_ids", jSONArray);
                    if (hyVar2.j == null || hyVar2.j.f2832a == null) {
                        jSONObject2 = null;
                    } else {
                        jSONObject2 = new JSONObject();
                        JSONObject jSONObject6 = new JSONObject();
                        jSONObject6.putOpt("latitude", Double.valueOf(hyVar2.j.f2832a.f2831a));
                        jSONObject6.putOpt("longitude", Double.valueOf(hyVar2.j.f2832a.b));
                        jSONObject6.putOpt("accuracy", Float.valueOf(hyVar2.j.f2832a.c));
                        jSONObject2.put("com.flurry.proton.generated.avro.v2.Geolocation", jSONObject6);
                    }
                    if (jSONObject2 != null) {
                        jSONObject3.put(AdWebViewClient.GEO, jSONObject2);
                    } else {
                        jSONObject3.put(AdWebViewClient.GEO, JSONObject.NULL);
                    }
                    JSONObject jSONObject7 = new JSONObject();
                    if (hyVar2.k != null) {
                        a(jSONObject7, "string", hyVar2.k.f2835a);
                        jSONObject3.put("publisher_user_id", jSONObject7);
                    } else {
                        jSONObject3.put("publisher_user_id", JSONObject.NULL);
                    }
                    km.a(5, f2885a, "Proton Request String: " + jSONObject3.toString());
                    dataOutputStream.write(jSONObject3.toString().getBytes());
                    dataOutputStream.flush();
                } catch (JSONException e) {
                    throw new IOException("Invalid Json", e);
                }
            } finally {
                dataOutputStream.close();
            }
        }
    }

    private static void a(JSONObject jSONObject, String str, String str2) throws IOException, JSONException {
        if (str2 != null) {
            jSONObject.put(str, str2);
        } else {
            jSONObject.put(str, JSONObject.NULL);
        }
    }

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ hy a(InputStream inputStream) throws IOException {
        throw new IOException("Deserialize not supported for request");
    }
}
