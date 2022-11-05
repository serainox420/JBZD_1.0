package com.google.android.gms.games.stats;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class PlayerStatsEntityCreator implements Parcelable.Creator<PlayerStatsEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(PlayerStatsEntity playerStatsEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, playerStatsEntity.getAverageSessionLength());
        zzc.zza(parcel, 2, playerStatsEntity.getChurnProbability());
        zzc.zzc(parcel, 3, playerStatsEntity.getDaysSinceLastPlayed());
        zzc.zzc(parcel, 4, playerStatsEntity.getNumberOfPurchases());
        zzc.zzc(parcel, 5, playerStatsEntity.getNumberOfSessions());
        zzc.zza(parcel, 6, playerStatsEntity.getSessionPercentile());
        zzc.zza(parcel, 7, playerStatsEntity.getSpendPercentile());
        zzc.zza(parcel, 8, playerStatsEntity.zzGC(), false);
        zzc.zza(parcel, 9, playerStatsEntity.getSpendProbability());
        zzc.zza(parcel, 10, playerStatsEntity.getHighSpenderProbability());
        zzc.zza(parcel, 11, playerStatsEntity.getTotalSpendNext28Days());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgg */
    public PlayerStatsEntity createFromParcel(Parcel parcel) {
        int i = 0;
        float f = BitmapDescriptorFactory.HUE_RED;
        int zzaY = zzb.zzaY(parcel);
        Bundle bundle = null;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        int i2 = 0;
        int i3 = 0;
        float f6 = 0.0f;
        float f7 = 0.0f;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    f7 = zzb.zzl(parcel, zzaX);
                    break;
                case 2:
                    f6 = zzb.zzl(parcel, zzaX);
                    break;
                case 3:
                    i3 = zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    f5 = zzb.zzl(parcel, zzaX);
                    break;
                case 7:
                    f4 = zzb.zzl(parcel, zzaX);
                    break;
                case 8:
                    bundle = zzb.zzs(parcel, zzaX);
                    break;
                case 9:
                    f3 = zzb.zzl(parcel, zzaX);
                    break;
                case 10:
                    f2 = zzb.zzl(parcel, zzaX);
                    break;
                case 11:
                    f = zzb.zzl(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new PlayerStatsEntity(f7, f6, i3, i2, i, f5, f4, bundle, f3, f2, f);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjs */
    public PlayerStatsEntity[] newArray(int i) {
        return new PlayerStatsEntity[i];
    }
}
