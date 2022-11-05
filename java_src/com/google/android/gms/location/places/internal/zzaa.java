package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaa implements Parcelable.Creator<zzz> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzz zzzVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzzVar.zzbnc, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzzVar.zzbnd, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzzVar.zzaJT, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzzVar.zzblS, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, zzzVar.zzbne);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, zzzVar.zzbnf);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzzVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhp */
    public zzz createFromParcel(Parcel parcel) {
        int i = 0;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 1000:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzz(i3, str4, str3, str2, str, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkW */
    public zzz[] newArray(int i) {
        return new zzz[i];
    }
}
