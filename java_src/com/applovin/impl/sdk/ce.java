package com.applovin.impl.sdk;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.internal.NativeProtocol;
import com.loopme.debugging.Params;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ce extends bw {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ce(AppLovinSdkImpl appLovinSdkImpl) {
        super("SubmitData", appLovinSdkImpl);
    }

    private static JSONArray a(Collection collection) {
        JSONArray jSONArray = new JSONArray();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            u uVar = (u) it.next();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("package_name", uVar.c);
            jSONObject.put("created_at_sec", uVar.d / 1000);
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject) {
        try {
            JSONObject a2 = q.a(jSONObject);
            ca settingsManager = this.f.getSettingsManager();
            settingsManager.a(bx.c, a2.getString(Params.DEVICE_ID));
            settingsManager.a(bx.e, a2.getString("device_token"));
            settingsManager.a(bx.d, a2.getString("publisher_id"));
            settingsManager.b();
            q.a(a2, this.f);
            if (!a2.has("adserver_parameters")) {
                return;
            }
            settingsManager.a(bx.s, a2.getJSONObject("adserver_parameters").toString());
        } catch (JSONException e) {
            this.g.e(this.e, "Unable to parse API response", e);
        }
    }

    void b(JSONObject jSONObject) {
        r dataCollector = this.f.getDataCollector();
        u b = dataCollector.b();
        v a2 = dataCollector.a();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(PubMaticConstants.MODEL_PARAM, a2.f1670a);
        jSONObject2.put(PubMaticConstants.OS_PARAM, a2.b);
        jSONObject2.put("brand", a2.c);
        jSONObject2.put(Params.SDK_VERSION, a2.e);
        jSONObject2.put("revision", a2.d);
        jSONObject2.put("country_code", a2.f);
        jSONObject2.put("carrier", a2.g);
        jSONObject2.put("wvvc", a2.i);
        jSONObject2.put("type", io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE);
        t c = dataCollector.c();
        String str = c.b;
        boolean z = c.f1668a;
        if ((!z || ((Boolean) this.f.getSettingsManager().a(bx.aT)).booleanValue()) && AppLovinSdkUtils.isValidString(str)) {
            jSONObject2.put("idfa", str);
        }
        jSONObject2.put("dnt", z);
        Locale locale = a2.h;
        if (locale != null) {
            jSONObject2.put("locale", locale.toString());
        }
        jSONObject.put(DeviceRequestsHelper.DEVICE_INFO_PARAM, jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("package_name", b.c);
        jSONObject3.put(NativeProtocol.BRIDGE_ARG_APP_NAME_STRING, b.f1669a);
        jSONObject3.put("app_version", b.b);
        jSONObject3.put("installed_at", b.d);
        jSONObject3.put("applovin_sdk_version", AppLovinSdk.VERSION);
        jSONObject3.put("ic", this.f.isInitializedInMainActivity());
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.h);
        String string = defaultSharedPreferences.getString("com.applovin.sdk.impl.isFirstRun", null);
        if (AppLovinSdkUtils.isValidString(string)) {
            jSONObject3.put("first_install", string);
            if (string.equalsIgnoreCase(Boolean.toString(true))) {
                defaultSharedPreferences.edit().putString("com.applovin.sdk.impl.isFirstRun", Boolean.toString(false)).apply();
            }
        }
        String str2 = (String) this.f.a(bx.z);
        if (str2 != null && str2.length() > 0) {
            jSONObject3.put("plugin_version", str2);
        }
        jSONObject.put("app_info", jSONObject3);
        if (((Boolean) this.f.a(bx.F)).booleanValue()) {
            Map a3 = ((m) this.f.getTargetingData()).a();
            if (a3 != null && !a3.isEmpty()) {
                jSONObject.put("targeting", ay.a(a3));
            }
            jSONObject.put("stats", this.f.b().b());
        }
    }

    Collection c() {
        if (((Boolean) this.f.a(bx.aS)).booleanValue()) {
            return this.f.getDataCollector().d();
        }
        return null;
    }

    void c(JSONObject jSONObject) {
        cf cfVar = new cf(this, "Repeat" + this.e, bx.f, this.f, jSONObject);
        cfVar.a(bx.j);
        cfVar.run();
    }

    @Override // java.lang.Runnable
    public void run() {
        Collection c;
        try {
            this.g.i(this.e, "Submitting user data...");
            JSONObject jSONObject = new JSONObject();
            b(jSONObject);
            if (((Boolean) this.f.a(bx.aS)).booleanValue() && (c = c()) != null) {
                jSONObject.put("vx", a(c));
            }
            c(jSONObject);
        } catch (JSONException e) {
            this.g.e(this.e, "Unable to build JSON message with collected data", e);
        }
    }
}
