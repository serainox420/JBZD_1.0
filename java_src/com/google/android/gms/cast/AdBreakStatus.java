package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzyr;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AdBreakStatus extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final int AD_BREAK_CLIP_NOT_SKIPPABLE = -1;
    public static final Parcelable.Creator<AdBreakStatus> CREATOR = new zzc();
    private final long zzamS;
    private final long zzamT;
    private final String zzamU;
    private final String zzamV;
    private final long zzamW;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdBreakStatus(long j, long j2, String str, String str2, long j3) {
        this.zzamS = j;
        this.zzamT = j2;
        this.zzamU = str;
        this.zzamV = str2;
        this.zzamW = j3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AdBreakStatus zzl(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        if (!jSONObject.has("currentBreakTime") || !jSONObject.has("currentBreakClipTime")) {
            return null;
        }
        try {
            long zzf = zzyr.zzf(jSONObject.getLong("currentBreakTime"));
            long zzf2 = zzyr.zzf(jSONObject.getLong("currentBreakClipTime"));
            String optString = jSONObject.optString("breakId", null);
            String optString2 = jSONObject.optString("breakClipId", null);
            long optLong = jSONObject.optLong("whenSkippable", -1L);
            if (optLong != -1) {
                optLong = zzyr.zzf(optLong);
            }
            return new AdBreakStatus(zzf, zzf2, optString, optString2, optLong);
        } catch (JSONException e) {
            Log.d("AdBreakInfo", String.format(Locale.ROOT, "Error while creating an AdBreakClipInfo from JSON: %s", e.getMessage()));
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakStatus)) {
            return false;
        }
        AdBreakStatus adBreakStatus = (AdBreakStatus) obj;
        return this.zzamS == adBreakStatus.zzamS && this.zzamT == adBreakStatus.zzamT && zzyr.zza(this.zzamU, adBreakStatus.zzamU) && zzyr.zza(this.zzamV, adBreakStatus.zzamV) && this.zzamW == adBreakStatus.zzamW;
    }

    public String getBreakClipId() {
        return this.zzamV;
    }

    public String getBreakId() {
        return this.zzamU;
    }

    public long getCurrentBreakClipTimeInMs() {
        return this.zzamT;
    }

    public long getCurrentBreakTimeInMs() {
        return this.zzamS;
    }

    public long getWhenSkippableInMs() {
        return this.zzamW;
    }

    public int hashCode() {
        return zzaa.hashCode(Long.valueOf(this.zzamS), Long.valueOf(this.zzamT), this.zzamU, this.zzamV, Long.valueOf(this.zzamW));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
