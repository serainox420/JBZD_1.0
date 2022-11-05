package com.google.android.gms.fitness.service;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.fitness.data.DataSource;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<FitnessSensorServiceRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(FitnessSensorServiceRequest fitnessSensorServiceRequest, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, (Parcelable) fitnessSensorServiceRequest.getDataSource(), i, false);
        zzc.zza(parcel, 2, fitnessSensorServiceRequest.zzDh(), false);
        zzc.zza(parcel, 3, fitnessSensorServiceRequest.zzCz());
        zzc.zza(parcel, 4, fitnessSensorServiceRequest.zzDC());
        zzc.zzc(parcel, 1000, fitnessSensorServiceRequest.getVersionCode());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfv */
    public FitnessSensorServiceRequest createFromParcel(Parcel parcel) {
        long j = 0;
        IBinder iBinder = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        long j2 = 0;
        DataSource dataSource = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    dataSource = (DataSource) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 2:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 3:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
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
        return new FitnessSensorServiceRequest(i, dataSource, iBinder, j2, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzii */
    public FitnessSensorServiceRequest[] newArray(int i) {
        return new FitnessSensorServiceRequest[i];
    }
}
