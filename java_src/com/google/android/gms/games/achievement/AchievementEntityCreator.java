package com.google.android.gms.games.achievement;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.games.PlayerEntity;
/* loaded from: classes2.dex */
public class AchievementEntityCreator implements Parcelable.Creator<AchievementEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(AchievementEntity achievementEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, achievementEntity.getAchievementId(), false);
        zzc.zzc(parcel, 2, achievementEntity.getType());
        zzc.zza(parcel, 3, achievementEntity.getName(), false);
        zzc.zza(parcel, 4, achievementEntity.getDescription(), false);
        zzc.zza(parcel, 5, (Parcelable) achievementEntity.getUnlockedImageUri(), i, false);
        zzc.zza(parcel, 6, achievementEntity.getUnlockedImageUrl(), false);
        zzc.zza(parcel, 7, (Parcelable) achievementEntity.getRevealedImageUri(), i, false);
        zzc.zza(parcel, 8, achievementEntity.getRevealedImageUrl(), false);
        zzc.zzc(parcel, 9, achievementEntity.zzEd());
        zzc.zza(parcel, 10, achievementEntity.zzEe(), false);
        zzc.zza(parcel, 11, (Parcelable) achievementEntity.getPlayer(), i, false);
        zzc.zzc(parcel, 12, achievementEntity.getState());
        zzc.zzc(parcel, 13, achievementEntity.zzEf());
        zzc.zza(parcel, 14, achievementEntity.zzEg(), false);
        zzc.zza(parcel, 15, achievementEntity.getLastUpdatedTimestamp());
        zzc.zza(parcel, 16, achievementEntity.getXpValue());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfA */
    public AchievementEntity createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        int i = 0;
        String str2 = null;
        String str3 = null;
        Uri uri = null;
        String str4 = null;
        Uri uri2 = null;
        String str5 = null;
        int i2 = 0;
        String str6 = null;
        PlayerEntity playerEntity = null;
        int i3 = 0;
        int i4 = 0;
        String str7 = null;
        long j = 0;
        long j2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    uri = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 6:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    uri2 = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 8:
                    str5 = zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 10:
                    str6 = zzb.zzq(parcel, zzaX);
                    break;
                case 11:
                    playerEntity = (PlayerEntity) zzb.zza(parcel, zzaX, PlayerEntity.CREATOR);
                    break;
                case 12:
                    i3 = zzb.zzg(parcel, zzaX);
                    break;
                case 13:
                    i4 = zzb.zzg(parcel, zzaX);
                    break;
                case 14:
                    str7 = zzb.zzq(parcel, zzaX);
                    break;
                case 15:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 16:
                    j2 = zzb.zzi(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new AchievementEntity(str, i, str2, str3, uri, str4, uri2, str5, i2, str6, playerEntity, i3, i4, str7, j, j2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzio */
    public AchievementEntity[] newArray(int i) {
        return new AchievementEntity[i];
    }
}
