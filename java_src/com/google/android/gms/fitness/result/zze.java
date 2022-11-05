package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
/* loaded from: classes2.dex */
public class zze implements Parcelable.Creator<zzd> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzd zzdVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzdVar.zzaTi, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzdVar.zzait);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzdVar.zzaWT);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzdVar.zzaWU);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzdVar.zzaWV);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzdVar.zzaWW);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzdVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfi */
    public zzd createFromParcel(Parcel parcel) {
        boolean z = false;
        long j = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        DataSource dataSource = null;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    dataSource = (DataSource) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 2:
                    j4 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 5:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 6:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
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
        return new zzd(i, dataSource, j4, z, j3, j2, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhV */
    public zzd[] newArray(int i) {
        return new zzd[i];
    }
}
