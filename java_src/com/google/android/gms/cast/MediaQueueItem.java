package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.internal.zzyr;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class MediaQueueItem extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<MediaQueueItem> CREATOR = new zzk();
    public static final double DEFAULT_PLAYBACK_DURATION = Double.POSITIVE_INFINITY;
    public static final int INVALID_ITEM_ID = 0;
    String zzamN;
    private JSONObject zzamO;
    private boolean zzaoA;
    private double zzaoB;
    private double zzaoC;
    private double zzaoD;
    private long[] zzaoE;
    private MediaInfo zzaoy;
    private int zzaoz;

    /* loaded from: classes2.dex */
    public static class Builder {
        private final MediaQueueItem zzaoF;

        public Builder(MediaInfo mediaInfo) throws IllegalArgumentException {
            this.zzaoF = new MediaQueueItem(mediaInfo);
        }

        public Builder(MediaQueueItem mediaQueueItem) throws IllegalArgumentException {
            this.zzaoF = new MediaQueueItem();
        }

        public Builder(JSONObject jSONObject) throws JSONException {
            this.zzaoF = new MediaQueueItem(jSONObject);
        }

        public MediaQueueItem build() {
            this.zzaoF.zzsx();
            return this.zzaoF;
        }

        public Builder clearItemId() {
            this.zzaoF.zzbP(0);
            return this;
        }

        public Builder setActiveTrackIds(long[] jArr) {
            this.zzaoF.zza(jArr);
            return this;
        }

        public Builder setAutoplay(boolean z) {
            this.zzaoF.zzal(z);
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.zzaoF.setCustomData(jSONObject);
            return this;
        }

        public Builder setPlaybackDuration(double d) {
            this.zzaoF.zzd(d);
            return this;
        }

        public Builder setPreloadTime(double d) throws IllegalArgumentException {
            this.zzaoF.zze(d);
            return this;
        }

        public Builder setStartTime(double d) throws IllegalArgumentException {
            this.zzaoF.zzc(d);
            return this;
        }
    }

    private MediaQueueItem(MediaInfo mediaInfo) throws IllegalArgumentException {
        this(mediaInfo, 0, true, 0.0d, Double.POSITIVE_INFINITY, 0.0d, null, null);
        if (mediaInfo == null) {
            throw new IllegalArgumentException("media cannot be null.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaQueueItem(MediaInfo mediaInfo, int i, boolean z, double d, double d2, double d3, long[] jArr, String str) {
        this.zzaoy = mediaInfo;
        this.zzaoz = i;
        this.zzaoA = z;
        this.zzaoB = d;
        this.zzaoC = d2;
        this.zzaoD = d3;
        this.zzaoE = jArr;
        this.zzamN = str;
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

    private MediaQueueItem(MediaQueueItem mediaQueueItem) throws IllegalArgumentException {
        this(mediaQueueItem.getMedia(), mediaQueueItem.getItemId(), mediaQueueItem.getAutoplay(), mediaQueueItem.getStartTime(), mediaQueueItem.getPlaybackDuration(), mediaQueueItem.getPreloadTime(), mediaQueueItem.getActiveTrackIds(), null);
        if (this.zzaoy == null) {
            throw new IllegalArgumentException("media cannot be null.");
        }
        this.zzamO = mediaQueueItem.getCustomData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaQueueItem(JSONObject jSONObject) throws JSONException {
        this(null, 0, true, 0.0d, Double.POSITIVE_INFINITY, 0.0d, null, null);
        zzo(jSONObject);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueItem)) {
            return false;
        }
        MediaQueueItem mediaQueueItem = (MediaQueueItem) obj;
        if ((this.zzamO == null) != (mediaQueueItem.zzamO == null)) {
            return false;
        }
        if (this.zzamO != null && mediaQueueItem.zzamO != null && !zzq.zze(this.zzamO, mediaQueueItem.zzamO)) {
            return false;
        }
        if (!zzyr.zza(this.zzaoy, mediaQueueItem.zzaoy) || this.zzaoz != mediaQueueItem.zzaoz || this.zzaoA != mediaQueueItem.zzaoA || this.zzaoB != mediaQueueItem.zzaoB || this.zzaoC != mediaQueueItem.zzaoC || this.zzaoD != mediaQueueItem.zzaoD || !Arrays.equals(this.zzaoE, mediaQueueItem.zzaoE)) {
            z = false;
        }
        return z;
    }

    public long[] getActiveTrackIds() {
        return this.zzaoE;
    }

    public boolean getAutoplay() {
        return this.zzaoA;
    }

    public JSONObject getCustomData() {
        return this.zzamO;
    }

    public int getItemId() {
        return this.zzaoz;
    }

    public MediaInfo getMedia() {
        return this.zzaoy;
    }

    public double getPlaybackDuration() {
        return this.zzaoC;
    }

    public double getPreloadTime() {
        return this.zzaoD;
    }

    public double getStartTime() {
        return this.zzaoB;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaoy, Integer.valueOf(this.zzaoz), Boolean.valueOf(this.zzaoA), Double.valueOf(this.zzaoB), Double.valueOf(this.zzaoC), Double.valueOf(this.zzaoD), Integer.valueOf(Arrays.hashCode(this.zzaoE)), String.valueOf(this.zzamO));
    }

    void setCustomData(JSONObject jSONObject) {
        this.zzamO = jSONObject;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ShareConstants.WEB_DIALOG_PARAM_MEDIA, this.zzaoy.toJson());
            if (this.zzaoz != 0) {
                jSONObject.put("itemId", this.zzaoz);
            }
            jSONObject.put(AudienceNetworkActivity.AUTOPLAY, this.zzaoA);
            jSONObject.put("startTime", this.zzaoB);
            if (this.zzaoC != Double.POSITIVE_INFINITY) {
                jSONObject.put("playbackDuration", this.zzaoC);
            }
            jSONObject.put("preloadTime", this.zzaoD);
            if (this.zzaoE != null) {
                JSONArray jSONArray = new JSONArray();
                for (long j : this.zzaoE) {
                    jSONArray.put(j);
                }
                jSONObject.put("activeTrackIds", jSONArray);
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
        zzk.zza(this, parcel, i);
    }

    void zza(long[] jArr) {
        this.zzaoE = jArr;
    }

    void zzal(boolean z) {
        this.zzaoA = z;
    }

    void zzbP(int i) {
        this.zzaoz = i;
    }

    void zzc(double d) throws IllegalArgumentException {
        if (Double.isNaN(d) || d < 0.0d) {
            throw new IllegalArgumentException("startTime cannot be negative or NaN.");
        }
        this.zzaoB = d;
    }

    void zzd(double d) throws IllegalArgumentException {
        if (Double.isNaN(d)) {
            throw new IllegalArgumentException("playbackDuration cannot be NaN.");
        }
        this.zzaoC = d;
    }

    void zze(double d) throws IllegalArgumentException {
        if (Double.isNaN(d) || d < 0.0d) {
            throw new IllegalArgumentException("preloadTime cannot be negative or NaN.");
        }
        this.zzaoD = d;
    }

    public boolean zzo(JSONObject jSONObject) throws JSONException {
        boolean z;
        boolean z2;
        long[] jArr;
        boolean z3;
        int i;
        if (jSONObject.has(ShareConstants.WEB_DIALOG_PARAM_MEDIA)) {
            this.zzaoy = new MediaInfo(jSONObject.getJSONObject(ShareConstants.WEB_DIALOG_PARAM_MEDIA));
            z = true;
        } else {
            z = false;
        }
        if (jSONObject.has("itemId") && this.zzaoz != (i = jSONObject.getInt("itemId"))) {
            this.zzaoz = i;
            z = true;
        }
        if (jSONObject.has(AudienceNetworkActivity.AUTOPLAY) && this.zzaoA != (z3 = jSONObject.getBoolean(AudienceNetworkActivity.AUTOPLAY))) {
            this.zzaoA = z3;
            z = true;
        }
        if (jSONObject.has("startTime")) {
            double d = jSONObject.getDouble("startTime");
            if (Math.abs(d - this.zzaoB) > 1.0E-7d) {
                this.zzaoB = d;
                z = true;
            }
        }
        if (jSONObject.has("playbackDuration")) {
            double d2 = jSONObject.getDouble("playbackDuration");
            if (Math.abs(d2 - this.zzaoC) > 1.0E-7d) {
                this.zzaoC = d2;
                z = true;
            }
        }
        if (jSONObject.has("preloadTime")) {
            double d3 = jSONObject.getDouble("preloadTime");
            if (Math.abs(d3 - this.zzaoD) > 1.0E-7d) {
                this.zzaoD = d3;
                z = true;
            }
        }
        if (jSONObject.has("activeTrackIds")) {
            JSONArray jSONArray = jSONObject.getJSONArray("activeTrackIds");
            int length = jSONArray.length();
            long[] jArr2 = new long[length];
            for (int i2 = 0; i2 < length; i2++) {
                jArr2[i2] = jSONArray.getLong(i2);
            }
            if (this.zzaoE == null) {
                jArr = jArr2;
                z2 = true;
            } else if (this.zzaoE.length == length) {
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        z2 = false;
                        jArr = jArr2;
                        break;
                    } else if (this.zzaoE[i3] != jArr2[i3]) {
                        jArr = jArr2;
                        z2 = true;
                        break;
                    } else {
                        i3++;
                    }
                }
            } else {
                jArr = jArr2;
                z2 = true;
            }
        } else {
            z2 = false;
            jArr = null;
        }
        if (z2) {
            this.zzaoE = jArr;
            z = true;
        }
        if (jSONObject.has("customData")) {
            this.zzamO = jSONObject.getJSONObject("customData");
            return true;
        }
        return z;
    }

    void zzsx() throws IllegalArgumentException {
        if (this.zzaoy == null) {
            throw new IllegalArgumentException("media cannot be null.");
        }
        if (Double.isNaN(this.zzaoB) || this.zzaoB < 0.0d) {
            throw new IllegalArgumentException("startTime cannot be negative or NaN.");
        }
        if (Double.isNaN(this.zzaoC)) {
            throw new IllegalArgumentException("playbackDuration cannot be NaN.");
        }
        if (!Double.isNaN(this.zzaoD) && this.zzaoD >= 0.0d) {
            return;
        }
        throw new IllegalArgumentException("preloadTime cannot be negative or Nan.");
    }
}
