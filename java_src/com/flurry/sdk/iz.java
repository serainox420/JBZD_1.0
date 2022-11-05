package com.flurry.sdk;

import android.text.TextUtils;
import com.intentsoftware.addapptr.AATKit;
import com.openx.view.mraid.JSInterface;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class iz implements lg<hz> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2887a = iz.class.getSimpleName();

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ hz a(InputStream inputStream) throws IOException {
        return b(inputStream);
    }

    private static hz b(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        String str = new String(ly.a(inputStream));
        km.a(5, f2887a, "Proton response string: " + str);
        hz hzVar = new hz();
        try {
            JSONObject jSONObject = new JSONObject(str);
            hzVar.f2820a = jSONObject.optLong("issued_at", -1L);
            hzVar.b = jSONObject.optLong("refresh_ttl", 3600L);
            hzVar.c = jSONObject.optLong("expiration_ttl", 86400L);
            JSONObject optJSONObject = jSONObject.optJSONObject("global_settings");
            hzVar.d = new ig();
            if (optJSONObject != null) {
                hzVar.d.f2833a = b(optJSONObject.optString("log_level"));
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject("pulse");
            hx hxVar = new hx();
            if (optJSONObject2 != null) {
                a(hxVar, optJSONObject2.optJSONArray("callbacks"));
                hxVar.b = optJSONObject2.optInt("max_callback_retries", 3);
                hxVar.c = optJSONObject2.optInt("max_callback_attempts_per_report", 15);
                hxVar.d = optJSONObject2.optInt("max_report_delay_seconds", AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS);
                hxVar.e = optJSONObject2.optString("agent_report_url", "");
            }
            hzVar.e = hxVar;
            JSONObject optJSONObject3 = jSONObject.optJSONObject("analytics");
            hzVar.f = new ij();
            if (optJSONObject3 == null) {
                return hzVar;
            }
            hzVar.f.b = optJSONObject3.optBoolean("analytics_enabled", true);
            hzVar.f.f2836a = optJSONObject3.optInt("max_session_properties", 10);
            return hzVar;
        } catch (JSONException e) {
            throw new IOException("Exception while deserialize: ", e);
        }
    }

    private static void a(hx hxVar, JSONArray jSONArray) throws JSONException {
        JSONObject optJSONObject;
        if (jSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject2 = jSONArray.optJSONObject(i);
                if (optJSONObject2 != null) {
                    hw hwVar = new hw();
                    hwVar.b = optJSONObject2.optString("partner", "");
                    a(hwVar, optJSONObject2.optJSONArray("events"));
                    hwVar.d = a(optJSONObject2.optString(JSInterface.JSON_METHOD));
                    hwVar.e = optJSONObject2.optString("uri_template", "");
                    JSONObject optJSONObject3 = optJSONObject2.optJSONObject("body_template");
                    if (optJSONObject3 != null) {
                        String optString = optJSONObject3.optString("string", "null");
                        if (!optString.equals("null")) {
                            hwVar.f = optString;
                        }
                    }
                    hwVar.g = optJSONObject2.optInt("max_redirects", 5);
                    hwVar.h = optJSONObject2.optInt("connect_timeout", 20);
                    hwVar.i = optJSONObject2.optInt("request_timeout", 20);
                    hwVar.f2817a = optJSONObject2.optLong("callback_id", -1L);
                    JSONObject optJSONObject4 = optJSONObject2.optJSONObject("headers");
                    if (optJSONObject4 != null && (optJSONObject = optJSONObject4.optJSONObject("map")) != null) {
                        hwVar.j = lz.a(optJSONObject);
                    }
                    arrayList.add(hwVar);
                }
            }
            hxVar.f2818a = arrayList;
        }
    }

    private static void a(hw hwVar, JSONArray jSONArray) {
        String[] strArr;
        if (jSONArray != null) {
            ArrayList arrayList = null;
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    if (optJSONObject.has("string")) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        ic icVar = new ic();
                        icVar.f2830a = optJSONObject.optString("string", "");
                        arrayList.add(icVar);
                    } else if (optJSONObject.has("com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger")) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject("com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger");
                        if (optJSONObject2 != null) {
                            id idVar = new id();
                            idVar.f2830a = optJSONObject2.optString("event_name", "");
                            idVar.c = optJSONObject2.optString("event_parameter_name", "");
                            JSONArray optJSONArray = optJSONObject2.optJSONArray("event_parameter_values");
                            if (optJSONArray != null) {
                                String[] strArr2 = new String[optJSONArray.length()];
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    strArr2[i2] = optJSONArray.optString(i2, "");
                                }
                                strArr = strArr2;
                            } else {
                                strArr = new String[0];
                            }
                            idVar.d = strArr;
                            arrayList.add(idVar);
                        }
                    }
                }
            }
            hwVar.c = arrayList;
        }
    }

    private static iw a(String str) {
        iw iwVar = iw.GET;
        try {
            if (!TextUtils.isEmpty(str)) {
                return (iw) Enum.valueOf(iw.class, str);
            }
        } catch (Exception e) {
        }
        return iwVar;
    }

    private static ih b(String str) {
        ih ihVar = ih.OFF;
        try {
            if (!TextUtils.isEmpty(str)) {
                return (ih) Enum.valueOf(ih.class, str);
            }
        } catch (Exception e) {
        }
        return ihVar;
    }

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ void a(OutputStream outputStream, hz hzVar) throws IOException {
        throw new IOException("Serialize not supported for response");
    }
}
