package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzbmi implements Parcelable.Creator<zzbmh> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbmh zzbmhVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbmhVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzbmhVar.zzVW(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzbmhVar.isRegistered());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzbmhVar.getProviderId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzbmhVar.zzVX());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) zzbmhVar.zzVY(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlE */
    public zzbmh createFromParcel(Parcel parcel) {
        zzbmv zzbmvVar = null;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        boolean z2 = false;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    zzbmvVar = (zzbmv) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzbmv.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbmh(i, str2, z2, str, z, zzbmvVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzql */
    public zzbmh[] newArray(int i) {
        return new zzbmh[i];
    }
}
