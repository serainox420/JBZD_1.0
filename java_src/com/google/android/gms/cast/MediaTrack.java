package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.internal.zzyr;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class MediaTrack extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<MediaTrack> CREATOR = new zzm();
    public static final int SUBTYPE_CAPTIONS = 2;
    public static final int SUBTYPE_CHAPTERS = 4;
    public static final int SUBTYPE_DESCRIPTIONS = 3;
    public static final int SUBTYPE_METADATA = 5;
    public static final int SUBTYPE_NONE = 0;
    public static final int SUBTYPE_SUBTITLES = 1;
    public static final int SUBTYPE_UNKNOWN = -1;
    public static final int TYPE_AUDIO = 2;
    public static final int TYPE_TEXT = 1;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_VIDEO = 3;
    private String mName;
    private String zzacX;
    private long zzait;
    private int zzakD;
    String zzamN;
    private JSONObject zzamO;
    private int zzaoX;
    private String zzaoh;
    private String zzaoj;

    /* loaded from: classes2.dex */
    public static class Builder {
        private final MediaTrack zzaoY;

        public Builder(long j, int i) throws IllegalArgumentException {
            this.zzaoY = new MediaTrack(j, i);
        }

        public MediaTrack build() {
            return this.zzaoY;
        }

        public Builder setContentId(String str) {
            this.zzaoY.setContentId(str);
            return this;
        }

        public Builder setContentType(String str) {
            this.zzaoY.setContentType(str);
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.zzaoY.setCustomData(jSONObject);
            return this;
        }

        public Builder setLanguage(String str) {
            this.zzaoY.setLanguage(str);
            return this;
        }

        public Builder setLanguage(Locale locale) {
            this.zzaoY.setLanguage(zzyr.zzb(locale));
            return this;
        }

        public Builder setName(String str) {
            this.zzaoY.setName(str);
            return this;
        }

        public Builder setSubtype(int i) throws IllegalArgumentException {
            this.zzaoY.zzbS(i);
            return this;
        }
    }

    MediaTrack(long j, int i) throws IllegalArgumentException {
        this(0L, 0, null, null, null, null, -1, null);
        this.zzait = j;
        if (i <= 0 || i > 3) {
            throw new IllegalArgumentException(new StringBuilder(24).append("invalid type ").append(i).toString());
        }
        this.zzakD = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaTrack(long j, int i, String str, String str2, String str3, String str4, int i2, String str5) {
        this.zzait = j;
        this.zzakD = i;
        this.zzaoh = str;
        this.zzaoj = str2;
        this.mName = str3;
        this.zzacX = str4;
        this.zzaoX = i2;
        this.zzamN = str5;
        if (this.zzamN == null) {
            this.zzamO = null;
            return;
        }
        try {
            this.zzamO = new JSONObject(this.zzamN);
        } catch (JSONException e) {
            this.zzamO = null;
            this.zzamN = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaTrack(JSONObject jSONObject) throws JSONException {
        this(0L, 0, null, null, null, null, -1, null);
        zzn(jSONObject);
    }

    private void zzn(JSONObject jSONObject) throws JSONException {
        this.zzait = jSONObject.getLong("trackId");
        String string = jSONObject.getString("type");
        if ("TEXT".equals(string)) {
            this.zzakD = 1;
        } else if ("AUDIO".equals(string)) {
            this.zzakD = 2;
        } else if (!ShareConstants.VIDEO_URL.equals(string)) {
            String valueOf = String.valueOf(string);
            throw new JSONException(valueOf.length() != 0 ? "invalid type: ".concat(valueOf) : new String("invalid type: "));
        } else {
            this.zzakD = 3;
        }
        this.zzaoh = jSONObject.optString("trackContentId", null);
        this.zzaoj = jSONObject.optString("trackContentType", null);
        this.mName = jSONObject.optString("name", null);
        this.zzacX = jSONObject.optString("language", null);
        if (jSONObject.has("subtype")) {
            String string2 = jSONObject.getString("subtype");
            if ("SUBTITLES".equals(string2)) {
                this.zzaoX = 1;
            } else if ("CAPTIONS".equals(string2)) {
                this.zzaoX = 2;
            } else if ("DESCRIPTIONS".equals(string2)) {
                this.zzaoX = 3;
            } else if ("CHAPTERS".equals(string2)) {
                this.zzaoX = 4;
            } else if (!"METADATA".equals(string2)) {
                String valueOf2 = String.valueOf(string2);
                throw new JSONException(valueOf2.length() != 0 ? "invalid subtype: ".concat(valueOf2) : new String("invalid subtype: "));
            } else {
                this.zzaoX = 5;
            }
        } else {
            this.zzaoX = 0;
        }
        this.zzamO = jSONObject.optJSONObject("customData");
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaTrack)) {
            return false;
        }
        MediaTrack mediaTrack = (MediaTrack) obj;
        if ((this.zzamO == null) != (mediaTrack.zzamO == null)) {
            return false;
        }
        if (this.zzamO != null && mediaTrack.zzamO != null && !zzq.zze(this.zzamO, mediaTrack.zzamO)) {
            return false;
        }
        if (this.zzait != mediaTrack.zzait || this.zzakD != mediaTrack.zzakD || !zzyr.zza(this.zzaoh, mediaTrack.zzaoh) || !zzyr.zza(this.zzaoj, mediaTrack.zzaoj) || !zzyr.zza(this.mName, mediaTrack.mName) || !zzyr.zza(this.zzacX, mediaTrack.zzacX) || this.zzaoX != mediaTrack.zzaoX) {
            z = false;
        }
        return z;
    }

    public String getContentId() {
        return this.zzaoh;
    }

    public String getContentType() {
        return this.zzaoj;
    }

    public JSONObject getCustomData() {
        return this.zzamO;
    }

    public long getId() {
        return this.zzait;
    }

    public String getLanguage() {
        return this.zzacX;
    }

    public String getName() {
        return this.mName;
    }

    public int getSubtype() {
        return this.zzaoX;
    }

    public int getType() {
        return this.zzakD;
    }

    public int hashCode() {
        return zzaa.hashCode(Long.valueOf(this.zzait), Integer.valueOf(this.zzakD), this.zzaoh, this.zzaoj, this.mName, this.zzacX, Integer.valueOf(this.zzaoX), String.valueOf(this.zzamO));
    }

    public void setContentId(String str) {
        this.zzaoh = str;
    }

    public void setContentType(String str) {
        this.zzaoj = str;
    }

    void setCustomData(JSONObject jSONObject) {
        this.zzamO = jSONObject;
    }

    void setLanguage(String str) {
        this.zzacX = str;
    }

    void setName(String str) {
        this.mName = str;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("trackId", this.zzait);
            switch (this.zzakD) {
                case 1:
                    jSONObject.put("type", "TEXT");
                    break;
                case 2:
                    jSONObject.put("type", "AUDIO");
                    break;
                case 3:
                    jSONObject.put("type", ShareConstants.VIDEO_URL);
                    break;
            }
            if (this.zzaoh != null) {
                jSONObject.put("trackContentId", this.zzaoh);
            }
            if (this.zzaoj != null) {
                jSONObject.put("trackContentType", this.zzaoj);
            }
            if (this.mName != null) {
                jSONObject.put("name", this.mName);
            }
            if (!TextUtils.isEmpty(this.zzacX)) {
                jSONObject.put("language", this.zzacX);
            }
            switch (this.zzaoX) {
                case 1:
                    jSONObject.put("subtype", "SUBTITLES");
                    break;
                case 2:
                    jSONObject.put("subtype", "CAPTIONS");
                    break;
                case 3:
                    jSONObject.put("subtype", "DESCRIPTIONS");
                    break;
                case 4:
                    jSONObject.put("subtype", "CHAPTERS");
                    break;
                case 5:
                    jSONObject.put("subtype", "METADATA");
                    break;
            }
            if (this.zzamO != null) {
                jSONObject.put("customData", this.zzamO);
            }
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        this.zzamN = this.zzamO == null ? null : this.zzamO.toString();
        zzm.zza(this, parcel, i);
    }

    void zzbS(int i) throws IllegalArgumentException {
        if (i <= -1 || i > 5) {
            throw new IllegalArgumentException(new StringBuilder(27).append("invalid subtype ").append(i).toString());
        }
        if (i != 0 && this.zzakD != 1) {
            throw new IllegalArgumentException("subtypes are only valid for text tracks");
        }
        this.zzaoX = i;
    }
}
