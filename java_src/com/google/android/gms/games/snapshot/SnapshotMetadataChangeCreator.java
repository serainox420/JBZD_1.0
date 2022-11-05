package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class SnapshotMetadataChangeCreator implements Parcelable.Creator<SnapshotMetadataChangeEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(SnapshotMetadataChangeEntity snapshotMetadataChangeEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, snapshotMetadataChangeEntity.getDescription(), false);
        zzc.zza(parcel, 2, snapshotMetadataChangeEntity.getPlayedTimeMillis(), false);
        zzc.zza(parcel, 4, (Parcelable) snapshotMetadataChangeEntity.getCoverImageUri(), i, false);
        zzc.zza(parcel, 5, (Parcelable) snapshotMetadataChangeEntity.zzGz(), i, false);
        zzc.zza(parcel, 6, snapshotMetadataChangeEntity.getProgressValue(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgd */
    public SnapshotMetadataChangeEntity createFromParcel(Parcel parcel) {
        Long l = null;
        int zzaY = zzb.zzaY(parcel);
        Uri uri = null;
        BitmapTeleporter bitmapTeleporter = null;
        Long l2 = null;
        String str = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    l2 = zzb.zzj(parcel, zzaX);
                    break;
                case 3:
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
                case 4:
                    uri = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 5:
                    bitmapTeleporter = (BitmapTeleporter) zzb.zza(parcel, zzaX, BitmapTeleporter.CREATOR);
                    break;
                case 6:
                    l = zzb.zzj(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new SnapshotMetadataChangeEntity(str, l2, bitmapTeleporter, uri, l);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjn */
    public SnapshotMetadataChangeEntity[] newArray(int i) {
        return new SnapshotMetadataChangeEntity[i];
    }
}
