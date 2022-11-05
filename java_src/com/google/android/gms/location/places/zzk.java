package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzk implements Parcelable.Creator<PlacePhotoResult> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(PlacePhotoResult placePhotoResult, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) placePhotoResult.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) placePhotoResult.zzblD, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, placePhotoResult.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhe */
    public PlacePhotoResult createFromParcel(Parcel parcel) {
        Status status;
        int zzg;
        BitmapTeleporter bitmapTeleporter;
        BitmapTeleporter bitmapTeleporter2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        Status status2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    Status status3 = (Status) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Status.CREATOR);
                    zzg = i;
                    bitmapTeleporter = bitmapTeleporter2;
                    status = status3;
                    break;
                case 2:
                    bitmapTeleporter = (BitmapTeleporter) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, BitmapTeleporter.CREATOR);
                    status = status2;
                    zzg = i;
                    break;
                case 1000:
                    BitmapTeleporter bitmapTeleporter3 = bitmapTeleporter2;
                    status = status2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    bitmapTeleporter = bitmapTeleporter3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    bitmapTeleporter = bitmapTeleporter2;
                    status = status2;
                    zzg = i;
                    break;
            }
            i = zzg;
            status2 = status;
            bitmapTeleporter2 = bitmapTeleporter;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new PlacePhotoResult(i, status2, bitmapTeleporter2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkK */
    public PlacePhotoResult[] newArray(int i) {
        return new PlacePhotoResult[i];
    }
}
