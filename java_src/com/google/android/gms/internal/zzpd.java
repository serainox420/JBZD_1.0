package com.google.android.gms.internal;

import android.text.TextUtils;
import com.loopme.common.StaticParams;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzpd {
    private String mAppId;
    private String zzWB;
    private final long zzWy;
    private final List<String> zzWz = new ArrayList();
    private final Map<String, zzjr> zzWA = new HashMap();
    private boolean zzWC = false;

    public zzpd(String str, long j) {
        this.zzWB = str;
        this.zzWy = j;
        zzaT(str);
    }

    private void zzaT(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("status", -1) != 1) {
                this.zzWC = false;
                zzpk.zzbh("App settings could not be fetched successfully.");
                return;
            }
            this.zzWC = true;
            this.mAppId = jSONObject.optString("app_id");
            JSONArray optJSONArray = jSONObject.optJSONArray("ad_unit_id_settings");
            if (optJSONArray == null) {
                return;
            }
            for (int i = 0; i < optJSONArray.length(); i++) {
                zzi(optJSONArray.getJSONObject(i));
            }
        } catch (JSONException e) {
            zzpk.zzc("Exception occurred while processing app setting json", e);
            com.google.android.gms.ads.internal.zzw.zzcQ().zza(e, "AppSettings.parseAppSettingsJson");
        }
    }

    private void zzi(JSONObject jSONObject) throws JSONException {
        JSONObject optJSONObject;
        String optString = jSONObject.optString(StaticParams.FORMAT_TAG);
        String optString2 = jSONObject.optString("ad_unit_id");
        if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2)) {
            return;
        }
        if ("interstitial".equalsIgnoreCase(optString)) {
            this.zzWz.add(optString2);
        } else if (!"rewarded".equalsIgnoreCase(optString) || (optJSONObject = jSONObject.optJSONObject("mediation_config")) == null) {
        } else {
            this.zzWA.put(optString2, new zzjr(optJSONObject));
        }
    }

    public long zzkb() {
        return this.zzWy;
    }

    public boolean zzkc() {
        return this.zzWC;
    }

    public String zzkd() {
        return this.zzWB;
    }

    public String zzke() {
        return this.mAppId;
    }

    public Map<String, zzjr> zzkf() {
        return this.zzWA;
    }
}
