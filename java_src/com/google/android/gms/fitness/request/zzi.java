package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Device;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzi implements Parcelable.Creator<DataReadRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(DataReadRequest dataReadRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, dataReadRequest.getDataTypes(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, dataReadRequest.getDataSources(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, dataReadRequest.zzqn());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, dataReadRequest.zzAm());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, dataReadRequest.getAggregatedDataTypes(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, dataReadRequest.getAggregatedDataSources(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, dataReadRequest.getBucketType());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, dataReadRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, dataReadRequest.zzCU());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable) dataReadRequest.getActivityDataSource(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 10, dataReadRequest.getLimit());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, dataReadRequest.zzCT());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, dataReadRequest.zzCS());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 14, dataReadRequest.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 16, dataReadRequest.zzCV(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 17, dataReadRequest.getFilteredDataQualityStandards(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzew */
    public DataReadRequest createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        long j = 0;
        long j2 = 0;
        ArrayList arrayList3 = null;
        ArrayList arrayList4 = null;
        int i2 = 0;
        long j3 = 0;
        DataSource dataSource = null;
        int i3 = 0;
        boolean z = false;
        boolean z2 = false;
        IBinder iBinder = null;
        ArrayList arrayList5 = null;
        ArrayList<Integer> arrayList6 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataType.CREATOR);
                    break;
                case 2:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 3:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 5:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataType.CREATOR);
                    break;
                case 6:
                    arrayList4 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 7:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 9:
                    dataSource = (DataSource) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 10:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 12:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 13:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 14:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 16:
                    arrayList5 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, Device.CREATOR);
                    break;
                case 17:
                    arrayList6 = com.google.android.gms.common.internal.safeparcel.zzb.zzD(parcel, zzaX);
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
        return new DataReadRequest(i, arrayList, arrayList2, j, j2, arrayList3, arrayList4, i2, j3, dataSource, i3, z, z2, iBinder, arrayList5, arrayList6);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhj */
    public DataReadRequest[] newArray(int i) {
        return new DataReadRequest[i];
    }
}
