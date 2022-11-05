package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class SnapshotContentsEntityCreator implements Parcelable.Creator<SnapshotContentsEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(SnapshotContentsEntity snapshotContentsEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, (Parcelable) snapshotContentsEntity.zzAq(), i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgb */
    public SnapshotContentsEntity createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        com.google.android.gms.drive.zzc zzcVar = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    zzcVar = (com.google.android.gms.drive.zzc) zzb.zza(parcel, zzaX, com.google.android.gms.drive.zzc.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new SnapshotContentsEntity(zzcVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjl */
    public SnapshotContentsEntity[] newArray(int i) {
        return new SnapshotContentsEntity[i];
    }
}
