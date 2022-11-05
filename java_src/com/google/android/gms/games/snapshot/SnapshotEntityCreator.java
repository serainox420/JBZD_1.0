package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class SnapshotEntityCreator implements Parcelable.Creator<SnapshotEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(SnapshotEntity snapshotEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, (Parcelable) snapshotEntity.getMetadata(), i, false);
        zzc.zza(parcel, 3, (Parcelable) snapshotEntity.getSnapshotContents(), i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgc */
    public SnapshotEntity createFromParcel(Parcel parcel) {
        SnapshotContentsEntity snapshotContentsEntity;
        SnapshotMetadataEntity snapshotMetadataEntity;
        SnapshotContentsEntity snapshotContentsEntity2 = null;
        int zzaY = zzb.zzaY(parcel);
        SnapshotMetadataEntity snapshotMetadataEntity2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    SnapshotContentsEntity snapshotContentsEntity3 = snapshotContentsEntity2;
                    snapshotMetadataEntity = (SnapshotMetadataEntity) zzb.zza(parcel, zzaX, SnapshotMetadataEntity.CREATOR);
                    snapshotContentsEntity = snapshotContentsEntity3;
                    break;
                case 2:
                default:
                    zzb.zzb(parcel, zzaX);
                    snapshotContentsEntity = snapshotContentsEntity2;
                    snapshotMetadataEntity = snapshotMetadataEntity2;
                    break;
                case 3:
                    snapshotContentsEntity = (SnapshotContentsEntity) zzb.zza(parcel, zzaX, SnapshotContentsEntity.CREATOR);
                    snapshotMetadataEntity = snapshotMetadataEntity2;
                    break;
            }
            snapshotMetadataEntity2 = snapshotMetadataEntity;
            snapshotContentsEntity2 = snapshotContentsEntity;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new SnapshotEntity(snapshotMetadataEntity2, snapshotContentsEntity2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjm */
    public SnapshotEntity[] newArray(int i) {
        return new SnapshotEntity[i];
    }
}
