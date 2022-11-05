package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class VideoEntityCreator implements Parcelable.Creator<VideoEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(VideoEntity videoEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, videoEntity.getDuration());
        zzc.zza(parcel, 2, videoEntity.zzGE(), false);
        zzc.zza(parcel, 3, videoEntity.getFileSize());
        zzc.zza(parcel, 4, videoEntity.getStartTime());
        zzc.zza(parcel, 5, videoEntity.getPackageName(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgj */
    public VideoEntity createFromParcel(Parcel parcel) {
        long j = 0;
        String str = null;
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        long j2 = 0;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    j2 = zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 5:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new VideoEntity(i, str2, j2, j, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjw */
    public VideoEntity[] newArray(int i) {
        return new VideoEntity[i];
    }
}
