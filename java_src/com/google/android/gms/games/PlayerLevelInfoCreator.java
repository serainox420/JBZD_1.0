package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class PlayerLevelInfoCreator implements Parcelable.Creator<PlayerLevelInfo> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(PlayerLevelInfo playerLevelInfo, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, playerLevelInfo.getCurrentXpTotal());
        zzc.zza(parcel, 2, playerLevelInfo.getLastLevelUpTimestamp());
        zzc.zza(parcel, 3, (Parcelable) playerLevelInfo.getCurrentLevel(), i, false);
        zzc.zza(parcel, 4, (Parcelable) playerLevelInfo.getNextLevel(), i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfz */
    public PlayerLevelInfo createFromParcel(Parcel parcel) {
        long j = 0;
        PlayerLevel playerLevel = null;
        int zzaY = zzb.zzaY(parcel);
        PlayerLevel playerLevel2 = null;
        long j2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    j2 = zzb.zzi(parcel, zzaX);
                    break;
                case 2:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    playerLevel2 = (PlayerLevel) zzb.zza(parcel, zzaX, PlayerLevel.CREATOR);
                    break;
                case 4:
                    playerLevel = (PlayerLevel) zzb.zza(parcel, zzaX, PlayerLevel.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new PlayerLevelInfo(j2, j, playerLevel2, playerLevel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzin */
    public PlayerLevelInfo[] newArray(int i) {
        return new PlayerLevelInfo[i];
    }
}
