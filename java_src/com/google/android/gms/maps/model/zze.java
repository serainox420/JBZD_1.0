package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zze implements Parcelable.Creator<LatLngBounds> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(LatLngBounds latLngBounds, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) latLngBounds.southwest, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) latLngBounds.northeast, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhB */
    public LatLngBounds createFromParcel(Parcel parcel) {
        LatLng latLng;
        LatLng latLng2;
        LatLng latLng3 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        LatLng latLng4 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    LatLng latLng5 = latLng3;
                    latLng2 = (LatLng) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    latLng = latLng5;
                    break;
                case 3:
                    latLng = (LatLng) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    latLng2 = latLng4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    latLng = latLng3;
                    latLng2 = latLng4;
                    break;
            }
            latLng4 = latLng2;
            latLng3 = latLng;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new LatLngBounds(latLng4, latLng3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlj */
    public LatLngBounds[] newArray(int i) {
        return new LatLngBounds[i];
    }
}
