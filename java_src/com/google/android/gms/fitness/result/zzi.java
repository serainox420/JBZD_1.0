package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataType;
/* loaded from: classes2.dex */
public class zzi implements Parcelable.Creator<DataTypeResult> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(DataTypeResult dataTypeResult, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) dataTypeResult.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) dataTypeResult.getDataType(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, dataTypeResult.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfl */
    public DataTypeResult createFromParcel(Parcel parcel) {
        Status status;
        int zzg;
        DataType dataType;
        DataType dataType2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        Status status2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    Status status3 = (Status) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Status.CREATOR);
                    zzg = i;
                    dataType = dataType2;
                    status = status3;
                    break;
                case 3:
                    dataType = (DataType) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataType.CREATOR);
                    status = status2;
                    zzg = i;
                    break;
                case 1000:
                    DataType dataType3 = dataType2;
                    status = status2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    dataType = dataType3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    dataType = dataType2;
                    status = status2;
                    zzg = i;
                    break;
            }
            i = zzg;
            status2 = status;
            dataType2 = dataType;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new DataTypeResult(i, status2, dataType2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhY */
    public DataTypeResult[] newArray(int i) {
        return new DataTypeResult[i];
    }
}
