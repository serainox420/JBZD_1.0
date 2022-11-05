package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzp implements Parcelable.Creator<StreetViewPanoramaOrientation> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(StreetViewPanoramaOrientation streetViewPanoramaOrientation, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, streetViewPanoramaOrientation.tilt);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, streetViewPanoramaOrientation.bearing);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhM */
    public StreetViewPanoramaOrientation createFromParcel(Parcel parcel) {
        float f = BitmapDescriptorFactory.HUE_RED;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        float f2 = 0.0f;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 3:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new StreetViewPanoramaOrientation(f2, f);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlu */
    public StreetViewPanoramaOrientation[] newArray(int i) {
        return new StreetViewPanoramaOrientation[i];
    }
}
