package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzi implements Parcelable.Creator<PlaceFilter> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(PlaceFilter placeFilter, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, placeFilter.zzblg, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, placeFilter.zzblw);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, placeFilter.zzblh, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 6, placeFilter.zzblf, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, placeFilter.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhc */
    public PlaceFilter createFromParcel(Parcel parcel) {
        boolean z = false;
        ArrayList arrayList = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList<String> arrayList2 = null;
        ArrayList<Integer> arrayList3 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zzb.zzD(parcel, zzaX);
                    break;
                case 3:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzp.CREATOR);
                    break;
                case 6:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 1000:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new PlaceFilter(i, arrayList3, z, arrayList2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkH */
    public PlaceFilter[] newArray(int i) {
        return new PlaceFilter[i];
    }
}
