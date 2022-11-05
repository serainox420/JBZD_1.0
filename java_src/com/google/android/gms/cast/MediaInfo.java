package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.internal.zzyr;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class MediaInfo extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<MediaInfo> CREATOR = new zzi();
    public static final int STREAM_TYPE_BUFFERED = 1;
    public static final int STREAM_TYPE_INVALID = -1;
    public static final int STREAM_TYPE_LIVE = 2;
    public static final int STREAM_TYPE_NONE = 0;
    public static final long UNKNOWN_DURATION = -1;
    String zzamN;
    private JSONObject zzamO;
    private final String zzaoh;
    private int zzaoi;
    private String zzaoj;
    private MediaMetadata zzaok;
    private long zzaol;
    private List<MediaTrack> zzaom;
    private TextTrackStyle zzaon;
    private List<AdBreakInfo> zzaoo;
    private List<AdBreakClipInfo> zzaop;

    /* loaded from: classes2.dex */
    public static class Builder {
        private final MediaInfo zzaoq;

        public Builder(String str) throws IllegalArgumentException {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Content ID cannot be empty");
            }
            this.zzaoq = new MediaInfo(str);
        }

        public MediaInfo build() throws IllegalArgumentException {
            this.zzaoq.zzsx();
            return this.zzaoq;
        }

        public Builder setContentType(String str) throws IllegalArgumentException {
            this.zzaoq.setContentType(str);
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.zzaoq.setCustomData(jSONObject);
            return this;
        }

        public Builder setMediaTracks(List<MediaTrack> list) {
            this.zzaoq.zzz(list);
            return this;
        }

        public Builder setMetadata(MediaMetadata mediaMetadata) {
            this.zzaoq.zza(mediaMetadata);
            return this;
        }

        public Builder setStreamDuration(long j) throws IllegalArgumentException {
            this.zzaoq.zzC(j);
            return this;
        }

        public Builder setStreamType(int i) throws IllegalArgumentException {
            this.zzaoq.setStreamType(i);
            return this;
        }

        public Builder setTextTrackStyle(TextTrackStyle textTrackStyle) {
            this.zzaoq.setTextTrackStyle(textTrackStyle);
            return this;
        }
    }

    MediaInfo(String str) throws IllegalArgumentException {
        this(str, -1, null, null, -1L, null, null, null, null, null);
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("content ID cannot be null or empty");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaInfo(String str, int i, String str2, MediaMetadata mediaMetadata, long j, List<MediaTrack> list, TextTrackStyle textTrackStyle, String str3, List<AdBreakInfo> list2, List<AdBreakClipInfo> list3) {
        this.zzaoh = str;
        this.zzaoi = i;
        this.zzaoj = str2;
        this.zzaok = mediaMetadata;
        this.zzaol = j;
        this.zzaom = list;
        this.zzaon = textTrackStyle;
        this.zzamN = str3;
        if (this.zzamN != null) {
            try {
                this.zzamO = new JSONObject(this.zzamN);
            } catch (JSONException e) {
                this.zzamO = null;
                this.zzamN = null;
            }
        } else {
            this.zzamO = null;
        }
        this.zzaoo = list2;
        this.zzaop = list3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MediaInfo(JSONObject jSONObject) throws JSONException {
        this(jSONObject.getString("contentId"), -1, null, null, -1L, null, null, null, null, null);
        String string = jSONObject.getString("streamType");
        if ("NONE".equals(string)) {
            this.zzaoi = 0;
        } else if ("BUFFERED".equals(string)) {
            this.zzaoi = 1;
        } else if ("LIVE".equals(string)) {
            this.zzaoi = 2;
        } else {
            this.zzaoi = -1;
        }
        this.zzaoj = jSONObject.getString("contentType");
        if (jSONObject.has("metadata")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("metadata");
            this.zzaok = new MediaMetadata(jSONObject2.getInt("metadataType"));
            this.zzaok.zzn(jSONObject2);
        }
        this.zzaol = -1L;
        if (jSONObject.has(VastIconXmlManager.DURATION) && !jSONObject.isNull(VastIconXmlManager.DURATION)) {
            double optDouble = jSONObject.optDouble(VastIconXmlManager.DURATION, 0.0d);
            if (!Double.isNaN(optDouble) && !Double.isInfinite(optDouble)) {
                this.zzaol = zzyr.zzf(optDouble);
            }
        }
        if (jSONObject.has("tracks")) {
            this.zzaom = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray("tracks");
            for (int i = 0; i < jSONArray.length(); i++) {
                this.zzaom.add(new MediaTrack(jSONArray.getJSONObject(i)));
            }
        } else {
            this.zzaom = null;
        }
        if (jSONObject.has("textTrackStyle")) {
            JSONObject jSONObject3 = jSONObject.getJSONObject("textTrackStyle");
            TextTrackStyle textTrackStyle = new TextTrackStyle();
            textTrackStyle.zzn(jSONObject3);
            this.zzaon = textTrackStyle;
        } else {
            this.zzaon = null;
        }
        zzm(jSONObject);
        this.zzamO = jSONObject.optJSONObject("customData");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzsx() throws IllegalArgumentException {
        if (TextUtils.isEmpty(this.zzaoh)) {
            throw new IllegalArgumentException("content ID cannot be null or empty");
        }
        if (TextUtils.isEmpty(this.zzaoj)) {
            throw new IllegalArgumentException("content type cannot be null or empty");
        }
        if (this.zzaoi != -1) {
            return;
        }
        throw new IllegalArgumentException("a valid stream type must be specified");
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaInfo)) {
            return false;
        }
        MediaInfo mediaInfo = (MediaInfo) obj;
        if ((this.zzamO == null) != (mediaInfo.zzamO == null)) {
            return false;
        }
        if (this.zzamO != null && mediaInfo.zzamO != null && !zzq.zze(this.zzamO, mediaInfo.zzamO)) {
            return false;
        }
        if (!zzyr.zza(this.zzaoh, mediaInfo.zzaoh) || this.zzaoi != mediaInfo.zzaoi || !zzyr.zza(this.zzaoj, mediaInfo.zzaoj) || !zzyr.zza(this.zzaok, mediaInfo.zzaok) || this.zzaol != mediaInfo.zzaol || !zzyr.zza(this.zzaom, mediaInfo.zzaom) || !zzyr.zza(this.zzaon, mediaInfo.zzaon) || !zzyr.zza(this.zzaoo, mediaInfo.zzaoo) || !zzyr.zza(this.zzaop, mediaInfo.zzaop)) {
            z = false;
        }
        return z;
    }

    public List<AdBreakClipInfo> getAdBreakClips() {
        if (this.zzaop == null) {
            return null;
        }
        return Collections.unmodifiableList(this.zzaop);
    }

    public List<AdBreakInfo> getAdBreaks() {
        if (this.zzaoo == null) {
            return null;
        }
        return Collections.unmodifiableList(this.zzaoo);
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

    public List<MediaTrack> getMediaTracks() {
        return this.zzaom;
    }

    public MediaMetadata getMetadata() {
        return this.zzaok;
    }

    public long getStreamDuration() {
        return this.zzaol;
    }

    public int getStreamType() {
        return this.zzaoi;
    }

    public TextTrackStyle getTextTrackStyle() {
        return this.zzaon;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaoh, Integer.valueOf(this.zzaoi), this.zzaoj, this.zzaok, Long.valueOf(this.zzaol), String.valueOf(this.zzamO), this.zzaom, this.zzaon, this.zzaoo, this.zzaop);
    }

    void setContentType(String str) throws IllegalArgumentException {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("content type cannot be null or empty");
        }
        this.zzaoj = str;
    }

    void setCustomData(JSONObject jSONObject) {
        this.zzamO = jSONObject;
    }

    void setStreamType(int i) throws IllegalArgumentException {
        if (i < -1 || i > 2) {
            throw new IllegalArgumentException("invalid stream type");
        }
        this.zzaoi = i;
    }

    public void setTextTrackStyle(TextTrackStyle textTrackStyle) {
        this.zzaon = textTrackStyle;
    }

    public JSONObject toJson() {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("contentId", this.zzaoh);
            switch (this.zzaoi) {
                case 1:
                    str = "BUFFERED";
                    break;
                case 2:
                    str = "LIVE";
                    break;
                default:
                    str = "NONE";
                    break;
            }
            jSONObject.put("streamType", str);
            if (this.zzaoj != null) {
                jSONObject.put("contentType", this.zzaoj);
            }
            if (this.zzaok != null) {
                jSONObject.put("metadata", this.zzaok.toJson());
            }
            if (this.zzaol <= -1) {
                jSONObject.put(VastIconXmlManager.DURATION, JSONObject.NULL);
            } else {
                jSONObject.put(VastIconXmlManager.DURATION, zzyr.zzG(this.zzaol));
            }
            if (this.zzaom != null) {
                JSONArray jSONArray = new JSONArray();
                for (MediaTrack mediaTrack : this.zzaom) {
                    jSONArray.put(mediaTrack.toJson());
                }
                jSONObject.put("tracks", jSONArray);
            }
            if (this.zzaon != null) {
                jSONObject.put("textTrackStyle", this.zzaon.toJson());
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
        zzi.zza(this, parcel, i);
    }

    public void zzA(List<AdBreakInfo> list) {
        this.zzaoo = list;
    }

    void zzC(long j) throws IllegalArgumentException {
        if (j >= 0 || j == -1) {
            this.zzaol = j;
            return;
        }
        throw new IllegalArgumentException("Invalid stream duration");
    }

    void zza(MediaMetadata mediaMetadata) {
        this.zzaok = mediaMetadata;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzm(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("breaks")) {
            JSONArray jSONArray = jSONObject.getJSONArray("breaks");
            this.zzaoo = new ArrayList(jSONArray.length());
            int i = 0;
            while (true) {
                if (i >= jSONArray.length()) {
                    break;
                }
                AdBreakInfo zzk = AdBreakInfo.zzk(jSONArray.getJSONObject(i));
                if (zzk == null) {
                    this.zzaoo.clear();
                    break;
                } else {
                    this.zzaoo.add(zzk);
                    i++;
                }
            }
        }
        if (jSONObject.has("breakClips")) {
            JSONArray jSONArray2 = jSONObject.getJSONArray("breakClips");
            this.zzaop = new ArrayList(jSONArray2.length());
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                AdBreakClipInfo zzj = AdBreakClipInfo.zzj(jSONArray2.getJSONObject(i2));
                if (zzj == null) {
                    this.zzaop.clear();
                    return;
                }
                this.zzaop.add(zzj);
            }
        }
    }

    void zzz(List<MediaTrack> list) {
        this.zzaom = list;
    }
}
