package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<StreetViewPanoramaOptions> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(StreetViewPanoramaOptions streetViewPanoramaOptions, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, (Parcelable) streetViewPanoramaOptions.getStreetViewPanoramaCamera(), i, false);
        zzc.zza(parcel, 3, streetViewPanoramaOptions.getPanoramaId(), false);
        zzc.zza(parcel, 4, (Parcelable) streetViewPanoramaOptions.getPosition(), i, false);
        zzc.zza(parcel, 5, streetViewPanoramaOptions.getRadius(), false);
        zzc.zza(parcel, 6, streetViewPanoramaOptions.zzJB());
        zzc.zza(parcel, 7, streetViewPanoramaOptions.zzJt());
        zzc.zza(parcel, 8, streetViewPanoramaOptions.zzJC());
        zzc.zza(parcel, 9, streetViewPanoramaOptions.zzJD());
        zzc.zza(parcel, 10, streetViewPanoramaOptions.zzJp());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhw */
    public StreetViewPanoramaOptions createFromParcel(Parcel parcel) {
        Integer num = null;
        byte b = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        byte b2 = 0;
        byte b3 = 0;
        byte b4 = 0;
        byte b5 = 0;
        LatLng latLng = null;
        String str = null;
        StreetViewPanoramaCamera streetViewPanoramaCamera = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    streetViewPanoramaCamera = (StreetViewPanoramaCamera) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, StreetViewPanoramaCamera.CREATOR);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    latLng = (LatLng) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 5:
                    num = com.google.android.gms.common.internal.safeparcel.zzb.zzh(parcel, zzaX);
                    break;
                case 6:
                    b5 = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                case 7:
                    b4 = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                case 8:
                    b3 = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                case 9:
                    b2 = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                case 10:
                    b = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new StreetViewPanoramaOptions(streetViewPanoramaCamera, str, latLng, num, b5, b4, b3, b2, b);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzle */
    public StreetViewPanoramaOptions[] newArray(int i) {
        return new StreetViewPanoramaOptions[i];
    }
}
