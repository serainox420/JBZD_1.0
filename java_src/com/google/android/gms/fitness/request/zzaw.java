package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.location.LocationRequest;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzaw implements Parcelable.Creator<zzav> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzav zzavVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzavVar.getDataSource(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzavVar.getDataType(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzavVar.zzDh(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzavVar.zzaWp);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, zzavVar.zzaWq);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzavVar.zzCz());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzavVar.zzDe());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzavVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable) zzavVar.getIntent(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzavVar.zzDd());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 10, zzavVar.getAccuracyMode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 11, zzavVar.zzDf(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, zzavVar.zzDg());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, zzavVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeR */
    public zzav createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        DataSource dataSource = null;
        DataType dataType = null;
        IBinder iBinder = null;
        int i2 = 0;
        int i3 = 0;
        long j = 0;
        long j2 = 0;
        PendingIntent pendingIntent = null;
        long j3 = 0;
        int i4 = 0;
        ArrayList arrayList = null;
        long j4 = 0;
        IBinder iBinder2 = null;
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
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 7:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 8:
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PendingIntent.CREATOR);
                    break;
                case 9:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 10:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 11:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, LocationRequest.CREATOR);
                    break;
                case 12:
                    j4 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 13:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
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
        return new zzav(i, dataSource, dataType, iBinder, i2, i3, j, j2, pendingIntent, j3, i4, arrayList, j4, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhE */
    public zzav[] newArray(int i) {
        return new zzav[i];
    }
}
