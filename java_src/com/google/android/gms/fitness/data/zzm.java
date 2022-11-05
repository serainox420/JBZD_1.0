package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzm implements Parcelable.Creator<DataUpdateNotification> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(DataUpdateNotification dataUpdateNotification, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, dataUpdateNotification.zzCl());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, dataUpdateNotification.zzCm());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, dataUpdateNotification.getOperationType());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) dataUpdateNotification.getDataSource(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) dataUpdateNotification.getDataType(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, dataUpdateNotification.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdZ */
    public DataUpdateNotification createFromParcel(Parcel parcel) {
        long j = 0;
        DataType dataType = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        DataSource dataSource = null;
        long j2 = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    dataSource = (DataSource) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 5:
                    dataType = (DataType) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataType.CREATOR);
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
        return new DataUpdateNotification(i2, j2, j, i, dataSource, dataType);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgG */
    public DataUpdateNotification[] newArray(int i) {
        return new DataUpdateNotification[i];
    }
}
