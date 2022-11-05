package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzf implements Parcelable.Creator<LatLng> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(LatLng latLng, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, latLng.latitude);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, latLng.longitude);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhC */
    public LatLng createFromParcel(Parcel parcel) {
        double d = 0.0d;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        double d2 = 0.0d;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    d2 = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                case 3:
                    d = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new LatLng(d2, d);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlk */
    public LatLng[] newArray(int i) {
        return new LatLng[i];
    }
}
