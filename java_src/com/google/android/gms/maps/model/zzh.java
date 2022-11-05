package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzh implements Parcelable.Creator<MarkerOptions> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(MarkerOptions markerOptions, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) markerOptions.getPosition(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, markerOptions.getTitle(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, markerOptions.getSnippet(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, markerOptions.zzJM(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, markerOptions.getAnchorU());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, markerOptions.getAnchorV());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, markerOptions.isDraggable());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, markerOptions.isVisible());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, markerOptions.isFlat());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, markerOptions.getRotation());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, markerOptions.getInfoWindowAnchorU());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, markerOptions.getInfoWindowAnchorV());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 14, markerOptions.getAlpha());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 15, markerOptions.getZIndex());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhE */
    public MarkerOptions createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        LatLng latLng = null;
        String str = null;
        String str2 = null;
        IBinder iBinder = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = 0.5f;
        float f5 = BitmapDescriptorFactory.HUE_RED;
        float f6 = 1.0f;
        float f7 = BitmapDescriptorFactory.HUE_RED;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    latLng = (LatLng) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 6:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 7:
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 9:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 10:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 11:
                    f3 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 12:
                    f4 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 13:
                    f5 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 14:
                    f6 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 15:
                    f7 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new MarkerOptions(latLng, str, str2, iBinder, f, f2, z, z2, z3, f3, f4, f5, f6, f7);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlm */
    public MarkerOptions[] newArray(int i) {
        return new MarkerOptions[i];
    }
}
