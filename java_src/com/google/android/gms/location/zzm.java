package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.common.time.Clock;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class zzm implements Parcelable.Creator<LocationRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(LocationRequest locationRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, locationRequest.mPriority);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, locationRequest.zzbjU);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, locationRequest.zzbjV);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, locationRequest.zzaWy);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, locationRequest.zzbjE);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, locationRequest.zzbjW);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, locationRequest.zzbjX);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, locationRequest.zzbjY);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgM */
    public LocationRequest createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 102;
        long j = 3600000;
        long j2 = 600000;
        boolean z = false;
        long j3 = Clock.MAX_TIME;
        int i2 = Integer.MAX_VALUE;
        float f = BitmapDescriptorFactory.HUE_RED;
        long j4 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 6:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 8:
                    j4 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new LocationRequest(i, j, j2, z, j3, i2, f, j4);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkm */
    public LocationRequest[] newArray(int i) {
        return new LocationRequest[i];
    }
}
