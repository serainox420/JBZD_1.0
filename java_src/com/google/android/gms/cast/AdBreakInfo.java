package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.internal.zzyr;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AdBreakInfo extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<AdBreakInfo> CREATOR = new zzb();
    private final String zzGV;
    private final long zzamK;
    private final long zzamP;
    private final boolean zzamQ;
    private String[] zzamR;

    /* loaded from: classes2.dex */
    public static class Builder {
        private long zzamP;

        public Builder(long j) {
            this.zzamP = 0L;
            this.zzamP = j;
        }

        public AdBreakInfo build() {
            return new AdBreakInfo(this.zzamP, null, 0L, false, null);
        }
    }

    public AdBreakInfo(long j, String str, long j2, boolean z, String[] strArr) {
        this.zzamP = j;
        this.zzGV = str;
        this.zzamK = j2;
        this.zzamQ = z;
        this.zzamR = strArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AdBreakInfo zzk(JSONObject jSONObject) {
        String[] strArr;
        if (jSONObject == null) {
            return null;
        }
        if (!jSONObject.has("id") || !jSONObject.has("position")) {
            return null;
        }
        try {
            String string = jSONObject.getString("id");
            long zzf = zzyr.zzf(jSONObject.getLong("position"));
            boolean optBoolean = jSONObject.optBoolean("isWatched");
            long zzf2 = zzyr.zzf(jSONObject.optLong(VastIconXmlManager.DURATION));
            JSONArray optJSONArray = jSONObject.optJSONArray("breakClipIds");
            if (optJSONArray != null) {
                strArr = new String[optJSONArray.length()];
                for (int i = 0; i < optJSONArray.length(); i++) {
                    strArr[i] = optJSONArray.getString(i);
                }
            } else {
                strArr = null;
            }
            return new AdBreakInfo(zzf, string, zzf2, optBoolean, strArr);
        } catch (JSONException e) {
            Log.d("AdBreakInfo", String.format(Locale.ROOT, "Error while creating an AdBreakInfo from JSON: %s", e.getMessage()));
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakInfo)) {
            return false;
        }
        AdBreakInfo adBreakInfo = (AdBreakInfo) obj;
        return zzyr.zza(this.zzGV, adBreakInfo.zzGV) && this.zzamP == adBreakInfo.zzamP && this.zzamK == adBreakInfo.zzamK && this.zzamQ == adBreakInfo.zzamQ && Arrays.equals(this.zzamR, adBreakInfo.zzamR);
    }

    public String[] getBreakClipIds() {
        return this.zzamR;
    }

    public long getDurationInMs() {
        return this.zzamK;
    }

    public String getId() {
        return this.zzGV;
    }

    public long getPlaybackPositionInMs() {
        return this.zzamP;
    }

    public int hashCode() {
        return this.zzGV.hashCode();
    }

    public boolean isWatched() {
        return this.zzamQ;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
