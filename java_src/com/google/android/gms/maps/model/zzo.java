package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzo implements Parcelable.Creator<StreetViewPanoramaLocation> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(StreetViewPanoramaLocation streetViewPanoramaLocation, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable[]) streetViewPanoramaLocation.links, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) streetViewPanoramaLocation.position, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, streetViewPanoramaLocation.panoId, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhL */
    public StreetViewPanoramaLocation createFromParcel(Parcel parcel) {
        String zzq;
        LatLng latLng;
        StreetViewPanoramaLink[] streetViewPanoramaLinkArr;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        LatLng latLng2 = null;
        StreetViewPanoramaLink[] streetViewPanoramaLinkArr2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    String str2 = str;
                    latLng = latLng2;
                    streetViewPanoramaLinkArr = (StreetViewPanoramaLink[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, StreetViewPanoramaLink.CREATOR);
                    zzq = str2;
                    break;
                case 3:
                    LatLng latLng3 = (LatLng) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    streetViewPanoramaLinkArr = streetViewPanoramaLinkArr2;
                    zzq = str;
                    latLng = latLng3;
                    break;
                case 4:
                    zzq = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    latLng = latLng2;
                    streetViewPanoramaLinkArr = streetViewPanoramaLinkArr2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzq = str;
                    latLng = latLng2;
                    streetViewPanoramaLinkArr = streetViewPanoramaLinkArr2;
                    break;
            }
            streetViewPanoramaLinkArr2 = streetViewPanoramaLinkArr;
            latLng2 = latLng;
            str = zzq;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new StreetViewPanoramaLocation(streetViewPanoramaLinkArr2, latLng2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlt */
    public StreetViewPanoramaLocation[] newArray(int i) {
        return new StreetViewPanoramaLocation[i];
    }
}
