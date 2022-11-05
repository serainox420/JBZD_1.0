package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.internal.zzu;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zze implements Parcelable.Creator<zzu.zzb> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzu.zzb zzbVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbVar.zzbmP);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzbVar.zzbmQ);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzbVar.zzbmR);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzbVar.zzbmS);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, zzbVar.zzbmT);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, zzbVar.zzbmU);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, zzbVar.zzbmV, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzbVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhk */
    public zzu.zzb createFromParcel(Parcel parcel) {
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList arrayList = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i6 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i5 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzu.zza.CREATOR);
                    break;
                case 1000:
                    i7 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzu.zzb(i7, i6, i5, i4, i3, i2, i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkQ */
    public zzu.zzb[] newArray(int i) {
        return new zzu.zzb[i];
    }
}
