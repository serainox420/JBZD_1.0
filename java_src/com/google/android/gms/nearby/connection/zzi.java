package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzi implements Parcelable.Creator<zzh> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzh zzhVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzhVar.zzOb());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzhVar.getStatus());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzhVar.getTotalBytes());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzhVar.getBytesTransferred());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzii */
    public zzh createFromParcel(Parcel parcel) {
        long j = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        long j2 = 0;
        long j3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzh(j3, i, j2, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlS */
    public zzh[] newArray(int i) {
        return new zzh[i];
    }
}
