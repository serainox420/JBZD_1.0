package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class VideoCapabilitiesCreator implements Parcelable.Creator<VideoCapabilities> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(VideoCapabilities videoCapabilities, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, videoCapabilities.isCameraSupported());
        zzc.zza(parcel, 2, videoCapabilities.isMicSupported());
        zzc.zza(parcel, 3, videoCapabilities.isWriteStorageSupported());
        zzc.zza(parcel, 4, videoCapabilities.getSupportedCaptureModes(), false);
        zzc.zza(parcel, 5, videoCapabilities.getSupportedQualityLevels(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgh */
    public VideoCapabilities createFromParcel(Parcel parcel) {
        boolean[] zArr = null;
        boolean z = false;
        int zzaY = zzb.zzaY(parcel);
        boolean[] zArr2 = null;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    z3 = zzb.zzc(parcel, zzaX);
                    break;
                case 2:
                    z2 = zzb.zzc(parcel, zzaX);
                    break;
                case 3:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    zArr2 = zzb.zzv(parcel, zzaX);
                    break;
                case 5:
                    zArr = zzb.zzv(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new VideoCapabilities(z3, z2, z, zArr2, zArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzju */
    public VideoCapabilities[] newArray(int i) {
        return new VideoCapabilities[i];
    }
}
