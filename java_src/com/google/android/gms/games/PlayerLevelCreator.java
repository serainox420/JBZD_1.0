package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class PlayerLevelCreator implements Parcelable.Creator<PlayerLevel> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(PlayerLevel playerLevel, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, playerLevel.getLevelNumber());
        zzc.zza(parcel, 2, playerLevel.getMinXp());
        zzc.zza(parcel, 3, playerLevel.getMaxXp());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfy */
    public PlayerLevel createFromParcel(Parcel parcel) {
        long j = 0;
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        long j2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    j2 = zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new PlayerLevel(i, j2, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzim */
    public PlayerLevel[] newArray(int i) {
        return new PlayerLevel[i];
    }
}
