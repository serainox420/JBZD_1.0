package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class RoomEntityCreator implements Parcelable.Creator<RoomEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(RoomEntity roomEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, roomEntity.getRoomId(), false);
        zzc.zza(parcel, 2, roomEntity.getCreatorId(), false);
        zzc.zza(parcel, 3, roomEntity.getCreationTimestamp());
        zzc.zzc(parcel, 4, roomEntity.getStatus());
        zzc.zza(parcel, 5, roomEntity.getDescription(), false);
        zzc.zzc(parcel, 6, roomEntity.getVariant());
        zzc.zza(parcel, 7, roomEntity.getAutoMatchCriteria(), false);
        zzc.zzc(parcel, 8, roomEntity.getParticipants(), false);
        zzc.zzc(parcel, 9, roomEntity.getAutoMatchWaitEstimateSeconds());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfW */
    public RoomEntity createFromParcel(Parcel parcel) {
        int i = 0;
        ArrayList arrayList = null;
        int zzaY = zzb.zzaY(parcel);
        long j = 0;
        Bundle bundle = null;
        int i2 = 0;
        String str = null;
        int i3 = 0;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    i3 = zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    bundle = zzb.zzs(parcel, zzaX);
                    break;
                case 8:
                    arrayList = zzb.zzc(parcel, zzaX, ParticipantEntity.CREATOR);
                    break;
                case 9:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new RoomEntity(str3, str2, j, i3, str, i2, bundle, arrayList, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjf */
    public RoomEntity[] newArray(int i) {
        return new RoomEntity[i];
    }
}
