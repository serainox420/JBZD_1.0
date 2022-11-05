package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzl implements Parcelable.Creator<PolylineOptions> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(PolylineOptions polylineOptions, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, polylineOptions.getPoints(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, polylineOptions.getWidth());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, polylineOptions.getColor());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, polylineOptions.getZIndex());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, polylineOptions.isVisible());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, polylineOptions.isGeodesic());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, polylineOptions.isClickable());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable) polylineOptions.getStartCap(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, (Parcelable) polylineOptions.getEndCap(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 11, polylineOptions.getJointType());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 12, polylineOptions.getPattern(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhI */
    public PolylineOptions createFromParcel(Parcel parcel) {
        float f = BitmapDescriptorFactory.HUE_RED;
        ArrayList arrayList = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        Cap cap = null;
        Cap cap2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        float f2 = 0.0f;
        ArrayList arrayList2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 3:
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 6:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 7:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 9:
                    cap2 = (Cap) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Cap.CREATOR);
                    break;
                case 10:
                    cap = (Cap) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Cap.CREATOR);
                    break;
                case 11:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 12:
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
        return new PolylineOptions(arrayList2, f2, i2, f, z3, z2, z, cap2, cap, i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlq */
    public PolylineOptions[] newArray(int i) {
        return new PolylineOptions[i];
    }
}
