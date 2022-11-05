package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
/* loaded from: classes2.dex */
public class zzbr implements Parcelable.Creator<zzbq> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbq zzbqVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzbqVar.getDataType(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzbqVar.getDataSource(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzbqVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzbqVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfd */
    public zzbq createFromParcel(Parcel parcel) {
        DataSource dataSource;
        DataType dataType;
        int zzg;
        IBinder iBinder;
        IBinder iBinder2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        DataSource dataSource2 = null;
        DataType dataType2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzg = i;
                    DataSource dataSource3 = dataSource2;
                    dataType = (DataType) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataType.CREATOR);
                    iBinder = iBinder2;
                    dataSource = dataSource3;
                    break;
                case 2:
                    dataType = dataType2;
                    zzg = i;
                    IBinder iBinder3 = iBinder2;
                    dataSource = (DataSource) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataSource.CREATOR);
                    iBinder = iBinder3;
                    break;
                case 3:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    dataSource = dataSource2;
                    dataType = dataType2;
                    zzg = i;
                    break;
                case 1000:
                    IBinder iBinder4 = iBinder2;
                    dataSource = dataSource2;
                    dataType = dataType2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    iBinder = iBinder4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    iBinder = iBinder2;
                    dataSource = dataSource2;
                    dataType = dataType2;
                    zzg = i;
                    break;
            }
            i = zzg;
            dataType2 = dataType;
            dataSource2 = dataSource;
            iBinder2 = iBinder;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbq(i, dataType2, dataSource2, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhQ */
    public zzbq[] newArray(int i) {
        return new zzbq[i];
    }
}
