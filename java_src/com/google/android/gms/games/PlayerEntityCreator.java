package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntity;
/* loaded from: classes2.dex */
public class PlayerEntityCreator implements Parcelable.Creator<PlayerEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(PlayerEntity playerEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, playerEntity.getPlayerId(), false);
        zzc.zza(parcel, 2, playerEntity.getDisplayName(), false);
        zzc.zza(parcel, 3, (Parcelable) playerEntity.getIconImageUri(), i, false);
        zzc.zza(parcel, 4, (Parcelable) playerEntity.getHiResImageUri(), i, false);
        zzc.zza(parcel, 5, playerEntity.getRetrievedTimestamp());
        zzc.zzc(parcel, 6, playerEntity.zzDS());
        zzc.zza(parcel, 7, playerEntity.getLastPlayedWithTimestamp());
        zzc.zza(parcel, 8, playerEntity.getIconImageUrl(), false);
        zzc.zza(parcel, 9, playerEntity.getHiResImageUrl(), false);
        zzc.zza(parcel, 14, playerEntity.getTitle(), false);
        zzc.zza(parcel, 15, (Parcelable) playerEntity.zzDU(), i, false);
        zzc.zza(parcel, 16, (Parcelable) playerEntity.getLevelInfo(), i, false);
        zzc.zza(parcel, 18, playerEntity.zzDT());
        zzc.zza(parcel, 19, playerEntity.zzDR());
        zzc.zza(parcel, 20, playerEntity.zzDQ(), false);
        zzc.zza(parcel, 21, playerEntity.getName(), false);
        zzc.zza(parcel, 22, (Parcelable) playerEntity.getBannerImageLandscapeUri(), i, false);
        zzc.zza(parcel, 23, playerEntity.getBannerImageLandscapeUrl(), false);
        zzc.zza(parcel, 24, (Parcelable) playerEntity.getBannerImagePortraitUri(), i, false);
        zzc.zza(parcel, 25, playerEntity.getBannerImagePortraitUrl(), false);
        zzc.zzc(parcel, 26, playerEntity.zzDV());
        zzc.zza(parcel, 27, playerEntity.zzDW());
        zzc.zza(parcel, 28, playerEntity.isMuted());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfx */
    public PlayerEntity createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        String str2 = null;
        Uri uri = null;
        Uri uri2 = null;
        long j = 0;
        int i = 0;
        long j2 = 0;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        MostRecentGameInfoEntity mostRecentGameInfoEntity = null;
        PlayerLevelInfo playerLevelInfo = null;
        boolean z = false;
        boolean z2 = false;
        String str6 = null;
        String str7 = null;
        Uri uri3 = null;
        String str8 = null;
        Uri uri4 = null;
        String str9 = null;
        int i2 = 0;
        long j3 = 0;
        boolean z3 = false;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    uri = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 4:
                    uri2 = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 5:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 6:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    j2 = zzb.zzi(parcel, zzaX);
                    break;
                case 8:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                case 11:
                case 12:
                case 13:
                case 17:
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
                case 14:
                    str5 = zzb.zzq(parcel, zzaX);
                    break;
                case 15:
                    mostRecentGameInfoEntity = (MostRecentGameInfoEntity) zzb.zza(parcel, zzaX, MostRecentGameInfoEntity.CREATOR);
                    break;
                case 16:
                    playerLevelInfo = (PlayerLevelInfo) zzb.zza(parcel, zzaX, PlayerLevelInfo.CREATOR);
                    break;
                case 18:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                case 19:
                    z2 = zzb.zzc(parcel, zzaX);
                    break;
                case 20:
                    str6 = zzb.zzq(parcel, zzaX);
                    break;
                case 21:
                    str7 = zzb.zzq(parcel, zzaX);
                    break;
                case 22:
                    uri3 = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 23:
                    str8 = zzb.zzq(parcel, zzaX);
                    break;
                case 24:
                    uri4 = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 25:
                    str9 = zzb.zzq(parcel, zzaX);
                    break;
                case 26:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 27:
                    j3 = zzb.zzi(parcel, zzaX);
                    break;
                case 28:
                    z3 = zzb.zzc(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new PlayerEntity(str, str2, uri, uri2, j, i, j2, str3, str4, str5, mostRecentGameInfoEntity, playerLevelInfo, z, z2, str6, str7, uri3, str8, uri4, str9, i2, j3, z3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzil */
    public PlayerEntity[] newArray(int i) {
        return new PlayerEntity[i];
    }
}
