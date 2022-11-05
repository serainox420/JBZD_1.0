package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzl implements Parcelable.Creator<LocationAvailability> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(LocationAvailability locationAvailability, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, locationAvailability.zzbjQ);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, locationAvailability.zzbjR);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, locationAvailability.zzbjS);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, locationAvailability.zzbjT);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgL */
    public LocationAvailability createFromParcel(Parcel parcel) {
        int i = 1;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 1000;
        long j = 0;
        int i3 = 1;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new LocationAvailability(i2, i3, i, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkj */
    public LocationAvailability[] newArray(int i) {
        return new LocationAvailability[i];
    }
}
