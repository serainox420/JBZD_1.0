package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public final class zzjr {
    public final List<zzjq> zzKD;
    public final long zzKE;
    public final List<String> zzKF;
    public final List<String> zzKG;
    public final List<String> zzKH;
    public final List<String> zzKI;
    public final boolean zzKJ;
    public final String zzKK;
    public final long zzKL;
    public final String zzKM;
    public final int zzKN;
    public final int zzKO;
    public final long zzKP;
    public final boolean zzKQ;
    public final boolean zzKR;
    public int zzKS;
    public int zzKT;

    public zzjr(String str) throws JSONException {
        this(new JSONObject(str));
    }

    public zzjr(List<zzjq> list, long j, List<String> list2, List<String> list3, List<String> list4, List<String> list5, boolean z, String str, long j2, int i, int i2, String str2, int i3, int i4, long j3, boolean z2) {
        this.zzKD = list;
        this.zzKE = j;
        this.zzKF = list2;
        this.zzKG = list3;
        this.zzKH = list4;
        this.zzKI = list5;
        this.zzKJ = z;
        this.zzKK = str;
        this.zzKL = j2;
        this.zzKS = i;
        this.zzKT = i2;
        this.zzKM = str2;
        this.zzKN = i3;
        this.zzKO = i4;
        this.zzKP = j3;
        this.zzKQ = z2;
        this.zzKR = false;
    }

    public zzjr(JSONObject jSONObject) throws JSONException {
        if (zzpk.zzak(2)) {
            String valueOf = String.valueOf(jSONObject.toString(2));
            zzpk.v(valueOf.length() != 0 ? "Mediation Response JSON: ".concat(valueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i = -1;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            zzjq zzjqVar = new zzjq(jSONArray.getJSONObject(i2));
            arrayList.add(zzjqVar);
            if (i < 0 && zza(zzjqVar)) {
                i = i2;
            }
        }
        this.zzKS = i;
        this.zzKT = jSONArray.length();
        this.zzKD = Collections.unmodifiableList(arrayList);
        this.zzKK = jSONObject.optString("qdata");
        this.zzKO = jSONObject.optInt("fs_model_type", -1);
        this.zzKP = jSONObject.optLong("timeout_ms", -1L);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject == null) {
            this.zzKE = -1L;
            this.zzKF = null;
            this.zzKG = null;
            this.zzKH = null;
            this.zzKI = null;
            this.zzKL = -1L;
            this.zzKM = null;
            this.zzKN = 0;
            this.zzKQ = false;
            this.zzKJ = false;
            this.zzKR = false;
            return;
        }
        this.zzKE = optJSONObject.optLong("ad_network_timeout_millis", -1L);
        this.zzKF = com.google.android.gms.ads.internal.zzw.zzdf().zza(optJSONObject, "click_urls");
        this.zzKG = com.google.android.gms.ads.internal.zzw.zzdf().zza(optJSONObject, "imp_urls");
        this.zzKH = com.google.android.gms.ads.internal.zzw.zzdf().zza(optJSONObject, "nofill_urls");
        this.zzKI = com.google.android.gms.ads.internal.zzw.zzdf().zza(optJSONObject, "remote_ping_urls");
        this.zzKJ = optJSONObject.optBoolean("render_in_browser", false);
        long optLong = optJSONObject.optLong("refresh", -1L);
        this.zzKL = optLong > 0 ? optLong * 1000 : -1L;
        zzoo zza = zzoo.zza(optJSONObject.optJSONArray("rewards"));
        if (zza == null) {
            this.zzKM = null;
            this.zzKN = 0;
        } else {
            this.zzKM = zza.type;
            this.zzKN = zza.zzVP;
        }
        this.zzKQ = optJSONObject.optBoolean("use_displayed_impression", false);
        this.zzKR = optJSONObject.optBoolean("allow_pub_rendered_attribution", false);
    }

    private boolean zza(zzjq zzjqVar) {
        for (String str : zzjqVar.zzKp) {
            if (str.equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                return true;
            }
        }
        return false;
    }
}
