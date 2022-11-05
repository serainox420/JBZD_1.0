package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzg implements Parcelable.Creator<zzf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzf zzfVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzfVar.zzIv());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzfVar.zzIz());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzfVar.zzIA(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzfVar.zzIB(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzfVar.zzIC());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, zzfVar.zzID());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, zzfVar.getPriority());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzfVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhb */
    public zzf createFromParcel(Parcel parcel) {
        zzd zzdVar = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = -1;
        int i3 = 110;
        boolean z = false;
        PlaceFilter placeFilter = null;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    placeFilter = (PlaceFilter) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PlaceFilter.CREATOR);
                    break;
                case 4:
                    zzdVar = (zzd) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzd.CREATOR);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 1000:
                    i5 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzf(i5, i4, i2, placeFilter, zzdVar, z, i, i3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkG */
    public zzf[] newArray(int i) {
        return new zzf[i];
    }
}
