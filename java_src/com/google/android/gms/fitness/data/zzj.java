package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzj implements Parcelable.Creator<DataSource> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(DataSource dataSource, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) dataSource.getDataType(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, dataSource.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, dataSource.getType());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) dataSource.getDevice(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) dataSource.zzCi(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, dataSource.getStreamName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, dataSource.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, dataSource.getDataQualityStandards(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdX */
    public DataSource createFromParcel(Parcel parcel) {
        int i = 0;
        int[] iArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        zzb zzbVar = null;
        Device device = null;
        String str2 = null;
        DataType dataType = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    dataType = (DataType) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataType.CREATOR);
                    break;
                case 2:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    device = (Device) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Device.CREATOR);
                    break;
                case 5:
                    zzbVar = (zzb) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzb.CREATOR);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    iArr = com.google.android.gms.common.internal.safeparcel.zzb.zzw(parcel, zzaX);
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
        return new DataSource(i2, dataType, str2, i, device, zzbVar, str, iArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgE */
    public DataSource[] newArray(int i) {
        return new DataSource[i];
    }
}
