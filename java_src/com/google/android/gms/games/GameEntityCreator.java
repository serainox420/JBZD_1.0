package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class GameEntityCreator implements Parcelable.Creator<GameEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(GameEntity gameEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, gameEntity.getApplicationId(), false);
        zzc.zza(parcel, 2, gameEntity.getDisplayName(), false);
        zzc.zza(parcel, 3, gameEntity.getPrimaryCategory(), false);
        zzc.zza(parcel, 4, gameEntity.getSecondaryCategory(), false);
        zzc.zza(parcel, 5, gameEntity.getDescription(), false);
        zzc.zza(parcel, 6, gameEntity.getDeveloperName(), false);
        zzc.zza(parcel, 7, (Parcelable) gameEntity.getIconImageUri(), i, false);
        zzc.zza(parcel, 8, (Parcelable) gameEntity.getHiResImageUri(), i, false);
        zzc.zza(parcel, 9, (Parcelable) gameEntity.getFeaturedImageUri(), i, false);
        zzc.zza(parcel, 10, gameEntity.zzDJ());
        zzc.zza(parcel, 11, gameEntity.zzDL());
        zzc.zza(parcel, 12, gameEntity.zzDM(), false);
        zzc.zzc(parcel, 13, gameEntity.zzDN());
        zzc.zzc(parcel, 14, gameEntity.getAchievementTotalCount());
        zzc.zzc(parcel, 15, gameEntity.getLeaderboardCount());
        zzc.zza(parcel, 16, gameEntity.isRealTimeMultiplayerEnabled());
        zzc.zza(parcel, 17, gameEntity.isTurnBasedMultiplayerEnabled());
        zzc.zza(parcel, 18, gameEntity.getIconImageUrl(), false);
        zzc.zza(parcel, 19, gameEntity.getHiResImageUrl(), false);
        zzc.zza(parcel, 20, gameEntity.getFeaturedImageUrl(), false);
        zzc.zza(parcel, 21, gameEntity.isMuted());
        zzc.zza(parcel, 22, gameEntity.zzDK());
        zzc.zza(parcel, 23, gameEntity.areSnapshotsEnabled());
        zzc.zza(parcel, 24, gameEntity.getThemeColor(), false);
        zzc.zza(parcel, 25, gameEntity.hasGamepadSupport());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfw */
    public GameEntity createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        Uri uri = null;
        Uri uri2 = null;
        Uri uri3 = null;
        boolean z = false;
        boolean z2 = false;
        String str7 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z3 = false;
        boolean z4 = false;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        String str11 = null;
        boolean z8 = false;
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
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str5 = zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str6 = zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    uri = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 8:
                    uri2 = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 9:
                    uri3 = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 10:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                case 11:
                    z2 = zzb.zzc(parcel, zzaX);
                    break;
                case 12:
                    str7 = zzb.zzq(parcel, zzaX);
                    break;
                case 13:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 14:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 15:
                    i3 = zzb.zzg(parcel, zzaX);
                    break;
                case 16:
                    z3 = zzb.zzc(parcel, zzaX);
                    break;
                case 17:
                    z4 = zzb.zzc(parcel, zzaX);
                    break;
                case 18:
                    str8 = zzb.zzq(parcel, zzaX);
                    break;
                case 19:
                    str9 = zzb.zzq(parcel, zzaX);
                    break;
                case 20:
                    str10 = zzb.zzq(parcel, zzaX);
                    break;
                case 21:
                    z5 = zzb.zzc(parcel, zzaX);
                    break;
                case 22:
                    z6 = zzb.zzc(parcel, zzaX);
                    break;
                case 23:
                    z7 = zzb.zzc(parcel, zzaX);
                    break;
                case 24:
                    str11 = zzb.zzq(parcel, zzaX);
                    break;
                case 25:
                    z8 = zzb.zzc(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new GameEntity(str, str2, str3, str4, str5, str6, uri, uri2, uri3, z, z2, str7, i, i2, i3, z3, z4, str8, str9, str10, z5, z6, z7, str11, z8);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzij */
    public GameEntity[] newArray(int i) {
        return new GameEntity[i];
    }
}
