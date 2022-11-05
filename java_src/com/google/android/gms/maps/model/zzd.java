package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzd implements Parcelable.Creator<GroundOverlayOptions> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(GroundOverlayOptions groundOverlayOptions, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, groundOverlayOptions.zzJK(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) groundOverlayOptions.getLocation(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, groundOverlayOptions.getWidth());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, groundOverlayOptions.getHeight());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) groundOverlayOptions.getBounds(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, groundOverlayOptions.getBearing());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, groundOverlayOptions.getZIndex());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, groundOverlayOptions.isVisible());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, groundOverlayOptions.getTransparency());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, groundOverlayOptions.getAnchorU());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, groundOverlayOptions.getAnchorV());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, groundOverlayOptions.isClickable());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhA */
    public GroundOverlayOptions createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        IBinder iBinder = null;
        LatLng latLng = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        LatLngBounds latLngBounds = null;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = BitmapDescriptorFactory.HUE_RED;
        boolean z = false;
        float f5 = BitmapDescriptorFactory.HUE_RED;
        float f6 = BitmapDescriptorFactory.HUE_RED;
        float f7 = BitmapDescriptorFactory.HUE_RED;
        boolean z2 = false;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 3:
                    latLng = (LatLng) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 4:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 5:
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLngBounds.CREATOR);
                    break;
                case 7:
                    f3 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 8:
                    f4 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 9:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 10:
                    f5 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 11:
                    f6 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 12:
                    f7 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 13:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new GroundOverlayOptions(iBinder, latLng, f, f2, latLngBounds, f3, f4, z, f5, f6, f7, z2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzli */
    public GroundOverlayOptions[] newArray(int i) {
        return new GroundOverlayOptions[i];
    }
}
