package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
/* loaded from: classes2.dex */
public class zzp implements Parcelable.Creator<DataUpdateListenerRegistrationRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(DataUpdateListenerRegistrationRequest dataUpdateListenerRegistrationRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) dataUpdateListenerRegistrationRequest.getDataSource(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) dataUpdateListenerRegistrationRequest.getDataType(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) dataUpdateListenerRegistrationRequest.getIntent(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, dataUpdateListenerRegistrationRequest.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, dataUpdateListenerRegistrationRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeB */
    public DataUpdateListenerRegistrationRequest createFromParcel(Parcel parcel) {
        IBinder iBinder = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        PendingIntent pendingIntent = null;
        DataType dataType = null;
        DataSource dataSource = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    dataSource = (DataSource) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 2:
                    dataType = (DataType) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataType.CREATOR);
                    break;
                case 3:
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PendingIntent.CREATOR);
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
        return new DataUpdateListenerRegistrationRequest(i, dataSource, dataType, pendingIntent, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzho */
    public DataUpdateListenerRegistrationRequest[] newArray(int i) {
        return new DataUpdateListenerRegistrationRequest[i];
    }
}
