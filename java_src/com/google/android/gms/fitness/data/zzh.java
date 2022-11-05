package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzh implements Parcelable.Creator<DataPoint> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(DataPoint dataPoint, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) dataPoint.getDataSource(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, dataPoint.getTimestampNanos());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, dataPoint.zzCf());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable[]) dataPoint.zzCa(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) dataPoint.zzCb(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, dataPoint.zzCc());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, dataPoint.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, dataPoint.zzCd());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdV */
    public DataPoint createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        DataSource dataSource = null;
        long j = 0;
        long j2 = 0;
        Value[] valueArr = null;
        DataSource dataSource2 = null;
        long j3 = 0;
        long j4 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    dataSource = (DataSource) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 3:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 5:
                    valueArr = (Value[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, Value.CREATOR);
                    break;
                case 6:
                    dataSource2 = (DataSource) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 7:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 8:
                    j4 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
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
        return new DataPoint(i, dataSource, j, j2, valueArr, dataSource2, j3, j4);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgA */
    public DataPoint[] newArray(int i) {
        return new DataPoint[i];
    }
}
