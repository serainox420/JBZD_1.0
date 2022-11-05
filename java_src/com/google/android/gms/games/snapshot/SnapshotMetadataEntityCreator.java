package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class SnapshotMetadataEntityCreator implements Parcelable.Creator<SnapshotMetadataEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(SnapshotMetadataEntity snapshotMetadataEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, (Parcelable) snapshotMetadataEntity.getGame(), i, false);
        zzc.zza(parcel, 2, (Parcelable) snapshotMetadataEntity.getOwner(), i, false);
        zzc.zza(parcel, 3, snapshotMetadataEntity.getSnapshotId(), false);
        zzc.zza(parcel, 5, (Parcelable) snapshotMetadataEntity.getCoverImageUri(), i, false);
        zzc.zza(parcel, 6, snapshotMetadataEntity.getCoverImageUrl(), false);
        zzc.zza(parcel, 7, snapshotMetadataEntity.getTitle(), false);
        zzc.zza(parcel, 8, snapshotMetadataEntity.getDescription(), false);
        zzc.zza(parcel, 9, snapshotMetadataEntity.getLastModifiedTimestamp());
        zzc.zza(parcel, 10, snapshotMetadataEntity.getPlayedTime());
        zzc.zza(parcel, 11, snapshotMetadataEntity.getCoverImageAspectRatio());
        zzc.zza(parcel, 12, snapshotMetadataEntity.getUniqueName(), false);
        zzc.zza(parcel, 13, snapshotMetadataEntity.hasChangePending());
        zzc.zza(parcel, 14, snapshotMetadataEntity.getProgressValue());
        zzc.zza(parcel, 15, snapshotMetadataEntity.getDeviceName(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzge */
    public SnapshotMetadataEntity createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        GameEntity gameEntity = null;
        PlayerEntity playerEntity = null;
        String str = null;
        Uri uri = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        long j = 0;
        long j2 = 0;
        float f = BitmapDescriptorFactory.HUE_RED;
        String str5 = null;
        boolean z = false;
        long j3 = 0;
        String str6 = null;
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
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
                case 5:
                    uri = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 6:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 10:
                    j2 = zzb.zzi(parcel, zzaX);
                    break;
                case 11:
                    f = zzb.zzl(parcel, zzaX);
                    break;
                case 12:
                    str5 = zzb.zzq(parcel, zzaX);
                    break;
                case 13:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                case 14:
                    j3 = zzb.zzi(parcel, zzaX);
                    break;
                case 15:
                    str6 = zzb.zzq(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new SnapshotMetadataEntity(gameEntity, playerEntity, str, uri, str2, str3, str4, j, j2, f, str5, z, j3, str6);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjo */
    public SnapshotMetadataEntity[] newArray(int i) {
        return new SnapshotMetadataEntity[i];
    }
}
