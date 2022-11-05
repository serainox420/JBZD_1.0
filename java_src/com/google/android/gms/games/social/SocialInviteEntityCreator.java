package com.google.android.gms.games.social;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.games.PlayerEntity;
/* loaded from: classes2.dex */
public class SocialInviteEntityCreator implements Parcelable.Creator<SocialInviteEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(SocialInviteEntity socialInviteEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, socialInviteEntity.zzGA(), false);
        zzc.zza(parcel, 2, (Parcelable) socialInviteEntity.getPlayer(), i, false);
        zzc.zzc(parcel, 3, socialInviteEntity.getType());
        zzc.zzc(parcel, 4, socialInviteEntity.getDirection());
        zzc.zza(parcel, 5, socialInviteEntity.getLastModifiedTimestamp());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgf */
    public SocialInviteEntity createFromParcel(Parcel parcel) {
        PlayerEntity playerEntity = null;
        int i = 0;
        int zzaY = zzb.zzaY(parcel);
        long j = 0;
        int i2 = 0;
        String str = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    playerEntity = (PlayerEntity) zzb.zza(parcel, zzaX, PlayerEntity.CREATOR);
                    break;
                case 3:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 5:
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
        return new SocialInviteEntity(str, playerEntity, i2, i, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjq */
    public SocialInviteEntity[] newArray(int i) {
        return new SocialInviteEntity[i];
    }
}
