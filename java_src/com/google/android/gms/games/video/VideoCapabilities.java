package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class VideoCapabilities extends GamesAbstractSafeParcelable {
    public static final Parcelable.Creator<VideoCapabilities> CREATOR = new VideoCapabilitiesCreator();
    private final boolean zzbfS;
    private final boolean zzbfT;
    private final boolean zzbfU;
    private final boolean[] zzbfV;
    private final boolean[] zzbfW;

    public VideoCapabilities(boolean z, boolean z2, boolean z3, boolean[] zArr, boolean[] zArr2) {
        this.zzbfS = z;
        this.zzbfT = z2;
        this.zzbfU = z3;
        this.zzbfV = zArr;
        this.zzbfW = zArr2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof VideoCapabilities)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        VideoCapabilities videoCapabilities = (VideoCapabilities) obj;
        return zzaa.equal(videoCapabilities.getSupportedCaptureModes(), getSupportedCaptureModes()) && zzaa.equal(videoCapabilities.getSupportedQualityLevels(), getSupportedQualityLevels()) && zzaa.equal(Boolean.valueOf(videoCapabilities.isCameraSupported()), Boolean.valueOf(isCameraSupported())) && zzaa.equal(Boolean.valueOf(videoCapabilities.isMicSupported()), Boolean.valueOf(isMicSupported())) && zzaa.equal(Boolean.valueOf(videoCapabilities.isWriteStorageSupported()), Boolean.valueOf(isWriteStorageSupported()));
    }

    public boolean[] getSupportedCaptureModes() {
        return this.zzbfV;
    }

    public boolean[] getSupportedQualityLevels() {
        return this.zzbfW;
    }

    public int hashCode() {
        return zzaa.hashCode(getSupportedCaptureModes(), getSupportedQualityLevels(), Boolean.valueOf(isCameraSupported()), Boolean.valueOf(isMicSupported()), Boolean.valueOf(isWriteStorageSupported()));
    }

    public boolean isCameraSupported() {
        return this.zzbfS;
    }

    public boolean isFullySupported(int i, int i2) {
        return this.zzbfS && this.zzbfT && this.zzbfU && supportsCaptureMode(i) && supportsQualityLevel(i2);
    }

    public boolean isMicSupported() {
        return this.zzbfT;
    }

    public boolean isWriteStorageSupported() {
        return this.zzbfU;
    }

    public boolean supportsCaptureMode(int i) {
        zzac.zzaw(VideoConfiguration.isValidCaptureMode(i, false));
        return this.zzbfV[i];
    }

    public boolean supportsQualityLevel(int i) {
        zzac.zzaw(VideoConfiguration.isValidQualityLevel(i, false));
        return this.zzbfW[i];
    }

    public String toString() {
        return zzaa.zzv(this).zzg("SupportedCaptureModes", getSupportedCaptureModes()).zzg("SupportedQualityLevels", getSupportedQualityLevels()).zzg("CameraSupported", Boolean.valueOf(isCameraSupported())).zzg("MicSupported", Boolean.valueOf(isMicSupported())).zzg("StorageWriteSupported", Boolean.valueOf(isWriteStorageSupported())).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        VideoCapabilitiesCreator.zza(this, parcel, i);
    }
}
