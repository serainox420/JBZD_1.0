package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<CameraPosition> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(CameraPosition cameraPosition, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) cameraPosition.target, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, cameraPosition.zoom);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, cameraPosition.tilt);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, cameraPosition.bearing);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhx */
    public CameraPosition createFromParcel(Parcel parcel) {
        float zzl;
        float f;
        float f2;
        LatLng latLng;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        LatLng latLng2 = null;
        float f4 = 0.0f;
        float f5 = 0.0f;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    float f6 = f3;
                    f = f4;
                    f2 = f5;
                    latLng = (LatLng) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    zzl = f6;
                    break;
                case 3:
                    latLng = latLng2;
                    float f7 = f4;
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    zzl = f3;
                    f = f7;
                    break;
                case 4:
                    f2 = f5;
                    latLng = latLng2;
                    float f8 = f3;
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    zzl = f8;
                    break;
                case 5:
                    zzl = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    f = f4;
                    f2 = f5;
                    latLng = latLng2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzl = f3;
                    f = f4;
                    f2 = f5;
                    latLng = latLng2;
                    break;
            }
            latLng2 = latLng;
            f5 = f2;
            f4 = f;
            f3 = zzl;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new CameraPosition(latLng2, f5, f4, f3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlf */
    public CameraPosition[] newArray(int i) {
        return new CameraPosition[i];
    }
}
