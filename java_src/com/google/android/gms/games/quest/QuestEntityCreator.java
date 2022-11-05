package com.google.android.gms.games.quest;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.games.GameEntity;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class QuestEntityCreator implements Parcelable.Creator<QuestEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(QuestEntity questEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, (Parcelable) questEntity.getGame(), i, false);
        zzc.zza(parcel, 2, questEntity.getQuestId(), false);
        zzc.zza(parcel, 3, questEntity.getAcceptedTimestamp());
        zzc.zza(parcel, 4, (Parcelable) questEntity.getBannerImageUri(), i, false);
        zzc.zza(parcel, 5, questEntity.getBannerImageUrl(), false);
        zzc.zza(parcel, 6, questEntity.getDescription(), false);
        zzc.zza(parcel, 7, questEntity.getEndTimestamp());
        zzc.zza(parcel, 8, questEntity.getLastUpdatedTimestamp());
        zzc.zza(parcel, 9, (Parcelable) questEntity.getIconImageUri(), i, false);
        zzc.zza(parcel, 10, questEntity.getIconImageUrl(), false);
        zzc.zza(parcel, 12, questEntity.getName(), false);
        zzc.zza(parcel, 13, questEntity.zzGx());
        zzc.zza(parcel, 14, questEntity.getStartTimestamp());
        zzc.zzc(parcel, 15, questEntity.getState());
        zzc.zzc(parcel, 16, questEntity.getType());
        zzc.zzc(parcel, 17, questEntity.zzGw(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfZ */
    public QuestEntity createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        GameEntity gameEntity = null;
        String str = null;
        long j = 0;
        Uri uri = null;
        String str2 = null;
        String str3 = null;
        long j2 = 0;
        long j3 = 0;
        Uri uri2 = null;
        String str4 = null;
        String str5 = null;
        long j4 = 0;
        long j5 = 0;
        int i = 0;
        int i2 = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    gameEntity = (GameEntity) zzb.zza(parcel, zzaX, GameEntity.CREATOR);
                    break;
                case 2:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    uri = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 5:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    j2 = zzb.zzi(parcel, zzaX);
                    break;
                case 8:
                    j3 = zzb.zzi(parcel, zzaX);
                    break;
                case 9:
                    uri2 = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 10:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 11:
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
                case 12:
                    str5 = zzb.zzq(parcel, zzaX);
                    break;
                case 13:
                    j4 = zzb.zzi(parcel, zzaX);
                    break;
                case 14:
                    j5 = zzb.zzi(parcel, zzaX);
                    break;
                case 15:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 16:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 17:
                    arrayList = zzb.zzc(parcel, zzaX, MilestoneEntity.CREATOR);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new QuestEntity(gameEntity, str, j, uri, str2, str3, j2, j3, uri2, str4, str5, j4, j5, i, i2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzji */
    public QuestEntity[] newArray(int i) {
        return new QuestEntity[i];
    }
}
