package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public final class VideoConfiguration extends zza {
    public static final int CAPTURE_MODE_FILE = 0;
    public static final int CAPTURE_MODE_STREAM = 1;
    public static final int CAPTURE_MODE_UNKNOWN = -1;
    public static final Parcelable.Creator<VideoConfiguration> CREATOR = new VideoConfigurationCreator();
    public static final int NUM_CAPTURE_MODE = 2;
    public static final int NUM_QUALITY_LEVEL = 4;
    public static final int QUALITY_LEVEL_FULLHD = 3;
    public static final int QUALITY_LEVEL_HD = 1;
    public static final int QUALITY_LEVEL_SD = 0;
    public static final int QUALITY_LEVEL_UNKNOWN = -1;
    public static final int QUALITY_LEVEL_XHD = 2;
    private final int zzbfQ;
    private final int zzbfX;
    private final String zzbfY;
    private final String zzbfZ;
    private final String zzbga;
    private final String zzbgb;
    private final boolean zzbgc;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private int zzbfQ;
        private int zzbfX;
        private boolean zzbgc = true;
        private String zzbfY = null;
        private String zzbfZ = null;
        private String zzbga = null;
        private String zzbgb = null;

        public Builder(int i, int i2) {
            this.zzbfX = i;
            this.zzbfQ = i2;
        }

        public VideoConfiguration build() {
            return new VideoConfiguration(this.zzbfX, this.zzbfQ, null, null, null, null, this.zzbgc);
        }

        public Builder setCaptureMode(int i) {
            this.zzbfQ = i;
            return this;
        }

        public Builder setQualityLevel(int i) {
            this.zzbfX = i;
            return this;
        }
    }

    public VideoConfiguration(int i, int i2, String str, String str2, String str3, String str4, boolean z) {
        boolean z2 = true;
        zzac.zzax(isValidQualityLevel(i, false));
        zzac.zzax(isValidCaptureMode(i2, false));
        this.zzbfX = i;
        this.zzbfQ = i2;
        this.zzbgc = z;
        if (i2 == 1) {
            this.zzbfZ = str2;
            this.zzbfY = str;
            this.zzbga = str3;
            this.zzbgb = str4;
            return;
        }
        zzac.zzb(str2 == null, "Stream key should be null when not streaming");
        zzac.zzb(str == null, "Stream url should be null when not streaming");
        zzac.zzb(str3 == null, "Stream title should be null when not streaming");
        zzac.zzb(str4 != null ? false : z2, "Stream description should be null when not streaming");
        this.zzbfZ = null;
        this.zzbfY = null;
        this.zzbga = null;
        this.zzbgb = null;
    }

    public static boolean isValidCaptureMode(int i, boolean z) {
        switch (i) {
            case -1:
                return z;
            case 0:
            case 1:
                return true;
            default:
                return false;
        }
    }

    public static boolean isValidQualityLevel(int i, boolean z) {
        switch (i) {
            case -1:
                return z;
            case 0:
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    public int getCaptureMode() {
        return this.zzbfQ;
    }

    public int getQualityLevel() {
        return this.zzbfX;
    }

    public String getStreamUrl() {
        return this.zzbfY;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        VideoConfigurationCreator.zza(this, parcel, i);
    }

    public String zzGF() {
        return this.zzbfZ;
    }

    public String zzGG() {
        return this.zzbga;
    }

    public String zzGH() {
        return this.zzbgb;
    }

    public boolean zzGI() {
        return this.zzbgc;
    }
}
