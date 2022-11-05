package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzr implements Parcelable.Creator<TileOverlayOptions> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(TileOverlayOptions tileOverlayOptions, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, tileOverlayOptions.zzJQ(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, tileOverlayOptions.isVisible());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, tileOverlayOptions.getZIndex());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, tileOverlayOptions.getFadeIn());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, tileOverlayOptions.getTransparency());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhO */
    public TileOverlayOptions createFromParcel(Parcel parcel) {
        float f = BitmapDescriptorFactory.HUE_RED;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        IBinder iBinder = null;
        boolean z = false;
        boolean z2 = true;
        float f2 = 0.0f;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 3:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 5:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
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
        return new TileOverlayOptions(iBinder, z, f2, z2, f);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlw */
    public TileOverlayOptions[] newArray(int i) {
        return new TileOverlayOptions[i];
    }
}
