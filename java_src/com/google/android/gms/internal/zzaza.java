package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaza implements Parcelable.Creator<zzayz> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzayz zzayzVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzayzVar.name, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzayzVar.zzbBC);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzayzVar.zzbhn);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzayzVar.zzbhp);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzayzVar.zzaGV, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzayzVar.zzbBD, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 8, zzayzVar.zzbBE);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 9, zzayzVar.zzbBF);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjb */
    public zzayz createFromParcel(Parcel parcel) {
        byte[] bArr = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        long j = 0;
        double d = 0.0d;
        int i2 = 0;
        String str = null;
        boolean z = false;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    d = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 8:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 9:
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
        return new zzayz(str2, j, z, d, str, bArr, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmY */
    public zzayz[] newArray(int i) {
        return new zzayz[i];
    }
}
