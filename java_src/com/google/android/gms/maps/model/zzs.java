package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzs implements Parcelable.Creator<VisibleRegion> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(VisibleRegion visibleRegion, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) visibleRegion.nearLeft, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) visibleRegion.nearRight, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) visibleRegion.farLeft, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) visibleRegion.farRight, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) visibleRegion.latLngBounds, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhP */
    public VisibleRegion createFromParcel(Parcel parcel) {
        LatLngBounds latLngBounds = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        LatLng latLng = null;
        LatLng latLng2 = null;
        LatLng latLng3 = null;
        LatLng latLng4 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    latLng4 = (LatLng) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 3:
                    latLng3 = (LatLng) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 4:
                    latLng2 = (LatLng) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 5:
                    latLng = (LatLng) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLngBounds.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new VisibleRegion(latLng4, latLng3, latLng2, latLng, latLngBounds);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlx */
    public VisibleRegion[] newArray(int i) {
        return new VisibleRegion[i];
    }
}
