package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzj implements Parcelable.Creator<PlacePhotoMetadataResult> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(PlacePhotoMetadataResult placePhotoMetadataResult, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) placePhotoMetadataResult.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) placePhotoMetadataResult.zzblB, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, placePhotoMetadataResult.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhd */
    public PlacePhotoMetadataResult createFromParcel(Parcel parcel) {
        Status status;
        int zzg;
        DataHolder dataHolder;
        DataHolder dataHolder2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        Status status2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    Status status3 = (Status) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Status.CREATOR);
                    zzg = i;
                    dataHolder = dataHolder2;
                    status = status3;
                    break;
                case 2:
                    dataHolder = (DataHolder) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataHolder.CREATOR);
                    status = status2;
                    zzg = i;
                    break;
                case 1000:
                    DataHolder dataHolder3 = dataHolder2;
                    status = status2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    dataHolder = dataHolder3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    dataHolder = dataHolder2;
                    status = status2;
                    zzg = i;
                    break;
            }
            i = zzg;
            status2 = status;
            dataHolder2 = dataHolder;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new PlacePhotoMetadataResult(i, status2, dataHolder2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkJ */
    public PlacePhotoMetadataResult[] newArray(int i) {
        return new PlacePhotoMetadataResult[i];
    }
}
