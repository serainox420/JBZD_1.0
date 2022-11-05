package com.google.android.gms.games.multiplayer;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.games.PlayerEntity;
/* loaded from: classes2.dex */
public class ParticipantEntityCreator implements Parcelable.Creator<ParticipantEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ParticipantEntity participantEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, participantEntity.getParticipantId(), false);
        zzc.zza(parcel, 2, participantEntity.getDisplayName(), false);
        zzc.zza(parcel, 3, (Parcelable) participantEntity.getIconImageUri(), i, false);
        zzc.zza(parcel, 4, (Parcelable) participantEntity.getHiResImageUri(), i, false);
        zzc.zzc(parcel, 5, participantEntity.getStatus());
        zzc.zza(parcel, 6, participantEntity.zzEM(), false);
        zzc.zza(parcel, 7, participantEntity.isConnectedToRoom());
        zzc.zza(parcel, 8, (Parcelable) participantEntity.getPlayer(), i, false);
        zzc.zzc(parcel, 9, participantEntity.getCapabilities());
        zzc.zza(parcel, 10, (Parcelable) participantEntity.getResult(), i, false);
        zzc.zza(parcel, 11, participantEntity.getIconImageUrl(), false);
        zzc.zza(parcel, 12, participantEntity.getHiResImageUrl(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfT */
    public ParticipantEntity createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        String str2 = null;
        Uri uri = null;
        Uri uri2 = null;
        int i = 0;
        String str3 = null;
        boolean z = false;
        PlayerEntity playerEntity = null;
        int i2 = 0;
        ParticipantResult participantResult = null;
        String str4 = null;
        String str5 = null;
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
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                case 8:
                    playerEntity = (PlayerEntity) zzb.zza(parcel, zzaX, PlayerEntity.CREATOR);
                    break;
                case 9:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 10:
                    participantResult = (ParticipantResult) zzb.zza(parcel, zzaX, ParticipantResult.CREATOR);
                    break;
                case 11:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 12:
                    str5 = zzb.zzq(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new ParticipantEntity(str, str2, uri, uri2, i, str3, z, playerEntity, i2, participantResult, str4, str5);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjc */
    public ParticipantEntity[] newArray(int i) {
        return new ParticipantEntity[i];
    }
}
