package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class TurnBasedMatchEntityCreator implements Parcelable.Creator<TurnBasedMatchEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(TurnBasedMatchEntity turnBasedMatchEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, (Parcelable) turnBasedMatchEntity.getGame(), i, false);
        zzc.zza(parcel, 2, turnBasedMatchEntity.getMatchId(), false);
        zzc.zza(parcel, 3, turnBasedMatchEntity.getCreatorId(), false);
        zzc.zza(parcel, 4, turnBasedMatchEntity.getCreationTimestamp());
        zzc.zza(parcel, 5, turnBasedMatchEntity.getLastUpdaterId(), false);
        zzc.zza(parcel, 6, turnBasedMatchEntity.getLastUpdatedTimestamp());
        zzc.zza(parcel, 7, turnBasedMatchEntity.getPendingParticipantId(), false);
        zzc.zzc(parcel, 8, turnBasedMatchEntity.getStatus());
        zzc.zzc(parcel, 10, turnBasedMatchEntity.getVariant());
        zzc.zzc(parcel, 11, turnBasedMatchEntity.getVersion());
        zzc.zza(parcel, 12, turnBasedMatchEntity.getData(), false);
        zzc.zzc(parcel, 13, turnBasedMatchEntity.getParticipants(), false);
        zzc.zza(parcel, 14, turnBasedMatchEntity.getRematchId(), false);
        zzc.zza(parcel, 15, turnBasedMatchEntity.getPreviousMatchData(), false);
        zzc.zzc(parcel, 16, turnBasedMatchEntity.getMatchNumber());
        zzc.zza(parcel, 17, turnBasedMatchEntity.getAutoMatchCriteria(), false);
        zzc.zzc(parcel, 18, turnBasedMatchEntity.getTurnStatus());
        zzc.zza(parcel, 19, turnBasedMatchEntity.isLocallyModified());
        zzc.zza(parcel, 20, turnBasedMatchEntity.getDescription(), false);
        zzc.zza(parcel, 21, turnBasedMatchEntity.getDescriptionParticipantId(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfX */
    public TurnBasedMatchEntity createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        GameEntity gameEntity = null;
        String str = null;
        String str2 = null;
        long j = 0;
        String str3 = null;
        long j2 = 0;
        String str4 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        byte[] bArr = null;
        ArrayList arrayList = null;
        String str5 = null;
        byte[] bArr2 = null;
        int i4 = 0;
        Bundle bundle = null;
        int i5 = 0;
        boolean z = false;
        String str6 = null;
        String str7 = null;
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
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 5:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    j2 = zzb.zzi(parcel, zzaX);
                    break;
                case 7:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 9:
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
                case 10:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 11:
                    i3 = zzb.zzg(parcel, zzaX);
                    break;
                case 12:
                    bArr = zzb.zzt(parcel, zzaX);
                    break;
                case 13:
                    arrayList = zzb.zzc(parcel, zzaX, ParticipantEntity.CREATOR);
                    break;
                case 14:
                    str5 = zzb.zzq(parcel, zzaX);
                    break;
                case 15:
                    bArr2 = zzb.zzt(parcel, zzaX);
                    break;
                case 16:
                    i4 = zzb.zzg(parcel, zzaX);
                    break;
                case 17:
                    bundle = zzb.zzs(parcel, zzaX);
                    break;
                case 18:
                    i5 = zzb.zzg(parcel, zzaX);
                    break;
                case 19:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                case 20:
                    str6 = zzb.zzq(parcel, zzaX);
                    break;
                case 21:
                    str7 = zzb.zzq(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new TurnBasedMatchEntity(gameEntity, str, str2, j, str3, j2, str4, i, i2, i3, bArr, arrayList, str5, bArr2, i4, bundle, i5, z, str6, str7);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjg */
    public TurnBasedMatchEntity[] newArray(int i) {
        return new TurnBasedMatchEntity[i];
    }
}
