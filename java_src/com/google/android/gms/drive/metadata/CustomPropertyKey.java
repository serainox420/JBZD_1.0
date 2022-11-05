package com.google.android.gms.drive.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class CustomPropertyKey extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final int PRIVATE = 1;
    public static final int PUBLIC = 0;
    final int mVisibility;
    final String zzAX;
    final int zzaiI;
    public static final Parcelable.Creator<CustomPropertyKey> CREATOR = new zzc();
    private static final Pattern zzaOM = Pattern.compile("[\\w.!@$%^&*()/-]+");

    /* JADX INFO: Access modifiers changed from: package-private */
    public CustomPropertyKey(int i, String str, int i2) {
        boolean z = true;
        zzac.zzb(str, "key");
        zzac.zzb(zzaOM.matcher(str).matches(), "key name characters must be alphanumeric or one of .!@$%^&*()-_/");
        if (i2 != 0 && i2 != 1) {
            z = false;
        }
        zzac.zzb(z, "visibility must be either PUBLIC or PRIVATE");
        this.zzaiI = i;
        this.zzAX = str;
        this.mVisibility = i2;
    }

    public CustomPropertyKey(String str, int i) {
        this(1, str, i);
    }

    public static CustomPropertyKey fromJson(JSONObject jSONObject) throws JSONException {
        return new CustomPropertyKey(jSONObject.getString("key"), jSONObject.getInt("visibility"));
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CustomPropertyKey)) {
            return false;
        }
        CustomPropertyKey customPropertyKey = (CustomPropertyKey) obj;
        if (!customPropertyKey.getKey().equals(this.zzAX) || customPropertyKey.getVisibility() != this.mVisibility) {
            z = false;
        }
        return z;
    }

    public String getKey() {
        return this.zzAX;
    }

    public int getVisibility() {
        return this.mVisibility;
    }

    public int hashCode() {
        String str = this.zzAX;
        return new StringBuilder(String.valueOf(str).length() + 11).append(str).append(this.mVisibility).toString().hashCode();
    }

    public JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("key", getKey());
        jSONObject.put("visibility", getVisibility());
        return jSONObject;
    }

    public String toString() {
        String str = this.zzAX;
        return new StringBuilder(String.valueOf(str).length() + 31).append("CustomPropertyKey(").append(str).append(",").append(this.mVisibility).append(")").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
