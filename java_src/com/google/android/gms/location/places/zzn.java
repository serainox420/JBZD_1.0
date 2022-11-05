package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.common.time.Clock;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzn implements Parcelable.Creator<zzm> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzm zzmVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzmVar.zzIA(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzmVar.getInterval());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzmVar.getPriority());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzmVar.getExpirationTime());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzmVar.zzIH());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzmVar.zzII());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzmVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhg */
    public zzm createFromParcel(Parcel parcel) {
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        PlaceFilter placeFilter = null;
        long j = -1;
        int i = -1;
        long j2 = Clock.MAX_TIME;
        boolean z2 = false;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    placeFilter = (PlaceFilter) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PlaceFilter.CREATOR);
                    break;
                case 3:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 6:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 7:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 1000:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzm(i2, placeFilter, j, i, j2, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkM */
    public zzm[] newArray(int i) {
        return new zzm[i];
    }
}
