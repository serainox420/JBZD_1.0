package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.ads.reward.RewardItem;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public final class zzoo extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzoo> CREATOR = new zzop();
    public final String type;
    public final int zzVP;

    public zzoo(RewardItem rewardItem) {
        this(rewardItem.getType(), rewardItem.getAmount());
    }

    public zzoo(String str, int i) {
        this.type = str;
        this.zzVP = i;
    }

    public static zzoo zza(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzoo(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public static zzoo zzaR(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return zza(new JSONArray(str));
        } catch (JSONException e) {
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzoo)) {
            return false;
        }
        zzoo zzooVar = (zzoo) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.type, zzooVar.type) && com.google.android.gms.common.internal.zzaa.equal(Integer.valueOf(this.zzVP), Integer.valueOf(zzooVar.zzVP));
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.type, Integer.valueOf(this.zzVP));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzop.zza(this, parcel, i);
    }

    public JSONArray zzjP() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("rb_type", this.type);
        jSONObject.put("rb_amount", this.zzVP);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(jSONObject);
        return jSONArray;
    }
}
