package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.games.GameEntity;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class InvitationEntityCreator implements Parcelable.Creator<InvitationEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(InvitationEntity invitationEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, (Parcelable) invitationEntity.getGame(), i, false);
        zzc.zza(parcel, 2, invitationEntity.getInvitationId(), false);
        zzc.zza(parcel, 3, invitationEntity.getCreationTimestamp());
        zzc.zzc(parcel, 4, invitationEntity.getInvitationType());
        zzc.zza(parcel, 5, (Parcelable) invitationEntity.getInviter(), i, false);
        zzc.zzc(parcel, 6, invitationEntity.getParticipants(), false);
        zzc.zzc(parcel, 7, invitationEntity.getVariant());
        zzc.zzc(parcel, 8, invitationEntity.getAvailableAutoMatchSlots());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfS */
    public InvitationEntity createFromParcel(Parcel parcel) {
        int i = 0;
        ArrayList arrayList = null;
        int zzaY = zzb.zzaY(parcel);
        long j = 0;
        int i2 = 0;
        ParticipantEntity participantEntity = null;
        int i3 = 0;
        String str = null;
        GameEntity gameEntity = null;
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
                    i3 = zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    participantEntity = (ParticipantEntity) zzb.zza(parcel, zzaX, ParticipantEntity.CREATOR);
                    break;
                case 6:
                    arrayList = zzb.zzc(parcel, zzaX, ParticipantEntity.CREATOR);
                    break;
                case 7:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 8:
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
        return new InvitationEntity(gameEntity, str, j, i3, participantEntity, arrayList, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjb */
    public InvitationEntity[] newArray(int i) {
        return new InvitationEntity[i];
    }
}
