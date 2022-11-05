package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzq implements Parcelable.Creator<LocationSettingsRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(LocationSettingsRequest locationSettingsRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, locationSettingsRequest.zzDf(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, locationSettingsRequest.zzIj());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, locationSettingsRequest.zzIk());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) locationSettingsRequest.zzIl(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgP */
    public LocationSettingsRequest createFromParcel(Parcel parcel) {
        zzo zzoVar = null;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z2 = false;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, LocationRequest.CREATOR);
                    break;
                case 2:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 3:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 5:
                    zzoVar = (zzo) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzo.CREATOR);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new LocationSettingsRequest(arrayList, z2, z, zzoVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkp */
    public LocationSettingsRequest[] newArray(int i) {
        return new LocationSettingsRequest[i];
    }
}
