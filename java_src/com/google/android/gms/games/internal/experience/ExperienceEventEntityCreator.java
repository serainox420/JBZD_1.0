package com.google.android.gms.games.internal.experience;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.games.GameEntity;
/* loaded from: classes2.dex */
public class ExperienceEventEntityCreator implements Parcelable.Creator<ExperienceEventEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ExperienceEventEntity experienceEventEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, experienceEventEntity.zzFG(), false);
        zzc.zza(parcel, 2, (Parcelable) experienceEventEntity.getGame(), i, false);
        zzc.zza(parcel, 3, experienceEventEntity.zzFH(), false);
        zzc.zza(parcel, 4, experienceEventEntity.zzFI(), false);
        zzc.zza(parcel, 5, experienceEventEntity.getIconImageUrl(), false);
        zzc.zza(parcel, 6, (Parcelable) experienceEventEntity.getIconImageUri(), i, false);
        zzc.zza(parcel, 7, experienceEventEntity.zzFJ());
        zzc.zza(parcel, 8, experienceEventEntity.zzFK());
        zzc.zza(parcel, 9, experienceEventEntity.zzFL());
        zzc.zzc(parcel, 10, experienceEventEntity.getType());
        zzc.zzc(parcel, 11, experienceEventEntity.zzFM());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfK */
    public ExperienceEventEntity createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        GameEntity gameEntity = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    gameEntity = (GameEntity) zzb.zza(parcel, zzaX, GameEntity.CREATOR);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    uri = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 7:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 8:
                    j2 = zzb.zzi(parcel, zzaX);
                    break;
                case 9:
                    j3 = zzb.zzi(parcel, zzaX);
                    break;
                case 10:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 11:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new ExperienceEventEntity(str, gameEntity, str2, str3, str4, uri, j, j2, j3, i, i2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziN */
    public ExperienceEventEntity[] newArray(int i) {
        return new ExperienceEventEntity[i];
    }
}
