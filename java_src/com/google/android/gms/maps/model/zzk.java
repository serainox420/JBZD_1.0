package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzk implements Parcelable.Creator<PolygonOptions> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(PolygonOptions polygonOptions, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, polygonOptions.getPoints(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzd(parcel, 3, polygonOptions.zzJP(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, polygonOptions.getStrokeWidth());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, polygonOptions.getStrokeColor());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, polygonOptions.getFillColor());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, polygonOptions.getZIndex());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, polygonOptions.isVisible());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, polygonOptions.isGeodesic());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, polygonOptions.isClickable());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 11, polygonOptions.getStrokeJointType());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 12, polygonOptions.getStrokePattern(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhH */
    public PolygonOptions createFromParcel(Parcel parcel) {
        ArrayList arrayList = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList arrayList2 = new ArrayList();
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        int i3 = 0;
        float f2 = 0.0f;
        ArrayList arrayList3 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 3:
                    com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, arrayList2, getClass().getClassLoader());
                    break;
                case 4:
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 5:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 8:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 9:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 10:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
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
        return new PolygonOptions(arrayList3, arrayList2, f2, i3, i2, f, z3, z2, z, i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlp */
    public PolygonOptions[] newArray(int i) {
        return new PolygonOptions[i];
    }
}
