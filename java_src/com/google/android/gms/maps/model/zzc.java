package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzc implements Parcelable.Creator<CircleOptions> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(CircleOptions circleOptions, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) circleOptions.getCenter(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, circleOptions.getRadius());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, circleOptions.getStrokeWidth());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, circleOptions.getStrokeColor());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, circleOptions.getFillColor());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, circleOptions.getZIndex());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, circleOptions.isVisible());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, circleOptions.isClickable());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 10, circleOptions.getStrokePattern(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhz */
    public CircleOptions createFromParcel(Parcel parcel) {
        ArrayList arrayList = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        double d = 0.0d;
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        float f2 = 0.0f;
        LatLng latLng = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    latLng = (LatLng) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 3:
                    d = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                case 4:
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 5:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 8:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 9:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 10:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, PatternItem.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new CircleOptions(latLng, d, f2, i2, i, f, z2, z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlh */
    public CircleOptions[] newArray(int i) {
        return new CircleOptions[i];
    }
}
