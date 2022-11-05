package com.google.android.gms.games.request;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.PlayerEntity;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class GameRequestEntityCreator implements Parcelable.Creator<GameRequestEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(GameRequestEntity gameRequestEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, (Parcelable) gameRequestEntity.getGame(), i, false);
        zzc.zza(parcel, 2, (Parcelable) gameRequestEntity.getSender(), i, false);
        zzc.zza(parcel, 3, gameRequestEntity.getData(), false);
        zzc.zza(parcel, 4, gameRequestEntity.getRequestId(), false);
        zzc.zzc(parcel, 5, gameRequestEntity.getRecipients(), false);
        zzc.zzc(parcel, 7, gameRequestEntity.getType());
        zzc.zza(parcel, 9, gameRequestEntity.getCreationTimestamp());
        zzc.zza(parcel, 10, gameRequestEntity.getExpirationTimestamp());
        zzc.zza(parcel, 11, gameRequestEntity.zzGy(), false);
        zzc.zzc(parcel, 12, gameRequestEntity.getStatus());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzga */
    public GameRequestEntity createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        GameEntity gameEntity = null;
        PlayerEntity playerEntity = null;
        byte[] bArr = null;
        String str = null;
        ArrayList arrayList = null;
        int i = 0;
        long j = 0;
        long j2 = 0;
        Bundle bundle = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    gameEntity = (GameEntity) zzb.zza(parcel, zzaX, GameEntity.CREATOR);
                    break;
                case 2:
                    playerEntity = (PlayerEntity) zzb.zza(parcel, zzaX, PlayerEntity.CREATOR);
                    break;
                case 3:
                    bArr = zzb.zzt(parcel, zzaX);
                    break;
                case 4:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    arrayList = zzb.zzc(parcel, zzaX, PlayerEntity.CREATOR);
                    break;
                case 6:
                case 8:
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
                case 7:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 9:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 10:
                    j2 = zzb.zzi(parcel, zzaX);
                    break;
                case 11:
                    bundle = zzb.zzs(parcel, zzaX);
                    break;
                case 12:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new GameRequestEntity(gameEntity, playerEntity, bArr, str, arrayList, i, j, j2, bundle, i2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjj */
    public GameRequestEntity[] newArray(int i) {
        return new GameRequestEntity[i];
    }
}
