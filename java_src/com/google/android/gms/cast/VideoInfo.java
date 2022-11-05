package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.zzaa;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class VideoInfo extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<VideoInfo> CREATOR = new zzo();
    public static final int HDR_TYPE_DV = 3;
    public static final int HDR_TYPE_HDR = 4;
    public static final int HDR_TYPE_HDR10 = 2;
    public static final int HDR_TYPE_SDR = 1;
    public static final int HDR_TYPE_UNKNOWN = 0;
    private int zzapT;
    private int zzrC;
    private int zzrD;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoInfo(int i, int i2, int i3) {
        this.zzrC = i;
        this.zzrD = i2;
        this.zzapT = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static VideoInfo zzq(JSONObject jSONObject) {
        VideoInfo videoInfo = null;
        int i = 2;
        if (jSONObject == null) {
            return null;
        }
        try {
            String string = jSONObject.getString("hdrType");
            char c = 65535;
            switch (string.hashCode()) {
                case 3218:
                    if (string.equals("dv")) {
                        c = 0;
                        break;
                    }
                    break;
                case 103158:
                    if (string.equals("hdr")) {
                        c = 2;
                        break;
                    }
                    break;
                case 113729:
                    if (string.equals("sdr")) {
                        c = 3;
                        break;
                    }
                    break;
                case 99136405:
                    if (string.equals("hdr10")) {
                        c = 1;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    i = 3;
                    break;
                case 1:
                    break;
                case 2:
                    i = 4;
                    break;
                case 3:
                    i = 1;
                    break;
                default:
                    Log.d("VideoInfo", String.format(Locale.ROOT, "Unknown HDR type: %s", string));
                    i = 0;
                    break;
            }
            videoInfo = new VideoInfo(jSONObject.getInt("width"), jSONObject.getInt("height"), i);
            return videoInfo;
        } catch (JSONException e) {
            Log.d("VideoInfo", String.format(Locale.ROOT, "Error while creating a VideoInfo instance from JSON: %s", e.getMessage()));
            return videoInfo;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoInfo)) {
            return false;
        }
        VideoInfo videoInfo = (VideoInfo) obj;
        return this.zzrD == videoInfo.getHeight() && this.zzrC == videoInfo.getWidth() && this.zzapT == videoInfo.getHdrType();
    }

    public int getHdrType() {
        return this.zzapT;
    }

    public int getHeight() {
        return this.zzrD;
    }

    public int getWidth() {
        return this.zzrC;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzrD), Integer.valueOf(this.zzrC), Integer.valueOf(this.zzapT));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzo.zza(this, parcel, i);
    }
}
