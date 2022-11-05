package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzyr;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AdBreakClipInfo extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<AdBreakClipInfo> CREATOR = new zza();
    private final String zzGV;
    private final String zzamJ;
    private final long zzamK;
    private final String zzamL;
    private final String zzamM;
    private String zzamN;
    private JSONObject zzamO;
    private final String zzzq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdBreakClipInfo(String str, String str2, long j, String str3, String str4, String str5, String str6) {
        this.zzGV = str;
        this.zzamJ = str2;
        this.zzamK = j;
        this.zzzq = str3;
        this.zzamL = str4;
        this.zzamM = str5;
        this.zzamN = str6;
        if (TextUtils.isEmpty(this.zzamN)) {
            this.zzamO = new JSONObject();
            return;
        }
        try {
            this.zzamO = new JSONObject(str6);
        } catch (JSONException e) {
            Log.w("AdBreakClipInfo", String.format(Locale.ROOT, "Error creating AdBreakClipInfo: %s", e.getMessage()));
            this.zzamN = null;
            this.zzamO = new JSONObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AdBreakClipInfo zzj(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.has("id")) {
            try {
                String string = jSONObject.getString("id");
                long zzf = zzyr.zzf(jSONObject.optLong(VastIconXmlManager.DURATION));
                String optString = jSONObject.optString("clickThroughUrl", null);
                String optString2 = jSONObject.optString("contentUrl", null);
                String optString3 = jSONObject.optString("mimeType", null);
                String optString4 = jSONObject.optString("title", null);
                JSONObject optJSONObject = jSONObject.optJSONObject("customData");
                return new AdBreakClipInfo(string, optString4, zzf, optString2, optString3, optString, optJSONObject == null ? null : optJSONObject.toString());
            } catch (JSONException e) {
                Log.d("AdBreakClipInfo", String.format(Locale.ROOT, "Error while creating an AdBreakClipInfo from JSON: %s", e.getMessage()));
                return null;
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakClipInfo)) {
            return false;
        }
        AdBreakClipInfo adBreakClipInfo = (AdBreakClipInfo) obj;
        return zzyr.zza(this.zzGV, adBreakClipInfo.zzGV) && zzyr.zza(this.zzamJ, adBreakClipInfo.zzamJ) && this.zzamK == adBreakClipInfo.zzamK && zzyr.zza(this.zzzq, adBreakClipInfo.zzzq) && zzyr.zza(this.zzamL, adBreakClipInfo.zzamL) && zzyr.zza(this.zzamM, adBreakClipInfo.zzamM) && zzyr.zza(this.zzamN, adBreakClipInfo.zzamN);
    }

    public String getClickThroughUrl() {
        return this.zzamM;
    }

    public String getContentUrl() {
        return this.zzzq;
    }

    public JSONObject getCustomData() {
        return this.zzamO;
    }

    public long getDurationInMs() {
        return this.zzamK;
    }

    public String getId() {
        return this.zzGV;
    }

    public String getMimeType() {
        return this.zzamL;
    }

    public String getTitle() {
        return this.zzamJ;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzGV, this.zzamJ, Long.valueOf(this.zzamK), this.zzzq, this.zzamL, this.zzamM, this.zzamN);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzsf() {
        return this.zzamN;
    }
}
