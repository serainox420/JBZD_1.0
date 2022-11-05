package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzor extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzor> CREATOR = new zzos();
    public final String zzVQ;
    public final String zzVR;
    public final boolean zzVS;
    public final boolean zzVT;
    public final List<String> zzVU;

    public zzor(String str, String str2, boolean z, boolean z2, List<String> list) {
        this.zzVQ = str;
        this.zzVR = str2;
        this.zzVS = z;
        this.zzVT = z2;
        this.zzVU = list;
    }

    public static zzor zzh(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("click_string", "");
        String optString2 = jSONObject.optString("report_url", "");
        boolean optBoolean = jSONObject.optBoolean("rendered_ad_enabled", false);
        boolean optBoolean2 = jSONObject.optBoolean("non_malicious_reporting_enabled", false);
        JSONArray optJSONArray = jSONObject.optJSONArray("allowed_headers");
        if (optJSONArray == null) {
            optJSONArray = new JSONArray();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            String optString3 = optJSONArray.optString(i);
            if (!TextUtils.isEmpty(optString3)) {
                arrayList.add(optString3.toLowerCase(Locale.ENGLISH));
            }
        }
        return new zzor(optString, optString2, optBoolean, optBoolean2, arrayList);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzos.zza(this, parcel, i);
    }
}
