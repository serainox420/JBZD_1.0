package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzm implements Parcelable.Creator<StreetViewPanoramaCamera> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(StreetViewPanoramaCamera streetViewPanoramaCamera, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, streetViewPanoramaCamera.zoom);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, streetViewPanoramaCamera.tilt);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, streetViewPanoramaCamera.bearing);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhJ */
    public StreetViewPanoramaCamera createFromParcel(Parcel parcel) {
        float f = BitmapDescriptorFactory.HUE_RED;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        float f2 = 0.0f;
        float f3 = 0.0f;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    f3 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 3:
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 4:
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
        return new StreetViewPanoramaCamera(f3, f2, f);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlr */
    public StreetViewPanoramaCamera[] newArray(int i) {
        return new StreetViewPanoramaCamera[i];
    }
}
