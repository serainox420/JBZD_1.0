package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzj implements Parcelable.Creator<PointOfInterest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(PointOfInterest pointOfInterest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) pointOfInterest.latLng, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, pointOfInterest.placeId, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, pointOfInterest.name, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhG */
    public PointOfInterest createFromParcel(Parcel parcel) {
        String zzq;
        String str;
        LatLng latLng;
        String str2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str3 = null;
        LatLng latLng2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    String str4 = str2;
                    str = str3;
                    latLng = (LatLng) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    zzq = str4;
                    break;
                case 3:
                    String zzq2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    latLng = latLng2;
                    zzq = str2;
                    str = zzq2;
                    break;
                case 4:
                    zzq = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    str = str3;
                    latLng = latLng2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzq = str2;
                    str = str3;
                    latLng = latLng2;
                    break;
            }
            latLng2 = latLng;
            str3 = str;
            str2 = zzq;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new PointOfInterest(latLng2, str3, str2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlo */
    public PointOfInterest[] newArray(int i) {
        return new PointOfInterest[i];
    }
}
