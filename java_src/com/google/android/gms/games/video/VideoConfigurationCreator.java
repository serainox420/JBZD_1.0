package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class VideoConfigurationCreator implements Parcelable.Creator<VideoConfiguration> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(VideoConfiguration videoConfiguration, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, videoConfiguration.getQualityLevel());
        zzc.zzc(parcel, 2, videoConfiguration.getCaptureMode());
        zzc.zza(parcel, 3, videoConfiguration.getStreamUrl(), false);
        zzc.zza(parcel, 4, videoConfiguration.zzGF(), false);
        zzc.zza(parcel, 5, videoConfiguration.zzGG(), false);
        zzc.zza(parcel, 6, videoConfiguration.zzGH(), false);
        zzc.zza(parcel, 7, videoConfiguration.zzGI());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgi */
    public VideoConfiguration createFromParcel(Parcel parcel) {
        boolean z = false;
        String str = null;
        int zzaY = zzb.zzaY(parcel);
        String str2 = null;
        String str3 = null;
        String str4 = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new VideoConfiguration(i2, i, str4, str3, str2, str, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjv */
    public VideoConfiguration[] newArray(int i) {
        return new VideoConfiguration[i];
    }
}
