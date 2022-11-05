package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSet;
/* loaded from: classes2.dex */
public class zzs implements Parcelable.Creator<DataUpdateRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(DataUpdateRequest dataUpdateRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, dataUpdateRequest.zzqn());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, dataUpdateRequest.zzAm());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) dataUpdateRequest.getDataSet(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, dataUpdateRequest.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, dataUpdateRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeD */
    public DataUpdateRequest createFromParcel(Parcel parcel) {
        long j = 0;
        IBinder iBinder = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        DataSet dataSet = null;
        long j2 = 0;
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
                    dataSet = (DataSet) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataSet.CREATOR);
                    break;
                case 4:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
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
        return new DataUpdateRequest(i, j2, j, dataSet, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhq */
    public DataUpdateRequest[] newArray(int i) {
        return new DataUpdateRequest[i];
    }
}
