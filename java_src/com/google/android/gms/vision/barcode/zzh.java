package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes2.dex */
public class zzh implements Parcelable.Creator<Barcode.GeoPoint> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Barcode.GeoPoint geoPoint, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, geoPoint.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, geoPoint.lat);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, geoPoint.lng);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjG */
    public Barcode.GeoPoint createFromParcel(Parcel parcel) {
        double d = 0.0d;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        double d2 = 0.0d;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
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
        return new Barcode.GeoPoint(i, d2, d);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoa */
    public Barcode.GeoPoint[] newArray(int i) {
        return new Barcode.GeoPoint[i];
    }
}
